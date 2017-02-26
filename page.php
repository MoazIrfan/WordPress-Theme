<?php get_header(); ?> 						
								<div class="container">
								<?php while(have_posts()) : the_post(); ?>
								
									<article class="post page">
										
										<?php $category = get_the_category(); echo $category[0]->category_description; ?>
										<h2><?php the_title(); ?></h2>
										
										<?php the_content('Read More'); ?>
									</article> 
								
								<?php endwhile; ?>
								</div>
								
								

<?php get_footer(); ?>
