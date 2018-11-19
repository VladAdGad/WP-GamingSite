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

//Hook in action
add_action('widgets_init', 'register_steamtop');