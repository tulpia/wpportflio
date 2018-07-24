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
    //boucle pour afficher tous les travaux du wordpress
    foreach($travaux as $tr){
        //mettre toute les données dans le foreach, car sinon les données ne seront pas enregistrées dans la classe StdClass les unes à la suite des autres,
        //mais plutôt elles vont s'écraser
        $fieldsTravaux = new \StdClass();
        
        //On va chercher les champs ACF puis on les assigne chaqun à leur ID qui est contenu dans $tr (qui est un objet)
        $fieldsTravaux->categorie = get_field('categorie', $tr->ID);
        $fieldsTravaux->typedetravail = get_field('typedetravail', $tr->ID);
        $fieldsTravaux->image = get_field('travaux_image', $tr->ID);
        $fieldsTravaux->numero = get_field('travaux_numero_article', $tr->ID);
        $fieldsTravaux->travauxDate = get_field('travaux_date', $tr->ID);
    ?>
    <div class="project-title">
        <div class="project-container">
            <a href="<?php echo get_permalink($tr->ID); ?>" class="no_underline">
                <!--
<span class="travaux__numeroArticle">
                            <?= $fieldsTravaux->numero; ?>
                        </span>
-->
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
                        <span class="type-travail">
                                <?php if(!empty($fieldsTravaux->typedetravail)) { ?>
                                <?= $fieldsTravaux->typedetravail; ?>
                        </span>
                </p>
                <p class="travaux_date">
                    <svg height="40" width="135">
                               <line x1="0" y1="10" x2="20" y2="10" style="stroke:rgb(0,0,0); stroke-width:1" class="line"/>
                    </svg>
                    <?= $fieldsTravaux->travauxDate; ?>
                </p>
                <?php } ?>
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
        <script>
            $('.project-container').animate({
                opacity: 1
            }, 400);

            $('.work_class').delay(200).animate({
                opacity: 1
            }, 400);

            $('.travaux_date').delay(400).animate({
                opacity: 1
            }, 400);

        </script>
        <?php get_footer(); ?>
