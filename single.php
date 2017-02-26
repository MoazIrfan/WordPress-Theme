<?php get_header(); ?> 	<hr>					
			<div class="container">					
			<?php while(have_posts()) : the_post(); ?><br>
			<div class="post">
										

			<hr><h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
			<p class="meta"><?php the_time('F j, Y g:i a'); ?> | by <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>"><?php the_author(); ?></a> | posted in <?php 

			$categories = get_the_category();
			$separator = ", ";
			$output = '';

			if($categories){
				foreach ($categories as $category) {
				$output .= '<a href="' . get_category_link($category->term_id) . '">' . $category->cat_name . '</a>' . $separator;
				}
			echo trim($output, $separator);
			} 

			?>
			 | <a href="<?php comments_link(); ?>" class="comments">
			<?Php comments_number('0 Comments','1 Comment','% responses'); ?></a></p>
			
									
			<div class="entry"> <a href="<?php the_permalink(); ?>" class="image image-full">
			<?php the_post_thumbnail('homepage-thumbnail'); ?></a> 
										
			<br><br><br><br><br><?php the_content('Read More'); ?>
			</div>
									
			<?php endwhile; ?>
			<?php comments_template(); ?>
			</div>
			</div>

<?php get_footer(); ?>
