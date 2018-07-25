<?php

/**
* Block Travaux
**/
$fieldsTravaux = new \StdClass();


$fieldsTravaux->image = get_field('travaux_image');
$fieldsTravaux->description = get_field('travaux_description');
$fieldsTravaux->role = get_field('travaux_role');
$fieldsTravaux->annee = get_field('travaux_annee');
$fieldsTravaux->objet = get_field('travaux_objet');
$fieldsTravaux->commanditaire = get_field('travaux_commanditaire');
$fieldsTravaux->collaboration = get_field('travaux_collaboration');
$fieldsTravaux->image2 = get_field('travaux_image2');
$fieldsTravaux->categorie = get_field('categorie');
$fieldsTravaux->typedetravail = get_field('typedetravail');
$fieldsTravaux->travauxDate = get_field('travaux_date');
$fieldsTravaux->numero = get_field('travaux_numero_article');
?>


    <?php get_header(); ?>
    <div class="project-title">
        <div class="project-container travaux_bottom_responsive">
            <p class="titre-projet">
                <?php echo the_title(); ?>
            </p>
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
                        <?php } ?>
                </p>
                <p class="travaux_date">
                    <svg height="40" width="135">
                               <line x1="0" y1="10" x2="20" y2="10" style="stroke:rgb(0,0,0); stroke-width:1" />
                           </svg>
                    <?= $fieldsTravaux->travauxDate; ?>
                </p>

            </div>
        </div>
    </div>

    <div class="imagecontainer">
        <?php if(!empty($fieldsTravaux->image)) { ?>
        <div class="image">
            <img src="<?= $fieldsTravaux->image['url']; ?>" alt="<?= $fieldsTravaux->image['alt']; ?>" class="image_travaux1">
        </div>
        <?php } ?>
    </div>

    <div class="container_description">
        <?php if(!empty($fieldsTravaux->description)) { ?>
        <p class="description_text">
            <?= $fieldsTravaux->description; ?>
        </p>
        <?php } ?>
    </div>

    <div class="details_container">
        <div class="detail_child1">
            <ul class="list_detail first_item">
                <?php if(!empty($fieldsTravaux->role)) { ?>
                <li>rôle</li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->annee)) { ?>
                <li>année</li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->objet)) { ?>
                <li>objet</li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->commanditaire)) { ?>
                <li>commanditaire</li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->collaboration)) { ?>
                <li>collaboration</li>
                <?php } ?>
            </ul>
        </div>
        <div class="detail_child2">
            <ul class="list_detail">
                <?php if(!empty($fieldsTravaux->role)) { ?>
                <li>
                    <?= $fieldsTravaux->role; ?>
                </li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->annee)) { ?>
                <li>
                    <?= $fieldsTravaux->annee; ?>
                </li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->objet)) { ?>
                <li>
                    <?= $fieldsTravaux->objet; ?>
                </li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->commanditaire)) { ?>
                <li>
                    <?= $fieldsTravaux->commanditaire; ?>
                </li>
                <?php } ?>
                <?php if(!empty($fieldsTravaux->collaboration)) { ?>
                <li>
                    <?= $fieldsTravaux->collaboration; ?>
                </li>
                <?php } ?>
            </ul>
        </div>
        <div class="detail_image">
            <?php if(!empty($fieldsTravaux->image2)) { ?>
            <div class="imagedetail">
                <img src="<?= $fieldsTravaux->image2['url']; ?>" alt="<?= $fieldsTravaux->image2['alt']; ?>" class="image_travaux2">
            </div>
            <?php } ?>
        </div>
    </div>

    <div class="footer_nextPost">
        <div class="footer_nextPost_container">
            <p class="footer_nextPost_container_link">
                <?= next_post_link('%link', 'prochain projet'); ?>
            </p>
        </div>
    </div>

    <?php get_footer(); ?>
