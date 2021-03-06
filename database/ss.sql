-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 03-Fev-2017 às 11:38
-- Versão do servidor: 5.5.53-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `ss`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE IF NOT EXISTS `animal` (
  `id_animal` int(11) NOT NULL AUTO_INCREMENT,
  `definition` varchar(100) NOT NULL,
  `updated` tinyint(1) NOT NULL,
  `first_config` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_animal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`id_animal`, `definition`, `updated`, `first_config`) VALUES
(1, 'Primeiro Animal- testes', 0, 1),
(2, 'animal 2 de teste', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal_zone`
--

CREATE TABLE IF NOT EXISTS `animal_zone` (
  `id_zone` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id_field` int(11) NOT NULL,
  PRIMARY KEY (`id_zone`,`id_animal`,`id_field`),
  KEY `id_animal` (`id_animal`),
  KEY `id_zone` (`id_zone`),
  KEY `id_field` (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `definition` varchar(100) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `id_user` int(11) NOT NULL,
  `latitude2` float NOT NULL,
  `longitude2` float NOT NULL,
  PRIMARY KEY (`id_field`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `field`
--

INSERT INTO `field` (`id_field`, `definition`, `latitude`, `longitude`, `id_user`, `latitude2`, `longitude2`) VALUES
(1, 'primeiro field Teste', 41.5013, -8.34993, 46, 41.5035, -8.34756);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historic`
--

CREATE TABLE IF NOT EXISTS `historic` (
  `id_historic` int(11) NOT NULL AUTO_INCREMENT,
  `date` float NOT NULL,
  `temperature` float NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `battery` float NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id_zone` int(11) NOT NULL,
  `id_field` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_historic`),
  KEY `id_animal` (`id_animal`),
  KEY `id_zone` (`id_zone`),
  KEY `id_field` (`id_field`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=249 ;

--
-- Extraindo dados da tabela `historic`
--

INSERT INTO `historic` (`id_historic`, `date`, `temperature`, `latitude`, `longitude`, `battery`, `id_animal`, `id_zone`, `id_field`, `time`) VALUES
(38, 0, 25, 41.5018, 2.738, 0, 1, 1, 1, '0000-00-00 00:00:00'),
(39, 0, 25.2, 41.5018, 2.738, 0, 1, 1, 1, '0000-00-00 00:00:00'),
(40, 0, 24.8, 41.5018, -8.3484, 2.738, 1, 1, 1, '0000-00-00 00:00:00'),
(41, 0, 24.8, 41.5018, -8.3484, 2.738, 1, 1, 1, '0000-00-00 00:00:00'),
(42, 0, 24.8, 41.5018, -8.3484, 2.738, 1, 1, 1, '0000-00-00 00:00:00'),
(43, 0, 24.8, 41.5018, -8.3484, 2.738, 1, 1, 1, '0000-00-00 00:00:00'),
(44, 0, 21.4, 41.5018, -8.3484, 2.726, 1, 1, 1, '0000-00-00 00:00:00'),
(45, 0, 21.4, 41.5018, -8.3484, 2.726, 1, 1, 1, '0000-00-00 00:00:00'),
(46, 0, 21.2, 41.5018, -8.3484, 2.726, 1, 1, 1, '0000-00-00 00:00:00'),
(47, 0, 20.4, 41.5018, -8.3484, 2.732, 1, 1, 1, '0000-00-00 00:00:00'),
(48, 0, 20.6, 41.5018, -8.3484, 2.732, 1, 1, 1, '0000-00-00 00:00:00'),
(49, 0, 20.6, 41.5018, -8.3484, 2.734, 1, 1, 1, '0000-00-00 00:00:00'),
(50, 0, 20.6, 41.5018, -8.3484, 2.732, 1, 1, 1, '0000-00-00 00:00:00'),
(51, 0, 20.6, 41.5018, -8.3484, 2.734, 1, 1, 1, '0000-00-00 00:00:00'),
(52, 0, 23.8, 41.5018, -8.3484, 29.0539, 1, 1, 1, '0000-00-00 00:00:00'),
(53, 0, 23.8, 41.5018, -8.3484, 29.0539, 1, 1, 1, '0000-00-00 00:00:00'),
(54, 0, 23.8, 41.5018, -8.3484, 29.0539, 1, 1, 1, '0000-00-00 00:00:00'),
(55, 0, 23.8, 41.5018, -8.3484, 29.0539, 1, 1, 1, '0000-00-00 00:00:00'),
(56, 0, 24, 41.5018, -8.3484, 28.7357, 1, 1, 1, '0000-00-00 00:00:00'),
(57, 0, 24, 41.5018, -8.3484, 29.0539, 1, 1, 1, '0000-00-00 00:00:00'),
(58, 0, 24, 41.5018, -8.3484, 29.0539, 1, 1, 1, '0000-00-00 00:00:00'),
(59, 0, 24, 41.5018, -8.3484, 28.7357, 1, 1, 1, '0000-00-00 00:00:00'),
(60, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(61, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(62, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(63, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(64, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(65, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(66, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(67, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(68, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(69, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(70, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(71, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(72, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(73, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(74, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(75, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(76, 0, 25.6, 41.5018, -8.3484, 28.0994, 1, 1, 1, '0000-00-00 00:00:00'),
(77, 0, 25.6, 41.5018, -8.3484, 28.0994, 1, 1, 1, '0000-00-00 00:00:00'),
(78, 0, 24.2, 41.5018, -8.3484, 28.0994, 1, 1, 1, '0000-00-00 00:00:00'),
(79, 0, 24.2, 41.5018, -8.3484, 28.0994, 1, 1, 1, '0000-00-00 00:00:00'),
(80, 0, 24, 41.5018, -8.3484, 28.0994, 1, 1, 1, '0000-00-00 00:00:00'),
(81, 0, 24, 41.5018, -8.3484, 27.1448, 1, 1, 1, '0000-00-00 00:00:00'),
(82, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(83, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(84, 0, 24, 41.5018, -8.3484, 27.1448, 1, 1, 1, '0000-00-00 00:00:00'),
(85, 0, 24, 41.5018, -8.3484, 27.1448, 1, 1, 1, '0000-00-00 00:00:00'),
(86, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(87, 0, 24.2, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(88, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(89, 0, 24, 41.5018, -8.3484, 27.1448, 1, 1, 1, '0000-00-00 00:00:00'),
(90, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(91, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(92, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(93, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(94, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(95, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(96, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(97, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(98, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(99, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(100, 0, 24.2, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(101, 0, 24, 41.5018, -8.3484, 27.463, 1, 1, 1, '0000-00-00 00:00:00'),
(102, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(103, 0, 24, 41.5018, -8.3484, 27.7812, 1, 1, 1, '0000-00-00 00:00:00'),
(104, 15, 24, 41.5018, -8.3484, 26.8266, 1, 1, 1, '2017-02-02 02:47:16'),
(105, 15, 24, 41.5018, -8.3484, 26.8266, 1, 1, 1, '2017-02-02 02:47:21'),
(106, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:24'),
(107, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:30'),
(108, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:35'),
(109, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:40'),
(110, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:45'),
(111, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:50'),
(112, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:09:55'),
(113, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:00'),
(114, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:05'),
(115, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:10'),
(116, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:15'),
(117, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:20'),
(118, 15, 24.4, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:25'),
(119, 15, 24.6, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:30'),
(120, 15, 24.4, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:35'),
(121, 15, 24.4, 41.5018, -8.3484, 24.9175, 1, 1, 1, '2017-02-02 03:10:40'),
(122, 15, 22.4, 41.5018, -8.3484, 80.5994, 1, 1, 1, '2017-02-02 17:21:53'),
(123, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:21:59'),
(124, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:04'),
(125, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:09'),
(126, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:14'),
(127, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:19'),
(128, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:24'),
(129, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:29'),
(130, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:34'),
(131, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:39'),
(132, 15, 22.6, 41.5018, -8.3484, 81.2357, 1, 1, 1, '2017-02-02 17:22:44'),
(133, 15, 23, 41.5018, -8.3484, 80.2812, 1, 1, 1, '2017-02-02 17:26:09'),
(134, 15, 23.2, 41.5018, -8.3484, 80.2812, 1, 1, 1, '2017-02-02 17:26:14'),
(135, 15, 23, 41.5018, -8.3484, 80.2812, 1, 1, 1, '2017-02-02 17:26:19'),
(136, 15, 23.8, 41.5018, -8.3484, 129.714, 1, 1, 1, '2017-02-02 17:39:22'),
(137, 15, 24, 41.5018, -8.3484, 99.9997, 1, 1, 1, '2017-02-02 17:44:01'),
(138, 15, 24, 41.5018, -8.3484, 99.9997, 1, 1, 1, '2017-02-02 17:44:06'),
(139, 15, 24, 41.5018, -8.3484, 99.9997, 1, 1, 1, '2017-02-02 17:44:11'),
(140, 15, 24, 41.5018, -8.3484, 99.9997, 1, 1, 1, '2017-02-02 17:44:16'),
(141, 15, 24, 41.5018, -8.3484, 99.9997, 1, 1, 1, '2017-02-02 17:44:21'),
(142, 15, 24.4, 41.5018, -8.3484, 102.285, 1, 1, 1, '2017-02-02 17:45:12'),
(143, 15, 24.4, 41.5018, -8.3484, 102.285, 1, 1, 1, '2017-02-02 17:45:17'),
(144, 15, 24.2, 41.5018, -8.3484, 102.285, 1, 1, 1, '2017-02-02 17:45:22'),
(145, 15, 23.8, 41.5018, -8.3484, 104.571, 1, 1, 1, '2017-02-02 17:49:35'),
(146, 15, 23.8, 41.5018, -8.3484, 104.571, 1, 1, 1, '2017-02-02 17:49:40'),
(147, 15, 24, 41.5018, -8.3484, 104.571, 1, 1, 1, '2017-02-02 17:49:45'),
(148, 15, 24, 41.5018, -8.3484, 104.571, 1, 1, 1, '2017-02-02 17:49:50'),
(149, 15, 24, 41.5018, -8.3484, 106.857, 1, 1, 1, '2017-02-02 17:51:14'),
(150, 15, 24, 41.5018, -8.3484, 106.857, 1, 1, 1, '2017-02-02 17:51:19'),
(151, 15, 24, 41.5018, -8.3484, 106.857, 1, 1, 1, '2017-02-02 17:51:24'),
(152, 15, 24, 41.5018, -8.3484, 106.857, 1, 1, 1, '2017-02-02 17:51:30'),
(153, 15, 24, 41.5018, -8.3484, 106.857, 1, 1, 1, '2017-02-02 17:51:35'),
(154, 15, 24.2, 41.5018, -8.3484, 111.428, 1, 1, 1, '2017-02-02 17:56:33'),
(155, 15, 24.2, 41.5018, -8.3484, 111.428, 1, 1, 1, '2017-02-02 17:56:38'),
(156, 15, 24.2, 41.5018, -8.3484, 111.428, 1, 1, 1, '2017-02-02 17:56:43'),
(157, 15, 24.4, 41.5018, -8.3484, 109.142, 1, 1, 1, '2017-02-02 17:58:57'),
(158, 15, 24.6, 41.5018, -8.3484, 109.142, 1, 1, 1, '2017-02-02 17:59:02'),
(159, 15, 24.6, 41.5018, -8.3484, 109.142, 1, 1, 1, '2017-02-02 18:01:20'),
(160, 15, 25, 41.5018, -8.3484, 111.428, 1, 1, 1, '2017-02-02 18:04:23'),
(161, 15, 25, 41.5018, -8.3484, 113.714, 1, 1, 1, '2017-02-02 18:04:28'),
(162, 15, 25, 41.5018, -8.3484, 111.428, 1, 1, 1, '2017-02-02 18:04:33'),
(163, 15, 24.6, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:25:25'),
(164, 15, 25, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:25:31'),
(165, 15, 25, 41.5018, -8.3484, 122.857, 1, 1, 1, '2017-02-02 18:25:36'),
(166, 15, 24, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:27:05'),
(167, 15, 24, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:27:10'),
(168, 15, 24, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:27:15'),
(169, 15, 24, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:29:01'),
(170, 15, 24.2, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:29:06'),
(171, 15, 24, 41.5018, -8.3484, 125.142, 1, 1, 1, '2017-02-02 18:29:11'),
(172, 15, 23.8, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:43:54'),
(173, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:43:59'),
(174, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:02'),
(175, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:08'),
(176, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:13'),
(177, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:18'),
(178, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:47'),
(179, 15, 24, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:52'),
(180, 15, 23.8, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:44:57'),
(181, 15, 23.8, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:45:11'),
(182, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:46:59'),
(183, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:47:04'),
(184, 15, 23.8, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:47:09'),
(185, 15, 23.8, 41.5018, -8.3484, 131.999, 1, 1, 1, '2017-02-02 18:47:14'),
(186, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:48:52'),
(187, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:48:57'),
(188, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:02'),
(189, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:07'),
(190, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:12'),
(191, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:17'),
(192, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:23'),
(193, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:28'),
(194, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:33'),
(195, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:38'),
(196, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:49:43'),
(197, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:51:40'),
(198, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:51:45'),
(199, 15, 24, 41.5018, -8.3484, 136.571, 1, 1, 1, '2017-02-02 18:51:50'),
(200, 15, 24, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:51:55'),
(201, 15, 23.8, 41.5018, -8.3484, 136.571, 1, 1, 1, '2017-02-02 18:52:00'),
(202, 15, 23.8, 41.5018, -8.3484, 136.571, 1, 1, 1, '2017-02-02 18:52:05'),
(203, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:52:10'),
(204, 15, 23.8, 41.5018, -8.3484, 134.285, 1, 1, 1, '2017-02-02 18:52:15'),
(205, 15, 23.8, 41.5018, -8.3484, 136.571, 1, 1, 1, '2017-02-02 18:52:20'),
(206, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 18:59:42'),
(207, 15, 24, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 18:59:47'),
(208, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 18:59:52'),
(209, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 18:59:57'),
(210, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:02'),
(211, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:07'),
(212, 15, 24, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:12'),
(213, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:38'),
(214, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:43'),
(215, 15, 23.8, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:48'),
(216, 15, 24, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:53'),
(217, 15, 24, 41.5018, -8.3484, 141.142, 1, 1, 1, '2017-02-02 19:00:58'),
(218, 15, 23.8, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:03:32'),
(219, 15, 23.8, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:03:37'),
(220, 15, 23.8, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:03:42'),
(221, 15, 24, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:03:47'),
(222, 15, 23.8, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:03:52'),
(223, 15, 24, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:04:44'),
(224, 15, 24, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:04:49'),
(225, 15, 23.8, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:04:54'),
(226, 15, 24, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:04:59'),
(227, 15, 24, 41.5018, -8.3484, 143.428, 1, 1, 1, '2017-02-02 19:05:04'),
(228, 15, 23.8, 41.5018, -8.3484, 145.714, 1, 1, 1, '2017-02-02 19:05:09'),
(229, 15, 22.8, 41.5018, -8.3484, 173.142, 1, 1, 1, '2017-02-02 20:01:08'),
(230, 15, 23, 41.5018, -8.3484, 173.142, 1, 1, 1, '2017-02-02 20:01:13'),
(231, 15, 22.8, 41.5018, -8.3484, 173.142, 1, 1, 1, '2017-02-02 20:01:18'),
(232, 15, 22.8, 41.5018, -8.3484, 175.428, 1, 1, 1, '2017-02-02 20:02:35'),
(233, 15, 22.8, 41.5018, -8.3484, 175.428, 1, 1, 1, '2017-02-02 20:02:40'),
(234, 15, 22.8, 41.5018, -8.3484, 175.428, 1, 1, 1, '2017-02-02 20:02:45'),
(235, 15, 22.6, 41.5018, -8.3484, 175.428, 1, 1, 1, '2017-02-02 20:02:50'),
(236, 15, 23.2, 41.5018, -8.3484, 186.856, 1, 1, 1, '2017-02-02 20:15:43'),
(237, 15, 23.4, 41.5018, -8.3484, 186.856, 1, 1, 1, '2017-02-02 20:15:48'),
(238, 15, 23.2, 41.5018, -8.3484, 184.57, 1, 1, 1, '2017-02-02 20:15:53'),
(239, 15, 23.2, 41.5018, -8.3484, 189.142, 1, 1, 1, '2017-02-02 20:19:50'),
(240, 15, 23.4, 41.5018, -8.3484, 189.142, 1, 1, 1, '2017-02-02 20:20:06'),
(241, 15, 23.2, 41.5018, -8.3484, 189.142, 1, 1, 1, '2017-02-02 20:20:12'),
(242, 15, 23.2, 41.5018, -8.3484, 189.142, 1, 1, 1, '2017-02-02 20:20:17'),
(243, 15, 23, 41.5018, -8.3484, 200.57, 1, 1, 1, '2017-02-02 21:29:17'),
(244, 15, 23, 41.5018, -8.3484, 200.57, 1, 1, 1, '2017-02-02 21:29:22'),
(245, 15, 23, 41.5018, -8.3484, 200.57, 1, 1, 1, '2017-02-02 21:29:28'),
(246, 15, 23, 41.5018, -8.3484, 200.57, 1, 1, 1, '2017-02-02 21:29:33'),
(247, 15, 0, 0, 0, 0, 1, 48, 1, '2017-02-03 09:34:19'),
(248, 15, 0, 0, 0, 0, 1, 0, 1, '2017-02-03 09:35:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `user_activated` varchar(10) NOT NULL,
  `user_mail` varchar(100) NOT NULL,
  `user_ip` varchar(50) NOT NULL,
  `user_last_login` varchar(100) NOT NULL,
  `user_register` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_pass`, `user_activated`, `user_mail`, `user_ip`, `user_last_login`, `user_register`) VALUES
(46, 'airfences', 'airfences', '0', 'airfences@airfences.com', '127.0.0.1', '01/31/2017 16:00:54', '01/31/2017 15:31:10'),
(47, 'admin', 'admin', '0', 'admin@admin', '127.0.0.1', '02/02/2017 16:11:40', '02/02/2017 16:10:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `zone`
--

CREATE TABLE IF NOT EXISTS `zone` (
  `id_zone` int(11) NOT NULL,
  `definition` varchar(100) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `id_field` int(11) NOT NULL,
  PRIMARY KEY (`id_zone`,`id_field`),
  KEY `id_field` (`id_field`),
  KEY `id_field_2` (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
