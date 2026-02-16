-- Tablas core faltantes de WordPress para komeijuku.com.ar
-- WordPress 6.9.1 / PHP 7.2.34
-- Ejecutar en DBeaver sobre la base komei_db

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- --------------------------------------------------------
-- Tabla: wp_commentmeta
-- --------------------------------------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Tabla: wp_comments
-- --------------------------------------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Tabla: wp_links
-- --------------------------------------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Tabla: wp_postmeta
-- --------------------------------------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Tabla: wp_options
-- --------------------------------------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Datos mínimos para wp_options (WordPress no arranca sin estos)
-- --------------------------------------------------------
INSERT INTO `wp_options` (`option_name`, `option_value`, `autoload`) VALUES
('siteurl', 'https://www.komeijuku.com.ar', 'yes'),
('home', 'https://www.komeijuku.com.ar', 'yes'),
('blogname', 'Komei Juku Argentina', 'yes'),
('blogdescription', 'Muso Jikiden Eishin Ryu Iaido', 'yes'),
('users_can_register', '0', 'yes'),
('admin_email', 'ruben_loffreda@yahoo.com.ar', 'yes'),
('start_of_week', '1', 'yes'),
('use_balanceTags', '0', 'yes'),
('use_smilies', '1', 'yes'),
('require_name_email', '1', 'yes'),
('comments_notify', '1', 'yes'),
('posts_per_rss', '10', 'yes'),
('rss_use_excerpt', '0', 'yes'),
('mailserver_url', 'mail.example.com', 'yes'),
('mailserver_login', 'login@example.com', 'yes'),
('mailserver_pass', 'password', 'yes'),
('mailserver_port', '110', 'yes'),
('default_category', '1', 'yes'),
('default_ping_status', 'open', 'yes'),
('default_comment_status', 'open', 'yes'),
('posts_per_page', '10', 'yes'),
('date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
('time_format', 'H:i', 'yes'),
('links_updated_date_format', 'F j, Y g:i a', 'yes'),
('comment_moderation', '0', 'yes'),
('moderation_notify', '1', 'yes'),
('permalink_structure', '/%postname%/', 'yes'),
('rewrite_rules', '', 'yes'),
('hack_file', '0', 'yes'),
('blog_charset', 'UTF-8', 'yes'),
('moderation_keys', '', 'no'),
('active_plugins', 'a:0:{}', 'yes'),
('category_base', '', 'yes'),
('ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
('comment_max_links', '2', 'yes'),
('gmt_offset', '-3', 'yes'),
('default_email_category', '1', 'yes'),
('recently_edited', '', 'no'),
('template', 'Newspaper', 'yes'),
('stylesheet', 'Newspaper', 'yes'),
('comment_registration', '0', 'yes'),
('html_type', 'text/html', 'yes'),
('use_trackback', '0', 'yes'),
('default_role', 'subscriber', 'yes'),
('db_version', '57155', 'yes'),
('uploads_use_yearmonth_folders', '1', 'yes'),
('upload_path', '', 'yes'),
('blog_public', '1', 'yes'),
('default_link_category', '2', 'yes'),
('show_on_front', 'page', 'yes'),
('tag_base', '', 'yes'),
('show_avatars', '1', 'yes'),
('avatar_rating', 'G', 'yes'),
('upload_url_path', '', 'yes'),
('thumbnail_size_w', '150', 'yes'),
('thumbnail_size_h', '150', 'yes'),
('thumbnail_crop', '1', 'yes'),
('medium_size_w', '300', 'yes'),
('medium_size_h', '300', 'yes'),
('avatar_default', 'mystery', 'yes'),
('large_size_w', '1024', 'yes'),
('large_size_h', '1024', 'yes'),
('image_default_link_type', 'none', 'yes'),
('image_default_size', '', 'yes'),
('image_default_align', '', 'yes'),
('close_comments_for_old_posts', '0', 'yes'),
('close_comments_days_old', '14', 'yes'),
('thread_comments', '1', 'yes'),
('thread_comments_depth', '5', 'yes'),
('page_comments', '0', 'yes'),
('comments_per_page', '50', 'yes'),
('default_comments_page', 'newest', 'yes'),
('comment_order', 'asc', 'yes'),
('sticky_posts', 'a:0:{}', 'yes'),
('widget_categories', 'a:0:{}', 'yes'),
('widget_text', 'a:0:{}', 'yes'),
('widget_rss', 'a:0:{}', 'yes'),
('uninstall_plugins', 'a:0:{}', 'no'),
('timezone_string', 'America/Argentina/Buenos_Aires', 'yes'),
('page_for_posts', '0', 'yes'),
('page_on_front', '0', 'yes'),
('default_post_format', '0', 'yes'),
('link_manager_enabled', '0', 'yes'),
('finished_splitting_shared_terms', '1', 'yes'),
('site_icon', '0', 'yes'),
('medium_large_size_w', '768', 'yes'),
('medium_large_size_h', '0', 'yes'),
('wp_page_for_privacy_policy', '0', 'yes'),
('show_comments_cookies_opt_in', '1', 'yes'),
('admin_email_lifespan', '0', 'yes'),
('initial_db_version', '57155', 'yes'),
('wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
('WPLANG', 'es_AR', 'yes'),
('widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('sidebars_widgets', 'a:1:{s:19:\"wp_inactive_widgets\";a:0:{}}', 'yes'),
('cron', 'a:1:{s:7:\"version\";i:2;}', 'yes'),
('widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
('current_theme', 'Newspaper', 'yes'),
('theme_switched', '', 'yes');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
