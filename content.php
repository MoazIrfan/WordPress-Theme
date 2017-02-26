<div class="container">
<article class="post <?php if ( has_post_thumbnail() ) { ?>has-thumbnail <?php } ?>"> 

				<div class="post-thumbnail">

					<a href="<?php the_permalink(); ?>" class="image image-full">
					<?php the_post_thumbnail('small-thumbnail'); ?></a>

				</div>
										
			<h2 class="title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
			<p class="meta"><?php the_time('F j, Y g:i a'); ?> | by <a href="<?php echo 
			get_author_posts_url(get_the_author_meta('ID')); ?>"><?php the_author(); ?></a> | posted in 
			<?php 
			$terms_list = wp_get_post_terms($post->ID, 'type');

			$i = 0;
			foreach( $terms_list as $term ){ $i++;
				if($i > 1){echo', ';}
				echo $term->name;
			}
			?>
			<?php 

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
			
			<?php if (is_search() || is_archive() || is_home() ) { ?>
				<P>
				<?php echo get_the_excerpt(''); ?>
				<a href="<?php the_permalink(); ?>"><span style="color:#006ec3">Continued &raquo;</span></a>
				</p>
			<?php } else {
				 the_content();
			} ?>					
			  
										
										
			
			</article> 
		</div>