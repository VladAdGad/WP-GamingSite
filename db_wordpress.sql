-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 21 2018 г., 16:18
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/WP-GamingSite', 'yes'),
(2, 'home', 'http://localhost/WP-GamingSite', 'yes'),
(3, 'blogname', 'CMS', 'yes'),
(4, 'blogdescription', 'Kolejna witryna oparta na WordPressie', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vetnester@sdffd.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:21:\"steamtop/steamtop.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gamecenter', 'yes'),
(41, 'stylesheet', 'gamecenter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pl_PL', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right_sidebar\";a:7:{i:0;s:17:\"steamtop_widget-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:12:\"left_sidebar\";a:0:{}s:8:\"footer_1\";a:0:{}s:8:\"footer_2\";a:0:{}s:8:\"footer_3\";a:0:{}s:12:\"tabs_sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:3:{i:1542815090;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542815102;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542728806;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(126, '_site_transient_timeout_browser_88948936c8355fa92108d4448c2520d0', '1543333503', 'no'),
(127, '_site_transient_browser_88948936c8355fa92108d4448c2520d0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1542772034', 'no'),
(130, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(131, '_transient_timeout_feed_a421d6f32723068ab074a40017a9e1f9', '1542771905', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(132, '_transient_feed_a421d6f32723068ab074a40017a9e1f9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Polska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-beta5-43909\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Uncategorized\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Waclaw Jacek\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1049:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br />\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress 4.9.4 – Wydanie poprawiające ważny błąd\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 18:25:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1539\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:489:\"WordPress 4.9.4 jest już dostępny. To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. Wymagane jest ręczne zaktualizowanie WordPressa do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu. Cztery lata temu, w wydaniu 3.7 &#8222;Basie&#8221; WordPressa wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2631:\"<p>WordPress 4.9.4 jest już dostępny.</p>\n<p>To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. <strong><span style=\"text-decoration: underline\">Wymagane jest ręczne zaktualizowanie WordPressa</span> do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu.</strong></p>\n<p><span id=\"more-1539\"></span></p>\n<p>Cztery lata temu, w wydaniu <a href=\"https://wordpress.org/news/2013/10/basie/\">3.7 &#8222;Basie&#8221; WordPressa</a> wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały się bezpieczniejsze i mniej awaryjne &#8211; nawet, jeśli samodzielnie nie miałeś możliwości ich aktualizować. Przez te 4 lata mechanizm ten pomógł milionom witryn, aktualizując je do bieżących wersji i naprawiając bardzo sporadyczne usterki. Niestety we wczorajszym <a href=\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\">wydaniu 4.9.3</a> znalazł się ważny błąd, który został wykryty dopiero po upublicznieniu nowej wersji systemu. Błąd ten powoduje, że WordPress nie zaktualizuje się automatycznie do wersji 4.9.4, co oznacza, że aktualizację taką trzeba przeprowadzić ręcznie z poziomu panelu administracyjnego lub z pomocą dostawcy serwera hostingowego.</p>\n<p><strong>Aby przeprowadzić ręczną aktualizację, udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Dopóki tego nie wykonasz, WordPress <span style=\"text-decoration: underline\">nie będzie aktualizował się automatycznie do kolejnych wersji</span>. Zalecamy, by zrobić to natychmiast.</strong></p>\n<p>Dostawcy hostingu, którzy aktualizują automatycznie WordPressa w imieniu swoich klientów, mogą przystąpić do aktualizacji w standardowym trybie. Będziemy ściśle współpracować z innymi dostawcami hostingu, by jak najwięcej ich klientów otrzymało tą aktualizację.</p>\n<p><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">Więcej szczegółów technicznych opublikowaliśmy na naszym blogu o tworzeniu rdzenia WordPressa</a>. Pełna lista zmian dostępna jest w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">spisie zamkniętych wątków</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.4</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.9.3 – Wydanie poprawiające błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 10:50:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"WordPress 4.9.3 jest już dostępny. To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz w liście zamkniętych wątków oraz liście przeprowadzonych zmian. Pobierz WordPressa 4.9.3 lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3596:\"<p>WordPress 4.9.3 jest już dostępny.</p>\n<p>To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz<span style=\"line-height: 1.5\"> w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">liście zamkniętych wątków</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">liście przeprowadzonych zmian</a>.</span></p>\n<p><span id=\"more-1536\"></span></p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.3:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jan 2018 11:06:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1512\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:467:\"WordPress 4.9.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"<p>WordPress 4.9.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1512\"></span></p>\n<p>Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte z WordPressa.</p>\n<p>Biblioteka MediaElement została już udostępniona w nowej wersji, która naprawa problem. W repozytorium wtyczek WordPressa znajduje się nowa <a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">wtyczka, przywracająca obsługę biblioteki MediaElement z poprawionymi plikami</a>.</p>\n<p>Dziękujemy zgłaszającym (<a href=\"https://opnsec.com\">Enguerran Gillier</a> i <a href=\"https://widiz.com/\">Widiz</a>) za <a href=\"https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>W WordPressie 4.9.2 rozwiązano także 21 innych problemów, w tym:</p>\n<ul>\n<li>naprawiono błędy JavaScript, które uniemożliwiały zapisywanie wpisów w Firefoxie,</li>\n<li>przywrócono wcześniejsze, niezależne od taksonomii działanie <code>get_category_link()</code> i <code>category_description()</code>,</li>\n<li>od teraz zmiana motywu spowoduje podjęcie próby przywrócenia poprzednich przypisań widgetów &#8211; nawet, jeśli w ostatnio używanym motywie nie były dostępne żadne obszary na widgety.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.2\">więcej informacji na temat wszystkich rozwiązanych problemów w wersji 4.9.2</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.2:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.8.3 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Oct 2017 11:26:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1289\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"WordPress 4.8.3 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z $wpdb-&#62;prepare(), który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p>WordPress 4.8.3 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1289\"></span></p>\n<p>WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z <code>$wpdb-&gt;prepare()</code>, który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten problem, ale dodaliśmy dodatkowe zabezpieczenia, by wtyczki i motywy nie mogły go przypadkowo powodować. Problem zgłosił <a href=\"https://twitter.com/ircmaxell\">Anthony Ferrara</a>.</p>\n<p>To wydanie WordPressa zmienia zachowanie funkcji <code>esc_sql()</code>. Różnica nie będzie istotna dla większości programistów. Zachęcamy do <a href=\"https://make.wordpress.org/core/2017/10/31/changed-behaviour-of-esc_sql-in-wordpress-4-8-3/\">przeczytania informacji dla deweloperów</a>.</p>\n<p>Dziękujemy zgłaszającemu za <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemu z bezpieczeństwem.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.8.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Wersje testowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordPress 4.9 Beta 2 jest już dostępny! Oprogramowanie jest wciąż w fazie tworzenia, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę WordPress Beta Tester (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo pobierz wersję beta (zip). Więcej informacji na temat [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1781:\"<p>WordPress 4.9 Beta 2 jest już dostępny!</p>\n<p><strong>Oprogramowanie jest wciąż w fazie tworzenia</strong>, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę <a href=\"https://pl.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">pobierz wersję beta</a> (zip).</p>\n<p>Więcej informacji na temat tego, co nowego w wersji 4.9, znajdziesz w blogu we wpisie <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> (po angielsku). Od tego czasu dokonaliśmy <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 zmian</a> w wersji Beta 2.</p>\n<p><a href=\"https://translate.wordpress.org/locale/pl/default/wp/dev\">Pomóż nam przetłumaczyć WordPress na język polski</a>!</p>\n<p><strong>Jeśli widzisz błąd</strong>, napisz wiadomość na forum <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta</a>. Jeżeli coś nie działa, to chcielibyśm się tego dowiedzieć właśnie do ciebie! Jeśli czujesz się na siłach, żeby napisać raport zawierający opis jak powtórzyć błąd to  skorzystaj z serwisu <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac</a>. Na nim też znajdziesz <a href=\"https://core.trac.wordpress.org/tickets/major\">listę znanych błędów</a>.</p>\n<p><em>Przetestujmy razem:</em><br />\n<em> edytowanie kodu, przełączniki tematyczne,</em><br />\n<em> widgety, harmonogramowanie.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Sep 2017 11:37:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"WordPress 4.8.2 jest już dostępny. Wersja poprawia bezpieczeństwo wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn. WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem: $wpdb-&#62; prepare() mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>WordPress 4.8.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn.</p>\n<p>WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem:</p>\n<ol>\n<li><strong>$wpdb-&gt; prepare()</strong> mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono proces tworzenia zapytań aby zapobiegać podatności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>Wykryto podatność na cross-site scripting (XSS) w używaniu oEmbed. Zgłoszone przez xknown zespołu ds. Zabezpieczeń WordPress.</li>\n<li>W edytorze wizualnym wykryto lukę w zabezpieczeniach skryptów przed cross-site scripting (XSS) Zgłoszone przez <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> Sucuri Security.</li>\n<li>W kodzie do rozpakowywania wykryto lukę w zabezpieczeniach ścieżki do pliku. Zgłoszone przez <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>W edytorze wtyczek wykryto luka w zabezpieczeniach cross-site scripting (XSS). Zgłoszone przez 陈瑞琦 (Chen Ruiqi).</li>\n<li>Na ekranie użytkownika i terminach edycji zostały wykryte otwarte przekierowanie. Zgłoszone przez <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>Odkryto lukę w zabezpieczeniach ścieżki na ekranie personalizacji witryny. Zgłoszone przez Weston Ruter z zespołu ds. Bezpieczeństwa WordPress.</li>\n<li>Wykryto podatność na cross-site scripting (XSS)  w nazwach szablonów. Zgłoszone przez <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>Wykryto podatność na cross-site scripting (XSS) w linkach modalnych. Zgłoszone przez <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za praktykowanie <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawnienia (en)</a>.</p>\n<p>Oprócz powyższych kwestii związanych z bezpieczeństwem, WordPress 4.8.2 zawiera 6 poprawek utrzymaniowych serii 4.8. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.8.2\">notce wydania wersji (en)</a> oraz na <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/wordpress-4.8.2-pl_PL.zip\">Pobierz WordPress 4.8.2</a> lub przejdź do Panel → Aktualizacje i kliknij przycisk &#8222;Aktualizuj teraz&#8221;. Strony obsługujące automatyczne aktualizacje w tle już zaczynają aktualizować się do wersji 4.8.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do wydania 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Zrób jedną rzecz i zmień przyszłość WordCampa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Jun 2017 04:11:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=977\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:435:\"Ósmy polski WordCamp już za nami. Polska społeczność rozrasta się z roku na rok, co bardzo cieszy, ale niejednokrotnie stanowi wyzwanie dla organizatorów spotkań. Chcemy lepiej odpowiadać na potrzeby polskich twórców i użytkowników WordPressa. Dlatego przygotowaliśmy krótką ankietę na temat WordCampa. Chcemy poznać Was lepiej, dowiedzieć się, kim jesteście i jakie macie oczekiwania względem kolejnych [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:815:\"<p>Ósmy polski WordCamp już za nami. Polska społeczność rozrasta się z roku na rok, co bardzo cieszy, ale niejednokrotnie stanowi wyzwanie dla organizatorów spotkań.</p>\n<p>Chcemy lepiej odpowiadać na potrzeby polskich twórców i użytkowników WordPressa. Dlatego przygotowaliśmy krótką ankietę na temat WordCampa. Chcemy poznać Was lepiej, dowiedzieć się, kim jesteście i jakie macie oczekiwania względem kolejnych edycji WordCampa w Polsce. Wypełnienie ankiety nie zajmie Wam więcej niż 5 minut.</p>\n<p><a href=\"https://goo.gl/forms/VPY4xtO9KF6fuDnm1\" target=\"_blank\" rel=\"noopener\"><strong>Wypełnij ankietę na temat polskiej społeczności WordPressowej</strong></a>.</p>\n<p>Dziękujemy Wam za wypełnienie ankiety!</p>\n<p><em>Organizatorzy polskich WordUpów i WordCamp Polska</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://pl.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 20 Nov 2018 15:45:05 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 31 Jul 2018 07:46:28 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20181120153904\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(133, '_transient_timeout_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1542771905', 'no'),
(134, '_transient_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1542728705', 'no'),
(135, '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '1542771905', 'no'),
(136, '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\'>Dołącz do grupy tłumaczeniowej na Slack</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\'>Dołącz do grupy tłumaczeniowej na Slack</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\'>WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\'>Program WordCamp Poznań 2018 już tu jest!</a></li></ul></div>', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'GameCenter', 'yes'),
(140, 'theme_mods_gamecenter', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:8:\"sec-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'widget_facebook', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'widget_banners', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_social_profiles', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_videofeed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_flickr', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_tabs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'smt_hash', 'd61bacccf6fdc69cc2878b6b9f5d8bae', 'yes'),
(155, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(156, '_transient_timeout_plugin_slugs', '1542815458', 'no'),
(157, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:21:\"steamtop/steamtop.php\";}', 'no'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'widget_steamtop_widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:37:\"Best Steam games by number of players\";s:10:\"numOfGames\";s:2:\"10\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, '_site_transient_timeout_theme_roots', '1542815184', 'no'),
(163, '_site_transient_theme_roots', 'a:4:{s:10:\"gamecenter\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(164, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542813386;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-21 07:25:37\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(165, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542813387;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(166, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542813388;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:3:\"1.7\";s:21:\"steamtop/steamtop.php\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 5, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(6, 6, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(7, 7, '_edit_lock', '1542728972:1'),
(9, 8, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(11, 9, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(13, 10, '_customize_changeset_uuid', '82ad4f04-2057-4641-b61b-17420b2578fd'),
(14, 16, '_menu_item_type', 'custom'),
(15, 16, '_menu_item_menu_item_parent', '0'),
(16, 16, '_menu_item_object_id', '16'),
(17, 16, '_menu_item_object', 'custom'),
(18, 16, '_menu_item_target', ''),
(19, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 16, '_menu_item_xfn', ''),
(21, 16, '_menu_item_url', 'http://localhost/WP-GamingSite'),
(22, 17, '_menu_item_type', 'post_type'),
(23, 17, '_menu_item_menu_item_parent', '0'),
(24, 17, '_menu_item_object_id', '5'),
(25, 17, '_menu_item_object', 'page'),
(26, 17, '_menu_item_target', ''),
(27, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 17, '_menu_item_xfn', ''),
(29, 17, '_menu_item_url', ''),
(30, 18, '_menu_item_type', 'post_type'),
(31, 18, '_menu_item_menu_item_parent', '0'),
(32, 18, '_menu_item_object_id', '6'),
(33, 18, '_menu_item_object', 'page'),
(34, 18, '_menu_item_target', ''),
(35, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 18, '_menu_item_xfn', ''),
(37, 18, '_menu_item_url', ''),
(38, 19, '_menu_item_type', 'post_type'),
(39, 19, '_menu_item_menu_item_parent', '0'),
(40, 19, '_menu_item_object_id', '8'),
(41, 19, '_menu_item_object', 'page'),
(42, 19, '_menu_item_target', ''),
(43, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 19, '_menu_item_xfn', ''),
(45, 19, '_menu_item_url', ''),
(46, 20, '_menu_item_type', 'post_type'),
(47, 20, '_menu_item_menu_item_parent', '0'),
(48, 20, '_menu_item_object_id', '9'),
(49, 20, '_menu_item_object', 'page'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', ''),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '10'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', ''),
(62, 7, '_wp_trash_meta_status', 'publish'),
(63, 7, '_wp_trash_meta_time', '1542728990'),
(64, 22, '_wp_trash_meta_status', 'publish'),
(65, 22, '_wp_trash_meta_time', '1542729004');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-20 16:44:50', '2018-11-20 15:44:50', 'Witaj w WordPressie. To jest twój pierwszy wpis. Zmodyfikuj go lub usuń, a następnie rozpocznij pisanie!', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', '', 0, 'http://localhost/WP-GamingSite/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-20 16:44:50', '2018-11-20 15:44:50', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href=\"http://localhost/WP-GamingSite/wp-admin/\">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', '', 0, 'http://localhost/WP-GamingSite/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-20 16:44:50', '2018-11-20 15:44:50', '<h2>Kim jesteśmy</h2><p>Adres naszej strony internetowej to: http://localhost/WP-GamingSite.</p><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><h3>Komentarze</h3><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><h3>Media</h3><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><h3>Formularze kontaktowe</h3><h3>Ciasteczka</h3><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><p>Jeśli masz konto i zalogujesz się na tej witrynie, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone kiedy zamkniesz przeglądarkę.</p><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><h3>Osadzone treści z innych witryn</h3><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><h3>Analiza statystyk</h3><h2>Z kim dzielimy się danymi</h2><h2>Jak długo przechowujemy twoje dane</h2><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><h2>Jakie masz prawa do swoich danych</h2><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><h2>Gdzie przesyłamy dane</h2><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><h2>Twoje dane kontaktowe</h2><h2>Informacje dodatkowe</h2><h3>Jak chronimy twoje dane?</h3><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><h3>Od jakich stron trzecich otrzymujemy dane</h3><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3>', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2018-11-20 16:44:50', '2018-11-20 15:44:50', '', 0, 'http://localhost/WP-GamingSite/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-20 16:45:03', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-20 16:45:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP-GamingSite/?p=4', 0, 'post', '', 0),
(5, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'The team', '', 'publish', 'closed', 'closed', '', 'the-team', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            5,\n            6,\n            8,\n            9,\n            10\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    },\n    \"nav_menu[-549754579]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-714231903]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/WP-GamingSite\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Strona g\\u0142\\u00f3wna\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"W\\u0142asny odno\\u015bnik\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-1583961893]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"The team\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=5\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"The team\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-1197747097]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Reviews\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=6\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Reviews\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:09\"\n    },\n    \"nav_menu_item[-985910876]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Gallery\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=8\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Gallery\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    },\n    \"nav_menu_item[-251946931]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Forum\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=9\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    },\n    \"nav_menu_item[-1615238014]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"http://localhost/WP-GamingSite/?page_id=10\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -549754579,\n            \"_invalid\": false,\n            \"type_label\": \"Strona\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:49:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82ad4f04-2057-4641-b61b-17420b2578fd', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 0, 'http://localhost/WP-GamingSite/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'The team', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 5, 'http://localhost/WP-GamingSite/2018/11/20/5-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Reviews', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 6, 'http://localhost/WP-GamingSite/2018/11/20/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 8, 'http://localhost/WP-GamingSite/2018/11/20/8-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 9, 'http://localhost/WP-GamingSite/2018/11/20/9-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 10, 'http://localhost/WP-GamingSite/2018/11/20/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/home/', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/17/', 2, 'nav_menu_item', '', 0),
(18, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/18/', 3, 'nav_menu_item', '', 0),
(19, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/19/', 4, 'nav_menu_item', '', 0),
(20, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', '', 'Forum', '', 'publish', 'closed', 'closed', '', 'forum', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/forum/', 5, 'nav_menu_item', '', 0),
(21, 1, '2018-11-20 16:49:49', '2018-11-20 15:49:49', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-11-20 16:54:43', '2018-11-20 15:54:43', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/21/', 6, 'nav_menu_item', '', 0),
(22, 1, '2018-11-20 16:50:04', '2018-11-20 15:50:04', '{\n    \"gamecenter::nav_menu_locations[main-menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-20 15:50:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7a4e71b9-342c-40bb-a8d0-8a6fcd086127', '', '', '2018-11-20 16:50:04', '2018-11-20 15:50:04', '', 0, 'http://localhost/WP-GamingSite/2018/11/20/7a4e71b9-342c-40bb-a8d0-8a6fcd086127/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Main', 'main', 0),
(4, 'None', 'none', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ykki'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"e64939e3060a67ea6e9ec991e50da41a91c22137da46bfcac8bd056d9b45b30a\";a:4:{s:10:\"expiration\";i:1542901502;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542728702;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ykki', '$P$BGWIdBWsaM87HWKh6KFWfa2SL4MTYt/', 'ykki', 'vetnester@sdffd.com', '', '2018-11-20 15:44:50', '', 0, 'ykki');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
