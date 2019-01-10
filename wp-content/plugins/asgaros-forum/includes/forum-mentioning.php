<?php

if (!defined('ABSPATH')) exit;

class AsgarosForumMentioning {
    private $asgarosforum = null;
    private $regex_users = '#@([^\r\n\t\s\0<>\[\]!,\.\(\)\'\"\|\?\@]+)($|[\r\n\t\s\0<>\[\]!,\.\(\)\'\"\|\?\@])#isu';

    public function __construct($object) {
        $this->asgarosforum = $object;

        add_action('asgarosforum_after_add_topic_submit', array($this, 'mention_users'), 10, 6);
        add_action('asgarosforum_after_add_post_submit', array($this, 'mention_users'), 10, 6);
    }

    public function render_nice_name($user_id) {
        if ($this->asgarosforum->options['enable_mentioning']) {
            $user_data = get_userdata($user_id);

            echo '<span class="mention-nice-name">(@'.$user_data->user_nicename.')</span>';
        }
    }

    public function nice_name_to_link($content) {
        if ($this->asgarosforum->options['enable_mentioning']) {
            $content = preg_replace_callback($this->regex_users, array($this, 'create_link'), $content);
        }

        return $content;
    }

    private function create_link($match) {
        $link = $match[0];
        $user = get_user_by('slug', $match[1]);

        if ($user) {
            $link = $this->asgarosforum->renderUsername($user, '@'.$match[1]).$match[2];
        }

        return $link;
    }

    public function user_wants_notification($user_id) {
        $mention_user = get_user_meta($user_id, 'asgarosforum_mention_notify', true);

        if ($mention_user == 'no') {
            return false;
        }

        return true;
    }

    public function mention_users($post_id, $topic_id, $subject, $content, $link, $author_id) {
        if ($this->asgarosforum->options['enable_mentioning']) {
            $matches = array();

            preg_match_all($this->regex_users, $content, $matches, PREG_SET_ORDER);

            if (!empty($matches)) {
                foreach ($matches as $match) {
                    $user = get_user_by('slug', $match[1]);

                    if ($user && $this->user_wants_notification($user->ID)) {
                        $this->asgarosforum->notifications->add_to_mailing_list($user->user_email);
                    }
                }

                if (!empty($this->asgarosforum->notifications->mailing_list)) {
                    // Get topic object.
                    $topic = $this->asgarosforum->content->get_topic($topic_id);

                    // Get author-username.
                    $author_name = $this->asgarosforum->getUsername($author_id);

                    // Create mail content.
                    $replacements = array(
                        '###AUTHOR###'  => $author_name,
                        '###LINK###'    => '<a href="'.$link.'">'.$link.'</a>',
                        '###TITLE###'   => esc_html(stripslashes($topic->name)),
                        '###CONTENT###' => wpautop(stripslashes($content))
                    );

                    $notification_subject = $this->asgarosforum->options['mail_template_mentioned_subject'];
                    $notification_message = $this->asgarosforum->options['mail_template_mentioned_message'];
                    $notification_message = apply_filters('asgarosforum_filter_notify_mentioned_user_message', $notification_message, $replacements);

                    // Send the notifications.
                    $this->asgarosforum->notifications->send_notifications($this->asgarosforum->notifications->mailing_list, $notification_subject, $notification_message, $replacements);
                }
            }
        }
    }
}