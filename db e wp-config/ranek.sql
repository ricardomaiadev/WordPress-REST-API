-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16-Ago-2021 às 21:26
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ranek`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_commentmeta`
--

CREATE TABLE `rk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_comments`
--

CREATE TABLE `rk_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_comments`
--

INSERT INTO `rk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-08-11 18:31:00', '2021-08-11 21:31:00', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_links`
--

CREATE TABLE `rk_links` (
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
-- Estrutura da tabela `rk_options`
--

CREATE TABLE `rk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_options`
--

INSERT INTO `rk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://localhost/ranekapi', 'yes'),
(2, 'home', 'https://localhost/ranekapi', 'yes'),
(3, 'blogname', 'Ranek API', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'conta@valeapna.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:125:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?produto=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?produto=$matches[1]&tb=1\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?produto=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?produto=$matches[1]&cpage=$matches[2]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?produto=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"transacao/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"transacao/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"transacao/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"transacao/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"transacao/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"transacao/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"transacao/([^/]+)/embed/?$\";s:42:\"index.php?transacao=$matches[1]&embed=true\";s:30:\"transacao/([^/]+)/trackback/?$\";s:36:\"index.php?transacao=$matches[1]&tb=1\";s:38:\"transacao/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?transacao=$matches[1]&paged=$matches[2]\";s:45:\"transacao/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?transacao=$matches[1]&cpage=$matches[2]\";s:34:\"transacao/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?transacao=$matches[1]&page=$matches[2]\";s:26:\"transacao/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"transacao/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"transacao/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"transacao/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"transacao/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"transacao/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'api', 'yes'),
(41, 'stylesheet', 'api', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1644269460', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'rk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:5:{i:1629142262;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1629149462;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1629149706;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1629408662;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1628717711;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(127, '_site_transient_timeout_browser_9e74dd8793c136b4a7034b0400f110cd', '1629322288', 'no'),
(128, '_site_transient_browser_9e74dd8793c136b4a7034b0400f110cd', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_ecfa741d55b7b1a85bd61a2307877c8c', '1629322288', 'no'),
(130, '_site_transient_php_check_ecfa741d55b7b1a85bd61a2307877c8c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', 'Api', 'yes'),
(149, 'theme_mods_api', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recovery_mode_email_last_sent', '1628805621', 'yes'),
(181, 'recently_activated', 'a:0:{}', 'yes'),
(187, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1629128970;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(188, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1629128972;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=1238484\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=1238480\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}}s:7:\"checked\";a:1:{s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:5:\"1.2.6\";}}', 'no'),
(189, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1629128972;s:7:\"checked\";a:1:{s:3:\"api\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(197, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":3,\"critical\":0}', 'yes'),
(215, '_site_transient_timeout_theme_roots', '1629130771', 'no'),
(216, '_site_transient_theme_roots', 'a:1:{s:3:\"api\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_postmeta`
--

CREATE TABLE `rk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_postmeta`
--

INSERT INTO `rk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 6, 'nome', 'Macbook'),
(9, 6, 'preco', '32999'),
(10, 6, 'descricao', 'Esse é um produto usado.'),
(11, 6, 'usuario_id', 'ricardo@maia.com'),
(12, 6, 'vendido', 'false'),
(13, 6, '_edit_lock', '1628799757:1'),
(39, 12, 'nome', 'Notebook'),
(40, 12, 'preco', '1299'),
(41, 12, 'descricao', 'Esse é usado'),
(42, 12, 'usuario_id', 'ricardo@maia.com'),
(43, 12, 'vendido', 'false'),
(44, 13, 'nome', 'Notebook'),
(45, 13, 'preco', '1299'),
(46, 13, 'descricao', 'Esse é usado'),
(47, 13, 'usuario_id', 'ricardo@maia.com'),
(48, 13, 'vendido', 'false'),
(50, 14, 'nome', 'Notebook'),
(51, 14, 'preco', '1299'),
(52, 14, 'descricao', 'Esse é usado'),
(53, 14, 'usuario_id', 'ricardo@maia.com'),
(54, 14, 'vendido', 'true'),
(55, 15, '_wp_attached_file', '2021/08/smartphone-foto.jpg'),
(56, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:900;s:4:\"file\";s:27:\"2021/08/smartphone-foto.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"smartphone-foto-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"smartphone-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 16, 'nome', 'Notebook'),
(58, 16, 'preco', '1299'),
(59, 16, 'descricao', 'Esse é usado'),
(60, 16, 'usuario_id', 'rick@maia.com'),
(61, 16, 'vendido', 'false'),
(62, 17, '_wp_attached_file', '2021/08/notebook-foto.jpg'),
(63, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:900;s:4:\"file\";s:25:\"2021/08/notebook-foto.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"notebook-foto-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"notebook-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 18, 'nome', 'Notebook'),
(65, 18, 'preco', '1299'),
(66, 18, 'descricao', 'Esse é usado'),
(67, 18, 'usuario_id', 'rick@maia.com'),
(68, 18, 'vendido', 'true'),
(69, 19, '_wp_attached_file', '2021/08/smartwatch.jpg'),
(70, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2021/08/smartwatch.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"smartwatch-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"smartwatch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 18, '_edit_lock', '1628863326:1'),
(72, 18, '_edit_last', '1'),
(73, 16, '_edit_lock', '1628864570:1'),
(74, 16, '_edit_last', '1'),
(75, 20, 'comprador_id', 'joaquim@maia.com'),
(76, 20, 'vendedor_id', 'ricardo@maia.com'),
(77, 20, 'endereco', '{\"id\":\"joaquim@maia.com\",\"nome\":\"joaquim@maia.com\",\"email\":\"joaquim@maia.com\",\"cep\":\"77777\",\"numero\":\"4774\",\"rua\":\"Bem ali\",\"bairro\":\"Do lado\",\"cidade\":\"Aqui mesmo\",\"estado\":\"Chegou\"}'),
(78, 20, 'produto', '{\"id\":\"notebook-8\",\"fotos\":[{\"titulo\":\"smartphone-foto\",\"src\":\"https://localhost/ranekapi/wp-content/uploads/2021/08/smartphone-foto.jpg\"}],\"nome\":\"Notebook\",\"preco\":\"1299\",\"descricao\":\"Esse é usado\",\"vendido\":\"false\",\"usuario_id\":\"ricardo@maia.com\"}'),
(79, 21, 'comprador_id', 'joaquim@maia.com'),
(80, 21, 'vendedor_id', 'ricardo@maia.com'),
(81, 21, 'endereco', '{\"id\":\"joaquim@maia.com\",\"nome\":\"joaquim@maia.com\",\"email\":\"joaquim@maia.com\",\"cep\":\"77777\",\"numero\":\"4774\",\"rua\":\"Bem ali\",\"bairro\":\"Do lado\",\"cidade\":\"Aqui mesmo\",\"estado\":\"Chegou\"}'),
(82, 21, 'produto', '{\"id\":\"notebook-8\",\"fotos\":[{\"titulo\":\"smartphone-foto\",\"src\":\"https://localhost/ranekapi/wp-content/uploads/2021/08/smartphone-foto.jpg\"}],\"nome\":\"Notebook\",\"preco\":\"1299\",\"descricao\":\"Esse é usado\",\"vendido\":\"false\",\"usuario_id\":\"ricardo@maia.com\"}'),
(83, 22, 'comprador_id', 'joaquim@maia.com'),
(84, 22, 'vendedor_id', 'ricardo@maia.com'),
(85, 22, 'endereco', '{\"id\":\"joaquim@maia.com\",\"nome\":\"joaquim@maia.com\",\"email\":\"joaquim@maia.com\",\"cep\":\"77777\",\"numero\":\"4774\",\"rua\":\"Bem ali\",\"bairro\":\"Do lado\",\"cidade\":\"Aqui mesmo\",\"estado\":\"Chegou\"}'),
(86, 22, 'produto', '{\"id\":\"notebook-8\",\"fotos\":[{\"titulo\":\"smartphone-foto\",\"src\":\"https://localhost/ranekapi/wp-content/uploads/2021/08/smartphone-foto.jpg\"}],\"nome\":\"Notebook\",\"preco\":\"1299\",\"descricao\":\"Esse é usado\",\"vendido\":\"false\",\"usuario_id\":\"ricardo@maia.com\"}'),
(87, 21, '_wp_trash_meta_status', 'publish'),
(88, 21, '_wp_trash_meta_time', '1628868588'),
(89, 21, '_wp_desired_post_slug', 'joaquimmaia-com-notebook-2'),
(90, 20, '_wp_trash_meta_status', 'publish'),
(91, 20, '_wp_trash_meta_time', '1628868588'),
(92, 20, '_wp_desired_post_slug', 'joaquimmaia-com-notebook'),
(93, 22, '_edit_lock', '1628877261:1'),
(94, 23, 'nome', 'Macbook Novo'),
(95, 23, 'preco', '12345'),
(96, 23, 'descricao', 'Esse mac é novo'),
(97, 23, 'usuario_id', 'ricardo@maia.com'),
(98, 23, 'vendido', 'true'),
(99, 24, 'comprador_id', 'ricardo@maia.com'),
(100, 24, 'vendedor_id', 'ricardo@maia.com'),
(101, 24, 'endereco', '{\"cep\":\"76808020\",\"rua\":\"Rua Aroeira\",\"numero\":\"8899\",\"bairro\":\"Cohab\",\"cidade\":\"Porto Velho\",\"estado\":\"RO\"}'),
(102, 24, 'produto', '{\"id\":\"macbook-novo\",\"fotos\":null,\"nome\":\"Macbook Novo\",\"preco\":\"12345\",\"descricao\":\"Esse mac é novo\",\"vendido\":\"false\",\"usuario_id\":\"ricardo@maia.com\"}'),
(103, 23, '_edit_lock', '1628878658:1'),
(104, 25, 'nome', 'Galaxy S100'),
(105, 25, 'preco', '12499'),
(106, 25, 'descricao', 'Esse é o galaxy do futuro.'),
(107, 25, 'usuario_id', 'jose@top.com'),
(108, 25, 'vendido', 'true'),
(109, 26, 'comprador_id', 'maria@top.com'),
(110, 26, 'vendedor_id', 'jose@top.com'),
(111, 26, 'endereco', '{\"cep\":\"768080400\",\"rua\":\"Rua Pitanga\",\"numero\":\"1872\",\"bairro\":\"Cohab\",\"cidade\":\"Porto Velho\",\"estado\":\"RO\"}'),
(112, 26, 'produto', '{\"id\":\"galaxy-s100\",\"fotos\":null,\"nome\":\"Galaxy S100\",\"preco\":\"12499\",\"descricao\":\"Esse é o galaxy do futuro.\",\"vendido\":\"false\",\"usuario_id\":\"jose@top.com\"}'),
(113, 25, '_edit_lock', '1628881541:1'),
(114, 27, 'nome', 'Geladeira'),
(115, 27, 'preco', '1500'),
(116, 27, 'descricao', 'Geladeira top'),
(117, 27, 'usuario_id', 'maria@top.com'),
(118, 27, 'vendido', 'false'),
(124, 29, 'nome', 'Notebook TOP'),
(125, 29, 'preco', '2500'),
(126, 29, 'descricao', 'Notebook show'),
(127, 29, 'usuario_id', 'maria@top.com'),
(128, 29, 'vendido', 'false'),
(129, 30, '_wp_attached_file', '2021/08/notebook-foto-1.jpg'),
(130, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:900;s:4:\"file\";s:27:\"2021/08/notebook-foto-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"notebook-foto-1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"notebook-foto-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 31, '_wp_attached_file', '2021/08/notebook.jpg'),
(132, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2021/08/notebook.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 29, '_edit_lock', '1628884447:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_posts`
--

CREATE TABLE `rk_posts` (
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
-- Extraindo dados da tabela `rk_posts`
--

INSERT INTO `rk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-08-11 18:31:00', '2021-08-11 21:31:00', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-08-11 18:31:00', '2021-08-11 21:31:00', '', 0, 'https://localhost/ranekapi/?p=1', 0, 'post', '', 1),
(2, 1, '2021-08-11 18:31:00', '2021-08-11 21:31:00', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"https://localhost/ranekapi/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2021-08-11 18:31:00', '2021-08-11 21:31:00', '', 0, 'https://localhost/ranekapi/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-08-11 18:31:00', '2021-08-11 21:31:00', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: https://localhost/ranekapi.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2021-08-11 18:31:00', '2021-08-11 21:31:00', '', 0, 'https://localhost/ranekapi/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-08-11 18:31:28', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-11 18:31:28', '0000-00-00 00:00:00', '', 0, 'https://localhost/ranekapi/?p=4', 0, 'post', '', 0),
(6, 2, '2021-08-12 16:58:54', '2021-08-12 19:58:54', '', 'Macbook', '', 'publish', 'closed', 'closed', '', 'macbook', '', '', '2021-08-12 16:58:54', '2021-08-12 19:58:54', '', 0, 'https://localhost/ranekapi/produto/macbook/', 0, 'produto', '', 0),
(12, 2, '2021-08-12 17:23:16', '2021-08-12 20:23:16', '', 'Notebook', '', 'publish', 'closed', 'closed', '', 'notebook-6', '', '', '2021-08-12 17:23:16', '2021-08-12 20:23:16', '', 0, 'https://localhost/ranekapi/produto/notebook-6/', 0, 'produto', '', 0),
(13, 2, '2021-08-12 17:24:27', '2021-08-12 20:24:27', '', 'Notebook', '', 'publish', 'closed', 'closed', '', 'notebook-7', '', '', '2021-08-12 17:24:27', '2021-08-12 20:24:27', '', 0, 'https://localhost/ranekapi/produto/notebook-7/', 0, 'produto', '', 0),
(14, 2, '2021-08-12 17:30:36', '2021-08-12 20:30:36', '', 'Notebook', '', 'publish', 'closed', 'closed', '', 'notebook-8', '', '', '2021-08-12 17:30:36', '2021-08-12 20:30:36', '', 0, 'https://localhost/ranekapi/produto/notebook-8/', 0, 'produto', '', 0),
(15, 2, '2021-08-12 17:30:36', '2021-08-12 20:30:36', '', 'smartphone-foto', '', 'inherit', 'open', 'closed', '', 'smartphone-foto', '', '', '2021-08-12 17:30:36', '2021-08-12 20:30:36', '', 14, 'https://localhost/ranekapi/wp-content/uploads/2021/08/smartphone-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 2, '2021-08-12 17:30:49', '2021-08-12 20:30:49', '', 'Notebook', '', 'publish', 'closed', 'closed', '', 'notebook-9', '', '', '2021-08-13 11:04:43', '2021-08-13 14:04:43', '', 0, 'https://localhost/ranekapi/produto/notebook-9/', 0, 'produto', '', 0),
(17, 2, '2021-08-12 17:30:49', '2021-08-12 20:30:49', '', 'notebook-foto', '', 'inherit', 'open', 'closed', '', 'notebook-foto', '', '', '2021-08-12 17:30:49', '2021-08-12 20:30:49', '', 16, 'https://localhost/ranekapi/wp-content/uploads/2021/08/notebook-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 2, '2021-08-12 17:31:02', '2021-08-12 20:31:02', '', 'Notebook', '', 'publish', 'closed', 'closed', '', 'notebook-10', '', '', '2021-08-12 18:56:05', '2021-08-12 21:56:05', '', 0, 'https://localhost/ranekapi/produto/notebook-10/', 0, 'produto', '', 0),
(19, 2, '2021-08-12 17:31:02', '2021-08-12 20:31:02', '', 'smartwatch', '', 'inherit', 'open', 'closed', '', 'smartwatch', '', '', '2021-08-12 17:31:02', '2021-08-12 20:31:02', '', 18, 'https://localhost/ranekapi/wp-content/uploads/2021/08/smartwatch.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 2, '2021-08-13 12:23:51', '2021-08-13 15:23:51', '', 'joaquim@maia.com - Notebook', '', 'trash', 'closed', 'closed', '', 'joaquimmaia-com-notebook__trashed', '', '', '2021-08-13 12:29:48', '2021-08-13 15:29:48', '', 0, 'https://localhost/ranekapi/produto/joaquimmaia-com-notebook/', 0, 'produto', '', 0),
(21, 2, '2021-08-13 12:28:11', '2021-08-13 15:28:11', '', 'joaquim@maia.com - Notebook', '', 'trash', 'closed', 'closed', '', 'joaquimmaia-com-notebook-2__trashed', '', '', '2021-08-13 12:29:48', '2021-08-13 15:29:48', '', 0, 'https://localhost/ranekapi/produto/joaquimmaia-com-notebook-2/', 0, 'produto', '', 0),
(22, 2, '2021-08-13 12:29:36', '2021-08-13 15:29:36', '', 'joaquim@maia.com - Notebook', '', 'publish', 'closed', 'closed', '', 'joaquimmaia-com-notebook', '', '', '2021-08-13 12:29:36', '2021-08-13 15:29:36', '', 0, 'https://localhost/ranekapi/transacao/joaquimmaia-com-notebook/', 0, 'transacao', '', 0),
(23, 2, '2021-08-13 14:54:17', '2021-08-13 17:54:17', '', 'Macbook Novo', '', 'publish', 'closed', 'closed', '', 'macbook-novo', '', '', '2021-08-13 14:54:17', '2021-08-13 17:54:17', '', 0, 'https://localhost/ranekapi/produto/macbook-novo/', 0, 'produto', '', 0),
(24, 2, '2021-08-13 14:55:46', '2021-08-13 17:55:46', '', 'ricardo@maia.com - Macbook Novo', '', 'publish', 'closed', 'closed', '', 'ricardomaia-com-macbook-novo', '', '', '2021-08-13 14:55:46', '2021-08-13 17:55:46', '', 0, 'https://localhost/ranekapi/transacao/ricardomaia-com-macbook-novo/', 0, 'transacao', '', 0),
(25, 5, '2021-08-13 15:17:39', '2021-08-13 18:17:39', '', 'Galaxy S100', '', 'publish', 'closed', 'closed', '', 'galaxy-s100', '', '', '2021-08-13 15:17:39', '2021-08-13 18:17:39', '', 0, 'https://localhost/ranekapi/produto/galaxy-s100/', 0, 'produto', '', 0),
(26, 6, '2021-08-13 15:18:54', '2021-08-13 18:18:54', '', 'maria@top.com - Galaxy S100', '', 'publish', 'closed', 'closed', '', 'mariatop-com-galaxy-s100', '', '', '2021-08-13 15:18:54', '2021-08-13 18:18:54', '', 0, 'https://localhost/ranekapi/transacao/mariatop-com-galaxy-s100/', 0, 'transacao', '', 0),
(27, 6, '2021-08-13 15:55:23', '2021-08-13 18:55:23', '', 'Geladeira', '', 'publish', 'closed', 'closed', '', 'geladeira', '', '', '2021-08-13 15:55:23', '2021-08-13 18:55:23', '', 0, 'https://localhost/ranekapi/produto/geladeira/', 0, 'produto', '', 0),
(29, 6, '2021-08-13 16:06:33', '2021-08-13 19:06:33', '', 'Notebook TOP', '', 'publish', 'closed', 'closed', '', 'notebook-top', '', '', '2021-08-13 16:06:33', '2021-08-13 19:06:33', '', 0, 'https://localhost/ranekapi/produto/notebook-top/', 0, 'produto', '', 0),
(30, 6, '2021-08-13 16:06:33', '2021-08-13 19:06:33', '', 'notebook-foto', '', 'inherit', 'open', 'closed', '', 'notebook-foto-2', '', '', '2021-08-13 16:06:33', '2021-08-13 19:06:33', '', 29, 'https://localhost/ranekapi/wp-content/uploads/2021/08/notebook-foto-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 6, '2021-08-13 16:06:33', '2021-08-13 19:06:33', '', 'notebook', '', 'inherit', 'open', 'closed', '', 'notebook', '', '', '2021-08-13 16:06:33', '2021-08-13 19:06:33', '', 29, 'https://localhost/ranekapi/wp-content/uploads/2021/08/notebook.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_termmeta`
--

CREATE TABLE `rk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_terms`
--

CREATE TABLE `rk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_terms`
--

INSERT INTO `rk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_term_relationships`
--

CREATE TABLE `rk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_term_relationships`
--

INSERT INTO `rk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_term_taxonomy`
--

CREATE TABLE `rk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_term_taxonomy`
--

INSERT INTO `rk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_usermeta`
--

CREATE TABLE `rk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rk_usermeta`
--

INSERT INTO `rk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'rk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'rk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1e6a4383ecb5e96631b3080a017a73bf9c522099a0569964f097c3e19da65516\";a:4:{s:10:\"expiration\";i:1628890268;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628717468;}}'),
(17, 1, 'rk_dashboard_quick_press_last_post_id', '4'),
(18, 2, 'nickname', 'ricardo@maia.com'),
(19, 2, 'first_name', 'ricardo@maia.com'),
(20, 2, 'last_name', ''),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'rk_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(30, 2, 'rk_user_level', '0'),
(31, 2, 'session_tokens', 'a:4:{s:64:\"e41e05d15c0615af4ad0cd4d8a6fc4af3e6001a28cc98afcc5983e29e40dad25\";a:4:{s:10:\"expiration\";i:1628956960;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628784160;}s:64:\"c689cbcb2eb0c2bdee92801562283cb23fdd8d21c98b0ad1c172124d3cabba83\";a:4:{s:10:\"expiration\";i:1628968531;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:17:\"insomnia/2021.4.1\";s:5:\"login\";i:1628795731;}s:64:\"28dabb429f960d3155513783637380009eb416cd2294b1491926b3d4cf35ad11\";a:4:{s:10:\"expiration\";i:1628968575;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628795775;}s:64:\"3533d2f8afc0ad1855b30a63438c4bbb181958d61459503ef8c152ca22580cb6\";a:4:{s:10:\"expiration\";i:1629036479;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:17:\"insomnia/2021.4.1\";s:5:\"login\";i:1628863679;}}'),
(32, 3, 'nickname', 'rick@maia.com'),
(33, 3, 'first_name', 'Rick'),
(34, 3, 'last_name', ''),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'syntax_highlighting', 'true'),
(38, 3, 'comment_shortcuts', 'false'),
(39, 3, 'admin_color', 'fresh'),
(40, 3, 'use_ssl', '0'),
(41, 3, 'show_admin_bar_front', 'true'),
(42, 3, 'locale', ''),
(43, 3, 'rk_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(44, 3, 'rk_user_level', '0'),
(45, 4, 'nickname', 'joaqui@maia.com'),
(46, 4, 'first_name', 'Joaquizinho'),
(47, 4, 'last_name', ''),
(48, 4, 'description', ''),
(49, 4, 'rich_editing', 'true'),
(50, 4, 'syntax_highlighting', 'true'),
(51, 4, 'comment_shortcuts', 'false'),
(52, 4, 'admin_color', 'fresh'),
(53, 4, 'use_ssl', '0'),
(54, 4, 'show_admin_bar_front', 'true'),
(55, 4, 'locale', ''),
(56, 4, 'rk_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(57, 4, 'rk_user_level', '0'),
(58, 4, 'cep', '232323223'),
(59, 4, 'rua', 'Ali perto'),
(60, 4, 'numero', '54'),
(61, 4, 'bairro', 'Aquele la'),
(62, 4, 'cidade', 'PVH'),
(63, 4, 'estado', 'RO'),
(64, 2, 'cep', '77777'),
(65, 2, 'rua', 'Bem ali'),
(66, 2, 'numero', '4774'),
(67, 2, 'bairro', 'Do lado'),
(68, 2, 'cidade', 'Aqui mesmo'),
(69, 2, 'estado', 'Chegou'),
(70, 1, 'closedpostboxes_produto', 'a:0:{}'),
(71, 1, 'metaboxhidden_produto', 'a:0:{}'),
(72, 5, 'nickname', 'jose@top.com'),
(73, 5, 'first_name', 'Jose'),
(74, 5, 'last_name', ''),
(75, 5, 'description', ''),
(76, 5, 'rich_editing', 'true'),
(77, 5, 'syntax_highlighting', 'true'),
(78, 5, 'comment_shortcuts', 'false'),
(79, 5, 'admin_color', 'fresh'),
(80, 5, 'use_ssl', '0'),
(81, 5, 'show_admin_bar_front', 'true'),
(82, 5, 'locale', ''),
(83, 5, 'rk_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(84, 5, 'rk_user_level', '0'),
(85, 5, 'cep', '76808020'),
(86, 5, 'rua', 'Rua Aroeira'),
(87, 5, 'numero', '23123'),
(88, 5, 'bairro', 'Cohab'),
(89, 5, 'cidade', 'Porto Velho'),
(90, 5, 'estado', 'RO'),
(91, 6, 'nickname', 'maria@top.com'),
(92, 6, 'first_name', 'Maria'),
(93, 6, 'last_name', ''),
(94, 6, 'description', ''),
(95, 6, 'rich_editing', 'true'),
(96, 6, 'syntax_highlighting', 'true'),
(97, 6, 'comment_shortcuts', 'false'),
(98, 6, 'admin_color', 'fresh'),
(99, 6, 'use_ssl', '0'),
(100, 6, 'show_admin_bar_front', 'true'),
(101, 6, 'locale', ''),
(102, 6, 'rk_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(103, 6, 'rk_user_level', '0'),
(104, 6, 'cep', '768080400'),
(105, 6, 'rua', 'Rua Pitanga'),
(106, 6, 'numero', '1872'),
(107, 6, 'bairro', 'Cohab'),
(108, 6, 'cidade', 'Porto Velho'),
(109, 6, 'estado', 'RO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rk_users`
--

CREATE TABLE `rk_users` (
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
-- Extraindo dados da tabela `rk_users`
--

INSERT INTO `rk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bn.6.m14VfbDaFbx7ug2DtZEsFuo9U1', 'admin', 'conta@valeapna.com', 'https://localhost/ranekapi', '2021-08-11 21:31:00', '', 0, 'admin'),
(2, 'ricardo@maia.com', '$P$B425NFCA1b3Bj2LE553tqpCj.iTIfA1', 'ricardomaia-com', 'ricardo@maia.com', '', '2021-08-12 16:00:58', '', 0, 'ricardo@maia.com'),
(3, 'rick@maia.com', '$P$BI7ScO92qVq7x3V3iqpQqPCP/mMv8O.', 'rickmaia-com', 'rick@maia.com', '', '2021-08-12 16:27:43', '', 0, 'Rick'),
(4, 'joaqui@maia.com', '$P$BsGQuzVXwgPf.wPhC1pLSB1hMAMEvB0', 'joaquimaia-com', 'joaqui@maia.com', '', '2021-08-12 16:36:10', '', 0, 'Joaquizinho'),
(5, 'jose@top.com', '$P$BNx6JRXvDQ2hVxpHa1qrfkcPJgSd.Z.', 'josetop-com', 'jose@top.com', '', '2021-08-13 18:16:53', '', 0, 'Jose'),
(6, 'maria@top.com', '$P$BRYRwmf3RWIHTBj3TFvXOveRpSikH61', 'mariatop-com', 'maria@top.com', '', '2021-08-13 18:18:52', '', 0, 'Maria');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `rk_commentmeta`
--
ALTER TABLE `rk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `rk_comments`
--
ALTER TABLE `rk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `rk_links`
--
ALTER TABLE `rk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `rk_options`
--
ALTER TABLE `rk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `rk_postmeta`
--
ALTER TABLE `rk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `rk_posts`
--
ALTER TABLE `rk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `rk_termmeta`
--
ALTER TABLE `rk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `rk_terms`
--
ALTER TABLE `rk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `rk_term_relationships`
--
ALTER TABLE `rk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `rk_term_taxonomy`
--
ALTER TABLE `rk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `rk_usermeta`
--
ALTER TABLE `rk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `rk_users`
--
ALTER TABLE `rk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `rk_commentmeta`
--
ALTER TABLE `rk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rk_comments`
--
ALTER TABLE `rk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `rk_links`
--
ALTER TABLE `rk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rk_options`
--
ALTER TABLE `rk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT de tabela `rk_postmeta`
--
ALTER TABLE `rk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de tabela `rk_posts`
--
ALTER TABLE `rk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `rk_termmeta`
--
ALTER TABLE `rk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rk_terms`
--
ALTER TABLE `rk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `rk_term_taxonomy`
--
ALTER TABLE `rk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `rk_usermeta`
--
ALTER TABLE `rk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `rk_users`
--
ALTER TABLE `rk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
