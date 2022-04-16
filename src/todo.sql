-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2022 at 04:05 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontrol`
--

DROP TABLE IF EXISTS `kontrol`;
CREATE TABLE IF NOT EXISTS `kontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yetki` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `kontrol`
--

INSERT INTO `kontrol` (`id`, `mail`, `sifre`, `yetki`) VALUES
(19, 'baris@manco.com', '123456456987', 2),
(3, 'besiraydemir.com', '123456', 3),
(4, 'besiraydemir.com', '123456', 7),
(5, 'baris@manco.com', '123456456987', 2),
(6, 'mail@gmamail.com', '456987', 9),
(7, 'baris@manco.com', '123456456987', 2),
(8, 'mail@gmamail.com', '456987', 9),
(9, 'baris@manco.com', '123456456987', 2),
(10, 'mail@gmamail.com', '456987', 9),
(11, 'baris@manco.com', '11111111111', 2),
(12, 'mail@gmamail.com', '6666', 9),
(13, 'baris@manco.com', '123456456987', 2),
(14, 'mail@gmamail.com', '456987', 9),
(15, 'baris@manco.com', '123456456987', 2),
(16, 'mail@gmamail.com', '456987', 9),
(17, 'baris@manco.com', '123456456987', 2),
(18, 'mail@gmamail.com', '456987', 9),
(20, 'mail@gmamail.com', '456987', 9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
