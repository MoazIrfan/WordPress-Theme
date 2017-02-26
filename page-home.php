

<?php get_header(); ?>

<div class="content">
	 <div class="container">
		 <div class="content-grids">

		 	

			 <div class="col-md-8 content-main">
				 <div class="content-grid">	

				 	<?php query_posts('showposts=1&category_name=tech'); ?>
					<?php while(have_posts()) : the_post(); ?>

					 <div class="content-grid-info">

					 	<a href="<?php the_permalink(); ?>" class="img-responsive">
						<?php the_post_thumbnail('homepage-thumbnail'); ?></a>

						 
						 <div class="post-info">
						 <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>  
						 
						 <p class="meta">
						 <?php the_time('F j, Y g:i a'); ?> |
						 by <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>"> <?php the_author(); ?></a> | posted in 
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
						 <p><?php the_excerpt(''); ?></p>
						 <a href="<?php the_permalink(); ?>"><span></span>Continue Reading</a>

						 </div>
					 </div>

					 <?php endwhile; ?>

					 <?php query_posts('showposts=2&category_name=web'); ?>
					 <?php while(have_posts()) : the_post(); ?>

					 <div class="content-grid-info">

					 	<a href="<?php the_permalink(); ?>" class="img-responsive">
						<?php the_post_thumbnail('homepage-thumbnail'); ?></a>

						 
						 <div class="post-info">
						 <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>  
						 
						 <p class="meta">
						 <?php the_time('F j, Y g:i a'); ?> |
						 by <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>"> <?php the_author(); ?></a> | posted in 
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
						 <p><?php the_excerpt(''); ?></p>
						 <a href="<?php the_permalink(); ?>"><span></span>Continue Reading</a>

						 </div>
					 </div>

					 <?php endwhile; ?>

					 
					 
				 </div>
			  </div>

			  <div class="col-md-4 content-right">
			  <?php get_sidebar(); ?>
			  </div>
			  
			  <div class="clearfix"></div>
		  </div>
	  </div>
</div>
<!---->
<?php get_footer(); ?>


	
