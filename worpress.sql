-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2018 at 03:23 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-16 14:59:39', '2018-07-16 12:59:39', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress', 'yes'),
(3, 'blogname', 'alec teihotaata', 'yes'),
(4, 'blogdescription', 'designer graphique', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alec.myclientisrich@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"travaux/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"travaux/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"travaux/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"travaux/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"travaux/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"travaux/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"travaux/([^/]+)/embed/?$\";s:40:\"index.php?travaux=$matches[1]&embed=true\";s:28:\"travaux/([^/]+)/trackback/?$\";s:34:\"index.php?travaux=$matches[1]&tb=1\";s:36:\"travaux/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?travaux=$matches[1]&paged=$matches[2]\";s:43:\"travaux/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?travaux=$matches[1]&cpage=$matches[2]\";s:32:\"travaux/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?travaux=$matches[1]&page=$matches[2]\";s:24:\"travaux/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"travaux/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"travaux/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"travaux/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"travaux/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"travaux/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:51:\"display-posts-shortcode/display-posts-shortcode.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wpportflio', 'yes'),
(41, 'stylesheet', 'wpportflio', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '19', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'fr_FR', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1532102379;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1532134779;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1532178005;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1532183169;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531749745;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1532092187;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1532092191;s:7:\"checked\";a:5:{s:9:\"portfolio\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:10:\"wpportflio\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_timeout_browser_959e2b5b923f70cca34ca0f786ddfb9b', '1532350807', 'no'),
(127, '_site_transient_browser_959e2b5b923f70cca34ca0f786ddfb9b', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"11.0.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'acf_version', '4.4.12', 'yes'),
(153, 'current_theme', 'WP Suisse', 'yes'),
(154, 'theme_mods_portfolio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531811298;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(158, 'new_admin_email', 'alec.myclientisrich@gmail.com', 'yes'),
(175, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(192, 'theme_mods_wpportflio', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(205, 'category_children', 'a:0:{}', 'yes'),
(213, 'cptui_new_install', 'false', 'yes'),
(214, 'cptui_post_types', 'a:1:{s:7:\"travaux\";a:28:{s:4:\"name\";s:7:\"travaux\";s:5:\"label\";s:7:\"travaux\";s:14:\"singular_label\";s:7:\"travaux\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(304, '_site_transient_timeout_theme_roots', '1532093990', 'no'),
(305, '_site_transient_theme_roots', 'a:5:{s:9:\"portfolio\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"wpportflio\";s:7:\"/themes\";}', 'no'),
(306, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1532092192;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:51:\"display-posts-shortcode/display-posts-shortcode.php\";s:5:\"2.9.0\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"display-posts-shortcode/display-posts-shortcode.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/display-posts-shortcode\";s:4:\"slug\";s:23:\"display-posts-shortcode\";s:6:\"plugin\";s:51:\"display-posts-shortcode/display-posts-shortcode.php\";s:11:\"new_version\";s:5:\"2.9.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/display-posts-shortcode/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/display-posts-shortcode.2.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/display-posts-shortcode/assets/icon-256x256.jpg?rev=985418\";s:2:\"1x\";s:75:\"https://ps.w.org/display-posts-shortcode/assets/icon-128x128.jpg?rev=985418\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/display-posts-shortcode/assets/banner-772x250.jpg?rev=479842\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(308, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1532138962', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(309, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Jul 2018 14:03:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"LR3VFFug/t+gudP/CE1UOR5Ch1I\";s:13:\"last-modified\";s:29:\"Fri, 20 Jul 2018 14:00:28 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Fri, 20 Jul 2018 14:09:22 GMT\";s:7:\"expires\";s:29:\"Fri, 20 Jul 2018 14:09:22 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";}}s:5:\"build\";s:14:\"20130911020210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(310, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1532138962', 'no'),
(311, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1532095762', 'no'),
(312, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1532138962', 'no'),
(313, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Vivre de son blog est possible. Mais à quel prix ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/2HKdzs3cviQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://wpmarmite.com/devenir-blogueur/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=devenir-blogueur\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Jul 2018 06:00:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:331:\"\n		        \nÊtre indépendant. Pouvoir voyager, loin, longtemps, voire se faire payer pour visiter des contrées inconnues. Partager sa passion, et en vivre. Gagner de l’argent grâce au web. Avoir une communauté...\nL’article Vivre de son blog est possible. Mais à quel prix ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:697:\"<p><img width=\"640\" height=\"220\" src=\"https://wpmarmite.com/wp-content/uploads/2018/07/blogueur.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Être indépendant. Pouvoir voyager, loin, longtemps, voire se faire payer pour visiter des contrées inconnues. Partager sa passion, et en vivre. Gagner de l’argent grâce au web. Avoir une communauté...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/devenir-blogueur/\">Vivre de son blog est possible. Mais à quel prix ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/2HKdzs3cviQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"https://wpmarmite.com/devenir-blogueur/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=devenir-blogueur\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Black Studio TinyMCE Widget\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/IYuS2CDLqOI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://www.echodesplugins.li-an.fr/plugins/black-studio-tinymce-widget/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 15 Jul 2018 15:40:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"\n		        Les outils d’édition de texte pour les widgets texte		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:146:\"Les outils d’édition de texte pour les widgets texte<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/IYuS2CDLqOI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://www.echodesplugins.li-an.fr/plugins/black-studio-tinymce-widget/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"Bitcoin et WordPress : comment intégrer cette cryptomonnaie sur votre site ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/mOla7zit2VE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wpmarmite.com/bitcoin-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=bitcoin-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jul 2018 06:00:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:337:\"\n		        \nConnaissez-vous Erik Finman ? À priori, cette personne ne doit rien vous dire. Avant de découvrir l’histoire de ce jeune Allemand de 19 ans, il m’était totalement inconnu. À 12...\nL’article Bitcoin et WordPress : comment intégrer cette cryptomonnaie sur votre site ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:727:\"<p><img width=\"1280\" height=\"440\" src=\"https://wpmarmite.com/wp-content/uploads/2018/07/bitcoin-reseaux.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"Bitcoin-reseaux\" /></p>\n<p>Connaissez-vous Erik Finman ? À priori, cette personne ne doit rien vous dire. Avant de découvrir l’histoire de ce jeune Allemand de 19 ans, il m’était totalement inconnu. À 12...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/bitcoin-wordpress/\">Bitcoin et WordPress : comment intégrer cette cryptomonnaie sur votre site ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/mOla7zit2VE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wpmarmite.com/bitcoin-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=bitcoin-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"20 Thèmes WordPress savoureux pour créer des sites internet de restaurants (2018)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/hS49KDer4sU/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://wpmarmite.com/theme-wordpress-restaurant/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=theme-wordpress-restaurant\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Jul 2018 06:00:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"\n		        \nLorsque je compte inviter ma femme dans un restaurant que je ne connais pas, je cherche toujours à consulter son site internet. Cela me permet de me faire une idée...\nL’article 20 Thèmes WordPress savoureux pour créer des sites internet de restaurants (2018) est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:703:\"<p><img width=\"1280\" height=\"440\" src=\"https://wpmarmite.com/wp-content/uploads/2018/07/restaurant.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Lorsque je compte inviter ma femme dans un restaurant que je ne connais pas, je cherche toujours à consulter son site internet. Cela me permet de me faire une idée...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/theme-wordpress-restaurant/\">20 Thèmes WordPress savoureux pour créer des sites internet de restaurants (2018)</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/hS49KDer4sU\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://wpmarmite.com/theme-wordpress-restaurant/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=theme-wordpress-restaurant\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Les 26 Meilleurs Plugins WordPress pour les Réseaux Sociaux\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/uqbK4T0EZO8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpformation.com/meilleurs-plugins-reseaux-sociaux/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Jul 2018 06:49:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:622:\"\n		        Depuis l’arrivée de réseaux sociaux tels que Facebook, Twitter, LinkedIn, Pinterest, etc. La maîtrise de la communication sur ces plateformes a fait énormément de progrès. C’est à présent un élément clé de toute stratégie marketing et SEO… Voilà pourquoi vous devriez connaître et utiliser les meilleurs plugins de réseaux sociaux pour WordPress sur votre site [&#8230;]\n\nL’article Les 26 Meilleurs Plugins WordPress pour les Réseaux Sociaux est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1448:\"<p><img width=\"849\" height=\"566\" src=\"https://wpformation.com/wp-content/uploads/2016/05/socialmedia-pro.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"Social Media\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Depuis l’arrivée de réseaux sociaux tels que Facebook, Twitter, LinkedIn, Pinterest, etc. La maîtrise de la communication sur ces plateformes a fait énormément de progrès. C’est à présent un élément clé de toute stratégie marketing et SEO… Voilà pourquoi vous devriez connaître et utiliser les meilleurs plugins de réseaux sociaux pour WordPress sur votre site [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/meilleurs-plugins-reseaux-sociaux/\">Les 26 Meilleurs Plugins WordPress pour les Réseaux Sociaux</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/uqbK4T0EZO8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpformation.com/meilleurs-plugins-reseaux-sociaux/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WordPress multisite, le domaine mapping sans extension\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/cANc6v47DG0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wpchannel.com/wordpress/tutoriels-wordpress/wordpress-multisite-domaine-mapping/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 01 Jul 2018 19:01:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:492:\"\n		        La version 4.5 de WordPress apporte le support natif du mapping de domaine pour les installations multisite. Que vous disposiez d&#8217;une installation en sous-domaine ou en sous-dossier, l&#8217;utilisation de noms de domaines présente un intérêt indéniable en matière de communication. La procédure décrite dans ce tutoriel peut sans doute être complétée en fonction des configurations serveurs de chacun mais l&#8217;idée ici est d&#8217;être le [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:773:\"<div class=\"post-thumbnail\"><img width=\"450\" height=\"300\" src=\"https://wpchannel.com/images/2018/07/wordpress-multisite-installation-450x300.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>La version 4.5 de WordPress apporte le support natif du mapping de domaine pour les installations multisite. Que vous disposiez d&#8217;une installation en sous-domaine ou en sous-dossier, l&#8217;utilisation de noms de domaines présente un intérêt indéniable en matière de communication. La procédure décrite dans ce tutoriel peut sans doute être complétée en fonction des configurations serveurs de chacun mais l&#8217;idée ici est d&#8217;être le [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/cANc6v47DG0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wpchannel.com/wordpress/tutoriels-wordpress/wordpress-multisite-domaine-mapping/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Beautiful taxonomy filters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/IxyQTJnnXjA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://www.echodesplugins.li-an.fr/plugins/beautiful-taxonomy-filters/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 22:31:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"\n		        Proposez un filtre pratique de vos taxonomies		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:136:\"Proposez un filtre pratique de vos taxonomies<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/IxyQTJnnXjA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://www.echodesplugins.li-an.fr/plugins/beautiful-taxonomy-filters/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"Formations WordPress éligibles au CPF (Compte Personnel Formation)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/wqreta7ke8c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpformation.com/formations-wordpress-eligibles-cpf/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Jun 2018 08:11:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:641:\"\n		        La Commission Nationale de la Certification Professionnelle (CNCP) a publié son dernier recensement à l&#8217;Inventaire des certifications et habilitations lors de sa commission plénière du 25/05/2018 et&#8230; WPFormation est heureux et fier de vous annoncer que les formations WordPress que nous proposons sont désormais éligibles au CPF ! (Compte Personnel Formation). Le code CPF de [&#8230;]\n\nL’article Formations WordPress éligibles au CPF (Compte Personnel Formation) est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p><img width=\"720\" height=\"491\" src=\"https://wpformation.com/wp-content/uploads/2018/05/compte-personnel-formation-cpf-WordPress-.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"compte personnel formation cpf WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />La Commission Nationale de la Certification Professionnelle (CNCP) a publié son dernier recensement à l&#8217;Inventaire des certifications et habilitations lors de sa commission plénière du 25/05/2018 et&#8230; WPFormation est heureux et fier de vous annoncer que les formations WordPress que nous proposons sont désormais éligibles au CPF ! (Compte Personnel Formation). Le code CPF de [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/formations-wordpress-eligibles-cpf/\">Formations WordPress éligibles au CPF (Compte Personnel Formation)</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/wqreta7ke8c\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpformation.com/formations-wordpress-eligibles-cpf/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"8lnNKUJUvdLRMQE+OoYLIFvzFow\";s:13:\"last-modified\";s:29:\"Fri, 20 Jul 2018 13:59:55 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Fri, 20 Jul 2018 14:09:22 GMT\";s:7:\"expires\";s:29:\"Fri, 20 Jul 2018 14:09:22 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";}}s:5:\"build\";s:14:\"20130911020210\";}', 'no'),
(314, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1532138962', 'no'),
(315, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1532095762', 'no'),
(316, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1532138962', 'no'),
(317, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/2HKdzs3cviQ/\'>Vivre de son blog est possible. Mais à quel prix ?</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/IYuS2CDLqOI/\'>Black Studio TinyMCE Widget</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/mOla7zit2VE/\'>Bitcoin et WordPress : comment intégrer cette cryptomonnaie sur votre site ?</a></li></ul></div>', 'no'),
(318, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1532138962', 'no'),
(319, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"WordCamp Brighton\";s:3:\"url\";s:34:\"https://2018.brighton.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-08-17 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Brighton, UK\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:50.832385;s:9:\"longitude\";d:-0.1398234;}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1531752034:1'),
(5, 8, '_edit_last', '1'),
(6, 8, '_edit_lock', '1531752479:1'),
(7, 10, '_edit_last', '1'),
(8, 10, 'field_5b4cb17c09312', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb17c09312\";s:5:\"label\";s:5:\"titre\";s:4:\"name\";s:5:\"titre\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(9, 10, 'field_5b4cb1cc09313', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb1cc09313\";s:5:\"label\";s:15:\"type de travail\";s:4:\"name\";s:15:\"type_de_travail\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(10, 10, 'field_5b4cb1e609314', 'a:15:{s:3:\"key\";s:19:\"field_5b4cb1e609314\";s:5:\"label\";s:4:\"date\";s:4:\"name\";s:4:\"date\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(11, 10, 'field_5b4cb1f309315', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb1f309315\";s:5:\"label\";s:0:\"\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(13, 10, 'position', 'normal'),
(14, 10, 'layout', 'no_box'),
(15, 10, 'hide_on_screen', ''),
(16, 10, '_edit_lock', '1531753086:1'),
(17, 10, 'rule', 'a:5:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(18, 10, '_wp_trash_meta_status', 'publish'),
(19, 10, '_wp_trash_meta_time', '1531753141'),
(20, 10, '_wp_desired_post_slug', 'acf_articles'),
(21, 8, '_wp_trash_meta_status', 'draft'),
(22, 8, '_wp_trash_meta_time', '1531753250'),
(23, 8, '_wp_desired_post_slug', ''),
(24, 17, '_edit_last', '1'),
(25, 17, '_edit_lock', '1531753590:1'),
(27, 18, '_customize_changeset_uuid', '68718d92-e2a9-4f44-bfe3-0bcf05f3384e'),
(29, 19, '_customize_changeset_uuid', '68718d92-e2a9-4f44-bfe3-0bcf05f3384e'),
(31, 20, '_customize_changeset_uuid', '68718d92-e2a9-4f44-bfe3-0bcf05f3384e'),
(33, 21, '_customize_changeset_uuid', '68718d92-e2a9-4f44-bfe3-0bcf05f3384e'),
(34, 27, '_menu_item_type', 'post_type'),
(35, 27, '_menu_item_menu_item_parent', '0'),
(36, 27, '_menu_item_object_id', '18'),
(37, 27, '_menu_item_object', 'page'),
(38, 27, '_menu_item_target', ''),
(39, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 27, '_menu_item_xfn', ''),
(41, 27, '_menu_item_url', ''),
(50, 29, '_menu_item_type', 'post_type'),
(51, 29, '_menu_item_menu_item_parent', '0'),
(52, 29, '_menu_item_object_id', '20'),
(53, 29, '_menu_item_object', 'page'),
(54, 29, '_menu_item_target', ''),
(55, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 29, '_menu_item_xfn', ''),
(57, 29, '_menu_item_url', ''),
(58, 30, '_menu_item_type', 'post_type'),
(59, 30, '_menu_item_menu_item_parent', '0'),
(60, 30, '_menu_item_object_id', '21'),
(61, 30, '_menu_item_object', 'page'),
(62, 30, '_menu_item_target', ''),
(63, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 30, '_menu_item_xfn', ''),
(65, 30, '_menu_item_url', ''),
(66, 22, '_wp_trash_meta_status', 'publish'),
(67, 22, '_wp_trash_meta_time', '1531753827'),
(68, 31, '_edit_last', '1'),
(69, 31, 'field_5b4cb77da78ae', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb77da78ae\";s:5:\"label\";s:16:\"description_alec\";s:4:\"name\";s:16:\"description_alec\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(70, 31, 'field_5b4cb7a0a78af', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb7a0a78af\";s:5:\"label\";s:11:\"ma_location\";s:4:\"name\";s:11:\"ma_location\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(71, 31, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(72, 31, 'position', 'normal'),
(73, 31, 'layout', 'no_box'),
(74, 31, 'hide_on_screen', ''),
(75, 31, '_edit_lock', '1531755629:1'),
(76, 19, '_edit_lock', '1531988012:1'),
(77, 19, '_edit_last', '1'),
(78, 19, '_wp_page_template', 'home.php'),
(79, 32, 'description_alec', 'designer graphique, développeur front-end, web designer'),
(80, 32, '_description_alec', 'field_5b4cb77da78ae'),
(81, 32, 'ma_location', 'basé à Strasbourg'),
(82, 32, '_ma_location', 'field_5b4cb7a0a78af'),
(83, 19, 'description_alec', 'designer graphique, développeur front-end, web designer'),
(84, 19, '_description_alec', 'field_5b4cb77da78ae'),
(85, 19, 'ma_location', 'basé à Strasbourg'),
(86, 19, '_ma_location', 'field_5b4cb7a0a78af'),
(87, 33, '_edit_last', '1'),
(88, 33, 'field_5b4cb8c752eda', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb8c752eda\";s:5:\"label\";s:8:\"nom_gros\";s:4:\"name\";s:8:\"nom_gros\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(89, 33, 'field_5b4cb8fe52edb', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb8fe52edb\";s:5:\"label\";s:12:\"presentation\";s:4:\"name\";s:12:\"presentation\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(90, 33, 'field_5b4cb92552edc', 'a:14:{s:3:\"key\";s:19:\"field_5b4cb92552edc\";s:5:\"label\";s:13:\"phrase de fin\";s:4:\"name\";s:13:\"phrase_de_fin\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(91, 33, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(92, 33, 'position', 'normal'),
(93, 33, 'layout', 'no_box'),
(94, 33, 'hide_on_screen', ''),
(95, 33, '_edit_lock', '1531755178:1'),
(96, 34, '_edit_last', '1'),
(97, 34, 'field_5b4cbac26d2f0', 'a:14:{s:3:\"key\";s:19:\"field_5b4cbac26d2f0\";s:5:\"label\";s:20:\"phrase_intro_contact\";s:4:\"name\";s:20:\"phrase_intro_contact\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(98, 34, 'field_5b4cbaef6d2f1', 'a:14:{s:3:\"key\";s:19:\"field_5b4cbaef6d2f1\";s:5:\"label\";s:4:\"mail\";s:4:\"name\";s:4:\"mail\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(99, 34, 'field_5b4cbafb6d2f2', 'a:14:{s:3:\"key\";s:19:\"field_5b4cbafb6d2f2\";s:5:\"label\";s:16:\"réseaux sociaux\";s:4:\"name\";s:15:\"reseaux_sociaux\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(100, 34, 'field_5b4cbb0a6d2f3', 'a:14:{s:3:\"key\";s:19:\"field_5b4cbb0a6d2f3\";s:5:\"label\";s:8:\"location\";s:4:\"name\";s:8:\"location\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(101, 34, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(102, 34, 'position', 'normal'),
(103, 34, 'layout', 'no_box'),
(104, 34, 'hide_on_screen', ''),
(105, 34, '_edit_lock', '1531755319:1'),
(106, 18, '_edit_lock', '1532007532:1'),
(107, 18, '_edit_last', '1'),
(108, 18, '_wp_page_template', 'about.php'),
(109, 3, '_wp_trash_meta_status', 'draft'),
(110, 3, '_wp_trash_meta_time', '1531755970'),
(111, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(112, 17, '_wp_trash_meta_status', 'draft'),
(113, 17, '_wp_trash_meta_time', '1531755973'),
(114, 17, '_wp_desired_post_slug', ''),
(115, 2, '_wp_trash_meta_status', 'publish'),
(116, 2, '_wp_trash_meta_time', '1531755975'),
(117, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(118, 34, '_wp_trash_meta_status', 'publish'),
(119, 34, '_wp_trash_meta_time', '1531811358'),
(120, 34, '_wp_desired_post_slug', 'acf_contenu-contact'),
(121, 33, '_wp_trash_meta_status', 'publish'),
(122, 33, '_wp_trash_meta_time', '1531811359'),
(123, 33, '_wp_desired_post_slug', 'acf_contenu-about'),
(124, 31, '_wp_trash_meta_status', 'publish'),
(125, 31, '_wp_trash_meta_time', '1531811361'),
(126, 31, '_wp_desired_post_slug', 'acf_contenu-accueil'),
(127, 39, '_edit_last', '1'),
(128, 39, 'field_5b4d962df5860', 'a:14:{s:3:\"key\";s:19:\"field_5b4d962df5860\";s:5:\"label\";s:9:\"categorie\";s:4:\"name\";s:9:\"categorie\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(129, 39, 'field_5b4d9651f5861', 'a:14:{s:3:\"key\";s:19:\"field_5b4d9651f5861\";s:5:\"label\";s:13:\"typedetravail\";s:4:\"name\";s:13:\"typedetravail\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(131, 39, 'position', 'normal'),
(132, 39, 'layout', 'no_box'),
(133, 39, 'hide_on_screen', ''),
(134, 39, '_edit_lock', '1531990458:1'),
(135, 41, '_edit_last', '1'),
(136, 41, '_edit_lock', '1531811453:1'),
(139, 42, 'categorie', 'work'),
(140, 42, '_categorie', 'field_5b4d962df5860'),
(141, 42, 'typedetravail', 'design éditorial'),
(142, 42, '_typedetravail', 'field_5b4d9651f5861'),
(143, 41, 'categorie', 'work'),
(144, 41, '_categorie', 'field_5b4d962df5860'),
(145, 41, 'typedetravail', 'design éditorial'),
(146, 41, '_typedetravail', 'field_5b4d9651f5861'),
(147, 43, '_edit_last', '1'),
(148, 43, '_edit_lock', '1531811496:1'),
(151, 44, 'categorie', 'school'),
(152, 44, '_categorie', 'field_5b4d962df5860'),
(153, 44, 'typedetravail', 'identité visuelle'),
(154, 44, '_typedetravail', 'field_5b4d9651f5861'),
(155, 43, 'categorie', 'school'),
(156, 43, '_categorie', 'field_5b4d962df5860'),
(157, 43, 'typedetravail', 'identité visuelle'),
(158, 43, '_typedetravail', 'field_5b4d9651f5861'),
(159, 6, '_wp_trash_meta_status', 'draft'),
(160, 6, '_wp_trash_meta_time', '1531811509'),
(161, 6, '_wp_desired_post_slug', ''),
(162, 1, '_wp_trash_meta_status', 'publish'),
(163, 1, '_wp_trash_meta_time', '1531811510'),
(164, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(165, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(166, 47, '_edit_last', '1'),
(167, 47, '_edit_lock', '1531811541:1'),
(170, 48, 'categorie', 'work'),
(171, 48, '_categorie', 'field_5b4d962df5860'),
(172, 48, 'typedetravail', 'identité visuelle'),
(173, 48, '_typedetravail', 'field_5b4d9651f5861'),
(174, 47, 'categorie', 'work'),
(175, 47, '_categorie', 'field_5b4d962df5860'),
(176, 47, 'typedetravail', 'identité visuelle'),
(177, 47, '_typedetravail', 'field_5b4d9651f5861'),
(178, 49, '_edit_last', '1'),
(179, 49, '_edit_lock', '1531918919:1'),
(182, 50, 'categorie', 'work'),
(183, 50, '_categorie', 'field_5b4d962df5860'),
(184, 50, 'typedetravail', 'webdev'),
(185, 50, '_typedetravail', 'field_5b4d9651f5861'),
(186, 49, 'categorie', 'work'),
(187, 49, '_categorie', 'field_5b4d962df5860'),
(188, 49, 'typedetravail', 'webdev'),
(189, 49, '_typedetravail', 'field_5b4d9651f5861'),
(190, 21, '_edit_lock', '1532007495:1'),
(191, 21, '_edit_last', '1'),
(192, 21, '_wp_page_template', 'contact.php'),
(193, 20, '_edit_lock', '1531900917:1'),
(194, 20, '_edit_last', '1'),
(195, 20, '_wp_page_template', 'experimentations.php'),
(196, 51, '_edit_last', '1'),
(197, 51, '_edit_lock', '1531984604:1'),
(200, 52, 'categorie', 'school'),
(201, 52, '_categorie', 'field_5b4d962df5860'),
(202, 52, 'typedetravail', 'web design'),
(203, 52, '_typedetravail', 'field_5b4d9651f5861'),
(204, 51, 'categorie', 'school'),
(205, 51, '_categorie', 'field_5b4d962df5860'),
(206, 51, 'typedetravail', 'web design'),
(207, 51, '_typedetravail', 'field_5b4d9651f5861'),
(208, 53, '_edit_last', '1'),
(209, 53, 'field_5b4d97fca28ea', 'a:14:{s:3:\"key\";s:19:\"field_5b4d97fca28ea\";s:5:\"label\";s:14:\"nom gros about\";s:4:\"name\";s:9:\"about_nom\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(210, 53, 'field_5b4d9820a28eb', 'a:11:{s:3:\"key\";s:19:\"field_5b4d9820a28eb\";s:5:\"label\";s:18:\"profil description\";s:4:\"name\";s:22:\"about_profidescription\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(211, 53, 'field_5b4d982ca28ec', 'a:14:{s:3:\"key\";s:19:\"field_5b4d982ca28ec\";s:5:\"label\";s:13:\"travaux about\";s:4:\"name\";s:13:\"about_travaux\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(212, 53, 'field_5b4d983ba28ed', 'a:14:{s:3:\"key\";s:19:\"field_5b4d983ba28ed\";s:5:\"label\";s:19:\"phrase de fin about\";s:4:\"name\";s:9:\"about_fin\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(214, 53, 'position', 'normal'),
(215, 53, 'layout', 'no_box'),
(216, 53, 'hide_on_screen', ''),
(217, 53, '_edit_lock', '1531905290:1'),
(218, 54, '_edit_last', '1'),
(219, 54, 'field_5b4d987a7c2df', 'a:13:{s:3:\"key\";s:19:\"field_5b4d987a7c2df\";s:5:\"label\";s:20:\"phrase intro contact\";s:4:\"name\";s:19:\"contact_phraseintro\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(220, 54, 'field_5b4d98897c2e0', 'a:14:{s:3:\"key\";s:19:\"field_5b4d98897c2e0\";s:5:\"label\";s:4:\"mail\";s:4:\"name\";s:12:\"contact_mail\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(221, 54, 'field_5b4d988e7c2e1', 'a:13:{s:3:\"key\";s:19:\"field_5b4d988e7c2e1\";s:5:\"label\";s:16:\"réseaux sociaux\";s:4:\"name\";s:20:\"contact_listereseaux\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(222, 54, 'field_5b4d98987c2e2', 'a:14:{s:3:\"key\";s:19:\"field_5b4d98987c2e2\";s:5:\"label\";s:8:\"location\";s:4:\"name\";s:16:\"contact_location\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(224, 54, 'position', 'normal'),
(225, 54, 'layout', 'no_box'),
(226, 54, 'hide_on_screen', ''),
(227, 54, '_edit_lock', '1531905286:1'),
(228, 56, '_edit_last', '1'),
(229, 56, 'field_5b4d9a618d7ff', 'a:14:{s:3:\"key\";s:19:\"field_5b4d9a618d7ff\";s:5:\"label\";s:16:\"description alec\";s:4:\"name\";s:16:\"description_alec\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(230, 56, 'field_5b4d9a9c8d800', 'a:14:{s:3:\"key\";s:19:\"field_5b4d9a9c8d800\";s:5:\"label\";s:12:\"location top\";s:4:\"name\";s:12:\"location_top\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(236, 56, 'position', 'acf_after_title'),
(237, 56, 'layout', 'no_box'),
(238, 56, 'hide_on_screen', ''),
(239, 56, '_edit_lock', '1531812660:1'),
(245, 56, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(246, 56, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"about.php\";s:8:\"order_no\";i:1;s:8:\"group_no\";i:0;}'),
(247, 56, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"contact.php\";s:8:\"order_no\";i:2;s:8:\"group_no\";i:0;}'),
(248, 56, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"experimentations.php\";s:8:\"order_no\";i:3;s:8:\"group_no\";i:0;}'),
(249, 56, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"home.php\";s:8:\"order_no\";i:4;s:8:\"group_no\";i:0;}'),
(250, 56, '_wp_trash_meta_status', 'publish'),
(251, 56, '_wp_trash_meta_time', '1531812699'),
(252, 56, '_wp_desired_post_slug', 'acf_menu-bar'),
(253, 57, 'nom_gros_about', 'Alec Teihotaata'),
(254, 57, '_nom_gros_about', 'field_5b4d97fca28ea'),
(255, 57, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en dévelop'),
(256, 57, '_profil_description', 'field_5b4d9820a28eb'),
(257, 57, 'travaux_about', ''),
(258, 57, '_travaux_about', 'field_5b4d982ca28ec'),
(259, 57, 'phrase_de_fin_about', ''),
(260, 57, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(261, 18, 'nom_gros_about', 'Alec<br>Teihotaata'),
(262, 18, '_nom_gros_about', 'field_5b4d97fca28ea'),
(263, 18, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg.\r\n\r\nAyant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(264, 18, '_profil_description', 'field_5b4d9820a28eb'),
(265, 18, 'travaux_about', ''),
(266, 18, '_travaux_about', 'field_5b4d982ca28ec'),
(267, 18, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(268, 18, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(269, 58, 'nom_gros_about', 'Alec Teihotaata'),
(270, 58, '_nom_gros_about', 'field_5b4d97fca28ea'),
(271, 58, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(272, 58, '_profil_description', 'field_5b4d9820a28eb'),
(273, 58, 'travaux_about', ''),
(274, 58, '_travaux_about', 'field_5b4d982ca28ec'),
(275, 58, 'phrase_de_fin_about', ''),
(276, 58, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(277, 53, 'field_5b4d9f0e0da1c', 'a:14:{s:3:\"key\";s:19:\"field_5b4d9f0e0da1c\";s:5:\"label\";s:21:\"experience logicielle\";s:4:\"name\";s:16:\"about_experience\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(279, 59, 'nom_gros_about', 'Alec Teihotaata'),
(280, 59, '_nom_gros_about', 'field_5b4d97fca28ea'),
(281, 59, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(282, 59, '_profil_description', 'field_5b4d9820a28eb'),
(283, 59, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(284, 59, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(285, 59, 'travaux_about', ''),
(286, 59, '_travaux_about', 'field_5b4d982ca28ec'),
(287, 59, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(288, 59, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(289, 18, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(290, 18, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(291, 60, 'phrase_intro_contact', 'Envie de travailler ensemble ?<br>Ou tout simplement de discuter autour d\'un verre ?<br>Contactez-Moi'),
(292, 60, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(293, 60, 'mail', 'teihotaata.alec@gmail.com'),
(294, 60, '_mail', 'field_5b4d98897c2e0'),
(295, 60, 'reseaux_sociaux', 'instagram<br>twitter<br>spotify<br>tumblr'),
(296, 60, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(297, 60, 'location', '67000,<br>Strasbourg'),
(298, 60, '_location', 'field_5b4d98987c2e2'),
(299, 21, 'phrase_intro_contact', 'Envie de travailler ensemble ?\r\nOu tout simplement de discuter autour d\'un verre ?\r\nContactez-Moi'),
(300, 21, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(301, 21, 'mail', 'teihotaata.alec@gmail.com'),
(302, 21, '_mail', 'field_5b4d98897c2e0'),
(303, 21, 'reseaux_sociaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(304, 21, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(305, 21, 'location', '67000,<br>Strasbourg'),
(306, 21, '_location', 'field_5b4d98987c2e2'),
(307, 61, '_wp_trash_meta_status', 'publish'),
(308, 61, '_wp_trash_meta_time', '1531814755'),
(309, 62, '_edit_lock', '1531815411:1'),
(310, 62, '_wp_trash_meta_status', 'publish'),
(311, 62, '_wp_trash_meta_time', '1531815433'),
(312, 63, '_wp_trash_meta_status', 'publish'),
(313, 63, '_wp_trash_meta_time', '1531815490'),
(314, 64, '_wp_trash_meta_status', 'publish'),
(315, 64, '_wp_trash_meta_time', '1531815846'),
(316, 65, 'nom_gros_about', 'Alec <br>Teihotaata'),
(317, 65, '_nom_gros_about', 'field_5b4d97fca28ea'),
(318, 65, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(319, 65, '_profil_description', 'field_5b4d9820a28eb'),
(320, 65, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(321, 65, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(322, 65, 'travaux_about', ''),
(323, 65, '_travaux_about', 'field_5b4d982ca28ec'),
(324, 65, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(325, 65, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(326, 66, 'nom_gros_about', 'Alec <br class=\"nom_about_br\">Teihotaata'),
(327, 66, '_nom_gros_about', 'field_5b4d97fca28ea'),
(328, 66, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(329, 66, '_profil_description', 'field_5b4d9820a28eb'),
(330, 66, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(331, 66, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(332, 66, 'travaux_about', ''),
(333, 66, '_travaux_about', 'field_5b4d982ca28ec'),
(334, 66, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(335, 66, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(336, 67, '_menu_item_type', 'custom'),
(337, 67, '_menu_item_menu_item_parent', '0'),
(338, 67, '_menu_item_object_id', '67'),
(339, 67, '_menu_item_object', 'custom'),
(340, 67, '_menu_item_target', ''),
(341, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(342, 67, '_menu_item_xfn', ''),
(343, 67, '_menu_item_url', 'http://localhost:8888/wordpress/'),
(345, 68, '_edit_last', '1'),
(346, 68, 'field_5b4daa963e764', 'a:13:{s:3:\"key\";s:19:\"field_5b4daa963e764\";s:5:\"label\";s:16:\"description menu\";s:4:\"name\";s:16:\"description_menu\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(349, 68, 'position', 'normal'),
(350, 68, 'layout', 'no_box'),
(351, 68, 'hide_on_screen', ''),
(352, 68, '_edit_lock', '1531837676:1'),
(353, 69, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(354, 69, '_description_menu', 'field_5b4daa963e764'),
(355, 19, 'description_menu', 'designer graphique\r\nweb designer\r\ndéveloppeur front-end'),
(356, 19, '_description_menu', 'field_5b4daa963e764'),
(357, 70, 'nom_gros_about', 'Alec <br class=\"nom_about_br\">Teihotaata'),
(358, 70, '_nom_gros_about', 'field_5b4d97fca28ea'),
(359, 70, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(360, 70, '_profil_description', 'field_5b4d9820a28eb'),
(361, 70, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(362, 70, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(363, 70, 'travaux_about', ''),
(364, 70, '_travaux_about', 'field_5b4d982ca28ec'),
(365, 70, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(366, 70, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(367, 70, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(368, 70, '_description_menu', 'field_5b4daa963e764'),
(369, 18, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(370, 18, '_description_menu', 'field_5b4daa963e764'),
(371, 68, 'field_5b4dab0248ec5', 'a:14:{s:3:\"key\";s:19:\"field_5b4dab0248ec5\";s:5:\"label\";s:28:\"Position (élément de menu)\";s:4:\"name\";s:13:\"location_menu\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(374, 71, 'nom_gros_about', 'Alec <br class=\"nom_about_br\">Teihotaata'),
(375, 71, '_nom_gros_about', 'field_5b4d97fca28ea'),
(376, 71, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.<br>Je suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(377, 71, '_profil_description', 'field_5b4d9820a28eb'),
(378, 71, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(379, 71, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(380, 71, 'travaux_about', ''),
(381, 71, '_travaux_about', 'field_5b4d982ca28ec'),
(382, 71, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(383, 71, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(384, 71, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(385, 71, '_description_menu', 'field_5b4daa963e764'),
(386, 71, 'location_menu', 'basé à Strasbourg'),
(387, 71, '_location_menu', 'field_5b4dab0248ec5'),
(388, 18, 'location_menu', 'basé à Strasbourg'),
(389, 18, '_location_menu', 'field_5b4dab0248ec5'),
(390, 19, 'location_menu', 'basé à Strasbourg'),
(391, 19, '_location_menu', 'field_5b4dab0248ec5'),
(392, 72, 'phrase_intro_contact', 'Envie de travailler ensemble ?<br>Ou tout simplement de discuter autour d\'un verre ?<br>Contactez-Moi'),
(393, 72, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(394, 72, 'mail', 'teihotaata.alec@gmail.com'),
(395, 72, '_mail', 'field_5b4d98897c2e0'),
(396, 72, 'reseaux_sociaux', 'instagram<br>twitter<br>spotify<br>tumblr'),
(397, 72, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(398, 72, 'location', '67000,<br>Strasbourg'),
(399, 72, '_location', 'field_5b4d98987c2e2'),
(400, 72, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(401, 72, '_description_menu', 'field_5b4daa963e764'),
(402, 72, 'location_menu', 'basé à Strasbourg'),
(403, 72, '_location_menu', 'field_5b4dab0248ec5'),
(404, 21, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(405, 21, '_description_menu', 'field_5b4daa963e764'),
(406, 21, 'location_menu', 'basé à Strasbourg'),
(407, 21, '_location_menu', 'field_5b4dab0248ec5'),
(408, 73, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(409, 73, '_description_menu', 'field_5b4daa963e764'),
(410, 73, 'location_menu', 'basé à Strasbourg'),
(411, 73, '_location_menu', 'field_5b4dab0248ec5'),
(412, 20, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(413, 20, '_description_menu', 'field_5b4daa963e764'),
(414, 20, 'location_menu', 'basé à Strasbourg'),
(415, 20, '_location_menu', 'field_5b4dab0248ec5'),
(416, 74, 'description_menu', 'designer graphique web designer développeur front-end'),
(417, 74, '_description_menu', 'field_5b4daa963e764'),
(418, 74, 'location_menu', 'basé à Strasbourg'),
(419, 74, '_location_menu', 'field_5b4dab0248ec5'),
(420, 75, 'description_menu', '<p>designer graphique</p><p>web designer</p><p>développeur front-end</p>'),
(421, 75, '_description_menu', 'field_5b4daa963e764'),
(422, 75, 'location_menu', 'basé à Strasbourg'),
(423, 75, '_location_menu', 'field_5b4dab0248ec5'),
(424, 76, '_edit_last', '1'),
(425, 76, '_edit_lock', '1531818324:1'),
(426, 77, '_edit_last', '1'),
(427, 77, '_edit_lock', '1531819533:1'),
(428, 77, 'description_menu', 'rgjoiejioergoijerg'),
(429, 77, '_description_menu', 'field_5b4daa963e764'),
(430, 77, 'location_menu', ''),
(431, 77, '_location_menu', 'field_5b4dab0248ec5'),
(432, 78, '_edit_last', '1'),
(433, 78, '_edit_lock', '1531819824:1'),
(434, 78, 'description_menu', 'adsasdasdads'),
(435, 78, '_description_menu', 'field_5b4daa963e764'),
(436, 78, 'location_menu', ''),
(437, 78, '_location_menu', 'field_5b4dab0248ec5'),
(440, 68, 'rule', 'a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"home.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(441, 79, 'description_menu', 'designer graphique\r\nweb designer\r\ndéveloppeur front-end'),
(442, 79, '_description_menu', 'field_5b4daa963e764'),
(443, 79, 'location_menu', 'basé à Strasbourg'),
(444, 79, '_location_menu', 'field_5b4dab0248ec5'),
(446, 80, 'nom_gros_about', 'Alec <br class=\"nom_about_br\">Teihotaata'),
(447, 80, '_nom_gros_about', 'field_5b4d97fca28ea'),
(448, 80, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(449, 80, '_profil_description', 'field_5b4d9820a28eb'),
(450, 80, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(451, 80, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(452, 80, 'travaux_about', ''),
(453, 80, '_travaux_about', 'field_5b4d982ca28ec'),
(454, 80, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(455, 80, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(456, 81, 'description_menu', 'caca'),
(457, 81, '_description_menu', 'field_5b4daa963e764'),
(458, 81, 'location_menu', 'basé à Strasbourg'),
(459, 81, '_location_menu', 'field_5b4dab0248ec5'),
(460, 82, 'description_menu', 'designer graphique\r\nweb designer\r\ndéveloppeur front-end'),
(461, 82, '_description_menu', 'field_5b4daa963e764'),
(462, 82, 'location_menu', 'basé à Strasbourg'),
(463, 82, '_location_menu', 'field_5b4dab0248ec5'),
(465, 83, 'phrase_intro_contact', 'Envie de travailler ensemble ?<br>Ou tout simplement de discuter autour d\'un verre ?<br>Contactez-Moi'),
(466, 83, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(467, 83, 'mail', 'teihotaata.alec@gmail.com'),
(468, 83, '_mail', 'field_5b4d98897c2e0'),
(469, 83, 'reseaux_sociaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(470, 83, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(471, 83, 'location', '67000,<br>Strasbourg'),
(472, 83, '_location', 'field_5b4d98987c2e2'),
(474, 84, 'phrase_intro_contact', 'Envie de travailler ensemble ?\r\nOu tout simplement de discuter autour d\'un verre ?\r\nContactez-Moi'),
(475, 84, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(476, 84, 'mail', 'teihotaata.alec@gmail.com'),
(477, 84, '_mail', 'field_5b4d98897c2e0'),
(478, 84, 'reseaux_sociaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(479, 84, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(480, 84, 'location', '67000,<br>Strasbourg'),
(481, 84, '_location', 'field_5b4d98987c2e2'),
(482, 85, 'phrase_intro_contact', 'Envie de travailler ensemble ?\r\nOu tout simplement de discuter autour d\'un verre ?\r\n<a style=\"text-decoration:underline;\" href=\"#\">Contactez-Moi<a>'),
(483, 85, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(484, 85, 'mail', 'teihotaata.alec@gmail.com'),
(485, 85, '_mail', 'field_5b4d98897c2e0'),
(486, 85, 'reseaux_sociaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(487, 85, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(488, 85, 'location', '67000,<br>Strasbourg'),
(489, 85, '_location', 'field_5b4d98987c2e2'),
(490, 86, 'phrase_intro_contact', 'Envie de travailler ensemble ?\r\nOu tout simplement de discuter autour d\'un verre ?\r\nContactez-Moi'),
(491, 86, '_phrase_intro_contact', 'field_5b4d987a7c2df'),
(492, 86, 'mail', 'teihotaata.alec@gmail.com'),
(493, 86, '_mail', 'field_5b4d98897c2e0'),
(494, 86, 'reseaux_sociaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(495, 86, '_reseaux_sociaux', 'field_5b4d988e7c2e1'),
(496, 86, 'location', '67000,<br>Strasbourg'),
(497, 86, '_location', 'field_5b4d98987c2e2'),
(498, 87, 'nom_gros_about', 'Alec Teihotaata'),
(499, 87, '_nom_gros_about', 'field_5b4d97fca28ea'),
(500, 87, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(501, 87, '_profil_description', 'field_5b4d9820a28eb'),
(502, 87, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(503, 87, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(504, 87, 'travaux_about', ''),
(505, 87, '_travaux_about', 'field_5b4d982ca28ec'),
(506, 87, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(507, 87, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(508, 88, 'nom_gros_about', 'Alec Teihotaata'),
(509, 88, '_nom_gros_about', 'field_5b4d97fca28ea'),
(510, 88, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg.\r\n\r\nAyant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(511, 88, '_profil_description', 'field_5b4d9820a28eb'),
(512, 88, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(513, 88, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(514, 88, 'travaux_about', ''),
(515, 88, '_travaux_about', 'field_5b4d982ca28ec'),
(516, 88, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(517, 88, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(518, 89, 'nom_gros_about', 'Alec<br>Teihotaata'),
(519, 89, '_nom_gros_about', 'field_5b4d97fca28ea'),
(520, 89, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg.\r\n\r\nAyant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(521, 89, '_profil_description', 'field_5b4d9820a28eb'),
(522, 89, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(523, 89, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(524, 89, 'travaux_about', ''),
(525, 89, '_travaux_about', 'field_5b4d982ca28ec'),
(526, 89, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(527, 89, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(528, 90, 'nom_gros_about', 'Alec<br>Teihotaata'),
(529, 90, '_nom_gros_about', 'field_5b4d97fca28ea'),
(530, 90, 'profil_description', 'Je suis un jeune designer graphique basé à Strasbourg.\r\n\r\nAyant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web à Strasbourg.'),
(531, 90, '_profil_description', 'field_5b4d9820a28eb'),
(532, 90, 'experience_logicielle', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(533, 90, '_experience_logicielle', 'field_5b4d9f0e0da1c'),
(534, 90, 'travaux_about', ''),
(535, 90, '_travaux_about', 'field_5b4d982ca28ec'),
(536, 90, 'phrase_de_fin_about', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br>Contactez-Moi'),
(537, 90, '_phrase_de_fin_about', 'field_5b4d983ba28ed'),
(538, 91, '_edit_last', '1'),
(539, 91, '_edit_lock', '1531984136:1'),
(540, 78, '_wp_trash_meta_status', 'publish'),
(541, 78, '_wp_trash_meta_time', '1531838585'),
(542, 78, '_wp_desired_post_slug', 'exemple-2'),
(543, 77, '_wp_trash_meta_status', 'publish'),
(544, 77, '_wp_trash_meta_time', '1531838587'),
(545, 77, '_wp_desired_post_slug', 'exemple'),
(546, 76, '_wp_trash_meta_status', 'draft'),
(547, 76, '_wp_trash_meta_time', '1531838590'),
(548, 76, '_wp_desired_post_slug', ''),
(550, 91, 'categorie', 'work'),
(551, 91, '_categorie', 'field_5b4d962df5860'),
(552, 91, 'typedetravail', 'développement front-end'),
(553, 91, '_typedetravail', 'field_5b4d9651f5861'),
(554, 92, '_edit_last', '1'),
(555, 92, 'categorie', 'work'),
(556, 92, '_categorie', 'field_5b4d962df5860'),
(557, 92, 'typedetravail', 'design éditorial'),
(558, 92, '_typedetravail', 'field_5b4d9651f5861'),
(559, 92, '_edit_lock', '1531991448:1'),
(561, 54, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"21\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(564, 53, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"18\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(565, 93, 'about_nom', 'Alec<br />Teihotaata'),
(566, 93, '_about_nom', 'field_5b4d97fca28ea'),
(567, 93, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié\r\n\r\nau Lycée Le Corbusier, j\'ai acquis une certaine expérience en web\r\n\r\ndesign, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement\r\n\r\nweb sur Strasbourg.'),
(568, 93, '_about_profidescription', 'field_5b4d9820a28eb'),
(569, 93, 'about_experience', ''),
(570, 93, '_about_experience', 'field_5b4d9f0e0da1c'),
(571, 93, 'about_travaux', ''),
(572, 93, '_about_travaux', 'field_5b4d982ca28ec'),
(573, 93, 'about_fin', ''),
(574, 93, '_about_fin', 'field_5b4d983ba28ed'),
(575, 18, 'about_nom', 'Alec<br />Teihotaata'),
(576, 18, '_about_nom', 'field_5b4d97fca28ea'),
(577, 18, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web sur Strasbourg.'),
(578, 18, '_about_profidescription', 'field_5b4d9820a28eb'),
(579, 18, 'about_experience', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(580, 18, '_about_experience', 'field_5b4d9f0e0da1c'),
(581, 18, 'about_travaux', ''),
(582, 18, '_about_travaux', 'field_5b4d982ca28ec'),
(583, 18, 'about_fin', 'Envie de travailler ensemble ? Ou de discuter autour d\'un verre ? <br> Contactez-moi.'),
(584, 18, '_about_fin', 'field_5b4d983ba28ed'),
(585, 94, '_edit_last', '1'),
(586, 94, '_edit_lock', '1532095796:1'),
(587, 94, 'categorie', 'school'),
(588, 94, '_categorie', 'field_5b4d962df5860'),
(589, 94, 'typedetravail', 'web design'),
(590, 94, '_typedetravail', 'field_5b4d9651f5861'),
(591, 95, '_edit_last', '1'),
(592, 95, '_edit_lock', '1531986675:1'),
(593, 95, 'categorie', 'work'),
(594, 95, '_categorie', 'field_5b4d962df5860'),
(595, 95, 'typedetravail', 'identité visuelle'),
(596, 95, '_typedetravail', 'field_5b4d9651f5861'),
(597, 96, '_edit_last', '1'),
(598, 96, '_edit_lock', '1532098410:1'),
(599, 96, 'categorie', 'school'),
(600, 96, '_categorie', 'field_5b4d962df5860'),
(601, 96, 'typedetravail', 'identité visuelle'),
(602, 96, '_typedetravail', 'field_5b4d9651f5861'),
(614, 97, 'contact_phraseintro', 'Envie de travailler ensemble ?\r\nOu tout simplement de discuter autour d\'un verre ?\r\nContactez-moi.'),
(615, 97, '_contact_phraseintro', 'field_5b4d987a7c2df'),
(616, 97, 'contact_mail', 'teihotaata.alec@gmail.com'),
(617, 97, '_contact_mail', 'field_5b4d98897c2e0'),
(618, 97, 'contact_listereseaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(619, 97, '_contact_listereseaux', 'field_5b4d988e7c2e1'),
(620, 97, 'contact_location', '67000,<br>Strasbourg'),
(621, 97, '_contact_location', 'field_5b4d98987c2e2'),
(622, 21, 'contact_phraseintro', 'Envie de travailler ensemble ?\r\nOu tout simplement de discuter autour d\'un verre ?\r\nContactez-moi.'),
(623, 21, '_contact_phraseintro', 'field_5b4d987a7c2df'),
(624, 21, 'contact_mail', 'teihotaata.alec@gmail.com'),
(625, 21, '_contact_mail', 'field_5b4d98897c2e0'),
(626, 21, 'contact_listereseaux', 'instagram\r\ntwitter\r\nspotify\r\ntumblr'),
(627, 21, '_contact_listereseaux', 'field_5b4d988e7c2e1'),
(628, 21, 'contact_location', '67000,<br>Strasbourg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(629, 21, '_contact_location', 'field_5b4d98987c2e2'),
(630, 98, 'about_nom', 'Alec<br />Teihotaata'),
(631, 98, '_about_nom', 'field_5b4d97fca28ea'),
(632, 98, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié\r\n\r\nau Lycée Le Corbusier, j\'ai acquis une certaine expérience en web\r\n\r\ndesign, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement\r\n\r\nweb sur Strasbourg.'),
(633, 98, '_about_profidescription', 'field_5b4d9820a28eb'),
(634, 98, 'about_experience', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(635, 98, '_about_experience', 'field_5b4d9f0e0da1c'),
(636, 98, 'about_travaux', ''),
(637, 98, '_about_travaux', 'field_5b4d982ca28ec'),
(638, 98, 'about_fin', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br> Contactez-moi.'),
(639, 98, '_about_fin', 'field_5b4d983ba28ed'),
(640, 39, 'field_5b4f0d1c039f0', 'a:11:{s:3:\"key\";s:19:\"field_5b4f0d1c039f0\";s:5:\"label\";s:5:\"image\";s:4:\"name\";s:13:\"travaux_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(641, 39, 'field_5b4f0d39039f1', 'a:13:{s:3:\"key\";s:19:\"field_5b4f0d39039f1\";s:5:\"label\";s:11:\"description\";s:4:\"name\";s:19:\"travaux_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(642, 39, 'field_5b4f0d70039f2', 'a:14:{s:3:\"key\";s:19:\"field_5b4f0d70039f2\";s:5:\"label\";s:4:\"role\";s:4:\"name\";s:12:\"travaux_role\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(643, 39, 'field_5b4f0db6039f3', 'a:14:{s:3:\"key\";s:19:\"field_5b4f0db6039f3\";s:5:\"label\";s:6:\"année\";s:4:\"name\";s:13:\"travaux_annee\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(644, 39, 'field_5b4f0dc3039f4', 'a:14:{s:3:\"key\";s:19:\"field_5b4f0dc3039f4\";s:5:\"label\";s:5:\"objet\";s:4:\"name\";s:13:\"travaux_objet\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(645, 39, 'field_5b4f0dcf039f5', 'a:14:{s:3:\"key\";s:19:\"field_5b4f0dcf039f5\";s:5:\"label\";s:13:\"commanditaire\";s:4:\"name\";s:21:\"travaux_commanditaire\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(646, 39, 'field_5b4f0dde039f6', 'a:14:{s:3:\"key\";s:19:\"field_5b4f0dde039f6\";s:5:\"label\";s:13:\"collaboration\";s:4:\"name\";s:21:\"travaux_collaboration\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(647, 39, 'field_5b4f0deb039f7', 'a:11:{s:3:\"key\";s:19:\"field_5b4f0deb039f7\";s:5:\"label\";s:21:\"image supplémentaire\";s:4:\"name\";s:14:\"travaux_image2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(648, 39, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"travaux\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(649, 39, 'rule', 'a:5:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(650, 92, 'travaux_image', '108'),
(651, 92, '_travaux_image', 'field_5b4f0d1c039f0'),
(652, 92, 'travaux_description', 'Ce projet, réalisé pendant ma période de stage chez Titan/Khan,\r\nconsiste en la conception de la charte graphique d\'un magazine\r\npromotionnel pour l\'agence de voyages LK Tours.\r\n\r\nLe magazine, qui se consacre aux voyages dans les pays de l\'Est, devait refléter\r\nle climat froid de cette région d\'Europe, tout en évoquant \r\nl\'aspect chaleureux et accueillant des Pays de l\'Est.\r\n\r\nEn collaboration avec Musa Cimen, mon maître de stage, j\'ai conçu \r\nles maquettes en portant attention à laisser le plus d\'espace au texte, \r\ntout en évitant d\'offusquer le magazine de contenu pour rendre\r\nla lecture plus agréable.'),
(653, 92, '_travaux_description', 'field_5b4f0d39039f1'),
(654, 92, 'travaux_role', 'Directeur Artistique'),
(655, 92, '_travaux_role', 'field_5b4f0d70039f2'),
(656, 92, 'travaux_annee', '2017'),
(657, 92, '_travaux_annee', 'field_5b4f0db6039f3'),
(658, 92, 'travaux_objet', 'Charte graphique'),
(659, 92, '_travaux_objet', 'field_5b4f0dc3039f4'),
(660, 92, 'travaux_commanditaire', 'LK Tours'),
(661, 92, '_travaux_commanditaire', 'field_5b4f0dcf039f5'),
(662, 92, 'travaux_collaboration', 'Musa Cimen'),
(663, 92, '_travaux_collaboration', 'field_5b4f0dde039f6'),
(664, 92, 'travaux_image2', '102'),
(665, 92, '_travaux_image2', 'field_5b4f0deb039f7'),
(666, 91, 'travaux_image', '107'),
(667, 91, '_travaux_image', 'field_5b4f0d1c039f0'),
(668, 91, 'travaux_description', 'Dersim est une plateforme qui a pour objectif de mettre en valeur des régions de l\'Europe de l\'est, des Balkans et de la Turquie à travers divers articles illustrant les endroits cultes, les lieux touristiques et à ne pas manquer de ces diverses régions.\r\n\r\nMon rôle dans ce projet était d\'intégrer les maquettes, préalablement fournies par le designer graphique Musa Cimen, en HTML responsive et de réaliser les différentes pages types du site pour les présenter au client.'),
(669, 91, '_travaux_description', 'field_5b4f0d39039f1'),
(670, 91, 'travaux_role', 'Développeur front-end'),
(671, 91, '_travaux_role', 'field_5b4f0d70039f2'),
(672, 91, 'travaux_annee', '2017'),
(673, 91, '_travaux_annee', 'field_5b4f0db6039f3'),
(674, 91, 'travaux_objet', 'Intégration HTML'),
(675, 91, '_travaux_objet', 'field_5b4f0dc3039f4'),
(676, 91, 'travaux_commanditaire', 'Dersim'),
(677, 91, '_travaux_commanditaire', 'field_5b4f0dcf039f5'),
(678, 91, 'travaux_collaboration', 'Musa Cimen'),
(679, 91, '_travaux_collaboration', 'field_5b4f0dde039f6'),
(680, 91, 'travaux_image2', '104'),
(681, 91, '_travaux_image2', 'field_5b4f0deb039f7'),
(682, 96, 'travaux_image', '109'),
(683, 96, '_travaux_image', 'field_5b4f0d1c039f0'),
(684, 96, 'travaux_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit ac neque placerat semper nec at nunc. Proin nec odio fermentum, condimentum libero sollicitudin, molestie purus. Maecenas nec augue ultricies, hendrerit urna sed, malesuada turpis. Aenean a arcu ac eros interdum tristique in a justo. Nam volutpat fermentum nisl, quis tincidunt lectus consectetur vitae. Integer aliquam ultricies tincidunt. Etiam arcu tellus, consequat ut ultricies ut, efficitur vel libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi egestas aliquam tellus, at placerat mauris efficitur ac. Aliquam et gravida diam. Morbi dictum, dolor a euismod iaculis, arcu dolor feugiat ipsum, vitae vehicula magna tellus ut odio. Morbi vitae vulputate est. Quisque vitae erat quis orci hendrerit tincidunt. Aenean egestas sapien lacus, et auctor diam aliquam vel.'),
(685, 96, '_travaux_description', 'field_5b4f0d39039f1'),
(686, 96, 'travaux_role', 'Directeur Artistique'),
(687, 96, '_travaux_role', 'field_5b4f0d70039f2'),
(688, 96, 'travaux_annee', '2018'),
(689, 96, '_travaux_annee', 'field_5b4f0db6039f3'),
(690, 96, 'travaux_objet', 'Identité visuelle & site'),
(691, 96, '_travaux_objet', 'field_5b4f0dc3039f4'),
(692, 96, 'travaux_commanditaire', 'Unglith'),
(693, 96, '_travaux_commanditaire', 'field_5b4f0dcf039f5'),
(694, 96, 'travaux_collaboration', ''),
(695, 96, '_travaux_collaboration', 'field_5b4f0dde039f6'),
(696, 96, 'travaux_image2', '110'),
(697, 96, '_travaux_image2', 'field_5b4f0deb039f7'),
(698, 95, 'travaux_image', '119'),
(699, 95, '_travaux_image', 'field_5b4f0d1c039f0'),
(700, 95, 'travaux_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit ac neque placerat semper nec at nunc. Proin nec odio fermentum, condimentum libero sollicitudin, molestie purus. Maecenas nec augue ultricies, hendrerit urna sed, malesuada turpis. Aenean a arcu ac eros interdum tristique in a justo. Nam volutpat fermentum nisl, quis tincidunt lectus consectetur vitae. Integer aliquam ultricies tincidunt. Etiam arcu tellus, consequat ut ultricies ut, efficitur vel libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi egestas aliquam tellus, at placerat mauris efficitur ac. Aliquam et gravida diam. Morbi dictum, dolor a euismod iaculis, arcu dolor feugiat ipsum, vitae vehicula magna tellus ut odio. Morbi vitae vulputate est. Quisque vitae erat quis orci hendrerit tincidunt. Aenean egestas sapien lacus, et auctor diam aliquam vel.'),
(701, 95, '_travaux_description', 'field_5b4f0d39039f1'),
(702, 95, 'travaux_role', 'Directeur Artistique'),
(703, 95, '_travaux_role', 'field_5b4f0d70039f2'),
(704, 95, 'travaux_annee', '2017'),
(705, 95, '_travaux_annee', 'field_5b4f0db6039f3'),
(706, 95, 'travaux_objet', 'Identité visuelle'),
(707, 95, '_travaux_objet', 'field_5b4f0dc3039f4'),
(708, 95, 'travaux_commanditaire', 'Dar 7 Louyat'),
(709, 95, '_travaux_commanditaire', 'field_5b4f0dcf039f5'),
(710, 95, 'travaux_collaboration', 'Musa Cimen'),
(711, 95, '_travaux_collaboration', 'field_5b4f0dde039f6'),
(712, 95, 'travaux_image2', '115'),
(713, 95, '_travaux_image2', 'field_5b4f0deb039f7'),
(714, 94, 'travaux_image', '111'),
(715, 94, '_travaux_image', 'field_5b4f0d1c039f0'),
(716, 94, 'travaux_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut elit ac neque placerat semper nec at nunc. Proin nec odio fermentum, condimentum libero sollicitudin, molestie purus. Maecenas nec augue ultricies, hendrerit urna sed, malesuada turpis. Aenean a arcu ac eros interdum tristique in a justo. Nam volutpat fermentum nisl, quis tincidunt lectus consectetur vitae. Integer aliquam ultricies tincidunt. Etiam arcu tellus, consequat ut ultricies ut, efficitur vel libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi egestas aliquam tellus, at placerat mauris efficitur ac. Aliquam et gravida diam. Morbi dictum, dolor a euismod iaculis, arcu dolor feugiat ipsum, vitae vehicula magna tellus ut odio. Morbi vitae vulputate est. Quisque vitae erat quis orci hendrerit tincidunt. Aenean egestas sapien lacus, et auctor diam aliquam vel.'),
(717, 94, '_travaux_description', 'field_5b4f0d39039f1'),
(718, 94, 'travaux_role', 'Web designer'),
(719, 94, '_travaux_role', 'field_5b4f0d70039f2'),
(720, 94, 'travaux_annee', '2017'),
(721, 94, '_travaux_annee', 'field_5b4f0db6039f3'),
(722, 94, 'travaux_objet', 'Site internet'),
(723, 94, '_travaux_objet', 'field_5b4f0dc3039f4'),
(724, 94, 'travaux_commanditaire', 'La Maison du Sel'),
(725, 94, '_travaux_commanditaire', 'field_5b4f0dcf039f5'),
(726, 94, 'travaux_collaboration', ''),
(727, 94, '_travaux_collaboration', 'field_5b4f0dde039f6'),
(728, 94, 'travaux_image2', '117'),
(729, 94, '_travaux_image2', 'field_5b4f0deb039f7'),
(730, 99, 'about_nom', 'Alec<br />Teihotaata'),
(731, 99, '_about_nom', 'field_5b4d97fca28ea'),
(732, 99, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web sur Strasbourg.'),
(733, 99, '_about_profidescription', 'field_5b4d9820a28eb'),
(734, 99, 'about_experience', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(735, 99, '_about_experience', 'field_5b4d9f0e0da1c'),
(736, 99, 'about_travaux', ''),
(737, 99, '_about_travaux', 'field_5b4d982ca28ec'),
(738, 99, 'about_fin', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br> Contactez-moi.'),
(739, 99, '_about_fin', 'field_5b4d983ba28ed'),
(740, 100, 'about_nom', 'Alec<br />Teihotaata'),
(741, 100, '_about_nom', 'field_5b4d97fca28ea'),
(742, 100, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web sur Strasbourg.'),
(743, 100, '_about_profidescription', 'field_5b4d9820a28eb'),
(744, 100, 'about_experience', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(745, 100, '_about_experience', 'field_5b4d9f0e0da1c'),
(746, 100, 'about_travaux', ''),
(747, 100, '_about_travaux', 'field_5b4d982ca28ec'),
(748, 100, 'about_fin', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ?<br> Contactez-moi.'),
(749, 100, '_about_fin', 'field_5b4d983ba28ed'),
(753, 102, '_wp_attached_file', '2018/07/capverslest2.jpg'),
(754, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2018/07/capverslest2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"capverslest2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"capverslest2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"capverslest2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"capverslest2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(755, 102, '_wp_attachment_image_alt', 'capverslest2'),
(759, 104, '_wp_attached_file', '2018/07/dersim2.png'),
(760, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:1079;s:4:\"file\";s:19:\"2018/07/dersim2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dersim2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"dersim2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"dersim2-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"dersim2-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 104, '_wp_attachment_image_alt', ''),
(767, 107, '_wp_attached_file', '2018/07/dersim.jpg'),
(768, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:700;s:4:\"file\";s:18:\"2018/07/dersim.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"dersim-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"dersim-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"dersim-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"dersim-1024x448.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(769, 107, '_wp_attachment_image_alt', 'dersim'),
(770, 108, '_wp_attached_file', '2018/07/capverslest.jpg'),
(771, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:700;s:4:\"file\";s:23:\"2018/07/capverslest.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"capverslest-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"capverslest-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"capverslest-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"capverslest-1024x448.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(772, 108, '_wp_attachment_image_alt', 'capverslest'),
(773, 109, '_wp_attached_file', '2018/07/unglith.jpg'),
(774, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:700;s:4:\"file\";s:19:\"2018/07/unglith.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unglith-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unglith-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"unglith-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"unglith-1024x448.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(775, 109, '_wp_attachment_image_alt', 'unglith'),
(776, 110, '_wp_attached_file', '2018/07/unglith2.jpg'),
(777, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:900;s:4:\"file\";s:20:\"2018/07/unglith2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"unglith2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"unglith2-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(778, 110, '_wp_attachment_image_alt', ''),
(779, 111, '_wp_attached_file', '2018/07/maisondusel.jpg'),
(780, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:700;s:4:\"file\";s:23:\"2018/07/maisondusel.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"maisondusel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"maisondusel-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"maisondusel-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"maisondusel-1024x448.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(781, 111, '_wp_attachment_image_alt', 'maisondusel'),
(785, 41, '_wp_trash_meta_status', 'publish'),
(786, 41, '_wp_trash_meta_time', '1531984617'),
(787, 41, '_wp_desired_post_slug', 'cap-vers-lest'),
(788, 51, '_wp_trash_meta_status', 'publish'),
(789, 51, '_wp_trash_meta_time', '1531984625'),
(790, 51, '_wp_desired_post_slug', 'maison-du-sel'),
(791, 49, '_wp_trash_meta_status', 'publish'),
(792, 49, '_wp_trash_meta_time', '1531984625'),
(793, 49, '_wp_desired_post_slug', 'dersim'),
(794, 47, '_wp_trash_meta_status', 'publish'),
(795, 47, '_wp_trash_meta_time', '1531984625'),
(796, 47, '_wp_desired_post_slug', 'dar-7-louyat'),
(797, 43, '_wp_trash_meta_status', 'publish'),
(798, 43, '_wp_trash_meta_time', '1531984625'),
(799, 43, '_wp_desired_post_slug', 'unglith'),
(803, 115, '_wp_attached_file', '2018/07/d7l2.jpg'),
(804, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:900;s:4:\"file\";s:16:\"2018/07/d7l2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"d7l2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"d7l2-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(805, 115, '_wp_attachment_image_alt', ''),
(809, 117, '_wp_attached_file', '2018/07/maisondusel2.jpg'),
(810, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:900;s:4:\"file\";s:24:\"2018/07/maisondusel2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"maisondusel2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"maisondusel2-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(811, 117, '_wp_attachment_image_alt', 'maisondusel2'),
(814, 119, '_wp_attached_file', '2018/07/d7l.jpg'),
(815, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:700;s:4:\"file\";s:15:\"2018/07/d7l.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"d7l-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"d7l-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"d7l-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"d7l-1024x448.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(816, 119, '_wp_attachment_image_alt', 'd7l'),
(817, 120, 'about_nom', 'Alec<br />Teihotaata'),
(818, 120, '_about_nom', 'field_5b4d97fca28ea'),
(819, 120, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web sur Strasbourg.'),
(820, 120, '_about_profidescription', 'field_5b4d9820a28eb'),
(821, 120, 'about_experience', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(822, 120, '_about_experience', 'field_5b4d9f0e0da1c'),
(823, 120, 'about_travaux', ''),
(824, 120, '_about_travaux', 'field_5b4d982ca28ec'),
(825, 120, 'about_fin', 'Envie de travailler ensemble ? Ou juste de discuter autour d\'un verre ? <br> Contactez-moi.'),
(826, 120, '_about_fin', 'field_5b4d983ba28ed'),
(827, 121, 'about_nom', 'Alec<br />Teihotaata'),
(828, 121, '_about_nom', 'field_5b4d97fca28ea'),
(829, 121, 'about_profidescription', 'Je suis un jeune designer graphique basé à Strasbourg. Ayant étudié au Lycée Le Corbusier, j\'ai acquis une certaine expérience en web design, développement front-end et motion design.\r\n\r\n&nbsp;\r\n\r\nJe suis actuellement en recherche d\'une alternance en développement web sur Strasbourg.'),
(830, 121, '_about_profidescription', 'field_5b4d9820a28eb'),
(831, 121, 'about_experience', 'Adobe Creative Suite, HTML/CSS, JQuery, Wordpress'),
(832, 121, '_about_experience', 'field_5b4d9f0e0da1c'),
(833, 121, 'about_travaux', ''),
(834, 121, '_about_travaux', 'field_5b4d982ca28ec'),
(835, 121, 'about_fin', 'Envie de travailler ensemble ? Ou de discuter autour d\'un verre ? <br> Contactez-moi.'),
(836, 121, '_about_fin', 'field_5b4d983ba28ed');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-16 14:59:39', '2018-07-16 12:59:39', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2018-07-17 09:11:50', '2018-07-17 07:11:50', '', 0, 'http://localhost:8888/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-16 14:59:39', '2018-07-16 12:59:39', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2018-07-16 17:46:15', '2018-07-16 15:46:15', '', 0, 'http://localhost:8888/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-16 14:59:39', '2018-07-16 12:59:39', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost:8888/wordpress.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2018-07-16 17:46:10', '2018-07-16 15:46:10', '', 0, 'http://localhost:8888/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-07-16 15:00:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-16 15:00:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-07-16 16:26:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 16:26:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&p=5', 0, 'acf', '', 0),
(6, 1, '2018-07-17 09:11:49', '2018-07-17 07:11:49', '', 'CAP VERS L\'EST', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-07-17 09:11:49', '2018-07-17 07:11:49', '', 0, 'http://localhost:8888/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2018-07-16 16:41:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 16:41:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&p=7', 0, 'acf', '', 0),
(8, 1, '2018-07-16 17:00:50', '2018-07-16 15:00:50', '', 'about', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-07-16 17:00:50', '2018-07-16 15:00:50', '', 0, 'http://localhost:8888/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-07-16 16:49:47', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 16:49:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-07-16 16:55:54', '2018-07-16 14:55:54', '', 'articles', '', 'trash', 'closed', 'closed', '', 'acf_articles__trashed', '', '', '2018-07-16 16:59:01', '2018-07-16 14:59:01', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=10', 0, 'acf', '', 0),
(11, 1, '2018-07-16 16:57:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 16:57:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-07-16 16:57:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-16 16:57:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2018-07-16 16:59:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 16:59:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&p=13', 0, 'acf', '', 0),
(14, 1, '2018-07-16 17:00:50', '2018-07-16 15:00:50', '', 'about', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-07-16 17:00:50', '2018-07-16 15:00:50', '', 8, 'http://localhost:8888/wordpress/2018/07/16/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-07-16 17:00:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 17:00:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-07-16 17:01:12', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-16 17:01:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&p=16', 0, 'acf', '', 0),
(17, 1, '2018-07-16 17:46:13', '2018-07-16 15:46:13', '', 'Page d\'accueil', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2018-07-16 17:46:13', '2018-07-16 15:46:13', '', 0, 'http://localhost:8888/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-19 15:41:15', '2018-07-19 13:41:15', '', 0, 'http://localhost:8888/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-07-17 12:03:20', '2018-07-17 10:03:20', '', 0, 'http://localhost:8888/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'expérimentations', '', 'publish', 'closed', 'closed', '', 'experimentations', '', '', '2018-07-17 10:39:40', '2018-07-17 08:39:40', '', 0, 'http://localhost:8888/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-18 11:03:02', '2018-07-18 09:03:02', '', 0, 'http://localhost:8888/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            18,\n            19,\n            20,\n            21\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    },\n    \"nav_menu[-6497725740720636000]\": {\n        \"value\": {\n            \"name\": \"menu_principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    },\n    \"nav_menu_item[-8665803219997351000]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"about\",\n            \"url\": \"http://localhost:8888/wordpress/?page_id=18\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"about\",\n            \"nav_menu_term_id\": -6497725740720636000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    },\n    \"nav_menu_item[-5297223560009311000]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"accueil\",\n            \"url\": \"http://localhost:8888/wordpress/?page_id=19\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"accueil\",\n            \"nav_menu_term_id\": -6497725740720636000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    },\n    \"nav_menu_item[-1120729226263596000]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"exp\\u00e9rimentations\",\n            \"url\": \"http://localhost:8888/wordpress/?page_id=20\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"exp\\u00e9rimentations\",\n            \"nav_menu_term_id\": -6497725740720636000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    },\n    \"nav_menu_item[-5370015745719349000]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"contact\",\n            \"url\": \"http://localhost:8888/wordpress/?page_id=21\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"contact\",\n            \"nav_menu_term_id\": -6497725740720636000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    },\n    \"nav_menu_item[-3029774949476569000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-16 15:10:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68718d92-e2a9-4f44-bfe3-0bcf05f3384e', '', '', '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 0, 'http://localhost:8888/wordpress/2018/07/16/68718d92-e2a9-4f44-bfe3-0bcf05f3384e/', 0, 'customize_changeset', '', 0),
(23, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 18, 'http://localhost:8888/wordpress/2018/07/16/18-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 19, 'http://localhost:8888/wordpress/2018/07/16/19-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'expérimentations', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 20, 'http://localhost:8888/wordpress/2018/07/16/20-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-16 17:10:26', '2018-07-16 15:10:26', '', 21, 'http://localhost:8888/wordpress/2018/07/16/21-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-07-16 17:10:26', '2018-07-16 15:10:26', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-07-17 10:34:10', '2018-07-17 08:34:10', '', 0, 'http://localhost:8888/wordpress/2018/07/16/27/', 2, 'nav_menu_item', '', 0),
(29, 1, '2018-07-16 17:10:27', '2018-07-16 15:10:27', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-07-17 10:34:10', '2018-07-17 08:34:10', '', 0, 'http://localhost:8888/wordpress/2018/07/16/29/', 3, 'nav_menu_item', '', 0),
(30, 1, '2018-07-16 17:10:27', '2018-07-16 15:10:27', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-07-17 10:34:10', '2018-07-17 08:34:10', '', 0, 'http://localhost:8888/wordpress/2018/07/16/30/', 4, 'nav_menu_item', '', 0),
(31, 1, '2018-07-16 17:21:20', '2018-07-16 15:21:20', '', '(CONTENU) Accueil', '', 'trash', 'closed', 'closed', '', 'acf_contenu-accueil__trashed', '', '', '2018-07-17 09:09:21', '2018-07-17 07:09:21', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=31', 0, 'acf', '', 0),
(32, 1, '2018-07-16 17:22:10', '2018-07-16 15:22:10', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-16 17:22:10', '2018-07-16 15:22:10', '', 19, 'http://localhost:8888/wordpress/2018/07/16/19-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-07-16 17:32:58', '2018-07-16 15:32:58', '', '(CONTENU) about', '', 'trash', 'closed', 'closed', '', 'acf_contenu-about__trashed', '', '', '2018-07-17 09:09:19', '2018-07-17 07:09:19', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=33', 0, 'acf', '', 0),
(34, 1, '2018-07-16 17:35:18', '2018-07-16 15:35:18', '', '(CONTENU) contact', '', 'trash', 'closed', 'closed', '', 'acf_contenu-contact__trashed', '', '', '2018-07-17 09:09:18', '2018-07-17 07:09:18', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=34', 0, 'acf', '', 0),
(35, 1, '2018-07-16 17:46:10', '2018-07-16 15:46:10', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost:8888/wordpress.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant un article, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’identifiant de l’article que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-07-16 17:46:10', '2018-07-16 15:46:10', '', 3, 'http://localhost:8888/wordpress/2018/07/16/3-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-07-16 17:46:13', '2018-07-16 15:46:13', '', 'Page d\'accueil', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-07-16 17:46:13', '2018-07-16 15:46:13', '', 17, 'http://localhost:8888/wordpress/2018/07/16/17-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-07-16 17:46:15', '2018-07-16 15:46:15', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost:8888/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-07-16 17:46:15', '2018-07-16 15:46:15', '', 2, 'http://localhost:8888/wordpress/2018/07/16/2-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-07-17 09:09:00', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-17 09:09:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=38', 0, 'post', '', 0),
(39, 1, '2018-07-17 09:10:21', '2018-07-17 07:10:21', '', 'ARTICLES', '', 'publish', 'closed', 'closed', '', 'acf_articles', '', '', '2018-07-18 11:53:09', '2018-07-18 09:53:09', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(40, 1, '2018-07-17 09:10:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-17 09:10:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&p=40', 0, 'acf', '', 0),
(41, 1, '2018-07-17 09:10:51', '2018-07-17 07:10:51', '', 'CAP VERS L\'EST', '', 'trash', 'open', 'open', '', 'cap-vers-lest__trashed', '', '', '2018-07-19 09:16:57', '2018-07-19 07:16:57', '', 0, 'http://localhost:8888/wordpress/?p=41', 0, 'post', '', 0),
(42, 1, '2018-07-17 09:10:51', '2018-07-17 07:10:51', '', 'CAP VERS L\'EST', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-07-17 09:10:51', '2018-07-17 07:10:51', '', 41, 'http://localhost:8888/wordpress/2018/07/17/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-07-17 09:11:35', '2018-07-17 07:11:35', '', 'UNGLITH', '', 'trash', 'open', 'open', '', 'unglith__trashed', '', '', '2018-07-19 09:17:05', '2018-07-19 07:17:05', '', 0, 'http://localhost:8888/wordpress/?p=43', 0, 'post', '', 0),
(44, 1, '2018-07-17 09:11:35', '2018-07-17 07:11:35', '', 'UNGLITH', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-07-17 09:11:35', '2018-07-17 07:11:35', '', 43, 'http://localhost:8888/wordpress/2018/07/17/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-07-17 09:11:49', '2018-07-17 07:11:49', '', 'CAP VERS L\'EST', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-07-17 09:11:49', '2018-07-17 07:11:49', '', 6, 'http://localhost:8888/wordpress/2018/07/17/6-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-07-17 09:11:50', '2018-07-17 07:11:50', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-17 09:11:50', '2018-07-17 07:11:50', '', 1, 'http://localhost:8888/wordpress/2018/07/17/1-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-07-17 09:12:20', '2018-07-17 07:12:20', '', 'DAR 7 LOUYAT', '', 'trash', 'open', 'open', '', 'dar-7-louyat__trashed', '', '', '2018-07-19 09:17:05', '2018-07-19 07:17:05', '', 0, 'http://localhost:8888/wordpress/?p=47', 0, 'post', '', 0),
(48, 1, '2018-07-17 09:12:20', '2018-07-17 07:12:20', '', 'DAR 7 LOUYAT', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-07-17 09:12:20', '2018-07-17 07:12:20', '', 47, 'http://localhost:8888/wordpress/2018/07/17/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-17 09:12:50', '2018-07-17 07:12:50', '', 'DERSIM', '', 'trash', 'open', 'open', '', 'dersim__trashed', '', '', '2018-07-19 09:17:05', '2018-07-19 07:17:05', '', 0, 'http://localhost:8888/wordpress/?p=49', 0, 'post', '', 0),
(50, 1, '2018-07-17 09:12:50', '2018-07-17 07:12:50', '', 'DERSIM', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-07-17 09:12:50', '2018-07-17 07:12:50', '', 49, 'http://localhost:8888/wordpress/2018/07/17/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-07-17 09:16:22', '2018-07-17 07:16:22', '', 'MAISON DU SEL', '', 'trash', 'open', 'open', '', 'maison-du-sel__trashed', '', '', '2018-07-19 09:17:05', '2018-07-19 07:17:05', '', 0, 'http://localhost:8888/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2018-07-17 09:16:22', '2018-07-17 07:16:22', '', 'MAISON DU SEL', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-07-17 09:16:22', '2018-07-17 07:16:22', '', 51, 'http://localhost:8888/wordpress/2018/07/17/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-17 09:18:50', '2018-07-17 07:18:50', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'acf_about', '', '', '2018-07-18 09:55:25', '2018-07-18 07:55:25', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(54, 1, '2018-07-17 09:20:05', '2018-07-17 07:20:05', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'acf_contact', '', '', '2018-07-18 09:40:05', '2018-07-18 07:40:05', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=54', 0, 'acf', '', 0),
(55, 1, '2018-07-17 09:20:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-17 09:20:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&p=55', 0, 'acf', '', 0),
(56, 1, '2018-07-17 09:28:55', '2018-07-17 07:28:55', '', 'MENU BAR', '', 'trash', 'closed', 'closed', '', 'acf_menu-bar__trashed', '', '', '2018-07-17 09:31:39', '2018-07-17 07:31:39', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=56', 0, 'acf', '', 0),
(57, 1, '2018-07-17 09:46:39', '2018-07-17 07:46:39', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 09:46:39', '2018-07-17 07:46:39', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-07-17 09:47:21', '2018-07-17 07:47:21', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 09:47:21', '2018-07-17 07:47:21', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-07-17 09:51:01', '2018-07-17 07:51:01', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 09:51:01', '2018-07-17 07:51:01', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-07-17 09:53:46', '2018-07-17 07:53:46', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-17 09:53:46', '2018-07-17 07:53:46', '', 21, 'http://localhost:8888/wordpress/2018/07/17/21-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-17 10:05:55', '2018-07-17 08:05:55', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:05:55\"\n    },\n    \"page_on_front\": {\n        \"value\": \"19\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:05:55\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:05:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b325444-fd6c-4de9-8522-eb6f18b9a69d', '', '', '2018-07-17 10:05:55', '2018-07-17 08:05:55', '', 0, 'http://localhost:8888/wordpress/2018/07/17/4b325444-fd6c-4de9-8522-eb6f18b9a69d/', 0, 'customize_changeset', '', 0),
(62, 1, '2018-07-17 10:17:13', '2018-07-17 08:17:13', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:17:13\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"19\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:12:01\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:16:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc08413f-0859-4917-84ee-f6599a1ee816', '', '', '2018-07-17 10:17:13', '2018-07-17 08:17:13', '', 0, 'http://localhost:8888/wordpress/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2018-07-17 10:18:10', '2018-07-17 08:18:10', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:18:10\"\n    },\n    \"page_on_front\": {\n        \"value\": \"19\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:18:10\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:18:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df14b584-f687-45cb-a83b-7ad2e8615a9e', '', '', '2018-07-17 10:18:10', '2018-07-17 08:18:10', '', 0, 'http://localhost:8888/wordpress/2018/07/17/df14b584-f687-45cb-a83b-7ad2e8615a9e/', 0, 'customize_changeset', '', 0),
(64, 1, '2018-07-17 10:24:06', '2018-07-17 08:24:06', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:24:06\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:24:06\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"19\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-07-17 08:24:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '81bcac46-9b6e-4d41-a7aa-131812f4c0a5', '', '', '2018-07-17 10:24:06', '2018-07-17 08:24:06', '', 0, 'http://localhost:8888/wordpress/2018/07/17/81bcac46-9b6e-4d41-a7aa-131812f4c0a5/', 0, 'customize_changeset', '', 0),
(65, 1, '2018-07-17 10:25:06', '2018-07-17 08:25:06', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 10:25:06', '2018-07-17 08:25:06', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-17 10:25:35', '2018-07-17 08:25:35', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 10:25:35', '2018-07-17 08:25:35', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-07-17 10:33:49', '2018-07-17 08:33:49', '', 'accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-07-17 10:34:09', '2018-07-17 08:34:09', '', 0, 'http://localhost:8888/wordpress/?p=67', 1, 'nav_menu_item', '', 0),
(68, 1, '2018-07-17 10:36:51', '2018-07-17 08:36:51', '', 'MENU', '', 'publish', 'closed', 'closed', '', 'acf_menu', '', '', '2018-07-17 11:37:51', '2018-07-17 09:37:51', '', 0, 'http://localhost:8888/wordpress/?post_type=acf&#038;p=68', 0, 'acf', '', 0),
(69, 1, '2018-07-17 10:38:09', '2018-07-17 08:38:09', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-17 10:38:09', '2018-07-17 08:38:09', '', 19, 'http://localhost:8888/wordpress/2018/07/17/19-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-07-17 10:38:20', '2018-07-17 08:38:20', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 10:38:20', '2018-07-17 08:38:20', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-07-17 10:39:02', '2018-07-17 08:39:02', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 10:39:02', '2018-07-17 08:39:02', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-07-17 10:39:27', '2018-07-17 08:39:27', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-17 10:39:27', '2018-07-17 08:39:27', '', 21, 'http://localhost:8888/wordpress/2018/07/17/21-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-07-17 10:39:40', '2018-07-17 08:39:40', '', 'expérimentations', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-07-17 10:39:40', '2018-07-17 08:39:40', '', 20, 'http://localhost:8888/wordpress/2018/07/17/20-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-07-17 10:45:47', '2018-07-17 08:45:47', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-17 10:45:47', '2018-07-17 08:45:47', '', 19, 'http://localhost:8888/wordpress/2018/07/17/19-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-07-17 10:46:57', '2018-07-17 08:46:57', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-17 10:46:57', '2018-07-17 08:46:57', '', 19, 'http://localhost:8888/wordpress/2018/07/17/19-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-17 16:43:10', '2018-07-17 14:43:10', '', 'exemple', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-07-17 16:43:10', '2018-07-17 14:43:10', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=76', 0, 'travaux', '', 0),
(77, 1, '2018-07-17 11:25:33', '2018-07-17 09:25:33', 'blablabla', 'Exemple', '', 'trash', 'closed', 'closed', '', 'exemple__trashed', '', '', '2018-07-17 16:43:07', '2018-07-17 14:43:07', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=77', 0, 'travaux', '', 0),
(78, 1, '2018-07-17 11:30:23', '2018-07-17 09:30:23', '', 'Exemple 2', '', 'trash', 'closed', 'closed', '', 'exemple-2__trashed', '', '', '2018-07-17 16:43:05', '2018-07-17 14:43:05', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=78', 0, 'travaux', '', 0),
(79, 1, '2018-07-17 11:38:22', '2018-07-17 09:38:22', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-17 11:38:22', '2018-07-17 09:38:22', '', 19, 'http://localhost:8888/wordpress/2018/07/17/19-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-17 12:00:24', '2018-07-17 10:00:24', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 12:00:24', '2018-07-17 10:00:24', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-07-17 12:03:06', '2018-07-17 10:03:06', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-17 12:03:06', '2018-07-17 10:03:06', '', 19, 'http://localhost:8888/wordpress/2018/07/17/19-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-07-17 12:03:20', '2018-07-17 10:03:20', '', 'accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-07-17 12:03:20', '2018-07-17 10:03:20', '', 19, 'http://localhost:8888/wordpress/2018/07/17/19-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-07-17 14:06:05', '2018-07-17 12:06:05', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-17 14:06:05', '2018-07-17 12:06:05', '', 21, 'http://localhost:8888/wordpress/2018/07/17/21-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-07-17 14:06:30', '2018-07-17 12:06:30', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-17 14:06:30', '2018-07-17 12:06:30', '', 21, 'http://localhost:8888/wordpress/2018/07/17/21-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-07-17 14:16:25', '2018-07-17 12:16:25', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-17 14:16:25', '2018-07-17 12:16:25', '', 21, 'http://localhost:8888/wordpress/2018/07/17/21-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-07-17 14:16:37', '2018-07-17 12:16:37', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-17 14:16:37', '2018-07-17 12:16:37', '', 21, 'http://localhost:8888/wordpress/2018/07/17/21-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-07-17 15:04:39', '2018-07-17 13:04:39', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 15:04:39', '2018-07-17 13:04:39', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-17 15:11:06', '2018-07-17 13:11:06', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 15:11:06', '2018-07-17 13:11:06', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-07-17 15:31:55', '2018-07-17 13:31:55', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 15:31:55', '2018-07-17 13:31:55', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-07-17 15:44:30', '2018-07-17 13:44:30', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-17 15:44:30', '2018-07-17 13:44:30', '', 18, 'http://localhost:8888/wordpress/2018/07/17/18-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-07-17 16:37:36', '2018-07-17 14:37:36', '', 'DERSIM', '', 'publish', 'closed', 'closed', '', 'dersim', '', '', '2018-07-18 16:55:17', '2018-07-18 14:55:17', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=91', 0, 'travaux', '', 0),
(92, 1, '2018-07-17 16:49:36', '2018-07-17 14:49:36', '', 'CAP VERS L\'EST', '', 'publish', 'closed', 'closed', '', 'cap-vers-lest', '', '', '2018-07-19 09:50:05', '2018-07-19 07:50:05', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=92', 0, 'travaux', '', 0),
(93, 1, '2018-07-18 10:00:08', '2018-07-18 08:00:08', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-18 10:00:08', '2018-07-18 08:00:08', '', 18, 'http://localhost:8888/wordpress/2018/07/18/18-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-07-18 10:16:30', '2018-07-18 08:16:30', '', 'MAISON DU SEL', '', 'publish', 'closed', 'closed', '', 'maison-du-sel', '', '', '2018-07-19 09:39:04', '2018-07-19 07:39:04', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=94', 0, 'travaux', '', 0),
(95, 1, '2018-07-18 10:17:00', '2018-07-18 08:17:00', '', 'DAR 7 LOUYAT', '', 'publish', 'closed', 'closed', '', 'dar-7-louyat', '', '', '2018-07-19 09:49:03', '2018-07-19 07:49:03', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=95', 0, 'travaux', '', 0),
(96, 1, '2018-07-18 10:17:23', '2018-07-18 08:17:23', '', 'UNGLITH', '', 'publish', 'closed', 'closed', '', 'unglith', '', '', '2018-07-19 09:49:22', '2018-07-19 07:49:22', '', 0, 'http://localhost:8888/wordpress/?post_type=travaux&#038;p=96', 0, 'travaux', '', 0),
(97, 1, '2018-07-18 11:03:02', '2018-07-18 09:03:02', '', 'contact', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-07-18 11:03:02', '2018-07-18 09:03:02', '', 21, 'http://localhost:8888/wordpress/2018/07/18/21-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-07-18 11:14:39', '2018-07-18 09:14:39', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-18 11:14:39', '2018-07-18 09:14:39', '', 18, 'http://localhost:8888/wordpress/2018/07/18/18-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-07-18 16:04:21', '2018-07-18 14:04:21', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-18 16:04:21', '2018-07-18 14:04:21', '', 18, 'http://localhost:8888/wordpress/2018/07/18/18-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-07-18 16:05:56', '2018-07-18 14:05:56', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-18 16:05:56', '2018-07-18 14:05:56', '', 18, 'http://localhost:8888/wordpress/2018/07/18/18-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-07-18 16:42:59', '2018-07-18 14:42:59', '', 'capverslest2', '', 'inherit', 'open', 'closed', '', 'capverslest2', '', '', '2018-07-18 16:43:09', '2018-07-18 14:43:09', '', 92, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/capverslest2.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-07-18 16:47:19', '2018-07-18 14:47:19', '', 'dersim2', '', 'inherit', 'open', 'closed', '', 'dersim2', '', '', '2018-07-18 16:47:26', '2018-07-18 14:47:26', '', 91, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/dersim2.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2018-07-18 16:55:07', '2018-07-18 14:55:07', '', 'dersim', '', 'inherit', 'open', 'closed', '', 'dersim-2', '', '', '2018-07-18 16:55:14', '2018-07-18 14:55:14', '', 91, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/dersim.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-07-18 16:55:38', '2018-07-18 14:55:38', '', 'capverslest', '', 'inherit', 'open', 'closed', '', 'capverslest', '', '', '2018-07-18 16:55:43', '2018-07-18 14:55:43', '', 92, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/capverslest.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-07-18 17:04:03', '2018-07-18 15:04:03', '', 'unglith', '', 'inherit', 'open', 'closed', '', 'unglith-2', '', '', '2018-07-18 17:04:09', '2018-07-18 15:04:09', '', 96, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/unglith.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-07-18 17:04:21', '2018-07-18 15:04:21', '', 'unglith2', '', 'inherit', 'open', 'closed', '', 'unglith2', '', '', '2018-07-18 17:04:29', '2018-07-18 15:04:29', '', 96, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/unglith2.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-07-18 17:11:59', '2018-07-18 15:11:59', '', 'maisondusel', '', 'inherit', 'open', 'closed', '', 'maisondusel', '', '', '2018-07-18 17:12:07', '2018-07-18 15:12:07', '', 94, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/maisondusel.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2018-07-19 09:16:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-19 09:16:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=113', 0, 'post', '', 0),
(115, 1, '2018-07-19 09:36:43', '2018-07-19 07:36:43', '', 'd7l2', '', 'inherit', 'open', 'closed', '', 'd7l2', '', '', '2018-07-19 09:36:49', '2018-07-19 07:36:49', '', 95, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/d7l2.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2018-07-19 09:38:53', '2018-07-19 07:38:53', '', 'maisondusel2', '', 'inherit', 'open', 'closed', '', 'maisondusel2', '', '', '2018-07-19 09:39:03', '2018-07-19 07:39:03', '', 94, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/maisondusel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2018-07-19 09:41:18', '2018-07-19 07:41:18', '', 'd7l', '', 'inherit', 'open', 'closed', '', 'd7l', '', '', '2018-07-19 09:41:22', '2018-07-19 07:41:22', '', 95, 'http://localhost:8888/wordpress/wp-content/uploads/2018/07/d7l.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2018-07-19 15:40:58', '2018-07-19 13:40:58', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-19 15:40:58', '2018-07-19 13:40:58', '', 18, 'http://localhost:8888/wordpress/2018/07/19/18-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-07-19 15:41:15', '2018-07-19 13:41:15', '', 'about', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-19 15:41:15', '2018-07-19 13:41:15', '', 18, 'http://localhost:8888/wordpress/2018/07/19/18-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'menu_principal', 'menu_principal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(27, 2, 0),
(29, 2, 0),
(30, 2, 0),
(41, 1, 0),
(43, 1, 0),
(47, 1, 0),
(49, 1, 0),
(51, 1, 0),
(67, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Alec'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"10a137bf6d343f5286b9db69f462b42768dd97e4873d0a20bead1cf664e808d1\";a:4:{s:10:\"expiration\";i:1532268561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0.1 Safari/604.3.5\";s:5:\"login\";i:1532095761;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1531926831');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Alec', '$P$BACZ3DmOXW1PoB9Uwk078xVJVxQY7T.', 'alec', 'alec.myclientisrich@gmail.com', '', '2018-07-16 12:59:39', '', 0, 'Alec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=837;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
