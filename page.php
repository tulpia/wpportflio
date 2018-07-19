<?php get_header(); ?>

<?php 
    
    if(have_posts()) :
        while(have_posts()) : the_post(); ?>
        <div class="project-title">
    <div class="project-container">
        <a href="<?php the_permalink(); ?>"><p class="titre-projet"><?php the_title(); ?></p></a>
        <br>
        <div class="work_class_container">
            <?php if(get_field('categorie')) : ?>
            <p class="work_class"><?php the_field('categorie'); ?><?php endif; ?>
            <?php if(get_field('typedetravail')) : ?>
            <span class="type-travail"><?php the_field('typedetravail'); ?></span>
            <?php endif; ?>
            </p>
        </div>
    </div>
</div>
        <?php endwhile;


else :
echo '<p>No content found</p>';
endif;

    ?>

<?php get_footer(); ?>