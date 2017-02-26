<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title><?php bloginfo('name'); ?></title>

		

		<?php wp_head(); ?>

		


		
		
		
		

	</head>


<body <?php body_class(); ?>>

	
	<!---header---->			
<div class="header">  
	 <div class="container">
		  <div class="logo">
			  <a href="index.php"><img src="images/logo1.jpg" title="" /></a>
		  </div>
			 <!---start-top-nav---->
			 <div class="top-menu">
				 <div class="search">
					 
					 <?php echo get_search_form() ;?>
					 
				 </div>
				  <span class="menu"> </span> 
				   <ul>


<?php $defaults = array(
    'theme_location'  => '',
    'menu'            => '',
    'container'       => '',
    'container_class' => 'menu-{menu slug}-container',
    'container_id'    => '',
    'menu_class'      => 'menu',
    'menu_id'         => '',
    'echo'            => true,
    'fallback_cb'     => 'wp_page_menu',
    'before'          => '',
    'after'           => '',
    'link_before'     => '',
    'link_after'      => '',
    'items_wrap'      => '%3$s',
    'depth'           => 0,
    'walker'          => ''
);
?>
				   		<?php wp_nav_menu($defaults); ?>

				 </ul>
			 </div>
			 <div class="clearfix"></div>
					<script>
					$("span.menu").click(function(){
					$(".top-menu ul").slideToggle("slow" , function(){
					});
					});
					</script>
				<!---//End-top-nav---->					
	 </div>
</div>
<!--/header-->


