-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 26, 2017 at 05:43 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wp`
--
CREATE DATABASE IF NOT EXISTS `wp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wp`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-12-16 10:38:56', '2016-12-16 10:38:56', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=240 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp', 'yes'),
(2, 'home', 'http://localhost/wp', 'yes'),
(3, 'blogname', 'WP Theme', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'irfanmoaz@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'web', 'yes'),
(41, 'stylesheet', 'web', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:10:"CATEGORIES";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:12:"RECENT POSTS";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:8:"ARCHIVES";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:1:{i:0;s:18:"mailmunch_widget-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1488148739;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1488192026;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1488192038;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', 'iZh ygURn1QlD/E]iUvDP)Q*cXx]?c$WFCkWJ6c&{[|d@,$*#GXaIW7LgeLcU`|9', 'no'),
(107, 'nonce_salt', 'S +,H&n}eILY-IGE@(m+RbV@z%l];hI6i))A332CJs J8e-7~zC@=#HJvG-:oomO', 'no'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.7.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.7.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.2";s:7:"version";s:5:"4.7.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1488105548;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(112, 'auth_key', 'od06@RS5N3?ytV6E<2oC$ZJg=JaSA^3{V6)saC+hLOFtAhP#2ftN;#;6o/?ai-Ge', 'no'),
(113, 'auth_salt', 'yoBaP |)Bnv=mo1VsvVCp;i0fbf)Lf~(My*9b8qM&A+3k(n2:c.Ih*i/$}2oJ=-`', 'no'),
(114, 'logged_in_key', ':eJA#L-0FA8%Bk4@bBPcd:v;nGZ/Dp7DBpf-<rN9l}7f>MF/xt1^EJLY-1?IW-y)', 'no'),
(115, 'logged_in_salt', '*X5QO5 FHTbtf0hkE=~vNAqaWE>G<m(p+IYc$?k+{%RH9>{%?*}X>|ntX}{YfwlM', 'no'),
(121, '_site_transient_timeout_browser_3724cf524ce46cd3376f6aebb4c04837', '1482489609', 'no'),
(122, '_site_transient_browser_3724cf524ce46cd3376f6aebb4c04837', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(135, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1481884954;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'personal blog', 'yes'),
(137, 'theme_mods_wp theme', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1488006648;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:1:{i:0;s:18:"mailmunch_widget-2";}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(144, '_site_transient_timeout_available_translations', '1481896425', 'no'),
(145, '_site_transient_available_translations', 'a:87:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-06 11:26:31";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-21 10:19:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.6.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 18:36:09";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 13:13:07";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 10:29:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-01 16:18:09";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 14:03:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:59:43";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:72:"http://downloads.wordpress.org/translation/core/4.6.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-05 15:05:02";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:56:13";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-06 12:29:42";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.6.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-09 20:42:31";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-20 07:14:07";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 02:18:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 23:19:29";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 22:36:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 11:54:12";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-04 22:04:52";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 17:56:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-31 08:03:58";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 12:34:44";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 15:07:52";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-22 16:41:36";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-27 18:10:49";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 18:30:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 18:42:25";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-02 11:49:52";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-10 18:17:57";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-21 15:44:17";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-08 11:09:06";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-25 19:56:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-03 13:43:01";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-07 15:12:28";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-06 20:18:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 05:34:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-29 11:28:08";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-02 08:41:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-01 15:23:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 11:51:34";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 07:18:31";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 21:29:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-26 17:38:44";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-13 20:38:52";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 14:18:43";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 13:09:49";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-14 13:22:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-28 08:58:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.6.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:54:16";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-26 20:21:25";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-07 09:30:50";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-06 22:49:40";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-30 19:40:04";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-08 14:52:32";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-04 18:38:43";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 07:00:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 16:41:17";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-01 10:58:06";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.6.1/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 10:50:15";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-01 16:07:46";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-18 10:43:17";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-05 11:58:02";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 13:53:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(150, 'recently_activated', 'a:1:{s:23:"mailmunch/mailmunch.php";i:1488105556;}', 'yes'),
(151, 'mailmunch_activation_redirect', 'true', 'yes'),
(152, 'widget_mailmunch_widget', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:7:"form_id";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'mailmunch_activation_date', '1481886785', 'yes'),
(154, 'mailmunch_user_token', 'c88ddfe00de6f222310c512c', 'yes'),
(155, 'mailmunch_site_id', '304609', 'yes'),
(168, '_site_transient_timeout_browser_88337cd9fed317d029aaa03191c0be0b', '1488085922', 'no'),
(169, '_site_transient_browser_88337cd9fed317d029aaa03191c0be0b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(194, '_transient_timeout_plugin_slugs', '1488209392', 'no'),
(195, '_transient_plugin_slugs', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:9:"hello.php";i:6;s:23:"mailmunch/mailmunch.php";}', 'no'),
(196, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1488047313', 'no'),
(197, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: No working transports found</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: No working transports found</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(200, 'theme_mods_web', 'a:1:{i:0;b:0;}', 'yes'),
(209, 'category_children', 'a:0:{}', 'yes'),
(220, '_site_transient_timeout_theme_roots', '1488107351', 'no'),
(221, '_site_transient_theme_roots', 'a:5:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:3:"web";s:7:"/themes";s:8:"wp theme";s:7:"/themes";}', 'no'),
(222, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1488105556;s:7:"checked";a:5:{s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";s:3:"web";s:3:"1.0";s:8:"wp theme";s:3:"1.0";}s:8:"response";a:2:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(223, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1488122978;s:7:"checked";a:7:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.11";s:19:"akismet/akismet.php";s:3:"3.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.5.1";s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";s:6:"0.4.31";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.5.2";s:9:"hello.php";s:3:"1.6";s:23:"mailmunch/mailmunch.php";s:5:"2.0.4";}s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:53:"http://downloads.wordpress.org/plugin/akismet.3.3.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":8:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.6.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/contact-form-7.4.6.1.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";O:8:"stdClass":2:{s:5:"4.6.1";O:8:"stdClass":3:{s:7:"percent";i:100;s:5:"votes";i:1;s:11:"total_votes";i:1;}s:5:"4.7.2";O:8:"stdClass":3:{s:7:"percent";i:100;s:5:"votes";i:5;s:11:"total_votes";i:5;}}}s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";O:8:"stdClass":8:{s:2:"id";s:5:"56983";s:4:"slug";s:34:"contact-form-7-mailchimp-extension";s:6:"plugin";s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";s:11:"new_version";s:6:"0.4.38";s:3:"url";s:65:"https://wordpress.org/plugins/contact-form-7-mailchimp-extension/";s:7:"package";s:76:"http://downloads.wordpress.org/plugin/contact-form-7-mailchimp-extension.zip";s:6:"tested";s:3:"4.8";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"http://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":6:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.2";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:67:"http://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:23:"mailmunch/mailmunch.php";O:8:"stdClass":6:{s:2:"id";s:5:"53059";s:4:"slug";s:9:"mailmunch";s:6:"plugin";s:23:"mailmunch/mailmunch.php";s:11:"new_version";s:5:"2.0.4";s:3:"url";s:40:"https://wordpress.org/plugins/mailmunch/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/mailmunch.2.0.4.zip";}}}', 'no'),
(227, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1488133546', 'no'),
(228, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6198";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3805";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3801";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3333";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2902";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2624";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2277";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2254";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2175";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2150";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2113";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2078";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"2017";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1972";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1810";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1701";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1679";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1502";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1414";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1326";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1310";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1180";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1158";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1107";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1045";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1037";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:4:"1003";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:4:"1002";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"992";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"979";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"945";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"921";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"890";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"882";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"881";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"846";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"804";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"803";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"797";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"788";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"782";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"780";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"778";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"767";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"765";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"750";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"743";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"740";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"734";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"718";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"664";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"662";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"660";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"655";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"643";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"642";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"637";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"628";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"623";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"608";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"608";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"602";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"598";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"596";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"589";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"576";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"567";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"566";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"562";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"554";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"554";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"547";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"546";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"543";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"530";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"524";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"517";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"496";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"492";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"475";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"473";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"467";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"464";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"459";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"452";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"448";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"446";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"445";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"438";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"437";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"436";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"435";}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";s:3:"435";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"430";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"430";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"427";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"426";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"423";}}', 'no'),
(229, 'acf_version', '4.4.11', 'yes'),
(232, 'cptui_new_install', 'false', 'yes'),
(233, 'cptui_post_types', 'a:1:{s:5:"movie";a:28:{s:4:"name";s:5:"movie";s:5:"label";s:6:"Movies";s:14:"singular_label";s:5:"Movie";s:11:"description";s:20:"Details of CPT Movie";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(236, 'cptui_taxonomies', 'a:1:{s:5:"genre";a:21:{s:4:"name";s:5:"genre";s:5:"label";s:6:"Genres";s:14:"singular_label";s:5:"Genre";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:12:"object_types";a:1:{i:0;s:5:"movie";}}}', 'yes'),
(239, 'type_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=122 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_wp_attached_file', '2016/12/1ehIxFh.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2016/12/1ehIxFh.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"1ehIxFh-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"1ehIxFh-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"1ehIxFh-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"1ehIxFh-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"1ehIxFh-1200x675.jpg";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1488041128:1'),
(11, 8, '_wp_attached_file', '2016/12/bgb.jpg'),
(12, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5000;s:6:"height";i:3750;s:4:"file";s:15:"2016/12/bgb.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"bgb-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"bgb-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"bgb-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"bgb-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:15:"bgb-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:15:"bgb-880x220.jpg";s:5:"width";i:880;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:15:"porta-thumbnail";a:4:{s:4:"file";s:15:"bgb-750x350.jpg";s:5:"width";i:750;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portb-thumbnail";a:4:{s:4:"file";s:15:"bgb-350x250.jpg";s:5:"width";i:350;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portc-thumbnail";a:4:{s:4:"file";s:15:"bgb-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 7, '_thumbnail_id', '29'),
(18, 10, '_edit_last', '1'),
(19, 10, '_edit_lock', '1488126990:1'),
(20, 12, '_edit_last', '1'),
(21, 12, '_edit_lock', '1488129737:1'),
(22, 15, '_edit_last', '1'),
(23, 15, '_edit_lock', '1481885157:1'),
(24, 17, '_edit_last', '1'),
(25, 17, '_edit_lock', '1488129367:1'),
(26, 19, '_edit_last', '1'),
(27, 19, '_edit_lock', '1481885486:1'),
(28, 21, '_edit_last', '1'),
(29, 21, '_edit_lock', '1488041209:1'),
(30, 22, '_wp_attached_file', '2016/12/img_7795.png'),
(31, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:322;s:4:"file";s:20:"2016/12/img_7795.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"img_7795-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"img_7795-300x193.png";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:9:"image/png";}s:15:"small-thumbnail";a:4:{s:4:"file";s:20:"img_7795-200x134.png";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:9:"image/png";}s:12:"banner-image";a:4:{s:4:"file";s:20:"img_7795-500x220.png";s:5:"width";i:500;s:6:"height";i:220;s:9:"mime-type";s:9:"image/png";}s:15:"portb-thumbnail";a:4:{s:4:"file";s:20:"img_7795-350x250.png";s:5:"width";i:350;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:15:"portc-thumbnail";a:4:{s:4:"file";s:20:"img_7795-350x220.png";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 21, '_thumbnail_id', '31'),
(35, 24, '_edit_last', '1'),
(36, 24, '_edit_lock', '1481888104:1'),
(44, 29, '_wp_attached_file', '2016/12/post1.jpg'),
(45, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:669;s:6:"height";i:320;s:4:"file";s:17:"2016/12/post1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"post1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"post1-300x143.jpg";s:5:"width";i:300;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:17:"post1-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:17:"post1-669x220.jpg";s:5:"width";i:669;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(50, 31, '_wp_attached_file', '2016/12/post2.jpg'),
(51, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:670;s:6:"height";i:320;s:4:"file";s:17:"2016/12/post2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"post2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"post2-300x143.jpg";s:5:"width";i:300;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:17:"post2-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:17:"post2-670x220.jpg";s:5:"width";i:670;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:17:"post2-669x320.jpg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(54, 34, '_wp_attached_file', '2017/02/post3.jpg'),
(55, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:670;s:6:"height";i:320;s:4:"file";s:17:"2017/02/post3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"post3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"post3-300x143.jpg";s:5:"width";i:300;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:17:"post3-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:17:"post3-670x220.jpg";s:5:"width";i:670;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:17:"post3-669x320.jpg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 33, '_edit_last', '1'),
(57, 33, '_thumbnail_id', '34'),
(60, 33, '_edit_lock', '1488102121:1'),
(61, 36, '_edit_last', '1'),
(62, 36, 'field_58b2f699ecb23', 'a:13:{s:3:"key";s:19:"field_58b2f699ecb23";s:5:"label";s:11:"Description";s:4:"name";s:11:"description";s:4:"type";s:8:"textarea";s:12:"instructions";s:21:"Description goes here";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(63, 36, 'field_58b2f6efecb24', 'a:11:{s:3:"key";s:19:"field_58b2f6efecb24";s:5:"label";s:4:"Year";s:4:"name";s:4:"year";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(64, 36, 'field_58b2f70cecb25', 'a:12:{s:3:"key";s:19:"field_58b2f70cecb25";s:5:"label";s:6:"Rating";s:4:"name";s:6:"rating";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"choices";a:4:{s:5:"Great";s:5:"Great";s:4:"Good";s:4:"Good";s:4:"Fair";s:4:"Fair";s:3:"Bad";s:3:"Bad";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(65, 36, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"movie";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(66, 36, 'position', 'normal'),
(67, 36, 'layout', 'default'),
(68, 36, 'hide_on_screen', ''),
(69, 36, '_edit_lock', '1488130292:1'),
(70, 37, '_edit_last', '1'),
(71, 37, '_edit_lock', '1488130565:1'),
(72, 38, '_wp_attached_file', '2017/02/p28742_p_v8_af.jpg'),
(73, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:1440;s:4:"file";s:26:"2017/02/p28742_p_v8_af.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"p28742_p_v8_af-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"p28742_p_v8_af-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"p28742_p_v8_af-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"p28742_p_v8_af-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:26:"p28742_p_v8_af-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:26:"p28742_p_v8_af-880x220.jpg";s:5:"width";i:880;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:26:"p28742_p_v8_af-669x320.jpg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 10, '_wp_page_template', 'page-movie.php'),
(75, 37, '_thumbnail_id', '38'),
(76, 37, 'description', 'Spy Game is a 2001 American spy film directed by Tony Scott and starring Robert Redford and Brad Pitt. The film grossed $62 million in the United States and $143 million worldwide and received mostly positive reviews from film critics.'),
(77, 37, '_description', 'field_58b2f699ecb23'),
(78, 37, 'year', '20010201'),
(79, 37, '_year', 'field_58b2f6efecb24'),
(80, 37, 'rating', 'Great'),
(81, 37, '_rating', 'field_58b2f70cecb25'),
(82, 41, '_edit_last', '1'),
(83, 41, '_edit_lock', '1488130391:1'),
(84, 42, '_wp_attached_file', '2017/02/p170313_p_v8_ae.jpg'),
(85, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:1440;s:4:"file";s:27:"2017/02/p170313_p_v8_ae.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"p170313_p_v8_ae-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"p170313_p_v8_ae-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"p170313_p_v8_ae-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"p170313_p_v8_ae-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:27:"p170313_p_v8_ae-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:27:"p170313_p_v8_ae-880x220.jpg";s:5:"width";i:880;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:27:"p170313_p_v8_ae-669x320.jpg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(86, 41, '_thumbnail_id', '42'),
(87, 41, 'description', 'While out hunting, Llewelyn Moss (Josh Brolin) finds the grisly aftermath of a drug deal. Though he knows better, he cannot resist the cash left behind and takes it with him. The hunter becomes the hunted when a merciless killer named Chigurh (Javier Bardem) picks up his trail. Also looking for Moss is Sheriff Bell (Tommy Lee Jones), an aging lawman who reflects on a changing world and a dark secret of his own, as he tries to find and protect Moss.'),
(88, 41, '_description', 'field_58b2f699ecb23'),
(89, 41, 'year', ''),
(90, 41, '_year', 'field_58b2f6efecb24'),
(91, 41, 'rating', 'Good'),
(92, 41, '_rating', 'field_58b2f70cecb25'),
(93, 43, '_edit_last', '1'),
(94, 43, '_edit_lock', '1488130376:1'),
(95, 44, '_wp_attached_file', '2017/02/p7289_p_v8_aa.jpg'),
(96, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:1440;s:4:"file";s:25:"2017/02/p7289_p_v8_aa.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"p7289_p_v8_aa-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"p7289_p_v8_aa-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"p7289_p_v8_aa-768x1152.jpg";s:5:"width";i:768;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"p7289_p_v8_aa-683x1024.jpg";s:5:"width";i:683;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:25:"p7289_p_v8_aa-200x134.jpg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:25:"p7289_p_v8_aa-880x220.jpg";s:5:"width";i:880;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:25:"p7289_p_v8_aa-669x320.jpg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 43, '_thumbnail_id', '44'),
(98, 43, 'description', 'One Flew Over the Cuckoo''s Nest is a 1975 American comedy-drama film directed by Miloš Forman, based on the 1962 novel One Flew Over the Cuckoo''s Nest by Ken Kesey.'),
(99, 43, '_description', 'field_58b2f699ecb23'),
(100, 43, 'year', ''),
(101, 43, '_year', 'field_58b2f6efecb24'),
(102, 43, 'rating', 'Great'),
(103, 43, '_rating', 'field_58b2f70cecb25'),
(104, 17, '_wp_page_template', 'page-portfolio.php'),
(105, 12, '_wp_page_template', 'page-splash.php'),
(106, 48, '_edit_last', '1'),
(107, 48, '_edit_lock', '1488129912:1'),
(108, 49, '_wp_attached_file', '2017/02/file.jpeg'),
(109, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:17:"2017/02/file.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"file-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"file-300x169.jpeg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"file-768x432.jpeg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"file-1024x576.jpeg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:17:"file-200x134.jpeg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:17:"file-880x220.jpeg";s:5:"width";i:880;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:17:"file-669x320.jpeg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 48, '_thumbnail_id', '49'),
(111, 50, '_edit_last', '1'),
(112, 50, '_edit_lock', '1488130359:1'),
(113, 51, '_wp_attached_file', '2017/02/co.jpeg'),
(114, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:15:"2017/02/co.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"co-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"co-300x169.jpeg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"co-768x432.jpeg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"co-1024x576.jpeg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:15:"small-thumbnail";a:4:{s:4:"file";s:15:"co-200x134.jpeg";s:5:"width";i:200;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"banner-image";a:4:{s:4:"file";s:15:"co-880x220.jpeg";s:5:"width";i:880;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:18:"homepage-thumbnail";a:4:{s:4:"file";s:15:"co-669x320.jpeg";s:5:"width";i:669;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 50, '_thumbnail_id', '51'),
(116, 19, '_wp_trash_meta_status', 'publish'),
(117, 19, '_wp_trash_meta_time', '1488130146'),
(118, 19, '_wp_desired_post_slug', 'about'),
(119, 15, '_wp_trash_meta_status', 'publish'),
(120, 15, '_wp_trash_meta_time', '1488130154'),
(121, 15, '_wp_desired_post_slug', 'travel');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-12-16 10:38:56', '2016-12-16 10:38:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-12-16 10:38:56', '2016-12-16 10:38:56', '', 0, 'http://localhost/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2016-12-16 10:38:56', '2016-12-16 10:38:56', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-12-16 10:38:56', '2016-12-16 10:38:56', '', 0, 'http://localhost/wp/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-12-16 10:41:54', '2016-12-16 10:41:54', '', '1ehixfh', '', 'inherit', 'open', 'closed', '', '1ehixfh', '', '', '2016-12-16 10:41:54', '2016-12-16 10:41:54', '', 0, 'http://localhost/wp/wp-content/uploads/2016/12/1ehIxFh.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2016-12-16 10:44:46', '2016-12-16 10:44:46', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'LOREM IPSUM DOLOR SIT AMET', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2017-02-25 16:35:52', '2017-02-25 16:35:52', '', 0, 'http://localhost/wp/?p=7', 0, 'post', '', 0),
(8, 1, '2016-12-16 10:44:36', '2016-12-16 10:44:36', '', 'bgb', '', 'inherit', 'open', 'closed', '', 'bgb', '', '', '2016-12-16 10:44:36', '2016-12-16 10:44:36', '', 7, 'http://localhost/wp/wp-content/uploads/2016/12/bgb.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2016-12-16 10:44:46', '2016-12-16 10:44:46', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Test 2', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-12-16 10:44:46', '2016-12-16 10:44:46', '', 7, 'http://localhost/wp/index.php/2016/12/16/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-16 10:47:20', '2016-12-16 10:47:20', '', 'CPT Movie', '', 'publish', 'closed', 'closed', '', 'fashion', '', '', '2017-02-26 16:27:25', '2017-02-26 16:27:25', '', 0, 'http://localhost/wp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-12-16 10:47:20', '2016-12-16 10:47:20', '', 'Fashion', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-16 10:47:20', '2016-12-16 10:47:20', '', 10, 'http://localhost/wp/index.php/2016/12/16/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-12-16 10:48:01', '2016-12-16 10:48:01', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Splash', '', 'publish', 'closed', 'closed', '', 'feature', '', '', '2017-02-26 17:19:57', '2017-02-26 17:19:57', '', 0, 'http://localhost/wp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-12-16 10:48:01', '2016-12-16 10:48:01', '', 'Feature', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-16 10:48:01', '2016-12-16 10:48:01', '', 12, 'http://localhost/wp/index.php/2016/12/16/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-12-16 10:48:08', '2016-12-16 10:48:08', '', 'Features', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-16 10:48:08', '2016-12-16 10:48:08', '', 12, 'http://localhost/wp/index.php/2016/12/16/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-12-16 10:48:16', '2016-12-16 10:48:16', '', 'Travel', '', 'trash', 'closed', 'closed', '', 'travel__trashed', '', '', '2017-02-26 17:29:14', '2017-02-26 17:29:14', '', 0, 'http://localhost/wp/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-12-16 10:48:16', '2016-12-16 10:48:16', '', 'Travel', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-12-16 10:48:16', '2016-12-16 10:48:16', '', 15, 'http://localhost/wp/index.php/2016/12/16/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-12-16 10:48:27', '2016-12-16 10:48:27', '', 'CPT Portfolio', '', 'publish', 'closed', 'closed', '', 'music', '', '', '2017-02-26 17:18:25', '2017-02-26 17:18:25', '', 0, 'http://localhost/wp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-12-16 10:48:27', '2016-12-16 10:48:27', '', 'Music', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-12-16 10:48:27', '2016-12-16 10:48:27', '', 17, 'http://localhost/wp/index.php/2016/12/16/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-12-16 10:48:43', '2016-12-16 10:48:43', '', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2017-02-26 17:29:06', '2017-02-26 17:29:06', '', 0, 'http://localhost/wp/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-12-16 10:48:43', '2016-12-16 10:48:43', '', 'About', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-12-16 10:48:43', '2016-12-16 10:48:43', '', 19, 'http://localhost/wp/index.php/2016/12/16/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-12-16 10:53:18', '2016-12-16 10:53:18', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'LOREM IPSUM DOLOR SIT AMET', '', 'publish', 'open', 'open', '', 'test-3', '', '', '2017-02-25 16:48:58', '2017-02-25 16:48:58', '', 0, 'http://localhost/wp/?p=21', 0, 'post', '', 0),
(22, 1, '2016-12-16 10:53:09', '2016-12-16 10:53:09', '', 'img_7795', '', 'inherit', 'open', 'closed', '', 'img_7795', '', '', '2016-12-16 10:53:09', '2016-12-16 10:53:09', '', 21, 'http://localhost/wp/wp-content/uploads/2016/12/img_7795.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2016-12-16 10:53:18', '2016-12-16 10:53:18', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Test 3', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-12-16 10:53:18', '2016-12-16 10:53:18', '', 21, 'http://localhost/wp/index.php/2016/12/16/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-12-16 10:54:20', '2016-12-16 10:54:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-16 10:54:20', '2016-12-16 10:54:20', '', 0, 'http://localhost/wp/?page_id=24', 0, 'page', '', 0),
(25, 1, '2016-12-16 10:54:20', '2016-12-16 10:54:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2016-12-16 10:54:20', '2016-12-16 10:54:20', '', 24, 'http://localhost/wp/index.php/2016/12/16/24-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-02-21 09:18:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-02-21 09:18:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/?post_type=portfolio&p=28', 0, 'portfolio', '', 0),
(29, 1, '2017-02-25 16:20:52', '2017-02-25 16:20:52', '', 'post1', '', 'inherit', 'open', 'closed', '', 'post1', '', '', '2017-02-25 16:20:52', '2017-02-25 16:20:52', '', 7, 'http://localhost/wp/wp-content/uploads/2016/12/post1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2017-02-25 16:35:52', '2017-02-25 16:35:52', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'LOREM IPSUM DOLOR SIT AMET', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-02-25 16:35:52', '2017-02-25 16:35:52', '', 7, 'http://localhost/wp/index.php/2017/02/25/7-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-02-25 16:48:53', '2017-02-25 16:48:53', '', 'post2', '', 'inherit', 'open', 'closed', '', 'post2', '', '', '2017-02-25 16:48:53', '2017-02-25 16:48:53', '', 21, 'http://localhost/wp/wp-content/uploads/2016/12/post2.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-02-25 16:48:58', '2017-02-25 16:48:58', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'LOREM IPSUM DOLOR SIT AMET', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-02-25 16:48:58', '2017-02-25 16:48:58', '', 21, 'http://localhost/wp/index.php/2017/02/25/21-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-02-25 16:50:03', '2017-02-25 16:50:03', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<div class="mailmunch-forms-after-post"></div>', 'LOREM IPSUM DOLOR SIT AMET', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2017-02-25 16:50:03', '2017-02-25 16:50:03', '', 0, 'http://localhost/wp/?p=33', 0, 'post', '', 0),
(34, 1, '2017-02-25 16:49:58', '2017-02-25 16:49:58', '', 'post3', '', 'inherit', 'open', 'closed', '', 'post3', '', '', '2017-02-25 16:49:58', '2017-02-25 16:49:58', '', 33, 'http://localhost/wp/wp-content/uploads/2017/02/post3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-02-25 16:50:03', '2017-02-25 16:50:03', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n<div class="mailmunch-forms-after-post"></div>', 'LOREM IPSUM DOLOR SIT AMET', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-02-25 16:50:03', '2017-02-25 16:50:03', '', 33, 'http://localhost/wp/index.php/2017/02/25/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-02-26 15:44:16', '2017-02-26 15:44:16', '', 'Movie Details', '', 'publish', 'closed', 'closed', '', 'acf_movie-details', '', '', '2017-02-26 15:44:16', '2017-02-26 15:44:16', '', 0, 'http://localhost/wp/?post_type=acf&#038;p=36', 0, 'acf', '', 0),
(37, 1, '2017-02-26 16:08:19', '2017-02-26 16:08:19', '', 'Spy Game (2001)', '', 'publish', 'closed', 'closed', '', 'spy-game', '', '', '2017-02-26 17:36:04', '2017-02-26 17:36:04', '', 0, 'http://localhost/wp/?post_type=movie&#038;p=37', 0, 'movie', '', 0),
(38, 1, '2017-02-26 15:49:55', '2017-02-26 15:49:55', '', 'p28742_p_v8_af', '', 'inherit', 'open', 'closed', '', 'p28742_p_v8_af', '', '', '2017-02-26 15:49:55', '2017-02-26 15:49:55', '', 37, 'http://localhost/wp/wp-content/uploads/2017/02/p28742_p_v8_af.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2017-02-26 16:08:12', '2017-02-26 16:08:12', '', 'CPT Movie', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-02-26 16:08:12', '2017-02-26 16:08:12', '', 10, 'http://localhost/wp/?p=39', 0, 'revision', '', 0),
(41, 1, '2017-02-26 16:55:00', '2017-02-26 16:55:00', '', 'No Country for Old Man (2007)', '', 'publish', 'closed', 'closed', '', 'no-country-for-old-man', '', '', '2017-02-26 17:35:33', '2017-02-26 17:35:33', '', 0, 'http://localhost/wp/?post_type=movie&#038;p=41', 0, 'movie', '', 0),
(42, 1, '2017-02-26 16:54:41', '2017-02-26 16:54:41', '', 'p170313_p_v8_ae', '', 'inherit', 'open', 'closed', '', 'p170313_p_v8_ae', '', '', '2017-02-26 16:54:41', '2017-02-26 16:54:41', '', 41, 'http://localhost/wp/wp-content/uploads/2017/02/p170313_p_v8_ae.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-02-26 16:56:09', '2017-02-26 16:56:09', '', 'One Flew Over the Cuckoo''s Nest (1975)', '', 'publish', 'closed', 'closed', '', 'one-flew-over-the-cuckoos-nest', '', '', '2017-02-26 17:35:16', '2017-02-26 17:35:16', '', 0, 'http://localhost/wp/?post_type=movie&#038;p=43', 0, 'movie', '', 0),
(44, 1, '2017-02-26 16:56:03', '2017-02-26 16:56:03', '', 'p7289_p_v8_aa', '', 'inherit', 'open', 'closed', '', 'p7289_p_v8_aa', '', '', '2017-02-26 16:56:03', '2017-02-26 16:56:03', '', 43, 'http://localhost/wp/wp-content/uploads/2017/02/p7289_p_v8_aa.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2017-02-26 17:18:25', '2017-02-26 17:18:25', '', 'CPT Portfolio', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-02-26 17:18:25', '2017-02-26 17:18:25', '', 17, 'http://localhost/wp/?p=45', 0, 'revision', '', 0),
(46, 1, '2017-02-26 17:18:48', '2017-02-26 17:18:48', '', 'Splash', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-02-26 17:18:48', '2017-02-26 17:18:48', '', 12, 'http://localhost/wp/?p=46', 0, 'revision', '', 0),
(47, 1, '2017-02-26 17:19:57', '2017-02-26 17:19:57', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Splash', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-02-26 17:19:57', '2017-02-26 17:19:57', '', 12, 'http://localhost/wp/?p=47', 0, 'revision', '', 0),
(48, 1, '2017-02-26 17:27:29', '2017-02-26 17:27:29', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Test 1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2017-02-26 17:27:29', '2017-02-26 17:27:29', '', 0, 'http://localhost/wp/?post_type=portfolio&#038;p=48', 0, 'portfolio', '', 0),
(49, 1, '2017-02-26 17:27:22', '2017-02-26 17:27:22', '', 'file', '', 'inherit', 'open', 'closed', '', 'file', '', '', '2017-02-26 17:27:22', '2017-02-26 17:27:22', '', 48, 'http://localhost/wp/wp-content/uploads/2017/02/file.jpeg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-02-26 17:28:44', '2017-02-26 17:28:44', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Test 2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.', 'publish', 'closed', 'closed', '', 'test-2', '', '', '2017-02-26 17:28:44', '2017-02-26 17:28:44', '', 0, 'http://localhost/wp/?post_type=portfolio&#038;p=50', 0, 'portfolio', '', 0),
(51, 1, '2017-02-26 17:28:37', '2017-02-26 17:28:37', '', 'co', '', 'inherit', 'open', 'closed', '', 'co', '', '', '2017-02-26 17:28:37', '2017-02-26 17:28:37', '', 50, 'http://localhost/wp/wp-content/uploads/2017/02/co.jpeg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Tech', 'tech', 0),
(3, 'News', 'news', 0),
(4, 'Web', 'web', 0),
(5, 'Action', 'action', 0),
(6, 'Adventure', 'adventure', 0),
(7, 'Comedy', 'comedy', 0),
(8, 'Sci-fi', 'sci-fi', 0),
(9, 'Thriller', 'thriller', 0),
(10, 'Drama', 'drama', 0),
(11, 'Horror', 'horror', 0),
(12, 'Animation', 'animation', 0),
(13, 'Web', 'web', 0),
(14, 'Designing', 'designing', 0),
(15, 'Development', 'development', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(21, 4, 0),
(33, 4, 0),
(37, 5, 0),
(37, 6, 0),
(37, 7, 0),
(37, 8, 0),
(37, 9, 0),
(37, 10, 0),
(37, 11, 0),
(37, 12, 0),
(41, 5, 0),
(41, 6, 0),
(43, 6, 0),
(43, 10, 0),
(48, 14, 0),
(48, 15, 0),
(50, 13, 0),
(50, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 2),
(5, 5, 'genre', '', 0, 2),
(6, 6, 'genre', '', 0, 3),
(7, 7, 'genre', '', 0, 1),
(8, 8, 'genre', '', 0, 1),
(9, 9, 'genre', '', 0, 1),
(10, 10, 'genre', '', 0, 2),
(11, 11, 'genre', '', 0, 1),
(12, 12, 'genre', '', 0, 1),
(13, 13, 'type', '', 0, 1),
(14, 14, 'software', '', 0, 2),
(15, 15, 'software', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"cfcdb23f9564b83021e8ee3c802a16594fec7afe126fc2a92cf4206779faa4c1";a:4:{s:10:"expiration";i:1488176906;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1488004106;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '26'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1481884939'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:19:"add-post-type-movie";i:1;s:23:"add-post-type-portfolio";i:2;s:12:"add-post_tag";i:3;s:9:"add-genre";i:4;s:8:"add-type";i:5;s:12:"add-software";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgKgqEMirVAWvEL3MAc4xY9CtGtPoO/', 'admin', 'irfanmoaz@gmail.com', '', '2016-12-16 10:38:54', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
