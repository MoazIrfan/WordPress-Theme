<?php 
/**
Template Name: Page - Splash
 * 
 */
get_header(); ?> 						

								<?php while(have_posts()) : the_post(); ?>
									<div class="container">
										<?php $category = get_the_category(); echo $category[0]->category_description; ?>
										<h2 class="title"><?php the_title(); ?></h2>
										<div class="info-box">
											<h4>Disclaimer Title</h4>
											<p>With WordPress 3.4.1 there’re still some IDs to avoid, that can be found here.
											 Props to “toscho” for building a plugin collecting and listing them.</p>
										</div>
										
										<?php the_content('Read More'); ?>

										</div>
								
								<?php endwhile; ?>
								

<?php get_footer(); ?>
