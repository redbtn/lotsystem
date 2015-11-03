-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2015 at 02:01 PM
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
-- Table structure for table `cpu`
--

CREATE TABLE IF NOT EXISTS `cpu` (
`id` int(10) unsigned NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'CPU/Warehouse',
  `pic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `kode`, `location`, `type`, `pic_name`, `created_at`, `updated_at`) VALUES
(1, 'D-08', 'Gunung Kelir', 'Warehouse', 'Paiman', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'D-09', 'Banyuganti', 'Warehouse', 'Sumarlan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'D-24', 'Nanggulan', 'CPU', 'Lukito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'D-25', 'Sungapan I', 'CPU', 'Ratip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'D-29', 'Soropati', 'Warehouse', 'Rahmadi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'D-30', 'Sekendal', 'CPU', 'Biyartono', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'D-31', 'Gunung Kukusan', 'CPU', 'Mitro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'D-32', 'Koperasi', 'Warehouse', 'Nuryani', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `packagings`
--

CREATE TABLE IF NOT EXISTS `packagings` (
`id` int(10) unsigned NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kode Packing',
  `cpu_id` int(11) NOT NULL,
  `date_in` date NOT NULL COMMENT 'Tgl Masuk',
  `amount` int(11) NOT NULL COMMENT 'Jumlah (kg)',
  `price` int(11) NOT NULL COMMENT 'Harga',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `processings`
--

CREATE TABLE IF NOT EXISTS `processings` (
`id` int(10) unsigned NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `cpu_id` int(11) NOT NULL,
  `date_in` date NOT NULL COMMENT 'Tgl masuk',
  `amount` int(11) NOT NULL COMMENT 'Jumlah dlm kg',
  `jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Jenis gula cetak/semut',
  `price` int(11) NOT NULL COMMENT 'Harga',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packagings`
--
ALTER TABLE `packagings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processings`
--
ALTER TABLE `processings`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `packagings`
--
ALTER TABLE `packagings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `processings`
--
ALTER TABLE `processings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
