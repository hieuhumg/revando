-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2020 lúc 02:00 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `revando`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_cart`
--

CREATE TABLE `wp_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-03-24 03:34:21', '2020-03-24 03:34:21', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_contacts`
--

CREATE TABLE `wp_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/revando-master/wordpress/', 'yes'),
(2, 'home', 'http://localhost/revando-master/wordpress/', 'yes'),
(3, 'blogname', 'revando', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hieu.humg.k57@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:61:\"advanced-nocaptcha-recaptcha/advanced-nocaptcha-recaptcha.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:45:\"disable-wordpress-updates/disable-updates.php\";i:5;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:7;s:45:\"get-news-vnexpress-net/get_news_vnexpress.php\";i:8;s:37:\"tinymce-advanced/tinymce-advanced.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'revando', 'yes'),
(41, 'stylesheet', 'revando', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1589589264;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589600062;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589600075;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589600077;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589600273;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1585020865;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585020891;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"last_checked\";i:1587049779;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', 'revando', 'yes'),
(142, 'theme_mods_revando', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(148, 'recently_activated', 'a:1:{s:69:\"facebook-messenger-customer-chat/facebook-messenger-customer-chat.php\";i:1587050317;}', 'yes'),
(149, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1585021050;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(150, 'anr_admin_options', 'a:1:{s:7:\"version\";s:3:\"5.5\";}', 'yes'),
(155, 'swpsmtp_options', 'a:5:{s:16:\"from_email_field\";s:0:\"\";s:15:\"from_name_field\";s:0:\"\";s:23:\"force_from_name_replace\";i:0;s:13:\"smtp_settings\";a:6:{s:4:\"host\";s:16:\"smtp.example.com\";s:15:\"type_encryption\";s:4:\"none\";s:4:\"port\";i:25;s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";}', 'yes'),
(156, 'tadv_settings', 'a:10:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:123:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help\";s:13:\"toolbar_block\";s:10:\"core/image\";s:18:\"toolbar_block_side\";s:74:\"tadv/sup,tadv/sub,core/strikethrough,core/code,tadv/mark,tadv/removeformat\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";}', 'yes'),
(157, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(158, 'tadv_version', '5210', 'yes'),
(159, 'wpseo', 'a:21:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"12.6.1\";s:24:\"bf_banner_2019_dismissed\";b:0;s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1585021072;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(160, 'wpseo_titles', 'a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:48:\"%%name%%, Tác giả tại %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:62:\"Bạn đã tìm %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:45:\"Không tìm thấy trang %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:81:\"Bài viết %%POSTLINK%% đã xuất hiện đầu tiên vào ngày %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:35:\"Lỗi 404: Không tìm thấy trang\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Bạn đã tìm\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(161, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(162, 'wpseo_flush_rewrite', '1', 'yes'),
(163, '_transient_timeout_wpseo_link_table_inaccessible', '1616557073', 'no'),
(164, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(165, '_transient_timeout_wpseo_meta_table_inaccessible', '1616557073', 'no'),
(166, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(168, 'acf_version', '5.7.10', 'yes'),
(169, 'cptui_new_install', 'false', 'yes'),
(170, 'rewrite_rules', 'a:109:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:58:\"danh_muc_san_pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?danh_muc_san_pham=$matches[1]&feed=$matches[2]\";s:53:\"danh_muc_san_pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?danh_muc_san_pham=$matches[1]&feed=$matches[2]\";s:34:\"danh_muc_san_pham/([^/]+)/embed/?$\";s:50:\"index.php?danh_muc_san_pham=$matches[1]&embed=true\";s:46:\"danh_muc_san_pham/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?danh_muc_san_pham=$matches[1]&paged=$matches[2]\";s:28:\"danh_muc_san_pham/([^/]+)/?$\";s:39:\"index.php?danh_muc_san_pham=$matches[1]\";s:36:\"san_pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san_pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san_pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san_pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san_pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san_pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san_pham/([^/]+)/embed/?$\";s:41:\"index.php?san_pham=$matches[1]&embed=true\";s:29:\"san_pham/([^/]+)/trackback/?$\";s:35:\"index.php?san_pham=$matches[1]&tb=1\";s:37:\"san_pham/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?san_pham=$matches[1]&paged=$matches[2]\";s:44:\"san_pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?san_pham=$matches[1]&cpage=$matches[2]\";s:33:\"san_pham/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?san_pham=$matches[1]&page=$matches[2]\";s:25:\"san_pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san_pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san_pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san_pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san_pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san_pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(171, 'category_children', 'a:0:{}', 'yes'),
(178, 'cptui_post_types', 'a:1:{s:8:\"san_pham\";a:29:{s:4:\"name\";s:8:\"san_pham\";s:5:\"label\";s:12:\"Sản Phẩm\";s:14:\"singular_label\";s:12:\"Sản Phẩm\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:14:\"dashicons-cart\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(186, 'cptui_taxonomies', 'a:1:{s:17:\"danh_muc_san_pham\";a:24:{s:4:\"name\";s:17:\"danh_muc_san_pham\";s:5:\"label\";s:23:\"Danh mục sản phẩm\";s:14:\"singular_label\";s:23:\"Danh mục sản phẩm\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:8:\"san_pham\";}}}', 'yes'),
(219, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(271, 'danh_muc_san_pham_children', 'a:2:{i:2;a:2:{i:0;i:5;i:1;i:6;}i:3;a:2:{i:0;i:7;i:1;i:8;}}', 'yes'),
(369, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"last_checked\";i:1587050056;s:8:\"response\";N;}', 'no'),
(370, 'fbmcc_enabled', '1', 'yes'),
(371, 'fbmcc_generatedCode', '', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_form', '<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:24:\"revando \"[your-subject]\"\";s:6:\"sender\";s:37:\"[your-name] <hieu.humg.k57@gmail.com>\";s:4:\"body\";s:226:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/wordpress)\";s:9:\"recipient\";s:23:\"hieu.humg.k57@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"revando \"[your-subject]\"\";s:6:\"sender\";s:33:\"revando <hieu.humg.k57@gmail.com>\";s:4:\"body\";s:151:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: hieu.humg.k57@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'vi'),
(15, 8, '_edit_lock', '1585815134:1'),
(16, 8, '_edit_last', '1'),
(17, 8, '_wp_page_template', 'template/home.php'),
(18, 10, '_edit_last', '1'),
(19, 10, '_edit_lock', '1585815106:1'),
(20, 13, '_wp_attached_file', '2020/03/abt-1.jpg'),
(21, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/03/abt-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"abt-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"abt-1-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(22, 14, '_wp_attached_file', '2020/03/abt-2.jpg'),
(23, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/03/abt-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"abt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"abt-2-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(24, 15, '_wp_attached_file', '2020/03/abt-3.jpg'),
(25, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:250;s:4:\"file\";s:17:\"2020/03/abt-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"abt-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"abt-3-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(26, 8, 'banner_home_0_hinh_anh', '17'),
(27, 8, '_banner_home_0_hinh_anh', 'field_5e7985d8ced79'),
(28, 8, 'banner_home_1_hinh_anh', '18'),
(29, 8, '_banner_home_1_hinh_anh', 'field_5e7985d8ced79'),
(30, 8, 'banner_home_2_hinh_anh', '19'),
(31, 8, '_banner_home_2_hinh_anh', 'field_5e7985d8ced79'),
(32, 8, 'banner_home', '3'),
(33, 8, '_banner_home', 'field_5e7985a1ced78'),
(34, 16, 'banner_home_0_hinh_anh', '13'),
(35, 16, '_banner_home_0_hinh_anh', 'field_5e7985d8ced79'),
(36, 16, 'banner_home_1_hinh_anh', '14'),
(37, 16, '_banner_home_1_hinh_anh', 'field_5e7985d8ced79'),
(38, 16, 'banner_home_2_hinh_anh', '15'),
(39, 16, '_banner_home_2_hinh_anh', 'field_5e7985d8ced79'),
(40, 16, 'banner_home', '3'),
(41, 16, '_banner_home', 'field_5e7985a1ced78'),
(42, 17, '_wp_attached_file', '2020/03/bnr-1.jpg'),
(43, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:17:\"2020/03/bnr-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bnr-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bnr-1-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"bnr-1-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"bnr-1-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 18, '_wp_attached_file', '2020/03/bnr-2.jpg'),
(45, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:17:\"2020/03/bnr-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bnr-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bnr-2-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"bnr-2-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"bnr-2-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 19, '_wp_attached_file', '2020/03/bnr-3.jpg'),
(47, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:17:\"2020/03/bnr-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bnr-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"bnr-3-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"bnr-3-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"bnr-3-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 20, 'banner_home_0_hinh_anh', '17'),
(49, 20, '_banner_home_0_hinh_anh', 'field_5e7985d8ced79'),
(50, 20, 'banner_home_1_hinh_anh', '18'),
(51, 20, '_banner_home_1_hinh_anh', 'field_5e7985d8ced79'),
(52, 20, 'banner_home_2_hinh_anh', '19'),
(53, 20, '_banner_home_2_hinh_anh', 'field_5e7985d8ced79'),
(54, 20, 'banner_home', '3'),
(55, 20, '_banner_home', 'field_5e7985a1ced78'),
(58, 23, '_edit_last', '1'),
(59, 23, '_edit_lock', '1585832942:1'),
(61, 26, '_edit_lock', '1585834178:1'),
(62, 27, '_wp_attached_file', '2020/03/c-2.jpg'),
(63, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:82;s:6:\"height\";i:117;s:4:\"file\";s:15:\"2020/03/c-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(65, 26, '_edit_last', '1'),
(66, 26, 'anh_san_pham', '27'),
(67, 26, '_anh_san_pham', 'field_5e799489006e5'),
(68, 26, 'gia_san_pham', '200000'),
(69, 26, '_gia_san_pham', 'field_5e7994192aee0'),
(71, 31, '_edit_lock', '1585834167:1'),
(72, 31, '_edit_last', '1'),
(73, 31, 'anh_san_pham', '15'),
(74, 31, '_anh_san_pham', 'field_5e799489006e5'),
(75, 31, 'gia_san_pham', '1100000'),
(76, 31, '_gia_san_pham', 'field_5e7994192aee0'),
(77, 32, '_edit_lock', '1585834152:1'),
(78, 33, '_wp_attached_file', '2020/03/p-6.png'),
(79, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:200;s:4:\"file\";s:15:\"2020/03/p-6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"p-6-125x150.png\";s:5:\"width\";i:125;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 32, '_edit_last', '1'),
(81, 32, 'anh_san_pham', '33'),
(82, 32, '_anh_san_pham', 'field_5e799489006e5'),
(83, 32, 'gia_san_pham', '4234240'),
(84, 32, '_gia_san_pham', 'field_5e7994192aee0'),
(85, 34, '_edit_lock', '1586798166:1'),
(86, 35, '_wp_attached_file', '2020/03/p-3.png'),
(87, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:200;s:4:\"file\";s:15:\"2020/03/p-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"p-3-125x150.png\";s:5:\"width\";i:125;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 34, '_edit_last', '1'),
(89, 34, 'anh_san_pham', '35'),
(90, 34, '_anh_san_pham', 'field_5e799489006e5'),
(91, 34, 'gia_san_pham', '100000'),
(92, 34, '_gia_san_pham', 'field_5e7994192aee0'),
(93, 34, 'description', 'Sản phẩm chỉ mang tính chất minh họa'),
(94, 34, '_description', 'field_5e79e0f5e6779'),
(95, 34, 'giam_gia', '20'),
(96, 34, '_giam_gia', 'field_5e79e49321275'),
(97, 8, 'san_pham_noi_bat_0_san_pham', '31'),
(98, 8, '_san_pham_noi_bat_0_san_pham', 'field_5e79ea571e902'),
(99, 8, 'san_pham_noi_bat_1_san_pham', '32'),
(100, 8, '_san_pham_noi_bat_1_san_pham', 'field_5e79ea571e902'),
(101, 8, 'san_pham_noi_bat_2_san_pham', '26'),
(102, 8, '_san_pham_noi_bat_2_san_pham', 'field_5e79ea571e902'),
(103, 8, 'san_pham_noi_bat', '3'),
(104, 8, '_san_pham_noi_bat', 'field_5e79ea1e1e901'),
(105, 42, 'banner_home_0_hinh_anh', '17'),
(106, 42, '_banner_home_0_hinh_anh', 'field_5e7985d8ced79'),
(107, 42, 'banner_home_1_hinh_anh', '18'),
(108, 42, '_banner_home_1_hinh_anh', 'field_5e7985d8ced79'),
(109, 42, 'banner_home_2_hinh_anh', '19'),
(110, 42, '_banner_home_2_hinh_anh', 'field_5e7985d8ced79'),
(111, 42, 'banner_home', '3'),
(112, 42, '_banner_home', 'field_5e7985a1ced78'),
(113, 42, 'san_pham_noi_bat_0_san_pham', '31'),
(114, 42, '_san_pham_noi_bat_0_san_pham', 'field_5e79ea571e902'),
(115, 42, 'san_pham_noi_bat_1_san_pham', '32'),
(116, 42, '_san_pham_noi_bat_1_san_pham', 'field_5e79ea571e902'),
(117, 42, 'san_pham_noi_bat_2_san_pham', '26'),
(118, 42, '_san_pham_noi_bat_2_san_pham', 'field_5e79ea571e902'),
(119, 42, 'san_pham_noi_bat', '3'),
(120, 42, '_san_pham_noi_bat', 'field_5e79ea1e1e901'),
(121, 26, 'description', 'Sản phẩm chỉ mang tính chất minh họa'),
(122, 26, '_description', 'field_5e79e0f5e6779'),
(123, 26, 'giam_gia', ''),
(124, 26, '_giam_gia', 'field_5e79e49321275'),
(125, 43, '_menu_item_type', 'post_type'),
(126, 43, '_menu_item_menu_item_parent', '0'),
(127, 43, '_menu_item_object_id', '8'),
(128, 43, '_menu_item_object', 'page'),
(129, 43, '_menu_item_target', ''),
(130, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 43, '_menu_item_xfn', ''),
(132, 43, '_menu_item_url', ''),
(133, 43, '_menu_item_orphaned', '1585130714'),
(134, 44, '_menu_item_type', 'post_type'),
(135, 44, '_menu_item_menu_item_parent', '0'),
(136, 44, '_menu_item_object_id', '8'),
(137, 44, '_menu_item_object', 'page'),
(138, 44, '_menu_item_target', ''),
(139, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 44, '_menu_item_xfn', ''),
(141, 44, '_menu_item_url', ''),
(142, 44, '_menu_item_orphaned', '1585130714'),
(143, 45, '_menu_item_type', 'post_type'),
(144, 45, '_menu_item_menu_item_parent', '0'),
(145, 45, '_menu_item_object_id', '8'),
(146, 45, '_menu_item_object', 'page'),
(147, 45, '_menu_item_target', ''),
(148, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 45, '_menu_item_xfn', ''),
(150, 45, '_menu_item_url', ''),
(161, 47, '_menu_item_type', 'custom'),
(162, 47, '_menu_item_menu_item_parent', '0'),
(163, 47, '_menu_item_object_id', '47'),
(164, 47, '_menu_item_object', 'custom'),
(165, 47, '_menu_item_target', ''),
(166, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 47, '_menu_item_xfn', ''),
(168, 47, '_menu_item_url', '#!'),
(170, 48, '_menu_item_type', 'taxonomy'),
(171, 48, '_menu_item_menu_item_parent', '47'),
(172, 48, '_menu_item_object_id', '2'),
(173, 48, '_menu_item_object', 'danh_muc_san_pham'),
(174, 48, '_menu_item_target', ''),
(175, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 48, '_menu_item_xfn', ''),
(177, 48, '_menu_item_url', ''),
(179, 49, '_menu_item_type', 'taxonomy'),
(180, 49, '_menu_item_menu_item_parent', '47'),
(181, 49, '_menu_item_object_id', '3'),
(182, 49, '_menu_item_object', 'danh_muc_san_pham'),
(183, 49, '_menu_item_target', ''),
(184, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 49, '_menu_item_xfn', ''),
(186, 49, '_menu_item_url', ''),
(188, 50, '_menu_item_type', 'taxonomy'),
(189, 50, '_menu_item_menu_item_parent', '48'),
(190, 50, '_menu_item_object_id', '6'),
(191, 50, '_menu_item_object', 'danh_muc_san_pham'),
(192, 50, '_menu_item_target', ''),
(193, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 50, '_menu_item_xfn', ''),
(195, 50, '_menu_item_url', ''),
(197, 51, '_menu_item_type', 'taxonomy'),
(198, 51, '_menu_item_menu_item_parent', '48'),
(199, 51, '_menu_item_object_id', '5'),
(200, 51, '_menu_item_object', 'danh_muc_san_pham'),
(201, 51, '_menu_item_target', ''),
(202, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 51, '_menu_item_xfn', ''),
(204, 51, '_menu_item_url', ''),
(206, 52, '_menu_item_type', 'taxonomy'),
(207, 52, '_menu_item_menu_item_parent', '49'),
(208, 52, '_menu_item_object_id', '7'),
(209, 52, '_menu_item_object', 'danh_muc_san_pham'),
(210, 52, '_menu_item_target', ''),
(211, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 52, '_menu_item_xfn', ''),
(213, 52, '_menu_item_url', ''),
(214, 55, '_wp_attached_file', '2020/03/c-2-1.jpg'),
(215, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:82;s:6:\"height\";i:117;s:4:\"file\";s:17:\"2020/03/c-2-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(216, 56, '_wp_attached_file', '2020/03/s-2.jpg'),
(217, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:762;s:6:\"height\";i:1100;s:4:\"file\";s:15:\"2020/03/s-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"s-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"s-2-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"s-2-709x1024.jpg\";s:5:\"width\";i:709;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 57, '_wp_attached_file', '2020/03/s-3.jpg'),
(219, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:762;s:6:\"height\";i:1100;s:4:\"file\";s:15:\"2020/03/s-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"s-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"s-3-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"s-3-709x1024.jpg\";s:5:\"width\";i:709;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 58, '_wp_attached_file', '2020/03/s-1.jpg'),
(221, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:762;s:6:\"height\";i:1100;s:4:\"file\";s:15:\"2020/03/s-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"s-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"s-1-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"s-1-709x1024.jpg\";s:5:\"width\";i:709;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 34, 'anh_chi_tiet_0_ảnh', '58'),
(223, 34, '_anh_chi_tiet_0_ảnh', 'field_5e7c8eed46379'),
(224, 34, 'anh_chi_tiet_1_ảnh', '56'),
(225, 34, '_anh_chi_tiet_1_ảnh', 'field_5e7c8eed46379'),
(226, 34, 'anh_chi_tiet_2_ảnh', '57'),
(227, 34, '_anh_chi_tiet_2_ảnh', 'field_5e7c8eed46379'),
(228, 34, 'anh_chi_tiet', '3'),
(229, 34, '_anh_chi_tiet', 'field_5e7c8ed746378'),
(232, 69, '_edit_lock', '1587274372:1'),
(233, 69, '_wp_page_template', 'template/thanhtoan.php'),
(234, 34, 'info_product_0_anh_san_pham', '33'),
(235, 34, '_info_product_0_anh_san_pham', 'field_5e7c923ee9b02'),
(236, 34, 'info_product_0_price_product', '200000'),
(237, 34, '_info_product_0_price_product', 'field_5e7c93b2e9b03'),
(238, 34, 'info_product_0_des_product', 'Sản phẩm đăng cấp '),
(239, 34, '_info_product_0_des_product', 'field_5e7c942ae9b04'),
(240, 34, 'info_product_0_sale_product', '20'),
(241, 34, '_info_product_0_sale_product', 'field_5e7c944fe9b05'),
(242, 34, 'info_product_0_ảnh_chi_tiết', 'a:3:{i:0;s:2:\"35\";i:1;s:2:\"33\";i:2;s:2:\"27\";}'),
(243, 34, '_info_product_0_ảnh_chi_tiết', 'field_5e7c9473e9b06'),
(244, 34, 'info_product', '1'),
(245, 34, '_info_product', 'field_5e7c921de9b01'),
(246, 71, '_wp_attached_file', '2020/03/day-lung-da-ngoc-quang-3.jpg'),
(247, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2020/03/day-lung-da-ngoc-quang-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"day-lung-da-ngoc-quang-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"day-lung-da-ngoc-quang-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 73, '_wp_attached_file', '2020/03/30443623_1573722599363814_5168695048530821120_n.jpg'),
(249, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:59:\"2020/03/30443623_1573722599363814_5168695048530821120_n.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"30443623_1573722599363814_5168695048530821120_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"30443623_1573722599363814_5168695048530821120_n-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"30443623_1573722599363814_5168695048530821120_n-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 74, '_wp_attached_file', '2020/03/tải-xuống.jpg'),
(251, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:25:\"2020/03/tải-xuống.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"tải-xuống-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 32, 'info_product_0_anh_san_pham', '71'),
(253, 32, '_info_product_0_anh_san_pham', 'field_5e7c923ee9b02'),
(254, 32, 'info_product_0_price_product', '3000000'),
(255, 32, '_info_product_0_price_product', 'field_5e7c93b2e9b03'),
(256, 32, 'info_product_0_des_product', 'santg trong, lịch lãm, đăng cấp'),
(257, 32, '_info_product_0_des_product', 'field_5e7c942ae9b04'),
(258, 32, 'info_product_0_sale_product', ''),
(259, 32, '_info_product_0_sale_product', 'field_5e7c944fe9b05'),
(260, 32, 'info_product_0_ảnh_chi_tiết', 'a:3:{i:0;s:2:\"73\";i:1;s:2:\"71\";i:2;s:2:\"74\";}'),
(261, 32, '_info_product_0_ảnh_chi_tiết', 'field_5e7c9473e9b06'),
(262, 32, 'info_product', '1'),
(263, 32, '_info_product', 'field_5e7c921de9b01'),
(264, 75, '_wp_attached_file', '2020/03/c.jpg'),
(265, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:13:\"2020/03/c.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"c-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(266, 76, '_wp_attached_file', '2020/03/c-2-1.jpg'),
(267, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:560;s:4:\"file\";s:17:\"2020/03/c-2-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"c-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"c-2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 7D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1552419150\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"38\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(268, 77, '_wp_attached_file', '2020/03/c-3.jpg'),
(269, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:560;s:4:\"file\";s:15:\"2020/03/c-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"c-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"c-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(270, 31, 'info_product_0_anh_san_pham', '75'),
(271, 31, '_info_product_0_anh_san_pham', 'field_5e7c923ee9b02'),
(272, 31, 'info_product_0_price_product', '3454343345'),
(273, 31, '_info_product_0_price_product', 'field_5e7c93b2e9b03'),
(274, 31, 'info_product_0_des_product', 'safsef fwef wefe fwe'),
(275, 31, '_info_product_0_des_product', 'field_5e7c942ae9b04'),
(276, 31, 'info_product_0_sale_product', ''),
(277, 31, '_info_product_0_sale_product', 'field_5e7c944fe9b05'),
(278, 31, 'info_product_0_ảnh_chi_tiết', 'a:3:{i:0;s:2:\"76\";i:1;s:2:\"77\";i:2;s:2:\"75\";}'),
(279, 31, '_info_product_0_ảnh_chi_tiết', 'field_5e7c9473e9b06'),
(280, 31, 'info_product', '1'),
(281, 31, '_info_product', 'field_5e7c921de9b01'),
(282, 78, '_wp_attached_file', '2020/03/v.jpg'),
(283, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2020/03/v.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"v-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"v-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"v-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 79, '_wp_attached_file', '2020/03/v-2.jpg'),
(285, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2020/03/v-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"v-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"v-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 80, '_wp_attached_file', '2020/03/v-3.jpg'),
(287, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2020/03/v-3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 26, 'info_product_0_anh_san_pham', '78'),
(289, 26, '_info_product_0_anh_san_pham', 'field_5e7c923ee9b02'),
(290, 26, 'info_product_0_price_product', '23423'),
(291, 26, '_info_product_0_price_product', 'field_5e7c93b2e9b03'),
(292, 26, 'info_product_0_des_product', 'dfffddf fdf fd fd'),
(293, 26, '_info_product_0_des_product', 'field_5e7c942ae9b04'),
(294, 26, 'info_product_0_sale_product', '33'),
(295, 26, '_info_product_0_sale_product', 'field_5e7c944fe9b05'),
(296, 26, 'info_product_0_ảnh_chi_tiết', 'a:3:{i:0;s:2:\"79\";i:1;s:2:\"80\";i:2;s:2:\"78\";}'),
(297, 26, '_info_product_0_ảnh_chi_tiết', 'field_5e7c9473e9b06'),
(298, 26, 'info_product', '1'),
(299, 26, '_info_product', 'field_5e7c921de9b01'),
(314, 82, '_edit_lock', '1585834137:1'),
(315, 82, '_edit_last', '1'),
(316, 82, 'info_product_0_anh_san_pham', '79'),
(317, 82, '_info_product_0_anh_san_pham', 'field_5e7c923ee9b02'),
(318, 82, 'info_product_0_price_product', '2342342423'),
(319, 82, '_info_product_0_price_product', 'field_5e7c93b2e9b03'),
(320, 82, 'info_product_0_des_product', ' sdf sdf sdf d sd'),
(321, 82, '_info_product_0_des_product', 'field_5e7c942ae9b04'),
(322, 82, 'info_product_0_sale_product', '22'),
(323, 82, '_info_product_0_sale_product', 'field_5e7c944fe9b05'),
(324, 82, 'info_product_0_ảnh_chi_tiết', 'a:3:{i:0;s:2:\"79\";i:1;s:2:\"80\";i:2;s:2:\"78\";}'),
(325, 82, '_info_product_0_ảnh_chi_tiết', 'field_5e7c9473e9b06'),
(326, 82, 'info_product', '1'),
(327, 82, '_info_product', 'field_5e7c921de9b01'),
(331, 31, '_wp_old_slug', 'casio-clock'),
(332, 34, '_wp_old_slug', 'zenthaphan'),
(333, 82, '_wp_old_slug', 'vi-2-2'),
(334, 26, '_wp_old_slug', 'dong-ho-zimiko'),
(335, 34, 'info_product_0_img-sub', 'a:3:{i:0;s:2:\"35\";i:1;s:2:\"33\";i:2;s:2:\"27\";}'),
(336, 34, '_info_product_0_img-sub', 'field_5e7c9473e9b06'),
(337, 82, 'info_product_0_img-sub', 'a:3:{i:0;s:2:\"80\";i:1;s:2:\"79\";i:2;s:2:\"78\";}'),
(338, 82, '_info_product_0_img-sub', 'field_5e7c9473e9b06'),
(339, 32, 'info_product_0_img-sub', 'a:3:{i:0;s:2:\"77\";i:1;s:2:\"76\";i:2;s:2:\"74\";}'),
(340, 32, '_info_product_0_img-sub', 'field_5e7c9473e9b06'),
(341, 31, 'info_product_0_img-sub', 'a:2:{i:0;s:2:\"73\";i:1;s:2:\"71\";}'),
(342, 31, '_info_product_0_img-sub', 'field_5e7c9473e9b06'),
(343, 26, 'info_product_0_img-sub', 'a:2:{i:0;s:2:\"80\";i:1;s:2:\"79\";}'),
(344, 26, '_info_product_0_img-sub', 'field_5e7c9473e9b06'),
(345, 84, '_form', '<input type=\"text\" placeholder=\"Name\">\n							<input type=\"text\" placeholder=\"Phone\">\n							<input type=\"text\"  placeholder=\"Email\">\n							<textarea placeholder=\"Message\" required=\"\"></textarea>\n							<div class=\"submit-btn\">\n								<input type=\"submit\" value=\"SUBMIT\">\n							</div>'),
(346, 84, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"revando \"[your-subject]\"\";s:6:\"sender\";s:37:\"[your-name] <hieu.humg.k57@gmail.com>\";s:9:\"recipient\";s:23:\"hieu.humg.k57@gmail.com\";s:4:\"body\";s:241:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/revando-master/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(347, 84, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"revando \"[your-subject]\"\";s:6:\"sender\";s:33:\"revando <hieu.humg.k57@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:166:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/revando-master/wordpress)\";s:18:\"additional_headers\";s:33:\"Reply-To: hieu.humg.k57@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(348, 84, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}'),
(349, 84, '_additional_settings', ''),
(350, 84, '_locale', 'vi'),
(351, 85, '_edit_lock', '1587004865:1'),
(352, 85, '_wp_page_template', 'template/contact.php'),
(353, 87, '_menu_item_type', 'post_type'),
(354, 87, '_menu_item_menu_item_parent', '0'),
(355, 87, '_menu_item_object_id', '85'),
(356, 87, '_menu_item_object', 'page'),
(357, 87, '_menu_item_target', ''),
(358, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 87, '_menu_item_xfn', ''),
(360, 87, '_menu_item_url', ''),
(365, 84, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:47:\"Cú pháp không hợp lệ trong mục %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(366, 90, '_edit_lock', '1587274282:1'),
(367, 90, '_wp_page_template', 'template/cart.php');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-03-24 03:34:21', '2020-03-24 03:34:21', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2020-03-24 03:34:21', '2020-03-24 03:34:21', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(5, 1, '2020-03-24 03:37:30', '2020-03-24 03:37:30', '<label> Tên của bạn (bắt buộc)\n    [text* your-name] </label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]\nrevando \"[your-subject]\"\n[your-name] <hieu.humg.k57@gmail.com>\nGửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/wordpress)\nhieu.humg.k57@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nrevando \"[your-subject]\"\nrevando <hieu.humg.k57@gmail.com>\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/wordpress)\n[your-email]\nReply-To: hieu.humg.k57@gmail.com\n\n0\n0\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.', 'Form liên hệ 1', '', 'publish', 'closed', 'closed', '', 'form-lien-he-1', '', '', '2020-03-24 03:37:30', '2020-03-24 03:37:30', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2020-03-24 03:42:14', '2020-03-24 03:42:14', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-03-24 11:11:15', '2020-03-24 11:11:15', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-03-24 03:42:14', '2020-03-24 03:42:14', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-24 03:42:14', '2020-03-24 03:42:14', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-03-24 04:02:43', '2020-03-24 04:02:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Trang chủ', 'trang-chu', 'publish', 'closed', 'closed', '', 'group_5e7985118cddc', '', '', '2020-03-24 11:11:32', '2020-03-24 11:11:32', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2020-03-24 04:02:43', '2020-03-24 04:02:43', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Banner trang chủ', 'banner_home', 'publish', 'closed', 'closed', '', 'field_5e7985a1ced78', '', '', '2020-03-24 04:02:43', '2020-03-24 04:02:43', '', 10, 'http://localhost/wordpress/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2020-03-24 04:02:43', '2020-03-24 04:02:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình ảnh', 'hinh_anh', 'publish', 'closed', 'closed', '', 'field_5e7985d8ced79', '', '', '2020-03-24 04:17:14', '2020-03-24 04:17:14', '', 11, 'http://localhost/wordpress/?post_type=acf-field&#038;p=12', 0, 'acf-field', '', 0),
(13, 1, '2020-03-24 04:03:39', '2020-03-24 04:03:39', '', 'abt-1', '', 'inherit', 'open', 'closed', '', 'abt-1', '', '', '2020-03-24 04:03:39', '2020-03-24 04:03:39', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/03/abt-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-03-24 04:03:52', '2020-03-24 04:03:52', '', 'abt-2', '', 'inherit', 'open', 'closed', '', 'abt-2', '', '', '2020-03-26 11:33:50', '2020-03-26 11:33:50', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/03/abt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-03-24 04:04:04', '2020-03-24 04:04:04', '', 'abt-3', '', 'inherit', 'open', 'closed', '', 'abt-3', '', '', '2020-03-24 04:04:04', '2020-03-24 04:04:04', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/03/abt-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2020-03-24 04:04:08', '2020-03-24 04:04:08', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-24 04:04:08', '2020-03-24 04:04:08', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-03-24 04:15:19', '2020-03-24 04:15:19', '', 'bnr-1', '', 'inherit', 'open', 'closed', '', 'bnr-1', '', '', '2020-03-24 04:15:19', '2020-03-24 04:15:19', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/03/bnr-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-03-24 04:15:37', '2020-03-24 04:15:37', '', 'bnr-2', '', 'inherit', 'open', 'closed', '', 'bnr-2', '', '', '2020-03-24 04:15:37', '2020-03-24 04:15:37', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/03/bnr-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-03-24 04:15:48', '2020-03-24 04:15:48', '', 'bnr-3', '', 'inherit', 'open', 'closed', '', 'bnr-3', '', '', '2020-03-24 04:15:48', '2020-03-24 04:15:48', '', 8, 'http://localhost/wordpress/wp-content/uploads/2020/03/bnr-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-03-24 04:15:59', '2020-03-24 04:15:59', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-24 04:15:59', '2020-03-24 04:15:59', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-03-24 05:00:52', '2020-03-24 05:00:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"san_pham\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sản phẩm', 'san-pham', 'publish', 'closed', 'closed', '', 'group_5e7993bfe6d63', '', '', '2020-04-02 11:51:25', '2020-04-02 11:51:25', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(26, 0, '2020-03-24 05:04:56', '2020-03-24 05:04:56', '', 'ví 1', '', 'publish', 'closed', 'closed', '', 'vi-1', '', '', '2020-04-02 13:29:37', '2020-04-02 13:29:37', '', 0, 'http://localhost/wordpress/?post_type=san_pham&#038;p=26', 0, 'san_pham', '', 0),
(27, 1, '2020-03-24 05:02:46', '2020-03-24 05:02:46', '', 'c-2', '', 'inherit', 'open', 'closed', '', 'c-2', '', '', '2020-03-24 05:02:46', '2020-03-24 05:02:46', '', 26, 'http://localhost/wordpress/wp-content/uploads/2020/03/c-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 0, '2020-03-24 07:56:53', '2020-03-24 07:56:53', '', 'revando-1', '', 'publish', 'closed', 'closed', '', 'revando-1', '', '', '2020-04-02 13:29:27', '2020-04-02 13:29:27', '', 0, 'http://localhost/wordpress/?post_type=san_pham&#038;p=31', 0, 'san_pham', '', 0),
(32, 0, '2020-03-24 07:57:44', '2020-03-24 07:57:44', '', 'Thắt lưng 2', '', 'publish', 'closed', 'closed', '', 'chaiko-athen', '', '', '2020-04-02 13:29:12', '2020-04-02 13:29:12', '', 0, 'http://localhost/wordpress/?post_type=san_pham&#038;p=32', 0, 'san_pham', '', 0),
(33, 1, '2020-03-24 07:57:33', '2020-03-24 07:57:33', '', 'p-6', '', 'inherit', 'open', 'closed', '', 'p-6', '', '', '2020-03-24 07:57:33', '2020-03-24 07:57:33', '', 32, 'http://localhost/wordpress/wp-content/uploads/2020/03/p-6.png', 0, 'attachment', 'image/png', 0),
(34, 0, '2020-03-24 07:58:26', '2020-03-24 07:58:26', '', 'thắt lưng 1', '', 'publish', 'closed', 'closed', '', 'that-lung-1', '', '', '2020-04-02 13:27:37', '2020-04-02 13:27:37', '', 0, 'http://localhost/wordpress/?post_type=san_pham&#038;p=34', 0, 'san_pham', '', 0),
(35, 1, '2020-03-24 07:58:18', '2020-03-24 07:58:18', '', 'p-3', '', 'inherit', 'open', 'closed', '', 'p-3', '', '', '2020-03-24 07:58:18', '2020-03-24 07:58:18', '', 34, 'http://localhost/wordpress/wp-content/uploads/2020/03/p-3.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-03-24 11:10:08', '2020-03-24 11:10:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Sản phẩm nổi bật', 'san_pham_noi_bat', 'publish', 'closed', 'closed', '', 'field_5e79ea1e1e901', '', '', '2020-03-24 11:11:32', '2020-03-24 11:11:32', '', 10, 'http://localhost/wordpress/?post_type=acf-field&#038;p=40', 1, 'acf-field', '', 0),
(41, 1, '2020-03-24 11:10:08', '2020-03-24 11:10:08', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:8:\"san_pham\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Sản phẩm', 'san_pham', 'publish', 'closed', 'closed', '', 'field_5e79ea571e902', '', '', '2020-03-24 11:10:08', '2020-03-24 11:10:08', '', 40, 'http://localhost/wordpress/?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
(42, 1, '2020-03-24 11:11:15', '2020-03-24 11:11:15', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-03-24 11:11:15', '2020-03-24 11:11:15', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-03-25 10:05:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-25 10:05:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/revando/wordpress/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2020-03-25 10:05:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-03-25 10:05:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/revando/wordpress/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-03-25 10:29:05', '2020-03-25 10:29:05', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-04-16 02:45:03', '2020-04-16 02:45:03', '', 0, 'http://localhost/revando/wordpress/?p=45', 1, 'nav_menu_item', '', 0),
(47, 1, '2020-03-25 10:29:05', '2020-03-25 10:29:05', '', 'Chuyên mục sản phẩm', '', 'publish', 'closed', 'closed', '', 'chuyen-muc-san-pham', '', '', '2020-04-16 02:45:03', '2020-04-16 02:45:03', '', 0, 'http://localhost/revando/wordpress/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2020-03-25 10:29:05', '2020-03-25 10:29:05', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-04-16 02:45:03', '2020-04-16 02:45:03', '', 0, 'http://localhost/revando/wordpress/?p=48', 3, 'nav_menu_item', '', 0),
(49, 1, '2020-03-25 10:29:05', '2020-03-25 10:29:05', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-04-16 02:45:04', '2020-04-16 02:45:04', '', 0, 'http://localhost/revando/wordpress/?p=49', 6, 'nav_menu_item', '', 0),
(50, 1, '2020-03-25 10:32:39', '2020-03-25 10:32:39', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-04-16 02:45:03', '2020-04-16 02:45:03', '', 2, 'http://localhost/revando/wordpress/?p=50', 4, 'nav_menu_item', '', 0),
(51, 1, '2020-03-25 10:32:39', '2020-03-25 10:32:39', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-04-16 02:45:03', '2020-04-16 02:45:03', '', 2, 'http://localhost/revando/wordpress/?p=51', 5, 'nav_menu_item', '', 0),
(52, 1, '2020-03-25 10:32:39', '2020-03-25 10:32:39', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-04-16 02:45:04', '2020-04-16 02:45:04', '', 3, 'http://localhost/revando/wordpress/?p=52', 7, 'nav_menu_item', '', 0),
(55, 1, '2020-03-26 11:18:01', '2020-03-26 11:18:01', '', 'c-2', '', 'inherit', 'open', 'closed', '', 'c-2-2', '', '', '2020-03-26 11:18:01', '2020-03-26 11:18:01', '', 34, 'http://localhost/revando/wordpress/wp-content/uploads/2020/03/c-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-03-26 11:18:26', '2020-03-26 11:18:26', '', 's-2', '', 'inherit', 'open', 'closed', '', 's-2', '', '', '2020-03-26 11:18:26', '2020-03-26 11:18:26', '', 34, 'http://localhost/revando/wordpress/wp-content/uploads/2020/03/s-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-03-26 11:18:37', '2020-03-26 11:18:37', '', 's-3', '', 'inherit', 'open', 'closed', '', 's-3', '', '', '2020-03-26 11:18:37', '2020-03-26 11:18:37', '', 34, 'http://localhost/revando/wordpress/wp-content/uploads/2020/03/s-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-03-26 11:18:51', '2020-03-26 11:18:51', '', 's-1', '', 'inherit', 'open', 'closed', '', 's-1', '', '', '2020-03-26 11:18:51', '2020-03-26 11:18:51', '', 34, 'http://localhost/revando/wordpress/wp-content/uploads/2020/03/s-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-03-26 11:40:36', '2020-03-26 11:40:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:1;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Thông tin sản phẩm', 'info_product', 'publish', 'closed', 'closed', '', 'field_5e7c921de9b01', '', '', '2020-04-02 08:51:11', '2020-04-02 08:51:11', '', 23, 'http://localhost/revando/wordpress/?post_type=acf-field&#038;p=62', 0, 'acf-field', '', 0),
(63, 1, '2020-03-26 11:40:36', '2020-03-26 11:40:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh sản phẩm', 'anh_san_pham', 'publish', 'closed', 'closed', '', 'field_5e7c923ee9b02', '', '', '2020-03-26 11:40:36', '2020-03-26 11:40:36', '', 62, 'http://localhost/revando/wordpress/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2020-03-26 11:40:36', '2020-03-26 11:40:36', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Giá sản phẩm', 'price_product', 'publish', 'closed', 'closed', '', 'field_5e7c93b2e9b03', '', '', '2020-03-26 11:40:36', '2020-03-26 11:40:36', '', 62, 'http://localhost/revando/wordpress/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2020-03-26 11:40:36', '2020-03-26 11:40:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mô tả', 'des_product', 'publish', 'closed', 'closed', '', 'field_5e7c942ae9b04', '', '', '2020-03-26 11:40:36', '2020-03-26 11:40:36', '', 62, 'http://localhost/revando/wordpress/?post_type=acf-field&p=65', 2, 'acf-field', '', 0),
(66, 1, '2020-03-26 11:40:36', '2020-03-26 11:40:36', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:100;s:4:\"step\";s:0:\"\";}', 'Giảm giá', 'sale_product', 'publish', 'closed', 'closed', '', 'field_5e7c944fe9b05', '', '', '2020-03-26 11:40:36', '2020-03-26 11:40:36', '', 62, 'http://localhost/revando/wordpress/?post_type=acf-field&p=66', 3, 'acf-field', '', 0),
(67, 1, '2020-03-26 11:40:36', '2020-03-26 11:40:36', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:1;s:3:\"max\";i:3;s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ảnh chi tiết', 'img-sub', 'publish', 'closed', 'closed', '', 'field_5e7c9473e9b06', '', '', '2020-04-02 11:51:25', '2020-04-02 11:51:25', '', 62, 'http://localhost/revando/wordpress/?post_type=acf-field&#038;p=67', 4, 'acf-field', '', 0),
(69, 1, '2020-04-02 07:45:03', '2020-04-02 07:45:03', '', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2020-04-19 03:15:01', '2020-04-19 03:15:01', '', 0, 'http://localhost/revando-master/wordpress/?page_id=69', 0, 'page', '', 0),
(70, 1, '2020-04-02 07:45:03', '2020-04-02 07:45:03', '', 'Thanh toán', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2020-04-02 07:45:03', '2020-04-02 07:45:03', '', 69, 'http://localhost/revando-master/wordpress/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-04-02 08:57:57', '2020-04-02 08:57:57', '', 'day-lung-da-ngoc-quang-3', '', 'inherit', 'open', 'closed', '', 'day-lung-da-ngoc-quang-3', '', '', '2020-04-02 13:29:25', '2020-04-02 13:29:25', '', 32, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/day-lung-da-ngoc-quang-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-04-02 08:58:26', '2020-04-02 08:58:26', '', '30443623_1573722599363814_5168695048530821120_n', '', 'inherit', 'open', 'closed', '', '30443623_1573722599363814_5168695048530821120_n', '', '', '2020-04-02 08:58:26', '2020-04-02 08:58:26', '', 32, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/30443623_1573722599363814_5168695048530821120_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-04-02 08:58:40', '2020-04-02 08:58:40', '', 'tải xuống', '', 'inherit', 'open', 'closed', '', 'tai-xuong', '', '', '2020-04-02 08:58:40', '2020-04-02 08:58:40', '', 32, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/tải-xuống.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-04-02 09:00:19', '2020-04-02 09:00:19', '', 'c', '', 'inherit', 'open', 'closed', '', 'c', '', '', '2020-04-02 09:00:41', '2020-04-02 09:00:41', '', 31, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/c.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-04-02 09:00:37', '2020-04-02 09:00:37', '', 'c-2', '', 'inherit', 'open', 'closed', '', 'c-2-3', '', '', '2020-04-02 09:00:37', '2020-04-02 09:00:37', '', 31, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/c-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-04-02 09:00:37', '2020-04-02 09:00:37', '', 'c-3', '', 'inherit', 'open', 'closed', '', 'c-3', '', '', '2020-04-02 09:00:37', '2020-04-02 09:00:37', '', 31, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/c-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-04-02 09:01:34', '2020-04-02 09:01:34', '', 'v', '', 'inherit', 'open', 'closed', '', 'v', '', '', '2020-04-02 13:27:49', '2020-04-02 13:27:49', '', 26, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/v.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-04-02 09:01:51', '2020-04-02 09:01:51', '', 'v-2', '', 'inherit', 'open', 'closed', '', 'v-2', '', '', '2020-04-02 13:29:36', '2020-04-02 13:29:36', '', 26, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/v-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-04-02 09:01:52', '2020-04-02 09:01:52', '', 'v-3', '', 'inherit', 'open', 'closed', '', 'v-3', '', '', '2020-04-02 09:01:52', '2020-04-02 09:01:52', '', 26, 'http://localhost/revando-master/wordpress/wp-content/uploads/2020/03/v-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 0, '2020-04-02 09:04:03', '2020-04-02 09:04:03', '', 'ví 2', '', 'publish', 'closed', 'closed', '', 'vi-2', '', '', '2020-04-02 13:28:56', '2020-04-02 13:28:56', '', 0, 'http://localhost/revando-master/wordpress/?post_type=san_pham&#038;p=82', 0, 'san_pham', '', 0),
(84, 1, '2020-04-16 01:05:18', '2020-04-16 01:05:18', '<input type=\"text\" placeholder=\"Name\">\r\n							<input type=\"text\" placeholder=\"Phone\">\r\n							<input type=\"text\"  placeholder=\"Email\">\r\n							<textarea placeholder=\"Message\" required=\"\"></textarea>\r\n							<div class=\"submit-btn\">\r\n								<input type=\"submit\" value=\"SUBMIT\">\r\n							</div>\n1\nrevando \"[your-subject]\"\n[your-name] <hieu.humg.k57@gmail.com>\nhieu.humg.k57@gmail.com\nGửi đến từ: [your-name] <[your-email]>\r\nTiêu đề: [your-subject]\r\n\r\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/revando-master/wordpress)\nReply-To: [your-email]\n\n\n\n\nrevando \"[your-subject]\"\nrevando <hieu.humg.k57@gmail.com>\n[your-email]\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website revando (http://localhost/revando-master/wordpress)\nReply-To: hieu.humg.k57@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.', 'form liên hệ', '', 'publish', 'closed', 'closed', '', 'form-lien-he', '', '', '2020-04-16 03:21:05', '2020-04-16 03:21:05', '', 0, 'http://localhost/revando-master/wordpress/?post_type=wpcf7_contact_form&#038;p=84', 0, 'wpcf7_contact_form', '', 0),
(85, 1, '2020-04-16 02:26:24', '2020-04-16 02:26:24', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2020-04-16 02:33:07', '2020-04-16 02:33:07', '', 0, 'http://localhost/revando-master/wordpress/?page_id=85', 0, 'page', '', 0),
(86, 1, '2020-04-16 02:26:24', '2020-04-16 02:26:24', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-04-16 02:26:24', '2020-04-16 02:26:24', '', 85, 'http://localhost/revando-master/wordpress/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-04-16 02:45:04', '2020-04-16 02:45:04', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2020-04-16 02:45:04', '2020-04-16 02:45:04', '', 0, 'http://localhost/revando-master/wordpress/?p=87', 8, 'nav_menu_item', '', 0),
(89, 1, '2020-04-19 04:07:46', '2020-04-19 04:07:46', '', 'Thanh toán', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2020-04-19 04:07:46', '2020-04-19 04:07:46', '', 69, 'http://localhost/revando-master/wordpress/69-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2020-04-19 05:33:28', '2020-04-19 05:33:28', '', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2020-04-19 05:33:28', '2020-04-19 05:33:28', '', 0, 'http://localhost/revando-master/wordpress/?page_id=90', 0, 'page', '', 0),
(91, 1, '2020-04-19 05:33:28', '2020-04-19 05:33:28', '', 'Giỏ hàng', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-04-19 05:33:28', '2020-04-19 05:33:28', '', 90, 'http://localhost/revando-master/wordpress/90-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Túi da', 'casio', 0),
(3, 'Thắt lưng da', 'thatlungda', 0),
(4, 'Menu 1', 'menu-1', 0),
(5, 'Ví da', 'vi-da', 0),
(6, 'Túi xách da', 'tui-xach-da', 0),
(7, 'Thắt lưng gucci', 'that-lung-da', 0),
(8, 'Thắt lưng revando', 'that-lung-revando', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(26, 5, 0),
(31, 2, 0),
(32, 2, 0),
(32, 6, 0),
(34, 3, 0),
(34, 7, 0),
(45, 4, 0),
(47, 4, 0),
(48, 4, 0),
(49, 4, 0),
(50, 4, 0),
(51, 4, 0),
(52, 4, 0),
(87, 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'danh_muc_san_pham', '', 0, 3),
(3, 3, 'danh_muc_san_pham', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 8),
(5, 5, 'danh_muc_san_pham', '', 2, 1),
(6, 6, 'danh_muc_san_pham', '', 2, 1),
(7, 7, 'danh_muc_san_pham', '', 3, 1),
(8, 8, 'danh_muc_san_pham', '', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'hieuhumg'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"5d1185ac29db6cb3620d50c7538a0e236cc67fb16213b09b3a5a98294a6e5e8e\";a:4:{s:10:\"expiration\";i:1587438875;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/83.0.144 Chrome/77.0.3865.144 Safari/537.36\";s:5:\"login\";i:1587266075;}s:64:\"14002cc354aff9b842d16f97c116291281577f82c5cb048e225246e74819e2b3\";a:4:{s:10:\"expiration\";i:1587489621;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/83.0.144 Chrome/77.0.3865.144 Safari/537.36\";s:5:\"login\";i:1587316821;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '88'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1585022644'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'closedpostboxes_san_pham', 'a:0:{}'),
(24, 1, 'metaboxhidden_san_pham', 'a:0:{}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(27, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(28, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hieuhumg', '$P$BewyXqj/d1gchHTCmPdjlv8egN7IfR/', 'hieuhumg', 'hieu.humg.k57@gmail.com', '', '2020-03-24 03:34:21', '1585452854:$P$BgFiAKBiqpNx2J1aFuDuz0YMR2EHau.', 0, 'hieuhumg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(8, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_cart`
--
ALTER TABLE `wp_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_contacts`
--
ALTER TABLE `wp_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_cart`
--
ALTER TABLE `wp_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_contacts`
--
ALTER TABLE `wp_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
