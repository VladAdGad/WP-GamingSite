<?php
require 'phpQuery-onefile.php';
/**
 * Adds Steam_Top_Widget widget.
 */
class Steam_Top_Widget extends WP_Widget {
    /**
     * Register widget with WordPress.
     */
    function __construct() {
        parent::__construct(
            'steamtop_widget', // Base ID
            esc_html__( 'Steam Top Games', 'st_domain' ), // Name
            array( 'description' => esc_html__( 'Widget to display Steam games by number of players', 'st_domain' ), ) // Args
        );
    }

    /**
     * Front-end display of widget.
     *
     * @see WP_Widget::widget()
     *
     * @param array $args     Widget arguments.
     * @param array $instance Saved values from database.
     */
    public function widget( $args, $instance ) {
        echo $args['before_widget'];

        if ( ! empty( $instance['title'] ) ) {
            echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
        }

        echo '<table id="games">
                <tbody>
					<tr>
						<td align="right"><h3><b>Online</b></h3></td>
						<td width="20">&nbsp;</td>
						<td align="left"><h3><b>Game</b></h3></td>
					</tr>
				';
        $html = file_get_contents('https://store.steampowered.com/stats');
        $doc = phpQuery::newDocument($html);
		$string = file_get_contents(plugin_dir_path(__FILE__). '/games.json');
        $json = json_decode($string, true);
        $counter = 0;
        foreach($doc->find('.player_count_row') as $game) {
            if ($counter < $instance['numOfGames']) {
                $game = pq($game);
                echo '<tr class="player_count_row">
							<td align="right">
								<span class="currentServers">' . $game->find('td:eq(0)')->text() . '</span>
							</td>
							<td width="20">&nbsp;</td>
							<td class="showhim">
								<a class="gameLink" href="' . $game->find('.gameLink')->attr('href') . '" target="_blank">' . $game->find('.gameLink')->text() . '</a>
								<span class="game"><img class="gameIcon" src="' . $json[$game->find('.gameLink')->attr('href')]['IMGlink'] . '"/>' . $json[$game->find('.gameLink')->attr('href')]['description'] . '</span>
							</td>
						</tr>';
                $counter++;
            } else {
                break 1;
            }
        }
        echo '</tbody>
              </table>';

        echo $args['after_widget'];
    }

    /**
     * Back-end widget form.
     *
     * @see WP_Widget::form()
     *
     * @param array $instance Previously saved values from database.
     */
    public function form( $instance ) {
        $title = ! empty( $instance['title'] ) ? $instance['title'] : esc_html__( 'Best Steam games by number of players', 'st_domain' );
        $numOfGames = ! empty( $instance['numOfGames'] ) ? $instance['numOfGames'] : esc_html__( 10, 'st_domain' );

        ?>

        <!-- TITLE -->
        <p>
            <label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>">
                <?php esc_attr_e( 'Title:', 'st_domain' ); ?>
            </label>
            <input
                class="widefat"
                id="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"
                name="<?php echo esc_attr( $this->get_field_name( 'title' ) ); ?>"
                type="text"
                value="<?php echo esc_attr( $title ); ?>">
        </p>

        <!-- Number of games to show -->
        <p>
            <label for="<?php echo $this->get_field_id( 'numOfGames' ); ?>">
                <?php esc_attr_e( 'Number of games to show:' ); ?>
            </label>
            <input class="tiny-text"
                   id="<?php echo $this->get_field_id( 'numOfGames' ); ?>"
                   name="<?php echo $this->get_field_name( 'numOfGames' ); ?>"
                   type="number"
                   step="1"
                   min="1"
                   max="99"
                   value="<?php echo esc_attr($numOfGames); ?>"
            />
        </p>
        <?php
    }


    /**
     * Sanitize widget form values as they are saved.
     *
     * @see WP_Widget::update()
     *
     * @param array $new_instance Values just sent to be saved.
     * @param array $old_instance Previously saved values from database.
     *
     * @return array Updated safe values to be saved.
     */
    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';
        $instance['numOfGames'] = ( ! empty( $new_instance['numOfGames'] ) ) ? sanitize_text_field( $new_instance['numOfGames'] ) : '';
        return $instance;
    }

} // class Steam_Top_Widget