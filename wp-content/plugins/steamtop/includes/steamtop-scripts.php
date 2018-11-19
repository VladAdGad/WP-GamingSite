<?php

//Add Scripts
function st_add_scripts(){
    //Add Mains CSS
    wp_enqueue_style('st-main-style', plugins_url(). '/steamtop/css/style.css');
    //Add Main JS
    wp_enqueue_script('st-main-script', plugins_url(). '/steamtop/js/main.js');

}

add_action('wp_enqueue_scripts', 'st_add_scripts');
