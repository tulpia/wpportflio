<?php
//Template Name: about page

/*
** Block introduction: chargement des valeurs de ACF
*/ 
$fields = new \StdClass(); 
$fieldsAbout->nom = get_field('about_nom'); 
$fieldsAbout->profil = get_field('about_profidescription'); 
$fieldsAbout->experience = get_field('about_experience'); 
$fieldsAbout->travaux = get_field('about_travaux'); 
$fieldsAbout->phrase_de_fin = get_field('about_fin'); 
// A FAIRE : Integrer une array qui contient les get_field() 
?>


    <?php get_header(); ?>

    <div class="about_container">
        <div class="about_left">
            <div class="bottom_margin_plus">
                <p class="nom_gros_about">
                    <?= $fieldsAbout->nom; ?>
                </p>
            </div>
            <div class="bottom_margin profil_limit">
                <p class="faded">profil</p>
                <p>
                    <?= $fieldsAbout->profil; ?>
                </p>
            </div>
            <div class="bottom_margin profil_limit">
                <p class="faded">expérience logicielle</p>
                <p>
                    <?= $fieldsAbout->experience; ?>
                </p>
            </div>
            <div class="bottom_margin profil_limit">
                <p>
                    <?= $fieldsAbout->phrase_de_fin; ?>
                </p>
            </div>
        </div>
    </div>


    <?php get_footer(); ?>
