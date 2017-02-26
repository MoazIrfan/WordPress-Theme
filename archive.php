
<?php get_header();?>


<div class="container">
	<h2><?php

		if(is_category()){
			single_cat_title();
		}else if(is_tag()){
			sigle_tag_title();
		}else if(is_author()){
			the_post();
			echo 'Author Archives: ' . get_the_author();
			rewind_posts();
		}else if(is_day()){
			echo 'Daily Archives: ' . get_the_date();
		}else if(is_month()){
			echo 'Monthly Archives: ' . get_the_date('F Y');
		}else if(is_year()){
			echo 'Yearly Archives: ' . get_the_date('Y');
		}else{
			echo 'Archives:';
		}


	?></h2>

			<?php while(have_posts()) : the_post(); ?>
				
			<?php get_template_part('content'); ?>
			
			<?php endwhile; ?>
			<?php comments_template(); ?>


</div>

			
<?php get_footer(); ?>
