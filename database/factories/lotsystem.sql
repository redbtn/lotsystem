-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2015 at 06:41 AM
-- Server version: 5.5.43-0+deb8u1
-- PHP Version: 5.6.9-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lotsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `type`, `user_id`, `category_id`, `title`, `slug`, `body`, `image`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'page', 1, 0, 'page test', 'page-test', '<p>this is page test</p>\r\n', NULL, NULL, '2015-09-21 22:14:46', '2015-09-21 22:14:46'),
(2, 'post', 1, 1, 'Test Artikel', 'test-artikel', '<p>Ini test Artikel</p>\r\n', NULL, NULL, '2015-09-22 04:00:14', '2015-09-22 04:00:14'),
(3, 'post', 1, 2, 'Article 2', 'article-2', '<p>Test Artikel 2</p>\r\n', NULL, NULL, '2015-10-10 22:24:07', '2015-10-10 22:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'categoy 1', 'categoy-1', '', '2015-09-21 22:15:42', '2015-10-10 22:22:09'),
(2, 'categoy 2', 'categoy-2', '', '2015-10-10 22:22:49', '2015-10-10 22:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE IF NOT EXISTS `desa` (
`id` int(10) unsigned NOT NULL,
  `kecamatan_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode_cu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='List desa dr kec';

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id`, `kecamatan_id`, `name`, `kode_cu`) VALUES
(1, 1, '', 'Jangkaran'),
(2, 1, '', 'Sindutan'),
(3, 1, '', 'Palihan'),
(4, 1, '', 'Glagah'),
(5, 1, '', 'Kalidengen'),
(6, 1, '', 'Plumbon'),
(7, 1, '', 'Kedundang'),
(8, 1, '', 'Demen'),
(9, 1, '', 'Kulur'),
(10, 1, '', 'Kaligintung'),
(11, 1, '', 'Temon Wetan'),
(12, 1, '', 'Temon Kulon'),
(13, 1, '', 'Kebonrejo'),
(14, 1, '', 'Janten'),
(15, 1, '', 'Karangwuluh'),
(16, 2, '', 'Karangwuni'),
(17, 2, '', 'Sogan'),
(18, 2, '', 'Kulwaru'),
(19, 2, '', 'Ngestiharjo'),
(20, 2, '', 'Bendungan'),
(21, 2, '', 'Triharjo'),
(22, 2, '', 'Giripeni'),
(23, 3, '', 'Garongan'),
(24, 3, '', 'Pleret'),
(25, 3, '', 'Bugel'),
(26, 3, '', 'Kanoman'),
(27, 3, '', 'Depok'),
(28, 3, '', 'Bojong'),
(29, 3, '', 'Tayuban'),
(30, 3, '', 'Gotakan'),
(31, 3, '', 'Panjatan'),
(32, 3, '', 'Cerme'),
(33, 3, '', 'Krembangan'),
(34, 4, '', 'Banaran'),
(35, 4, '', 'Kranggan'),
(36, 4, '', 'Nomporejo'),
(37, 4, '', 'Karangsewu'),
(38, 4, '', 'Tirtorahayu'),
(39, 4, '', 'Pandowan'),
(40, 4, '', 'Brosot'),
(41, 5, '', 'Wahyuharjo'),
(42, 5, '', 'Bumirejo'),
(43, 5, '', 'Jatirejo'),
(44, 5, '', 'Sidorejo'),
(45, 5, '', 'Gulurejo'),
(46, 5, '', 'Ngentakrejo'),
(47, 6, '', 'Demangrejo'),
(48, 6, '', 'Srikayangan'),
(49, 6, '', 'Tuksono'),
(50, 6, '', 'Salamrejo'),
(51, 6, '', 'Sukoreno'),
(52, 6, '', 'Kaliagung'),
(53, 6, '', 'Sentolo'),
(54, 6, '', 'Banguncipto'),
(55, 7, '', 'Tawangsari'),
(56, 7, '', 'Karangsari'),
(57, 7, '', 'Kedungsari'),
(58, 7, '', 'Margosari'),
(59, 7, '', 'Pengasih'),
(60, 7, '', 'Sendangsari'),
(61, 7, '', 'Sidomulyo'),
(62, 8, '', 'Hargomulyo'),
(63, 8, 'CU 810117 F-01-B', 'Hargorejo'),
(64, 8, 'CU 810117 F-01-D', 'Hargowilis'),
(65, 8, 'CU 810117 F-01-AK', 'Kalirejo'),
(66, 8, 'CU 810117 F-01-C', 'Hargotirto'),
(67, 9, 'CU 810117 F-04-G', 'Jatimulyo'),
(68, 9, '', 'Giripurwo'),
(69, 9, '', 'Pendoworejo'),
(70, 9, '', 'Purwosari'),
(71, 10, '', 'Banyuroto'),
(72, 10, '', 'Donomulyo'),
(73, 10, '', 'Wijimulyo'),
(74, 10, '', 'Tanjungharjo'),
(75, 10, '', 'Jatisarono'),
(76, 10, '', 'Kembang'),
(77, 11, '', 'Kebonharjo'),
(78, 11, '', 'Banjarsari'),
(79, 11, '', 'Purwoharjo'),
(80, 11, '', 'Sidoharjo'),
(81, 11, '', 'Gerbosari'),
(82, 11, '', 'Ngargosari'),
(83, 11, '', 'Pagerharjo'),
(84, 12, '', 'Banjararum'),
(85, 12, '', 'Banjarasri'),
(86, 12, '', 'Banjarharjo'),
(87, 12, '', 'Banjaroyo');

-- --------------------------------------------------------

--
-- Table structure for table `dukuh`
--

CREATE TABLE IF NOT EXISTS `dukuh` (
`id` int(10) unsigned NOT NULL,
  `desa_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='List dukuh dr desa';

--
-- Dumping data for table `dukuh`
--

INSERT INTO `dukuh` (`id`, `desa_id`, `name`) VALUES
(1, 63, 'Gunung Kukusan'),
(2, 63, 'Gunung Rego'),
(3, 64, 'Tegiri'),
(4, 64, 'Sermo Tengah '),
(5, 64, 'Soka'),
(6, 64, 'Clapar'),
(7, 65, 'Papak'),
(8, 66, 'Crangah'),
(9, 66, 'Soropati'),
(10, 66, 'Segajih'),
(11, 66, 'Sekendal'),
(12, 66, 'Sungapan I'),
(13, 66, 'Sungapan II'),
(14, 66, 'Nganti'),
(15, 66, 'Tirto'),
(16, 66, 'Keji'),
(17, 66, 'Teganing 1'),
(18, 66, 'Teganing 2'),
(19, 66, 'Teganing 3'),
(20, 67, 'Beteng'),
(21, 67, 'Banyunganti'),
(22, 67, 'Sumberejo'),
(23, 67, 'Pringtali'),
(24, 67, 'Gunung Kelir'),
(25, 67, 'Sokomoyo'),
(26, 67, 'Kembang');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE IF NOT EXISTS `farmers` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cuc_inspection_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contract_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `register_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `registrar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inspection_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `inspector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `farm_amount` int(10) unsigned NOT NULL,
  `farm_id` int(10) NOT NULL,
  `dukuh_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Petani';

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `name`, `kode`, `cuc_inspection_date`, `contract_date`, `register_date`, `registrar`, `inspection_date`, `inspector`, `farm_amount`, `farm_id`, `dukuh_id`, `created_at`, `updated_at`) VALUES
(1, 'Ismadi', 'HGR 001', '', '20-08-2009', '28-01-2015', 'Repan', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Tumiran', 'HGR 002', '', '18-08-2009', '28-01-2015', 'Daliah', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Sudaryono', 'HGR 003', '', '18-08-2009', '28-01-2015', 'Daliah', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bahrodin', 'HGR 004', '', '18-08-2009', '28-01-2015', 'Daliah', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Sugimin', 'HGR 005', '13-01-2010', '18-08-2009', '28-01-2015', 'Daliah', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Rubiyanto', 'HGR 006', '', '17-08-2009', '24-01-2015', 'Daliah', '24-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Somo Kadi', 'HGR 007', '13-01-2010', '18-08-2009', '25-01-2015', 'Daliah', '25-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Sadimin', 'HGR 008', '', '17-08-2009', '25-01-2015', 'Daliah', '25-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Tukirin', 'HGR 009', '', '18-08-2009', '25-01-2015', 'Daliah', '25-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Kusiran', 'HGR 010', '', '17-06-2009', '20-02-2015', 'Daliah', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Winarno', 'HGR 011', '', '17-08-2009', '25-01-2015', 'Daliah', '25-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Karto Suwito/Sutar', 'HGR 012', '', '18-08-2009', '27-01-2015', 'Repan', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Imam Wahyudi', 'HGR 013', '28-02-2014', '17-08-2009', '25-01-2015', 'Repan', '25-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Darmo S', 'HGR 014', '', '18-08-2009', '27-01-2015', 'Daliyah', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Dul Mu''in', 'HGR 015', '13-01-2010', '18-08-2009', '24-01-2015', 'Daliyah', '24-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Suharno', 'HGR 016', '', '17-08-2009', '28-01-2015', 'Repan', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Amat Danuri', 'HGR 017', '', '18-08-2009', '07-02-2015', 'Repan', '07-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Sri Hartini', 'HGR 018', '', '17-08-2009', '27-01-2015', 'Repan', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Repan', 'HGR 019', '13-01-2010', '18-08-2009', '27-01-2015', 'Repan', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Wagirah/Sumardi', 'HGR 020', '', '23-08-2009', '27-01-2015', 'Repan', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Keman', 'HGR 021', '', '17-08-2009', '27-01-2015', 'Daliyah', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Ngadimin', 'HGR 022', '', '23-08-2009', '05-02-2015', 'Repan', '05-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Sudiman', 'HGR 023', '', '23-08-2009', '23-02-2015', 'Daliyah', '23-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Budiyono', 'HGR 024', '', '08-12-2009', '20-02-2015', 'Repan', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Budi Mulyono/Sagiyo', 'HGR 025', '28-02-2014', '17-08-2009', '02-01-2015', 'Daliyah', '02-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Sukisno', 'HGR 026', '', '18-08-2009', '02-01-2015', 'Repan', '02-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Suraji', 'HGR 027', '', '28-08-2009', '27-01-2015', 'Daliyah', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Sarman', 'HGR 028', '', '17-08-2009', '02-01-2015', 'Sarman', '02-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Kemijo', 'HGR 029', '', '08-12-2009', '12-01-2015', 'Repan', '12-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Kastomo', 'HGR 030', '', '08-12-2009', '29-01-2015', 'Daliah', '29-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Sadiran', 'HGR 031', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Salamun', 'HGR 032', '13-01-2010', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Santoso', 'HGR 033', '', '17-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Tri Mulat A', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Wiro Kariyo', 'HGR 034', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Tayem', 'HGR 035', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Prayitno', 'HGR 036', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Amat Mukidi ', 'HGR 037', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Surojo', 'HGR 038', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Jemiyem', 'HGR 039', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Mujiyono', 'HGR 040', '', '18-08-2009', '21-02-2015', 'Daliah', '21-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Mustakim', 'HGR 041', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Wasiyah', 'HGR 042', '', '23-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Sumardi P.S', 'HGR 043', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Sunarto', 'HGR 044', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Kemidi', 'HGR 045', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Sukamto/Buruh', 'HGR 046', '', '18-08-2009', '22-02-2015', 'Daliyah', '22-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Moh Yadi', 'HGR 047', '', '23-08-2009', '29-01-2015', 'Repan', '29-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Muh Johari/Rubiyem', 'HGR 048', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Siyo ', 'HGR 049', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Jemiran', 'HGR 052', '13-01-2010', '17-08-2009', '28-01-2015', 'Repan', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Kemiran ', 'HGR 053', '', '14-08-2009', '02-02-2015', 'Repan', '02-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Sukiran/Edi P', 'HGR 055', '', '18-08-2009', '19-02-2015', 'Daliyah', '19-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Tukijo', 'HGR 056', '', '23-08-2009', '20-02-2015', 'Daliyah', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Reban', 'HGR 057', '', '18-08-2009', '22-02-2015', 'Daliyah', '22-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Slamet', 'HGR 058', '', '18-08-2009', '20-02-2015', 'Repan', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Pujo S. ', 'HGR 059', '28-02-2014', '23-08-2009', '29-11-2013', 'Daliah', '29-11-2013', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Giyono', 'HGR 061', '', '17-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Kelik Rahman', 'HGR 062', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Prenggo Sumarjo', 'HGR 063', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Moh Kayat/Syolichin', 'HGR 064', '', '18-08-2009', '27-01-2015', 'Daliyah', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Heru Setyawan', 'HGR 065', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Kasiyo', 'HGR 067', '', '18-08-2009', '02-01-2015', 'Daliyah', '02-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Mujiarta', 'HGR 069', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Ny.Rebiyah/Jaiman', 'HGR 071', '', '23-08-2009', '02-01-2015', 'Daliyah', '02-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Rubikem', 'HGR 072', '', '18-08-2009', '25-01-2015', 'Daliyah', '25-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Mangun Gimin', 'HGR 073', '', '18-08-2009', '24-01-2015', 'Repan', '24-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Sonem/Sundul', 'HGR 074', '', '18-08-2009', '10-01-2015', 'Daliyah', '10-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Sarwadi', 'HGR 075', '', '18-08-2009', '19-02-2015', 'Daliyah', '19-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Wagimin', 'HGR 078', '', '18-08-2009', '25-01-2015', 'Daliyah', '25-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Budi Utomo', 'HGR 079', '', '23-08-2009', '21-02-2015', 'Repan', '21-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Somo Rejo', 'HGR 080', '', '23-08-2009', '29-01-2015', 'Daliyah', '29-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Marsudi', 'HGR 081', '', '23-08-2009', '07-02-2015', 'Repan', '07-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Aziz Munasar', 'HGR 082', '', '23-08-2009', '20-01-2015', 'Repan', '20-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Sumaryanto', 'HGR 083', '', '23-08-2009', '20-02-2015', 'Repan', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Gotar Saifudin', 'HGR 084', '', '18-08-2009', '10-01-2015', 'Repan', '10-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Asmo Wiyadi', 'HGR 085', '', '18-08-2009', '29-01-2015', 'Repan', '29-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Aziz Amron', 'HGR 087', '', '18-08-2009', '29-01-2015', 'Repan', '29-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Kasno', 'HGR 088', '', '18-08-2009', '27-01-2015', 'Repan', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Tukimin', 'HGR 090', '', '23-08-2009', '10-02-2015', 'Repan', '10-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Ny,Ngatijem', 'HGR 091', '', '23-08-2009', '20-02-2015', 'Repan', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Sutrisno', 'HGR 092', '', '23-08-2009', '20-02-2015', 'Repan', '20-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Ponidi', 'HGR 093', '', '18-08-2009', '27-01-2015', 'Repan', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Setyo Purnomo', 'HGR 094', '', '18-08-2009', '26-01-2015', 'Repan', '26-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Paijo Sam', 'HGR 095', '', '18-08-2009', '28-01-2015', 'Repan', '28-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Suyatno', 'HGR 096', '', '18-08-2009', '29-01-2015', 'Repan', '29-01-2015', 'Tri Mulat A', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Hadi Utomo', 'HGR 098', '', '18-08-2009', '01-02-2015', 'Repan', '01-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Siswo Wiyadi', 'HGR 099', '', '23-08-2009', '18-11-2013', 'Repan', '18-11-2013', 'Tri Mulat A', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Kariyo Wiyono', 'HGR 100', '', '23-08-2009', '17-11-2013', 'Repan', '17-11-2013', 'Sarjono', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Kemino/Sukiran', 'HGR 101', '', '23-08-2009', '18-11-2013', 'Repan', '18-11-2013', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Suradi', 'HGR 103', '', '23-08-2009', '19-02-2015', 'Repan', '19-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Martono', 'HGR 104', '', '', '27-01-2015', 'Sugimin', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Salinto', 'HGR 106', '', '', '27-01-2015', 'Tri M.A', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Yulian Prabowo', 'HGR 107', '', '', '02-01-2015', 'Santoso', '02-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Sholikin', 'HGR 108', '', '', '25-01-2015', 'Giyati', '25-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Supriyanto', 'HGR 110', '', '', '29-01-2015', 'Sumadi', '29-01-2015', 'Giyati', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Jayadi', 'HGR 111', '', '', '27-01-2015', 'Sumadi', '27-01-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Ismadi/Sari', 'HGR 112', '28-02-2014', '', '25-01-2015', 'Sumadi', '25-01-2015', 'Santoso', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Sarjono', 'HGR 113', '', '', '01-02-2015', 'Sumadi', '01-02-2015', 'Sumadi', 1, 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE IF NOT EXISTS `farms` (
`id` int(10) unsigned NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `farmer_kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kode petani',
  `hectarage` decimal(5,2) NOT NULL COMMENT 'Luas kebun (ha)',
  `squaremeter` int(11) NOT NULL COMMENT 'Luas kebun (m3)',
  `ccnut_tree_amount` int(10) NOT NULL COMMENT 'Jumlah pohon kelapa',
  `ccnut_dideres_amount` int(10) NOT NULL COMMENT 'Jumlah pohon kelapa dideres',
  `penderes_status` int(11) NOT NULL COMMENT 'Status Penderes: ndreres sendiri, maro, sendiri & maro, ',
  `organic_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Organik, konvensional, konversi',
  `specific_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Keterangan khusus. (Misal : Lahan sawah, tegal,kebun dll',
  `other_organic_trees` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tanaman organik lain',
  `chemical_last_use` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tanggal terakhir pemakaian input kimia',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Kebun kelapa';

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`id`, `farmer_id`, `farmer_kode`, `hectarage`, `squaremeter`, `ccnut_tree_amount`, `ccnut_dideres_amount`, `penderes_status`, `organic_status`, `specific_desc`, `other_organic_trees`, `chemical_last_use`, `created_at`, `updated_at`) VALUES
(1, 0, 'HGR 001', 0.63, 6300, 35, 15, 2, 'Organik', 'Kebun', 'rambutan, mlinjo, sengon, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 'HGR 002', 0.70, 7000, 35, 25, 3, 'Organik', 'Kebun', 'mahoni, pisang, salak, nangka, rambutan', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 'HGR 003', 0.79, 7900, 60, 50, 3, 'Organik', 'Kebun', 'pisang, mahoni, melinjo, cengkeh', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 0, 'HGR 004', 0.53, 5300, 40, 25, 2, 'Organik', 'Kebun', 'mahoni, kakao, jeruk, rambutan, pakel', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 0, 'HGR 005', 1.50, 15000, 80, 70, 1, 'Organik', 'Kebun', 'kopi, salak, mahoni, cengkeh', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 0, 'HGR 006', 0.40, 4000, 40, 25, 2, 'Organik', 'Kebun', 'mahoni, kakao, pisang, melinjo', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 0, 'HGR 007', 1.50, 15000, 65, 40, 3, 'Organik', 'Kebun', 'Pisang,Kakao, durian, mahoni, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 0, 'HGR 008', 0.30, 3000, 25, 20, 3, 'Organik', 'Kebun', 'pisang, melinjo, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 0, 'HGR 009', 0.50, 5000, 40, 30, 1, 'Organik', 'Kebun', 'pisang, mahoni, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 0, 'HGR 010', 0.30, 3000, 27, 24, 3, 'Organik', 'Kebun', 'mahoni, jati, kakao, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 0, 'HGR 011', 0.05, 500, 40, 30, 1, 'Organik', 'Kebun', 'pisang, mahoni, jeruk', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 0, 'HGR 012', 0.60, 6000, 35, 25, 1, 'Organik', 'Kebun', 'pisang, nangka, durian', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 0, 'HGR 013', 0.50, 5000, 50, 40, 2, 'Organik', 'Kebun', 'pisang, salak, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 0, 'HGR 014', 0.25, 2500, 50, 45, 1, 'Organik', 'Kebun', 'pisang, mahoni, salak, nangka', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 0, 'HGR 015', 1.00, 10000, 30, 25, 1, 'Organik', 'Kebun', 'kakao, salak, pisang, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 0, 'HGR 016', 1.00, 10000, 80, 40, 2, 'Organik', 'Kebun', 'durian, mahoni, manggis, salak, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 0, 'HGR 017', 0.50, 5000, 35, 25, 0, 'Organik', 'Kebun', 'pisang, salak, empon-empon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 0, 'HGR 018', 0.15, 1500, 50, 40, 2, 'Organik', 'Kebun', 'mahoni, kakao, manggis, aren, durian', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 0, 'HGR 019', 1.00, 10000, 40, 25, 1, 'Organik', 'Kebun', 'mahoni, durian, kakao, jahe,nangka', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 0, 'HGR 020', 0.25, 2500, 39, 16, 2, 'Organik', 'Kebun', 'pisang, salak, temu', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 0, 'HGR 021', 0.50, 5000, 42, 35, 2, 'Organik', 'Kebun', 'salak, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 0, 'HGR 022', 1.00, 10000, 70, 40, 2, 'Organik', 'Kebun', 'pisang, ketela, kakao, mangga, empon-empon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 0, 'HGR 023', 1.00, 10000, 50, 40, 1, 'Organik', 'Kebun', 'Pisang,Kakao,Mlinjo,Mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 0, 'HGR 024', 1.00, 10000, 35, 30, 1, 'Organik', 'Kebun', 'mahoni, pisang, kakao, empon-empon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 0, 'HGR 025', 1.00, 10000, 58, 50, 1, 'Organik', 'Kebun', 'mahoni, kakao, pisang, nanas, salak, melinjo', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 0, 'HGR 026', 0.25, 2500, 25, 8, 2, 'Organik', 'Kebun', 'pepaya, mahoni, jati, pisang, ketela, karet', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 0, 'HGR 027', 0.79, 7900, 17, 12, 2, 'Organik', 'Kebun', 'Pisang,Mahoni,Kakao, jati, mahoni, sengon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 0, 'HGR 028', 0.30, 3000, 27, 22, 2, 'Organik', 'Kebun', '', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 0, 'HGR 029', 0.20, 2000, 15, 10, 2, 'Organik', 'Kebun', '', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 0, 'HGR 030', 0.25, 2500, 25, 10, 2, 'Organik', 'Kebun', 'kedondong, pisang, salak, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 0, 'HGR 031', 0.60, 6000, 60, 46, 1, 'Organik', 'Kebun', 'mahoni, kopi, kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 0, 'HGR 032', 0.42, 4200, 40, 35, 1, 'Organik', 'Kebun', 'kakao, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 0, 'HGR 033', 0.45, 4500, 43, 37, 1, 'Organik', 'Kebun', 'melinjo, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 0, 'HGR 034', 0.45, 4500, 40, 25, 2, 'Organik', 'Kebun', 'pete, mahoni, kopi', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 0, 'HGR 035', 0.45, 4500, 25, 20, 1, 'Organik', 'Kebun', 'Pisang,Kakao,Mahoni,jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 0, 'HGR 036', 0.40, 4000, 25, 20, 1, 'Organik', 'Kebun', 'durian mahoni, kopi', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 0, 'HGR 037', 0.30, 3000, 37, 20, 1, 'Organik', 'Kebun', 'pisang, rambutan, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 0, 'HGR 038', 0.43, 4300, 35, 30, 2, 'Organik', 'Kebun', 'kopi, jati, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 0, 'HGR 039', 0.63, 6300, 42, 25, 1, 'Organik', 'Kebun', 'kelapa, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 0, 'HGR 040', 0.60, 6000, 27, 13, 3, 'Organik', 'Kebun', 'pisang, tales, bambu, pepaya, temu, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 0, 'HGR 041', 0.35, 3500, 30, 25, 1, 'Organik', 'Kebun', 'pisang, cengkeh, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 0, 'HGR 042', 0.30, 3000, 32, 16, 2, 'Organik', 'Kebun', 'Pisang,Mahoni,Kakao, temu, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 0, 'HGR 043', 0.60, 6000, 25, 15, 2, 'Organik', 'Kebun', 'mahoni, nangka', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 0, 'HGR 044', 0.40, 4000, 25, 15, 2, 'Organik', 'Kebun', 'Kakao,Pisang, temu, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 0, 'HGR 045', 0.20, 2000, 22, 12, 1, 'Organik', 'Kebun', 'kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 0, 'HGR 046', 0.60, 6000, 45, 25, 0, 'Organik', 'Kebun', 'Kakao,Pisang, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 0, 'HGR 047', 1.00, 10000, 32, 14, 2, 'Organik', 'Kebun', 'pisang, tales, mahoni, jati, kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 0, 'HGR 048', 0.50, 5000, 18, 12, 1, 'Organik', 'Kebun', 'Kakao, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 0, 'HGR 049', 0.30, 3000, 28, 18, 3, 'Organik', 'Kebun', 'mahoni, melinjo', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 0, 'HGR 052', 0.10, 1000, 50, 37, 1, 'Organik', 'Kebun', 'pisang, mahoni, kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 0, 'HGR 053', 0.25, 2500, 60, 30, 1, 'Organik', 'Kebun', 'kakao, pisang, empon-empon, kaliandra, sayuran', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 0, 'HGR 055', 0.22, 2200, 26, 10, 1, 'Organik', 'Kebun', 'cengkeh, kakao, pisang, empon-empon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 0, 'HGR 056', 0.25, 2500, 55, 21, 1, 'Organik', 'Kebun', 'kakao, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 0, 'HGR 057', 0.25, 2500, 35, 15, 3, 'Organik', 'Kebun', 'melinjo, mahoni, jati, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 0, 'HGR 058', 0.60, 6000, 40, 20, 0, 'Organik', 'Kebun', 'jahe, temu, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 0, 'HGR 059', 0.50, 5000, 19, 9, 1, 'Organik', 'Kebun', 'mahoni, salak', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 0, 'HGR 061', 0.20, 2000, 19, 16, 0, 'Organik', 'Kebun', 'kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 0, 'HGR 062', 0.20, 2000, 23, 10, 0, 'Organik', 'Kebun', 'mahoni, cengkeh, durian', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 0, 'HGR 063', 1.00, 10000, 65, 40, 0, 'Organik', 'Kebun', 'mahoni, kopi', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 0, 'HGR 064', 0.50, 5000, 40, 37, 0, 'Organik', 'Kebun', 'kakao, mahoni, jati, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 0, 'HGR 065', 0.50, 5000, 60, 35, 0, 'Organik', 'Kebun', 'pisang, mahoni, kakao, durian, salak, manggis', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 0, 'HGR 067', 0.50, 5000, 40, 25, 3, 'Organik', 'Kebun', 'kaliandra, kakao, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 0, 'HGR 069', 0.70, 7000, 29, 20, 0, 'Organik', 'Kebun', 'mahoni, kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 0, 'HGR 071', 0.40, 4000, 45, 20, 2, 'Organik', 'Kebun', 'temu, asem, bambu, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 0, 'HGR 072', 0.50, 5000, 45, 20, 0, 'Organik', 'Kebun', 'mahoni, jati, cengkeh, pete', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 0, 'HGR 073', 0.30, 3000, 25, 15, 0, 'Organik', 'Kebun', 'pisang, mahoni ', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 0, 'HGR 074', 0.30, 3000, 65, 50, 0, 'Organik', 'Kebun', 'mahoni, pete, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 0, 'HGR 075', 0.50, 5000, 65, 50, 3, 'Organik', 'Kebun', 'pisang, kakao, melinjo', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 0, 'HGR 078', 0.30, 3000, 25, 20, 0, 'Organik', 'Kebun', 'mahoni, rambutan, salak', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 0, 'HGR 079', 1.00, 10000, 52, 40, 2, 'Organik', 'Kebun', 'kakao, mahoni, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 0, 'HGR 080', 0.15, 1500, 42, 12, 2, 'Organik', 'Kebun', 'melinjo, kakao,jeruk, salak, mahoni, jahe, durian', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 0, 'HGR 081', 1.00, 10000, 50, 20, 1, 'Organik', 'Kebun', 'pisang, kakao, melinjo', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 0, 'HGR 082', 1.00, 10000, 60, 20, 1, 'Organik', 'Kebun', 'Kakao,Pisang,Mahoni, albasia', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 0, 'HGR 083', 1.00, 10000, 60, 20, 2, 'Organik', 'Kebun', 'Kakao,Pisang, melinjo', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 0, 'HGR 084', 0.20, 2000, 40, 25, 0, 'Organik', 'Kebun', 'kakao, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 0, 'HGR 085', 0.15, 1500, 36, 9, 2, 'Organik', 'Kebun', 'tales, jahe, nanas, mahoni, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 0, 'HGR 087', 0.15, 1500, 22, 12, 1, 'Organik', 'Kebun', 'pisang, mahoni', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 0, 'HGR 088', 0.30, 3000, 40, 25, 1, 'Organik', 'Kebun', 'pisang, pete, nanas', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 0, 'HGR 090', 1.00, 10000, 63, 40, 2, 'Organik', 'Kebun', 'pisang, kakao, so, empon-empon, nangka, aren', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 0, 'HGR 091', 0.50, 5000, 40, 27, 2, 'Organik', 'Kebun', 'Pisang,Mahoni,Kakao, caliandra', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 0, 'HGR 092', 1.50, 15000, 75, 40, 1, 'Organik', 'Kebun', 'pisang, kakao, so, pepaya, sayuran', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 0, 'HGR 093', 0.30, 3000, 16, 9, 2, 'Organik', 'Kebun', '', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 0, 'HGR 094', 1.00, 10000, 40, 25, 0, 'Organik', 'Kebun', 'kakao, mahoni, cengkeh', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 0, 'HGR 095', 0.40, 4000, 50, 30, 2, 'Organik', 'Kebun', 'kakao, mahoni, salak', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 0, 'HGR 096', 1.00, 10000, 32, 14, 2, 'Organik', 'Kebun', 'mahoni, jambu, tales, jahe, bambu', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 0, 'HGR 098', 0.50, 5000, 25, 17, 2, 'Organik', 'Kebun', 'Pisang,Kakao,Mahoni, kaliandra, empon-empon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 0, 'HGR 099', 1.00, 10000, 26, 13, 1, 'Organik', 'Kebun', 'mahoni, bambu, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 0, 'HGR 100', 0.50, 5000, 26, 15, 1, 'Organik', 'Kebun', 'mahoni, pisang', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 0, 'HGR 101', 0.10, 1000, 27, 18, 1, 'Organik', 'Kebun', 'mahoni, pisang, bambu', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 0, 'HGR 103', 1.00, 10000, 70, 30, 0, 'Organik', 'Kebun', 'mahoni, pisang, kakao', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 0, 'HGR 104', 0.70, 7000, 25, 20, 2, 'Konversi', 'Pekarangan', 'kakao, mahoni, rambutan, durian, pisang, nangka', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 0, 'HGR 106', 0.60, 6000, 20, 15, 0, 'Konversi', 'Pekarangan', 'pisang, mahoni, akasia, jati, pete, sengon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 0, 'HGR 107', 0.50, 5000, 21, 8, 2, 'Konversi', 'Pekarangan', '', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 0, 'HGR 108', 0.50, 5000, 40, 17, 0, 'Konversi', 'Pekarangan', 'kakao, mahoni, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 0, 'HGR 110', 0.50, 5000, 32, 16, 2, 'Konversi', 'Pekarangan', 'pisang, ketela, mahoni, jati', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 0, 'HGR 111', 0.25, 2500, 23, 13, 0, 'Konversi', 'Pekarangan', 'mahoni, akasia, pisang, temu', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 0, 'HGR 112', 0.05, 500, 20, 15, 0, 'Konversi', 'Pekarangan', 'jati, mahoni, pisang, salak', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 0, 'HGR 113', 1.50, 15000, 125, 47, 2, 'Konversi', 'Kebun', 'pisang, kakao, alpukat, so, pisang, empon-empon', 'Tidak menggunakan pupuk kimia', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inspectors`
--

CREATE TABLE IF NOT EXISTS `inspectors` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nama Inspektor',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Nama inspektor';

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE IF NOT EXISTS `kecamatan` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='List kec dr kab KP';

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `name`) VALUES
(1, 'Temon'),
(2, 'Wates'),
(3, 'Panjatan'),
(4, 'Galur'),
(5, 'Lendah'),
(6, 'Sentolo'),
(7, 'Pengasih'),
(8, 'Kokap'),
(9, 'Girimulyo'),
(10, 'Nanggulan'),
(11, 'Samigaluh'),
(12, 'Kalibawang');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_07_05_111905_create_visitors_table', 1),
('2014_07_05_144447_create_articles_table', 1),
('2014_07_05_152557_create_options_table', 1),
('2014_07_07_005653_create_categories_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_11_02_051938_create_roles_table', 1),
('2014_11_02_052125_create_permissions_table', 1),
('2014_11_02_052410_create_role_user_table', 1),
('2014_11_02_092851_create_permission_role_table', 1),
('2015_09_21_021405_create_farmers_table', 1),
('2015_09_21_054041_create_farms_table', 1),
('2015_09_21_202655_create_productions_table', 1),
('2015_09_21_202722_create_other_plants_table', 1),
('2015_09_21_202747_create_desc_nderes_table', 1),
('2015_09_21_202822_create_inspectors_table', 1),
('2015_09_21_202839_create_registrars_table', 1),
('2015_09_21_204053_create_dukuh_table', 1),
('2015_09_21_204102_create_desa_table', 1),
('2015_09_21_204140_create_kecamatan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
`id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_trees`
--

CREATE TABLE IF NOT EXISTS `other_trees` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nama tanaman lain',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Jenis tanaman organik lain';

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
`id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE IF NOT EXISTS `productions` (
`id` int(10) unsigned NOT NULL,
  `farm_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `amount_kg_5` decimal(3,3) NOT NULL COMMENT 'Hasil produksi (kg) umur pohon 5-10th',
  `amount_kg_10` decimal(3,3) NOT NULL COMMENT 'Hasil produksi (kg) umur pohon >10th',
  `amount_gr` int(11) NOT NULL COMMENT 'Hasil per pohon (gram)',
  `estimation_daily` int(11) NOT NULL COMMENT 'Perkiraan produksi (kg/hr/kebun)',
  `estimation_yearly` int(11) NOT NULL COMMENT 'Jumlah perkiraan produksi per tahun',
  `estimation_monthly` int(11) NOT NULL COMMENT 'Jumlah perkiraan produksi kelapa per bulan',
  `year` year(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Jumlah & perkiraan produksi';

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `farm_id`, `farmer_id`, `amount_kg_5`, `amount_kg_10`, `amount_gr`, `estimation_daily`, `estimation_yearly`, `estimation_monthly`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.000, 0.133, 133, 2, 720, 60, 2015, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 2, 0.000, 0.400, 400, 10, 3600, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 3, 0.000, 0.200, 200, 10, 3600, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 4, 0.000, 0.200, 200, 5, 1800, 110, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 5, 0.000, 0.143, 143, 10, 3600, 105, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 6, 0.000, 0.200, 200, 5, 1800, 120, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 7, 0.000, 0.200, 200, 8, 2880, 180, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 8, 0.000, 0.200, 200, 4, 1440, 35, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 9, 0.000, 0.200, 200, 6, 2160, 20, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 10, 0.000, 0.333, 333, 8, 2880, 120, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 11, 11, 0.000, 0.200, 200, 6, 2160, 30, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 12, 12, 0.000, 0.200, 200, 5, 1800, 71, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 13, 13, 0.000, 0.200, 200, 8, 2880, 115, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 14, 0.000, 0.111, 111, 5, 1800, 75, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 15, 0.000, 0.200, 200, 5, 1800, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 16, 0.000, 0.225, 225, 9, 3240, 300, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 17, 0.000, 0.080, 80, 2, 720, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 18, 18, 0.000, 0.200, 200, 8, 2880, 140, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 19, 19, 0.000, 0.320, 320, 8, 2880, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, 20, 0.000, 0.563, 563, 9, 3240, 90, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 21, 21, 0.000, 0.229, 229, 8, 2880, 75, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 22, 22, 0.000, 0.250, 250, 10, 3600, 60, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 23, 23, 0.000, 0.125, 125, 5, 1800, 40, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 24, 24, 0.000, 0.267, 267, 8, 2880, 21, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 25, 25, 0.000, 0.240, 240, 12, 4320, 30, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 26, 26, 0.000, 0.500, 500, 4, 1440, 70, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 27, 27, 0.000, 0.500, 500, 6, 2160, 39, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 28, 28, 0.000, 0.364, 364, 8, 2880, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 29, 29, 0.000, 0.400, 400, 4, 1440, 15, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 30, 30, 0.000, 0.400, 400, 4, 1440, 70, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 31, 31, 0.000, 0.185, 185, 9, 3060, 200, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 32, 32, 0.000, 0.200, 200, 7, 2520, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 33, 33, 0.000, 0.135, 135, 5, 1800, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 34, 34, 0.000, 0.200, 200, 5, 1800, 100, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 35, 35, 0.000, 0.200, 200, 4, 1440, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 36, 36, 0.000, 0.200, 200, 4, 1440, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 37, 37, 0.000, 0.225, 225, 5, 1620, 48, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 38, 38, 0.000, 0.200, 200, 6, 2160, 21, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 39, 39, 0.000, 0.140, 140, 4, 1260, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 40, 40, 0.000, 0.308, 308, 4, 1440, 250, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 41, 41, 0.000, 0.320, 320, 8, 2880, 17, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 42, 42, 0.000, 0.250, 250, 4, 1440, 36, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 43, 43, 0.000, 0.300, 300, 5, 1620, 56, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 44, 44, 0.000, 0.300, 300, 5, 1620, 27, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 45, 45, 0.000, 0.208, 208, 3, 900, 30, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 46, 46, 0.000, 0.200, 200, 5, 1800, 120, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 47, 47, 0.000, 0.214, 214, 3, 1080, 42, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 48, 48, 0.000, 0.333, 333, 4, 1440, 25, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 49, 49, 0.000, 0.250, 250, 5, 1620, 42, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 50, 50, 0.000, 0.216, 216, 8, 2880, 35, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 51, 51, 0.000, 0.167, 167, 5, 1800, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 52, 52, 0.000, 0.300, 300, 3, 1080, 52, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 53, 53, 0.000, 0.190, 190, 4, 1440, 47, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 54, 54, 0.000, 0.333, 333, 5, 1800, 130, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 55, 55, 0.000, 0.250, 250, 5, 1800, 47, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 56, 56, 0.000, 0.333, 333, 3, 1080, 320, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 57, 57, 0.000, 0.188, 188, 3, 1080, 17, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 58, 58, 0.000, 0.450, 450, 5, 1620, 57, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 59, 59, 0.000, 0.225, 225, 9, 3240, 70, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 60, 60, 0.000, 0.270, 270, 10, 3600, 40, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 61, 61, 0.000, 0.229, 229, 8, 2880, 120, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 62, 62, 0.000, 0.240, 240, 6, 2160, 60, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 63, 63, 0.000, 0.300, 300, 6, 2160, 80, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 64, 64, 0.000, 0.275, 275, 6, 1980, 210, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 65, 65, 0.000, 0.300, 300, 6, 2160, 85, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 66, 66, 0.000, 0.267, 267, 4, 1440, 90, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 67, 67, 0.000, 0.180, 180, 9, 3240, 105, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 68, 68, 0.000, 0.120, 120, 6, 2160, 115, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 69, 69, 0.000, 0.200, 200, 4, 1440, 85, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 70, 70, 0.000, 0.275, 275, 11, 3960, 65, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 71, 71, 0.000, 0.250, 250, 3, 1080, 250, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 72, 72, 0.000, 0.275, 275, 6, 1980, 180, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 73, 73, 0.000, 0.300, 300, 6, 2160, 200, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 74, 74, 0.000, 0.300, 300, 6, 2160, 200, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 75, 75, 0.000, 0.200, 200, 5, 1800, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 76, 76, 0.000, 0.333, 333, 3, 1080, 150, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 77, 77, 0.000, 0.167, 167, 2, 720, 60, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 78, 78, 0.000, 0.480, 480, 12, 4320, 110, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 79, 79, 0.000, 0.300, 300, 12, 4320, 143, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 80, 80, 0.000, 0.204, 204, 6, 1980, 163, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 81, 81, 0.000, 0.300, 300, 12, 4320, 310, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 82, 82, 0.000, 0.667, 667, 6, 2160, 26, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 83, 83, 0.000, 0.200, 200, 5, 1800, 40, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 84, 84, 0.000, 0.167, 167, 5, 1800, 120, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 85, 85, 0.000, 0.286, 286, 4, 1440, 270, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 86, 86, 0.000, 0.176, 176, 3, 1080, 79, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 87, 87, 0.000, 0.308, 308, 4, 1440, 79, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 88, 88, 0.000, 0.267, 267, 4, 1440, 55, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 89, 89, 0.000, 0.222, 222, 4, 1440, 190, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 90, 90, 0.000, 0.200, 200, 6, 2160, 230, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 91, 91, 0.000, 0.250, 250, 5, 1800, 50, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 92, 92, 0.000, 0.267, 267, 4, 1440, 20, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 93, 93, 0.000, 0.625, 625, 5, 1800, 36, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 94, 94, 0.000, 0.206, 206, 4, 1260, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 95, 95, 0.000, 0.250, 250, 4, 1440, 30, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 96, 96, 0.000, 0.423, 423, 6, 1980, 36, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 97, 97, 0.000, 0.333, 333, 5, 1800, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 98, 98, 0.000, 0.213, 213, 10, 3600, 0, 0000, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registrars`
--

CREATE TABLE IF NOT EXISTS `registrars` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nama Pendaftar',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Nama pendaftar';

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Administrator', '2015-09-21 21:41:39', '2015-09-21 21:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
`id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2015-09-21 21:41:39', '2015-09-21 21:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@eadmin.co', '$2y$10$3mZ/VEg09LRUCv/iGFzIr.KBLZWXAY6fJftMq/XeOPhnfVrG13gBG', 'GkZ6heG0NTe6RntogWriAsaePlYrTYiECzmHcNdGsy2GuEtgK4L6cRtfKNSb', '2015-09-21 21:41:39', '2015-10-08 20:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
`id` int(10) unsigned NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dukuh`
--
ALTER TABLE `dukuh`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `farmers_kode_unique` (`kode`);

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
 ADD PRIMARY KEY (`id`), ADD KEY `farms_farmer_kode_foreign` (`farmer_kode`);

--
-- Indexes for table `inspectors`
--
ALTER TABLE `inspectors`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `options_key_unique` (`key`);

--
-- Indexes for table `other_trees`
--
ALTER TABLE `other_trees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
 ADD PRIMARY KEY (`id`), ADD KEY `permission_role_permission_id_index` (`permission_id`), ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrars`
--
ALTER TABLE `registrars`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
 ADD PRIMARY KEY (`id`), ADD KEY `role_user_role_id_index` (`role_id`), ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `dukuh`
--
ALTER TABLE `dukuh`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `farms`
--
ALTER TABLE `farms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `inspectors`
--
ALTER TABLE `inspectors`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `other_trees`
--
ALTER TABLE `other_trees`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `registrars`
--
ALTER TABLE `registrars`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
