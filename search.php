<?php get_header();?>

			<h2>Search result for: <?php the_search_query(); ?></h2>

			<?php while(have_posts()) : the_post(); ?>
				
			<?php get_template_part('content'); ?>
			
			<?php endwhile; ?>
			<?php comments_template(); ?>
									

<?php get_footer(); ?>
