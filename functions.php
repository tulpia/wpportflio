<?php
//Nav menu sa mère
register_nav_menus(array(
    'primary' => __('Primary Menu'),
));

add_theme_support( 'post-thumbnails' );

/**
function theme_gsap_script() {
    wp_enqueue_script( 'gsap-js', get_template_directory_uri() . '/js/TweenMax.js', array(), false, true );
}
add_action( 'wp_enqueue_scripts', 'theme_gsap_script' );
**/
// include custom jQuery
function shapeSpace_include_custom_jquery() {

	wp_deregister_script('jquery');
	wp_enqueue_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js', array(), null, true);

}
add_action('wp_enqueue_scripts', 'shapeSpace_include_custom_jquery');
wp_enqueue_script('barbajs', get_template_directory_uri() .'/js/barba.js', array('jquery'), null, true);
wp_enqueue_script('my-custom-script', get_template_directory_uri() .'/js/scripts.js', array('jquery'), null, true);
?>
