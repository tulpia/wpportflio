<?php
//Template Name: accueil

$args = [
  'post_type' => 'travaux',
    'posts_per_page' => -1,
    'orderby'   =>  'title',
    'order' =>  'ASC'
];


$travaux = get_posts($args);

    ?>
    <?php get_header(); ?>
    <?php 
    foreach($travaux as $tr){
        //mettre toute les données dans le foreach, car sinon les données ne seront pas enregistrées dans la classe StdClass les unes à la suite des autres,
        //mais plutôt elles vont s'écraser
        $fieldsTravaux = new \StdClass();
        
        //On va chercher les champs ACF puis on les assigne chaqun à leur ID qui est contenu dans $tr (qui est un objet)
        $fieldsTravaux->categorie = get_field('categorie', $tr->ID);
        $fieldsTravaux->typedetravail = get_field('typedetravail', $tr->ID);
        $fieldsTravaux->image = get_field('travaux_image', $tr->ID);
    ?>
    <div class="project-title">
        <div class="project-container">
            <a href="<?php echo get_permalink($tr->ID); ?>" class="no_underline">
                <p class="titre-projet">
                    <?php echo $tr->post_title; ?>

                </p>
            </a>
            <br>
            <div class="work_class_container">
                <?php if(!empty($fieldsTravaux->categorie)) { ?>
                <p class="work_class">
                    <?= $fieldsTravaux->categorie; ?>
                        <?php } ?>
                        <?php if(!empty($fieldsTravaux->typedetravail)) { ?>
                        <span class="type-travail"><?= $fieldsTravaux->typedetravail; ?></span>
                        <?php } ?>
                </p>
            </div>
        </div>


        <div class="block_accueil_image">
            <?php if(!empty($fieldsTravaux->image['url'])) { ?>
            <img src="<?= $fieldsTravaux->image['url']; ?>" alt="<?= $fieldsTravaux->image['alt']; ?>" class="block_accueil_image__image_container" />
            <?php } ?>
        </div>
    </div>
    <?php
    }
    ?>
        <?php get_footer(); ?>
