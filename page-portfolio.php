<?php 
/**
Template Name: Page - Portfolio
 * 
 */
get_header(); ?> 						

								<?php 
								$args = array('post_type' => 'portfolio',  'post_per_page' => 6 );
								$loop = new WP_Query( $args ); 
								

								while( $loop->have_posts()) : $loop->the_post(); ?>
									<div class="container">
										<?php get_template_part('content'); ?>

										</div>
								
								<?php endwhile; ?>
								

<?php get_footer(); ?>
