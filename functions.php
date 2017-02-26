<?php 
function WordPress_resources(){

	
	wp_enqueue_style('customstyle', get_template_directory_uri() . '/css/style.css', array(), '1.0.0', 'all');
	
	
	wp_enqueue_style('style-bootstrap-2', get_template_directory_uri() . '/css/bootstrap.css');
	
	
	

	wp_enqueue_style('style-google-font', '//fonts.googleapis.com/css?family=Raleway:400,600,700');

	
	wp_enqueue_script('js', get_template_directory_uri() . '/js/easing.js', array(), '1.0.0', true);
	wp_enqueue_script('js-2', get_template_directory_uri() . '/js/jquery.min.js', array(), '1.0.1', true);
	wp_enqueue_script('js-3', get_template_directory_uri() . '/js/move-top.js', array('jquery'), '1.0.2' );
	

	 
	
}

add_action('wp_enqueue_scripts', 'WordPress_resources'); 

?>

<?php 

//add thumbnail to post

add_theme_support('post-thumbnails');
add_image_size('small-thumbnail', 200, 134, true);
add_image_size('banner-image', 880, 220, array('left', 'top', )); 
add_image_size('homepage-thumbnail', 669, 320, true);

//add menu

add_theme_support('menus'); 

register_sidebar(array(

        'name' => __( 'Right Hand Sidebar' ),

        'id' => 'right-sidebar',

        'description' => __( 'Widgets in this area will be shown on the right-hand side.' ),

        'before_title' => '<h3 class="sidebar-title">',

        'after_title' => '</h3>',
        
        'before_widget' => '<div class="widget-item">',

        'after_widget' => '</div><!-- widget end -->',

        

    ) );


register_sidebar(array(

        'name' => __( 'Footer Area 1' ),

        'id' => 'footer1',
    ) );
register_sidebar(array(

        'name' => __( 'Footer Area 2' ),

        'id' => 'footer2',
    ) );
register_sidebar(array(

        'name' => __( 'Footer Area 3' ),

        'id' => 'footer3',
    ) );



/* custom post type */

function awesome_custom_post_type(){
	
	$labels = array(
	'name' => 'Portfolio',
	'singular_name' => 'Portfolio',
	'add_new' => 'Add item',
	'all_item' => 'All item',
	'name' => 'Portfolio',
	'add_new_item' => 'Add item',
	'edit_item' => 'Edit item',
	'new_item' => 'New item',
	'view_item' => 'View item',
	'search_item' => 'Search Portfolio',
	'not_found' => 'No items found',
	'not_found_in_trash' => 'No items found in trash',
	'parent_item_colon' => 'Parent Item',

	);
	$args = array(
		'labels' => $labels,
		'public' => true,
		'has_archive' => true,
		'publicity_queryable' => true,
		'query_var' => true,
		'rewrite' => true,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array(
			'title',
			'editor',
			'excerpt',
			'thumbnail',
			'revision',

		),
		//'taxonomies' => array('category', 'post_tag'),
		'menu_position' => 5,
		'exclude_form_search' => false

	);
	register_post_type('portfolio',$args);
	}
	add_action('init','awesome_custom_post_type');

	function awesome_custom_taxonomies(){

//add new taxonomy hierarchical
$labels = array(
	'name' => 'Types',
	'singular_name' => 'Type',
	'search_item' => 'Search Types',
	'all_items' => 'All Types',
	'parent_item' => 'Parent Type',
	'parent_item_colon' => 'Parent Type:',
	'edit_item' => 'Edit Type',
	'update_item' => 'Update Type',
	'add_new_item' => 'Add New Work Type',
	'new_item_name' => 'New Type Name',
	'menu_name' => 'Types'
);

$args = array(
		'hierarchical' => true,
		'labels' => $labels,
		'show_ui' => true,
		'show_admin_column' => true,
		'query_var' => true,
		'rewrite' => array( 'slug' => 'type' )
);

register_taxonomy('type', array('portfolio'), $args);

//add new taxonomy Not hierarchical

register_taxonomy('software', 'portfolio', array(
		'label' => 'software',
		'rewrite' => array( 'slug' => 'software' ),
		'hierarchical' => false,
));
}

add_action( 'init' , 'awesome_custom_taxonomies');



//Custom Term Function

function awesome_get_terms($postID, $term){
	$terms_list = wp_get_post_terms($postID, $term);
	$output = '';

	$i = 0;
	foreach( $terms_list as $term ){ $i++;
		if( $i > 1 ){ $output.=', '; }
		$output .= '<a href="' . get_term_link( $term ) . '">'. $term->name .'</a>';
	}
	return $output;
} 
?>