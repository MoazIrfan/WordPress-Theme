<?php 
/**
Template Name: Page - Movies
 * 
 */
get_header(); ?> 						

								<?php 
								$args = array('post_type' => 'movie',  'post_per_page' => 6 );
								$loop = new WP_Query( $args ); 
								

								while( $loop->have_posts()) : $loop->the_post(); ?>
									 <div class="container">
										<?php $category = get_the_category(); echo $category[0]->category_description; ?>
										
										
										


										<div class="row">
										<div class="col-md-4 col-md-offset-">
											
											<div class="panel">
												<div class="thumbtitle group">
													<div class="thumbnail">
														<?php the_post_thumbnail('thumbnail'); ?>
													</div>
													<h3 class="title"><?php the_title(); ?>
														
														
													</h3>
													<p>My Rating: <span class="rating"><?php the_field('rating'); ?></span>
													</p>
													<div><!--thumbtitle-->
													<div class="content">
														<p><?php the_field('description'); ?></p>
													</div><!--content-->
											</div><!--panel-->
										
										</div><!--large 6-->
										</div>
										<div class="clearfix"></div>
									</div>
										<!-- <div> -->
										
								
								<?php endwhile; ?>
								

<?php get_footer(); ?>
