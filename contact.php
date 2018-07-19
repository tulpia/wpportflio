<?php
//Template Name: contact page

/*
** Block pour charger les variables contenant les get_fields()
*/
$fieldsContact = new \StdClass();

$fieldsContact->phrase_intro = get_field('contact_phraseintro');
$fieldsContact->lemail = get_field('contact_mail');
$fieldsContact->liste_reseaux = get_field('contact_listereseaux');
$fieldsContact->malocation = get_field('contact_location');
?>
    <?php get_header(); ?>

    <div class="center">
        <p class="contact_titre">
            <?= $fieldsContact->phrase_intro; ?>
        </p>
    </div>

    <div class="contact_container">
        <div class="child1">
            <p class="faded">mail</p>
            <p>
                <a href="mailto:<?= $fieldsContact->lemail; ?>" class="mailto">
                    <?= $fieldsContact->lemail; ?>
                </a>
            </p>
        </div>
        <div class="child2">
            <p class="faded">réseaux sociaux</p>
            <p class="red_underline">
                <?= $fieldsContact->liste_reseaux; ?>
            </p>
        </div>
        <div class="child3">
            <p class="faded">location</p>
            <p>
                <?= $fieldsContact->malocation; ?>
            </p>
        </div>
    </div>
    <?php get_footer(); ?>
