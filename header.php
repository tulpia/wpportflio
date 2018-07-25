<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <title>
        <?php bloginfo('name'); ?>
    </title>
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/style.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/mediaqueries.css" />
    <link rel="icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/favicons/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/favicons/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/favicons/favicon-128x128.png" sizes="128x128">
    <?php wp_head(); ?>
</head>

<?php 

    $fieldsHeader = new \StdClass();
    
    $fieldsHeader->location = get_field('location_menu', 19);
    $fieldsHeader->paragraphe = get_field('description_menu', 19);
?>

<body>
    <div class="container-top">
        <div class="name-container">
            <p class="top-menu alecteihotaata">
                <a href="<?= home_url(); ?>">
                    <?php bloginfo('name'); ?>
                </a>
            </p>
        </div>
        <div class="top-menu responsive">
            <?php if(!empty($fieldsHeader->paragraphe)) { ?>
            <p>
                <?= $fieldsHeader->paragraphe; ?>
            </p>
            <?php } ?>
        </div>
        <nav class="top-menu nav-menu">
            <?php 
            $args = array(
                'theme_location' => 'primary'
            );
            wp_nav_menu($args); 
            ?>
        </nav>
        <div class="top-menu responsive">
            <?php if(!empty($fieldsHeader->location)) {?>
            <p>
                <?= $fieldsHeader->location; ?>
            </p>
            <?php } ?>
        </div>
    </div>
