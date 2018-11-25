<?php
/*
Plugin Name: Steam top games
Description: Display Steam games by players online
Version: 1.0.0
Author: Mykhailo Tarasiuk
*/

//Exit if accessed directly
if(!defined('ABSPATH')){
    exit;
}

//Load Scripts
require_once (plugin_dir_path(__FILE__).'/includes/steamtop-scripts.php');

//Load Class
require_once (plugin_dir_path(__FILE__).'/includes/steamtop-class.php');

//Register Widget
function register_steamtop(){
    register_widget('Steam_Top_Widget');
}

function steamtop_create_menu() {
    //create new top-level menu
    add_menu_page('Steam top settings', 'SteamTop Settings', 'administrator', __FILE__, 'steamtop_settings_page' , plugins_url('/css/steam.png', __FILE__) );

    //call register settings function
    add_action( 'admin_init', 'register_steamtop_settings' );
}


function register_steamtop_settings() {
    //register our settings
    register_setting( 'steamtop', 'new_option_link' );
}

function steamtop_settings_page() {
    ?>
    <div class="wrap">
        <h1>Steam top</h1>

        <form method="post">
            <?php settings_fields( 'steamtop' ); ?>
            <?php do_settings_sections( 'steamtop' ); ?>
            <table class="form-table">
                <tr valign="top">
                    <th>Game link to get info about it</th>
                    <td>
                        <input
                               size="65"
                               type="text"
                               name="new_option_link"
                               value="<?php echo esc_attr( get_option('new_option_link') ); ?>"
                        />
                    </td>
                </tr>
            </table>

            <?php submit_button(); ?>

        </form>
    </div>
    <?php
    if(isset($_POST['new_option_link'])){
        if($_POST['new_option_link'] != "") {
            $string = file_get_contents(plugin_dir_path(__FILE__). '/includes/games.json');
            $json = json_decode($string, true);
            if (isset($json[$_POST['new_option_link']])) {
                echo "<h1 style='color: red'>Already exist<h1>";
            } else {
                $html = file_get_contents($_POST['new_option_link']);
                $doc = phpQuery::newDocument($html);
                $linkImg = $doc->find('.game_header_image_full')->attr('src');
                if ($linkImg === "") {
                    $linkImg = 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/600px-No_image_available.svg.png';
                }
                $description = $doc->find('.game_description_snippet')->text();
                if ($description === "") {
                    $description = 'No description found!';
                }
                $fp = fopen(plugin_dir_path(__FILE__) . '/includes/games.json', 'a');
                $stat = fstat($fp);
                ftruncate($fp, $stat['size'] - 2);
                fwrite($fp, ",\n\t\"" . $_POST['new_option_link'] . "\" : {\n\t\t\"IMGlink\": \"" . $linkImg . "\",\n\t\t\"description\": \"" . trim($description) . "\"\n\t}\n}");
                echo "<h1 style='color: green'>Description and image added to preview<h1>";
            }
        }else{
            echo "<h1 style='color: red'>Please, enter a url<h1>";
        }
    }
}


//Hook in action
add_action('admin_menu', 'steamtop_create_menu');
add_action('widgets_init', 'register_steamtop');