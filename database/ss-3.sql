-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 04-Fev-2017 às 18:54
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
  `id_field` int(11) NOT NULL,
  PRIMARY KEY (`id_animal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`id_animal`, `definition`, `updated`, `first_config`, `id_field`) VALUES
(1, 'Primeiro Animal- testes', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` double(10,7) NOT NULL,
  `latitude` double(10,7) NOT NULL,
  `longitude2` double(10,7) NOT NULL,
  `latitude2` double(10,7) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `field`
--

INSERT INTO `field` (`id_field`, `longitude`, `latitude`, `longitude2`, `latitude2`, `id_user`) VALUES
(1, -8.3499840, 41.5013330, -8.3475600, 41.5034630, 46);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historic`
--

CREATE TABLE IF NOT EXISTS `historic` (
  `id_historic` int(11) NOT NULL AUTO_INCREMENT,
  `date` float NOT NULL,
  `temperature` float NOT NULL,
  `latitude` double(10,7) NOT NULL,
  `longitude` double(10,7) NOT NULL,
  `battery` float NOT NULL,
  `id_animal` int(11) NOT NULL,
  `id_zone` int(11) NOT NULL,
  `id_field` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_historic`),
  KEY `id_animal` (`id_animal`),
  KEY `id_zone` (`id_zone`),
  KEY `id_field` (`id_field`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1081 ;

--
-- Extraindo dados da tabela `historic`
--

INSERT INTO `historic` (`id_historic`, `date`, `temperature`, `latitude`, `longitude`, `battery`, `id_animal`, `id_zone`, `id_field`, `time`) VALUES
(926, 15, 20.6, 41.5018230, -8.3483970, 92.0539, 1, 4, 1, '2017-02-04 15:56:21'),
(927, 15, 20.6, 41.5018230, -8.3483970, 92.0539, 1, 1, 1, '2017-02-04 15:57:26'),
(928, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 15:57:43'),
(929, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 15:58:00'),
(930, 15, 20.6, 41.5018230, -8.3483970, 92.0539, 1, 1, 1, '2017-02-04 15:58:05'),
(931, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 15:58:22'),
(932, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 15:58:39'),
(933, 15, 21, 41.5018230, -8.3483970, 91.4176, 1, 1, 1, '2017-02-04 16:04:00'),
(934, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:04:13'),
(935, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:04:25'),
(936, 15, 21, 41.5018230, -8.3483970, 91.0994, 1, 1, 1, '2017-02-04 16:08:33'),
(937, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:08:41'),
(938, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:08:49'),
(939, 15, 21.2, 41.5018230, -8.3483970, 90.7812, 1, 1, 1, '2017-02-04 16:08:54'),
(940, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:08:59'),
(941, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:09:06'),
(942, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:09:14'),
(943, 15, 21.2, 41.5018230, -8.3483970, 90.7812, 1, 1, 1, '2017-02-04 16:09:19'),
(944, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:09:24'),
(945, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:09:31'),
(946, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:09:39'),
(947, 15, 21.2, 41.5018230, -8.3483970, 90.7812, 1, 1, 1, '2017-02-04 16:09:44'),
(948, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:09:49'),
(949, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:09:56'),
(950, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:10:04'),
(951, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:10:12'),
(952, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:10:20'),
(953, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:10:28'),
(954, 15, 21.2, 41.5018230, -8.3483970, 90.463, 1, 1, 1, '2017-02-04 16:10:33'),
(955, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:10:38'),
(956, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:10:45'),
(957, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:10:53'),
(958, 15, 21.2, 41.5018230, -8.3483970, 90.463, 1, 1, 1, '2017-02-04 16:10:58'),
(959, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:11:03'),
(960, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:11:10'),
(961, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:11:18'),
(962, 15, 21.2, 41.5018230, -8.3483970, 90.463, 1, 1, 1, '2017-02-04 16:11:23'),
(963, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:11:28'),
(964, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:11:35'),
(965, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:11:43'),
(966, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:11:51'),
(967, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:11:59'),
(968, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:12:07'),
(969, 15, 21.2, 41.5018230, -8.3483970, 90.463, 1, 1, 1, '2017-02-04 16:12:12'),
(970, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:12:17'),
(971, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:12:24'),
(972, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:12:32'),
(973, 15, 21.2, 41.5018230, -8.3483970, 90.463, 1, 1, 1, '2017-02-04 16:12:37'),
(974, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:12:42'),
(975, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:12:49'),
(976, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:12:57'),
(977, 15, 21.2, 41.5018230, -8.3483970, 90.1449, 1, 1, 1, '2017-02-04 16:13:02'),
(978, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:13:07'),
(979, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:13:14'),
(980, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:13:22'),
(981, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:13:30'),
(982, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:13:38'),
(983, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:13:46'),
(984, 15, 21.2, 41.5018230, -8.3483970, 90.1449, 1, 1, 1, '2017-02-04 16:13:51'),
(985, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:13:56'),
(986, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:14:03'),
(987, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:14:11'),
(988, 15, 21.2, 41.5018230, -8.3483970, 90.1449, 1, 1, 1, '2017-02-04 16:14:16'),
(989, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:14:21'),
(990, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:14:28'),
(991, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:14:36'),
(992, 15, 21.4, 41.5018230, -8.3483970, 90.1449, 1, 1, 1, '2017-02-04 16:14:41'),
(993, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:14:46'),
(994, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:14:53'),
(995, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:15:01'),
(996, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:15:09'),
(997, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:15:17'),
(998, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:15:25'),
(999, 15, 21.2, 41.5018230, -8.3483970, 90.1449, 1, 1, 1, '2017-02-04 16:15:30'),
(1000, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:15:35'),
(1001, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:15:42'),
(1002, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:15:50'),
(1003, 15, 21.4, 41.5018230, -8.3483970, 90.1449, 1, 1, 1, '2017-02-04 16:15:55'),
(1004, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 16:16:00'),
(1005, 15, 21.2, 41.5018230, -8.3483970, 87.9175, 1, 1, 1, '2017-02-04 16:46:50'),
(1006, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 16:46:58'),
(1007, 15, 19.6, 41.5018230, -8.3483970, 81.8721, 1, 1, 1, '2017-02-04 17:27:56'),
(1008, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 17:28:04'),
(1009, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 17:28:12'),
(1010, 15, 19.4, 41.5018230, -8.3483970, 81.8721, 1, 1, 1, '2017-02-04 17:28:17'),
(1011, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 17:28:22'),
(1012, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 17:28:29'),
(1013, 15, 0, 0.0000000, 0.0000000, 0, 2, 0, 1, '2017-02-04 17:28:37'),
(1014, 15, 18.4, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:28:42'),
(1015, 15, 0, 0.0000000, 0.0000000, 0, 3, 0, 1, '2017-02-04 17:28:47'),
(1016, 15, 18.2, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:28:56'),
(1017, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:01'),
(1018, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:06'),
(1019, 15, 18, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:29:11'),
(1020, 15, 18, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:29:16'),
(1021, 15, 18, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:29:21'),
(1022, 15, 18, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:29:27'),
(1023, 15, 0, 0.0000000, 0.0000000, 0, 1, 0, 1, '2017-02-04 17:29:32'),
(1024, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:37'),
(1025, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:42'),
(1026, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:47'),
(1027, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:52'),
(1028, 15, 18, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:29:57'),
(1029, 15, 0, 0.0000000, 0.0000000, 0, 1, 0, 1, '2017-02-04 17:30:02'),
(1030, 15, 17.8, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:30:07'),
(1031, 15, 0, 0.0000000, 0.0000000, 0, 1, 0, 1, '2017-02-04 17:30:12'),
(1032, 15, 0, 0.0000000, 0.0000000, 0, 1, 0, 1, '2017-02-04 17:30:17'),
(1033, 15, 0, 0.0000000, 0.0000000, 0, 1, 0, 1, '2017-02-04 17:30:22'),
(1034, 15, 17.4, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:30:28'),
(1035, 15, 17.2, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:30:33'),
(1036, 15, 17.2, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:30:38'),
(1037, 15, 17.2, 41.5018230, -8.3483970, 81.2358, 1, 1, 1, '2017-02-04 17:30:43'),
(1038, 15, 17, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:30:48'),
(1039, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:39:49'),
(1040, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:39:54'),
(1041, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:00'),
(1042, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:05'),
(1043, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:10'),
(1044, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:15'),
(1045, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:20'),
(1046, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:25'),
(1047, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:30'),
(1048, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:35'),
(1049, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:40'),
(1050, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:45'),
(1051, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:50'),
(1052, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:40:56'),
(1053, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:01'),
(1054, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:06'),
(1055, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:11'),
(1056, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:16'),
(1057, 15, 17.8, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:21'),
(1058, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:26'),
(1059, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:31'),
(1060, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:36'),
(1061, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:41'),
(1062, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:46'),
(1063, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:41:56'),
(1064, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:02'),
(1065, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:07'),
(1066, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:12'),
(1067, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:17'),
(1068, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:22'),
(1069, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:27'),
(1070, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:32'),
(1071, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:37'),
(1072, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:42'),
(1073, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:47'),
(1074, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:52'),
(1075, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:42:57'),
(1076, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:43:03'),
(1077, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:43:08'),
(1078, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:43:13'),
(1079, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:43:18'),
(1080, 15, 7.6, 41.5018230, -8.3483970, 80.9176, 1, 1, 1, '2017-02-04 17:43:23');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;