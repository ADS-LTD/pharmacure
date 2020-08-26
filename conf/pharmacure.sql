-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 26 août 2020 à 13:11
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pharmacure`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `codebarre` varchar(255) DEFAULT NULL,
  `dateexpiration` date DEFAULT NULL,
  `idproduit` bigint(20) DEFAULT NULL,
  `idbordereau` bigint(20) DEFAULT NULL,
  `datevente` date DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `panier` tinyint(1) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `dateajout` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `codebarre`, `dateexpiration`, `idproduit`, `idbordereau`, `datevente`, `commentaire`, `panier`, `etat`, `dateajout`, `datemodif`) VALUES
(1, '5549264723784297', '2014-12-12', 39, NULL, NULL, NULL, 0, NULL, '2013-06-18 17:14:47', '2013-12-22 11:34:59'),
(2, '5151155005516483', '2014-10-11', 12, NULL, NULL, NULL, 0, NULL, '2013-01-30 00:49:40', '2013-12-13 01:35:03'),
(3, '5251939452453519', '2015-04-11', 46, NULL, NULL, NULL, 0, NULL, '2013-06-27 23:41:55', '2013-10-13 09:27:12'),
(4, '5569982239068480', '2014-07-30', 100, NULL, NULL, NULL, 0, NULL, '2013-03-22 21:16:09', '2013-09-18 15:47:14'),
(5, '5117279156185683', '2014-11-04', 90, NULL, NULL, NULL, 0, NULL, '2013-05-03 03:12:51', '2013-08-21 03:23:30'),
(6, '5575545116844582', '2015-05-15', 72, NULL, NULL, NULL, 0, NULL, '2013-06-21 22:29:23', '2013-09-02 16:26:27'),
(7, '5123734859200197', '2015-01-25', 29, NULL, NULL, NULL, 0, NULL, '2013-04-12 19:47:40', '2013-09-28 11:20:53'),
(8, '5559899145960808', '2015-05-21', 1, NULL, NULL, NULL, 0, NULL, '2013-04-23 11:02:47', '2013-09-12 07:20:25'),
(9, '5169875025139192', '2014-09-27', 91, NULL, NULL, NULL, 0, NULL, '2013-04-06 12:36:45', '2013-10-07 15:28:47'),
(10, '5470338018545887', '2014-10-03', 82, NULL, NULL, NULL, 0, NULL, '2013-04-28 02:53:42', '2013-07-18 13:09:14'),
(11, '5446019736775191', '2014-08-20', 57, NULL, NULL, NULL, 0, NULL, '2013-05-12 21:27:06', '2013-07-22 07:55:54'),
(12, '5124489283794530', '2015-05-03', 16, NULL, NULL, NULL, 0, NULL, '2013-03-18 20:01:54', '2013-07-20 01:58:26'),
(13, '5394437751704827', '2015-06-30', 4, NULL, NULL, NULL, 0, NULL, '2013-03-11 04:46:10', '2013-09-29 09:15:20'),
(14, '5527996811582709', '2015-03-17', 66, NULL, NULL, NULL, 0, NULL, '2013-06-01 15:01:59', '2013-10-21 23:42:11'),
(15, '5537110285712400', '2014-11-20', 34, NULL, NULL, NULL, 0, NULL, '2013-03-21 00:01:43', '2013-07-29 17:29:37'),
(16, '5598977267332377', '2015-04-05', 93, NULL, NULL, NULL, 0, NULL, '2013-01-17 22:24:58', '2013-09-28 17:46:00'),
(17, '5534830308724192', '2014-10-18', 60, NULL, NULL, NULL, 0, NULL, '2013-05-15 19:53:58', '2013-09-25 11:57:54'),
(18, '5152304671714082', '2015-06-09', 25, NULL, NULL, NULL, 0, NULL, '2013-06-24 15:16:42', '2013-09-08 14:32:27'),
(19, '5285195320695639', '2014-11-26', 17, NULL, NULL, NULL, 0, NULL, '2013-02-25 16:08:14', '2013-07-14 15:36:44'),
(20, '5414637625175526', '2014-07-04', 5, NULL, NULL, NULL, 0, NULL, '2013-01-21 13:20:57', '2013-11-10 08:35:59'),
(21, '5280891584358178', '2014-10-17', 47, NULL, NULL, NULL, 0, NULL, '2013-06-04 21:25:30', '2013-10-12 01:34:35'),
(22, '5294475940451954', '2015-03-07', 98, NULL, NULL, NULL, 0, NULL, '2013-01-16 00:55:46', '2013-07-04 20:27:30'),
(23, '5541903528547843', '2015-04-05', 76, NULL, NULL, NULL, 0, NULL, '2013-06-18 23:16:29', '2013-08-03 23:57:02'),
(24, '5397068318640813', '2014-08-25', 37, NULL, NULL, NULL, 0, NULL, '2013-01-23 11:00:02', '2013-12-09 06:26:41'),
(25, '5268939952719952', '2014-08-31', 34, NULL, NULL, NULL, 0, NULL, '2013-04-03 02:05:18', '2013-09-02 22:23:35'),
(26, '5564638721859086', '2015-01-28', 19, NULL, NULL, NULL, 0, NULL, '2013-05-18 22:38:41', '2013-10-24 08:43:36'),
(27, '5232316095805724', '2014-07-31', 91, NULL, NULL, NULL, 0, NULL, '2013-03-03 17:31:40', '2013-07-30 03:59:01'),
(28, '5157340097236448', '2015-03-30', 42, NULL, NULL, NULL, 0, NULL, '2013-05-29 04:09:10', '2013-11-02 17:57:09'),
(29, '5563511455794794', '2014-10-05', 67, NULL, NULL, NULL, 0, NULL, '2013-05-02 16:13:37', '2013-12-22 10:47:11'),
(30, '5371252578562127', '2015-02-02', 35, NULL, NULL, NULL, 0, NULL, '2013-05-26 13:03:05', '2013-12-09 03:51:43'),
(31, '5291960313757886', '2014-12-19', 34, NULL, NULL, NULL, 0, NULL, '2013-05-16 23:14:13', '2013-10-13 09:07:49'),
(32, '5112776179579080', '2015-01-16', 68, NULL, NULL, NULL, 0, NULL, '2013-06-03 22:13:05', '2013-08-25 16:03:26'),
(33, '5122407584120518', '2014-12-30', 86, NULL, NULL, NULL, 0, NULL, '2013-06-27 18:49:01', '2013-07-23 12:43:11'),
(34, '5143899766211393', '2015-07-14', 76, NULL, NULL, NULL, 0, NULL, '2013-04-19 04:58:56', '2013-10-26 07:59:31'),
(35, '5472758418689484', '2015-04-25', 42, NULL, NULL, NULL, 0, NULL, '2013-05-22 12:09:48', '2013-09-07 13:31:32'),
(36, '5129686740306205', '2015-06-30', 82, NULL, NULL, NULL, 0, NULL, '2013-02-06 22:54:52', '2013-08-07 11:07:23'),
(37, '5419444883055986', '2014-09-22', 71, NULL, NULL, NULL, 0, NULL, '2013-01-22 04:13:57', '2013-08-07 01:53:09'),
(38, '5186493277889677', '2015-06-08', 44, NULL, NULL, NULL, 0, NULL, '2013-03-12 14:00:54', '2013-08-13 04:03:57'),
(39, '5179585886267014', '2014-12-08', 50, NULL, NULL, NULL, 0, NULL, '2013-02-05 07:36:07', '2013-09-03 18:59:30'),
(40, '5179319908237088', '2014-11-16', 54, NULL, NULL, NULL, 0, NULL, '2013-03-21 18:49:10', '2013-11-05 03:09:39'),
(41, '5356831296435558', '2015-07-07', 3, NULL, NULL, NULL, 0, NULL, '2013-02-10 03:12:28', '2013-11-12 04:41:59'),
(42, '5325605623084121', '2015-02-21', 38, NULL, NULL, NULL, 0, NULL, '2013-05-18 11:56:51', '2013-11-14 03:14:48'),
(43, '5593809192031621', '2014-11-20', 96, NULL, NULL, NULL, 0, NULL, '2013-05-17 21:02:48', '2013-11-20 02:18:19'),
(44, '5551269048182298', '2014-08-30', 55, NULL, NULL, NULL, 0, NULL, '2013-02-28 01:27:17', '2013-10-02 06:56:44'),
(45, '5343602434666820', '2014-09-20', 46, NULL, NULL, NULL, 0, NULL, '2013-03-13 16:35:44', '2013-09-17 20:23:57'),
(46, '5130919477744024', '2015-01-05', 52, NULL, NULL, NULL, 0, NULL, '2013-01-14 07:07:09', '2013-11-14 05:37:06'),
(47, '5250246315514664', '2015-05-16', 69, NULL, NULL, NULL, 0, NULL, '2013-02-16 12:43:47', '2013-09-17 21:01:06'),
(48, '5168432743391027', '2015-02-06', 54, NULL, NULL, NULL, 0, NULL, '2013-04-10 06:45:07', '2013-12-04 11:58:27'),
(49, '5473224149500018', '2015-04-25', 85, NULL, NULL, NULL, 0, NULL, '2013-06-07 07:38:48', '2013-11-07 02:08:31'),
(50, '5135441636210303', '2014-08-13', 73, NULL, NULL, NULL, 0, NULL, '2013-02-13 05:51:10', '2013-08-27 09:47:26'),
(51, '5173070368566557', '2015-06-23', 78, NULL, NULL, NULL, 0, NULL, '2013-04-29 21:08:27', '2013-11-19 14:14:14'),
(52, '5554115733858190', '2014-09-16', 78, NULL, NULL, NULL, 0, NULL, '2013-05-29 12:34:05', '2013-10-20 10:51:09'),
(53, '5329917576662266', '2014-10-25', 15, NULL, NULL, NULL, 0, NULL, '2013-06-09 18:44:06', '2013-07-14 15:46:00'),
(54, '5114973897156307', '2015-01-23', 71, NULL, NULL, NULL, 0, NULL, '2013-01-02 02:23:47', '2013-11-19 14:04:03'),
(55, '5251184052540924', '2015-06-18', 47, NULL, NULL, NULL, 0, NULL, '2013-06-29 23:32:57', '2013-09-05 17:36:18'),
(56, '5188857529424137', '2015-06-24', 78, NULL, NULL, NULL, 0, NULL, '2013-05-26 02:50:47', '2013-11-15 14:41:33'),
(57, '5369612619015383', '2014-09-08', 2, NULL, NULL, NULL, 0, NULL, '2013-03-31 01:37:38', '2013-12-08 04:04:45'),
(58, '5573500148346649', '2014-12-26', 76, NULL, NULL, NULL, 0, NULL, '2013-01-18 07:52:50', '2013-11-18 13:04:56'),
(59, '5546197626660571', '2015-04-16', 14, NULL, NULL, NULL, 0, NULL, '2013-04-22 21:57:17', '2013-07-02 20:42:52'),
(60, '5133124074852097', '2015-03-09', 57, NULL, NULL, NULL, 0, NULL, '2013-04-27 02:21:59', '2013-11-18 18:03:19'),
(61, '5544752726950686', '2015-04-03', 76, NULL, NULL, NULL, 0, NULL, '2013-03-03 15:28:45', '2013-11-08 07:23:41'),
(62, '5238157940418457', '2014-07-08', 58, NULL, NULL, NULL, 0, NULL, '2013-03-07 21:39:55', '2013-11-22 03:40:22'),
(63, '5535900254431184', '2014-08-06', 89, NULL, NULL, NULL, 0, NULL, '2013-03-14 21:30:23', '2013-07-03 08:23:55'),
(64, '5157160311071205', '2014-11-16', 27, NULL, NULL, NULL, 0, NULL, '2013-06-15 22:06:57', '2013-09-14 19:33:15'),
(65, '5172057706629855', '2014-12-24', 32, NULL, NULL, NULL, 0, NULL, '2013-04-07 19:16:55', '2013-11-30 22:52:15'),
(66, '5198658673120661', '2015-05-23', 53, NULL, NULL, NULL, 0, NULL, '2013-04-16 09:59:32', '2013-09-09 16:57:55'),
(67, '5476847051377406', '2014-09-13', 34, NULL, NULL, NULL, 0, NULL, '2013-06-29 11:51:05', '2013-07-23 16:21:02'),
(68, '5581502589727750', '2015-04-19', 18, NULL, NULL, NULL, 0, NULL, '2013-03-01 05:02:53', '2013-10-06 23:23:20'),
(69, '5285151951052244', '2014-09-04', 67, NULL, NULL, NULL, 0, NULL, '2013-01-13 06:42:06', '2013-08-11 19:33:30'),
(70, '5556432937644423', '2014-12-05', 20, NULL, NULL, NULL, 0, NULL, '2013-01-18 15:13:51', '2013-10-07 04:41:45'),
(71, '5560822497964839', '2015-01-25', 47, NULL, NULL, NULL, 0, NULL, '2013-04-04 03:44:09', '2013-08-15 18:25:20'),
(72, '5541983247487804', '2015-04-23', 15, NULL, NULL, NULL, 0, NULL, '2013-01-30 12:45:34', '2013-07-21 04:43:39'),
(73, '5172038560728544', '2015-04-05', 47, NULL, NULL, NULL, 0, NULL, '2013-06-05 16:31:47', '2013-08-04 12:57:45'),
(74, '5154631689996453', '2015-04-29', 98, NULL, NULL, NULL, 0, NULL, '2013-05-21 08:01:02', '2013-08-07 23:01:13'),
(75, '5583252295670094', '2015-04-21', 63, NULL, NULL, NULL, 0, NULL, '2013-01-29 21:07:23', '2013-12-26 09:00:15'),
(76, '5515640995395365', '2014-11-17', 12, NULL, NULL, NULL, 0, NULL, '2013-01-26 11:01:45', '2013-11-13 20:12:54'),
(77, '5475551167740484', '2015-01-04', 80, NULL, NULL, NULL, 0, NULL, '2013-02-03 17:36:09', '2013-08-13 10:12:30'),
(78, '5533498611226678', '2014-11-03', 56, NULL, NULL, NULL, 0, NULL, '2013-04-27 03:46:36', '2013-08-17 12:51:40'),
(79, '5574073738786397', '2015-01-19', 64, NULL, NULL, NULL, 0, NULL, '2013-01-29 21:34:41', '2013-10-02 10:13:27'),
(80, '5148775317240506', '2015-04-23', 5, NULL, NULL, NULL, 0, NULL, '2013-01-01 07:28:59', '2013-07-12 14:06:17'),
(81, '5558940247436985', '2014-12-22', 62, NULL, NULL, NULL, 0, NULL, '2013-05-01 19:28:40', '2013-09-29 04:01:01'),
(82, '5247144107394852', '2015-06-20', 3, NULL, NULL, NULL, 0, NULL, '2013-01-05 00:50:13', '2013-10-12 10:58:08'),
(83, '5292891051140618', '2015-07-05', 34, NULL, NULL, NULL, 0, NULL, '2013-04-19 10:08:35', '2013-08-24 17:52:43'),
(84, '5278857824141159', '2014-07-15', 87, NULL, NULL, NULL, 0, NULL, '2013-03-22 14:58:19', '2013-10-03 01:37:54'),
(85, '5252118004551150', '2014-07-04', 63, NULL, NULL, NULL, 0, NULL, '2013-04-06 01:26:13', '2013-10-27 19:00:27'),
(86, '5244075103681531', '2015-03-23', 74, NULL, NULL, NULL, 0, NULL, '2013-01-11 14:46:20', '2013-12-28 19:11:41'),
(87, '5567715353565299', '2014-12-15', 81, NULL, NULL, NULL, 0, NULL, '2013-04-03 12:19:57', '2013-09-09 10:44:01'),
(88, '5121730623566541', '2014-12-16', 82, NULL, NULL, NULL, 0, NULL, '2013-01-21 13:56:35', '2013-12-27 10:04:43'),
(89, '5117575252028182', '2015-07-03', 37, NULL, NULL, NULL, 0, NULL, '2013-05-30 20:08:01', '2013-10-18 15:40:08'),
(90, '5513912980225869', '2015-05-14', 39, NULL, NULL, NULL, 0, NULL, '2013-06-13 14:02:32', '2013-07-08 18:16:29'),
(91, '5144854698418635', '2015-02-06', 55, NULL, NULL, NULL, 0, NULL, '2013-06-03 10:28:51', '2013-10-26 08:02:50'),
(92, '5152327978978864', '2014-09-17', 72, NULL, NULL, NULL, 0, NULL, '2013-01-06 19:10:46', '2013-09-28 19:47:17'),
(93, '5542070920644328', '2015-01-28', 84, NULL, NULL, NULL, 0, NULL, '2013-05-14 01:42:24', '2013-08-30 18:03:26'),
(94, '5570754952891720', '2015-06-20', 22, NULL, NULL, NULL, 0, NULL, '2013-02-07 10:01:52', '2013-11-22 01:30:22'),
(95, '5199488290050062', '2015-06-20', 9, NULL, NULL, NULL, 0, NULL, '2013-02-24 18:06:40', '2013-08-15 17:36:41'),
(96, '5514128627274187', '2015-07-17', 25, NULL, NULL, NULL, 0, NULL, '2013-01-21 11:41:24', '2013-10-17 13:51:27'),
(97, '5169413626012392', '2015-03-23', 77, NULL, NULL, NULL, 0, NULL, '2013-05-18 23:41:27', '2013-10-21 11:32:36'),
(98, '5176335341427479', '2014-10-25', 88, NULL, NULL, NULL, 0, NULL, '2013-02-04 19:22:08', '2013-11-20 14:29:01'),
(99, '5185631217001930', '2014-09-26', 20, NULL, NULL, NULL, 0, NULL, '2013-06-22 08:17:59', '2013-12-10 21:26:12'),
(100, '5154565577064640', '2015-01-05', 17, NULL, NULL, NULL, 0, NULL, '2013-04-13 23:31:52', '2013-10-30 15:52:36');

-- --------------------------------------------------------

--
-- Structure de la table `article_index`
--

CREATE TABLE `article_index` (
  `keyword` varchar(200) NOT NULL,
  `field` varchar(50) NOT NULL,
  `position` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bordereau`
--

CREATE TABLE `bordereau` (
  `id` bigint(20) NOT NULL,
  `idcommande` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `libelle`) VALUES
(1, 'Netherlands'),
(2, 'Equatorial Guinea'),
(3, 'Benin'),
(4, 'Syria'),
(5, 'Egypt'),
(6, 'Bhutan'),
(7, 'Poland'),
(8, 'Martinique'),
(9, 'Isle of Man'),
(10, 'United States'),
(11, 'Venezuela'),
(12, 'Poland'),
(13, 'Belize'),
(14, 'Nigeria'),
(15, 'Nepal'),
(16, 'Saint BarthÃƒÂ©lemy'),
(17, 'Australia'),
(18, 'Saudi Arabia'),
(19, 'Taiwan'),
(20, 'Mozambique'),
(21, 'Belgium'),
(22, 'Equatorial Guinea'),
(23, 'Burundi'),
(24, 'France'),
(25, 'Burkina Faso'),
(26, 'Bangladesh'),
(27, 'Syria'),
(28, 'Lithuania'),
(29, 'United Kingdom (Great Britain)'),
(30, 'Bangladesh'),
(31, 'Panama'),
(32, 'United States Minor Outlying Islands'),
(33, 'Venezuela'),
(34, 'Kuwait'),
(35, 'Portugal'),
(36, 'Greece'),
(37, 'Slovenia'),
(38, 'Bolivia'),
(39, 'Saint Vincent and The Grenadines'),
(40, 'Bonaire, Sint Eustatius and Saba'),
(41, 'Belarus'),
(42, 'Burkina Faso'),
(43, 'South Africa'),
(44, 'Egypt'),
(45, 'Denmark'),
(46, 'Bouvet Island'),
(47, 'Saint Vincent and The Grenadines'),
(48, 'Korea, South'),
(49, 'Libya'),
(50, 'Equatorial Guinea'),
(51, 'Liberia'),
(52, 'Italy'),
(53, 'Wallis and Futuna'),
(54, 'Kuwait'),
(55, 'Jersey'),
(56, 'Cocos (Keeling) Islands'),
(57, 'Gambia'),
(58, 'Norfolk Island'),
(59, 'Ethiopia'),
(60, 'Kenya'),
(61, 'Gibraltar'),
(62, 'Rwanda'),
(63, 'Bulgaria'),
(64, 'Hungary'),
(65, 'Nauru'),
(66, 'Saint Pierre and Miquelon'),
(67, 'Belize'),
(68, 'Kiribati'),
(69, 'Northern Mariana Islands'),
(70, 'Albania'),
(71, 'Saint Vincent and The Grenadines'),
(72, 'Yemen'),
(73, 'Sudan'),
(74, 'Sri Lanka'),
(75, 'Saint Pierre and Miquelon'),
(76, 'Belize'),
(77, 'Luxembourg'),
(78, 'Mayotte'),
(79, 'United Kingdom (Great Britain)'),
(80, 'Malaysia'),
(81, 'Liberia'),
(82, 'Mexico'),
(83, 'Wallis and Futuna'),
(84, 'Spain'),
(85, 'Turkmenistan'),
(86, 'Sao Tome and Principe'),
(87, 'Ireland'),
(88, 'Tuvalu'),
(89, 'Latvia'),
(90, 'Saint Helena, Ascension and Tristan da Cunha'),
(91, 'Lebanon'),
(92, 'Lesotho'),
(93, 'French Polynesia'),
(94, 'Switzerland'),
(95, 'Peru'),
(96, 'Mayotte'),
(97, 'Antigua and Barbuda'),
(98, 'Fiji'),
(99, 'Georgia'),
(100, 'Heard Island and Mcdonald Islands');

-- --------------------------------------------------------

--
-- Structure de la table `classe_index`
--

CREATE TABLE `classe_index` (
  `keyword` varchar(200) NOT NULL,
  `field` varchar(50) NOT NULL,
  `position` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `mail`, `tel`, `commentaire`) VALUES
(1, 'fofana', 'tidiany', 'tidiany@gmail.com', '0987654321', 'ybuni,'),
(2, 'Kadeem', 'Armand Edwards', 'cursus.et@fringillaornare.net', '01 58 27 38 11', 'a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam'),
(3, 'Reece', 'Curran Cotton', 'penatibus.et.magnis@nectempus.co.uk', '08 02 65 34 07', 'ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque'),
(4, 'Castor', 'Jasper Snyder', 'Suspendisse@tinciduntdui.com', '05 50 12 58 42', 'turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis'),
(5, 'Melvin', 'Yasir Flores', 'magna@a.org', '07 82 62 47 35', 'ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.'),
(6, 'Craig', 'Tanner Frazier', 'mi.tempor.lorem@magnatellus.ca', '09 75 68 20 97', 'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.'),
(7, 'Wayne', 'Scott Stone', 'lacinia.Sed.congue@etarcuimperdiet.net', '03 43 22 34 10', 'Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor'),
(8, 'Graiden', 'Duncan Roberts', 'Duis@quispedePraesent.edu', '06 26 97 70 34', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus'),
(9, 'Tad', 'Flynn Stanley', 'elit.a.feugiat@eleifendnondapibus.com', '01 27 73 02 69', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin'),
(10, 'Nathan', 'Ulric Hartman', 'pellentesque.Sed@Etiamlaoreetlibero.ca', '03 27 98 16 21', 'dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus'),
(11, 'Rashad', 'Wing Franks', 'porttitor.tellus@adipiscingenimmi.co.uk', '05 38 45 94 21', 'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,'),
(12, 'Jelani', 'Marvin Wolf', 'sagittis@natoquepenatibus.co.uk', '05 75 32 74 47', 'vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.'),
(13, 'Clarke', 'Alexander Grant', 'pellentesque@nequeSedeget.com', '05 27 12 19 38', 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut'),
(14, 'Tate', 'Bruce Bowman', 'augue.scelerisque@Crasvehiculaaliquet.ca', '07 30 32 68 93', 'adipiscing, enim mi tempor lorem, eget mollis lectus pede et'),
(15, 'Hop', 'Harrison Blake', 'semper.erat@eusemPellentesque.edu', '06 14 75 54 62', 'sit amet ornare lectus justo eu arcu. Morbi sit amet'),
(16, 'Michael', 'Colin Nichols', 'neque@Nuncmauriselit.org', '09 38 78 92 33', 'adipiscing lobortis risus. In mi pede, nonummy ut, molestie in,'),
(17, 'Erich', 'Geoffrey Walters', 'vitae.aliquet@Duisac.org', '02 21 24 23 76', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur'),
(18, 'Hedley', 'Brandon Powell', 'ornare.Fusce.mollis@ipsumcursusvestibulum.com', '05 85 55 63 42', 'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu'),
(19, 'Lucian', 'Lamar Farrell', 'Donec.nibh@eratvolutpat.ca', '08 69 20 07 01', 'nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,'),
(20, 'Uriah', 'Chandler Bell', 'Morbi.sit@ipsumporta.edu', '03 06 37 40 87', 'a purus. Duis elementum, dui quis accumsan convallis, ante lectus'),
(23, 'Dolan', 'Alan Hayden', 'ultricies.adipiscing.enim@vehicula.edu', '03 45 30 21 10', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(24, 'Nathaniel', 'Richard Mcdowell', 'et.libero@nonsapien.edu', '09 61 24 20 70', 'vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.'),
(25, 'Amos', 'Marvin Dunn', 'felis.eget.varius@volutpatornarefacilisis.co.uk', '01 71 80 06 02', 'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu'),
(26, 'Blake', 'Xander Kaufman', 'tempor.lorem.eget@elitpretiumet.co.uk', '04 85 06 45 33', 'pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu'),
(27, 'Lars', 'Slade Giles', 'quis.massa.Mauris@est.co.uk', '04 21 17 44 70', 'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec'),
(28, 'Thane', 'Melvin Mccoy', 'ornare.Fusce.mollis@euultrices.com', '04 85 53 33 43', 'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus'),
(29, 'Walker', 'Anthony Sloan', 'ac@ultrices.com', '09 87 50 58 98', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec'),
(30, 'Graiden', 'Xander Talley', 'Etiam@condimentumegetvolutpat.ca', '04 82 63 66 43', 'Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis'),
(31, 'Mohammad', 'Denton Carpenter', 'convallis@Nuncullamcorpervelit.org', '08 68 06 96 72', 'mattis ornare, lectus ante dictum mi, ac mattis velit justo'),
(32, 'Cain', 'Marshall Reese', 'magna.Cras.convallis@pulvinararcu.co.uk', '07 40 74 68 66', 'tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.'),
(33, 'Garth', 'Grant Fuentes', 'interdum.enim@arcu.org', '03 85 46 23 98', 'id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend'),
(34, 'Nathan', 'Kevin Hodge', 'risus@luctus.net', '06 66 16 00 00', 'nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet.'),
(35, 'Jesse', 'Valentine Prince', 'Duis.at@massaInteger.co.uk', '07 00 14 79 05', 'ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus.'),
(36, 'Gray', 'Donovan Giles', 'volutpat.Nulla.facilisis@Phaselluselit.org', '02 11 76 57 70', 'in lobortis tellus justo sit amet nulla. Donec non justo.'),
(37, 'Hilel', 'Lucian Clements', 'consectetuer@tempusmauriserat.net', '09 30 84 86 37', 'Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla'),
(38, 'Lionel', 'Ferris Snow', 'arcu.iaculis@ligula.ca', '08 96 33 85 16', 'vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit'),
(39, 'Jin', 'Dustin Salazar', 'eget.laoreet.posuere@ipsumCurabiturconsequat.ca', '08 04 49 32 94', 'eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam'),
(40, 'Josiah', 'Yuli Sargent', 'nec@Intincidunt.co.uk', '04 79 78 95 70', 'ornare sagittis felis. Donec tempor, est ac mattis semper, dui'),
(41, 'Joel', 'Aristotle Reid', 'Nulla.dignissim.Maecenas@est.com', '06 31 22 21 72', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis'),
(42, 'Ryder', 'Cody Douglas', 'Suspendisse@estacmattis.ca', '01 58 82 87 01', 'dui. Cum sociis natoque penatibus et magnis dis parturient montes,'),
(43, 'Amery', 'Macon Battle', 'Integer.aliquam.adipiscing@molestietortornibh.com', '04 42 08 64 34', 'aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae'),
(44, 'Quamar', 'Chase Cooley', 'cubilia@duiquis.edu', '05 62 06 92 84', 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce'),
(45, 'Zachary', 'Lewis Henry', 'consectetuer@sem.net', '03 96 11 28 89', 'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.'),
(46, 'Xenos', 'Lane Aguilar', 'et@Fusce.com', '01 13 81 89 88', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt,'),
(47, 'Alec', 'Victor Vang', 'tellus@leoin.org', '04 48 25 57 42', 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat'),
(48, 'Wesley', 'Hedley Combs', 'tempor.est@et.com', '05 15 96 11 64', 'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,'),
(49, 'Ivor', 'Murphy Gates', 'dapibus@Sednullaante.net', '01 46 08 04 96', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum'),
(50, 'Matthew', 'Leroy Deleon', 'Integer.in@Duis.org', '08 01 16 79 28', 'felis eget varius ultrices, mauris ipsum porta elit, a feugiat'),
(51, 'Chandler', 'Quentin Donaldson', 'consectetuer@Proin.org', '01 73 65 64 30', 'Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,'),
(52, 'Raja', 'Avram Barker', 'inceptos.hymenaeos@accumsanconvallisante.org', '04 07 78 49 83', 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus'),
(53, 'Allistair', 'James Solomon', 'diam.vel.arcu@Nullamlobortisquam.org', '01 63 76 62 24', 'a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque'),
(54, 'Jerry', 'Duncan Dotson', 'non.sapien@sed.ca', '08 86 00 00 20', 'neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede'),
(55, 'Derek', 'Kenneth Abbott', 'velit.in.aliquet@metusAeneansed.com', '03 67 31 33 74', 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet'),
(56, 'Calvin', 'Zachery Whitehead', 'Proin.velit.Sed@pharetrafelis.org', '08 88 98 23 33', 'nunc risus varius orci, in consequat enim diam vel arcu.'),
(57, 'Kamal', 'Dean Buckley', 'tristique.neque.venenatis@quama.ca', '05 08 41 45 12', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac'),
(58, 'Cole', 'Victor Hicks', 'Integer@sem.org', '02 38 20 94 11', 'eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum'),
(59, 'Caesar', 'Grady Fleming', 'varius@eratvolutpat.ca', '01 94 57 10 75', 'lobortis risus. In mi pede, nonummy ut, molestie in, tempus'),
(60, 'Omar', 'Chandler Schultz', 'eget.dictum.placerat@eueros.ca', '06 28 10 44 60', 'dictum eleifend, nunc risus varius orci, in consequat enim diam'),
(61, 'Reece', 'Ronan Bonner', 'In.nec.orci@Aliquamvulputateullamcorper.com', '09 32 55 45 30', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames'),
(62, 'Omar', 'Forrest Wiggins', 'Donec.non.justo@etcommodoat.net', '04 36 14 87 70', 'Sed molestie. Sed id risus quis diam luctus lobortis. Class'),
(63, 'Hiram', 'Bernard Lowe', 'massa.Mauris.vestibulum@ettristiquepellentesque.org', '05 89 25 11 79', 'mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,'),
(64, 'Honorato', 'Garrison Martinez', 'cursus.Integer.mollis@auguescelerisquemollis.ca', '04 07 20 06 73', 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum'),
(65, 'Hu', 'Caldwell Rich', 'posuere@augue.com', '08 52 85 48 17', 'massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices'),
(66, 'Wing', 'Perry Goodwin', 'justo@maurissagittisplacerat.com', '02 89 78 23 39', 'egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta'),
(67, 'Tyrone', 'Curran Frost', 'dictum@egestasblanditNam.co.uk', '01 51 23 99 25', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget'),
(68, 'Barrett', 'Aquila Cooper', 'Cras@ligula.org', '02 26 38 59 25', 'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar'),
(69, 'Timon', 'Ezekiel Mejia', 'et.magna.Praesent@sedorcilobortis.ca', '01 20 11 28 56', 'et magnis dis parturient montes, nascetur ridiculus mus. Proin vel'),
(70, 'Reuben', 'Hamilton Franco', 'convallis.ligula@euaccumsansed.net', '09 78 13 97 55', 'Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non'),
(71, 'Darius', 'Fletcher Travis', 'Sed.eu@Duis.ca', '05 93 20 55 61', 'sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis'),
(72, 'Knox', 'Brady Hutchinson', 'Proin.vel@atarcu.net', '06 93 28 33 38', 'tellus faucibus leo, in lobortis tellus justo sit amet nulla.'),
(73, 'Gary', 'Buckminster Murray', 'et@semperNamtempor.co.uk', '07 12 69 59 18', 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.'),
(74, 'Blaze', 'Declan Wiley', 'mus.Proin@arcu.org', '05 78 69 16 93', 'dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing'),
(75, 'Phelan', 'Fulton Shepherd', 'velit.dui@Quisque.org', '09 52 32 35 79', 'sem, vitae aliquam eros turpis non enim. Mauris quis turpis'),
(76, 'Malachi', 'Malachi Fisher', 'Suspendisse.sed.dolor@varius.net', '02 08 12 15 37', 'sem semper erat, in consectetuer ipsum nunc id enim. Curabitur'),
(77, 'Cameron', 'Kirk Acevedo', 'eu@ornareIn.ca', '02 90 82 37 62', 'pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,'),
(78, 'Blake', 'Fitzgerald Preston', 'vulputate.ullamcorper.magna@urnaUttincidunt.co.uk', '04 80 91 83 09', 'amet nulla. Donec non justo. Proin non massa non ante'),
(79, 'Ashton', 'Troy Dean', 'interdum.feugiat@vitaedolorDonec.com', '07 26 15 41 01', 'Donec non justo. Proin non massa non ante bibendum ullamcorper.'),
(80, 'Scott', 'Rooney Reeves', 'fermentum@netuset.ca', '06 45 48 99 80', 'gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat.'),
(81, 'Joshua', 'Melvin Rojas', 'leo.Morbi@velvulputate.ca', '08 80 02 26 90', 'erat. Sed nunc est, mollis non, cursus non, egestas a,'),
(82, 'Prescott', 'Drew Johnson', 'hendrerit.Donec@fermentumrisusat.org', '03 40 94 40 58', 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu,'),
(83, 'Reuben', 'Channing Crosby', 'Nam.ac.nulla@eleifend.edu', '04 93 28 23 82', 'feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam'),
(84, 'Colorado', 'Calvin Pittman', 'ante.ipsum@Suspendissealiquetmolestie.edu', '03 22 71 99 02', 'sem magna nec quam. Curabitur vel lectus. Cum sociis natoque'),
(85, 'Chase', 'Norman Mcclure', 'Suspendisse.aliquet@erat.ca', '04 36 03 47 09', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,'),
(86, 'Tobias', 'Buckminster Bowman', 'at.augue.id@NullafacilisisSuspendisse.com', '03 04 70 02 92', 'nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis'),
(87, 'Quamar', 'Steel Morse', 'fringilla.mi.lacinia@urnaconvallis.co.uk', '01 87 69 25 85', 'Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit'),
(88, 'Mark', 'Owen Stephens', 'elit.a@acfeugiat.com', '05 00 59 13 98', 'Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.'),
(89, 'Luke', 'Elmo Griffin', 'sagittis.Nullam@egestas.com', '05 86 31 76 89', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis.'),
(90, 'Alfonso', 'Igor Salas', 'tempor@blandit.com', '06 24 44 40 10', 'pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero'),
(91, 'Alvin', 'Rogan Holland', 'sed.consequat@nec.edu', '08 78 97 77 57', 'scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada'),
(92, 'Keaton', 'Kuame Acevedo', 'et.euismod.et@pellentesquemassalobortis.net', '05 48 79 80 26', 'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.'),
(93, 'Christian', 'Allistair Miles', 'eu@nasceturridiculus.com', '06 69 39 43 29', 'vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi'),
(94, 'Samson', 'Hyatt Garrett', 'magna@Donectincidunt.ca', '06 61 19 46 80', 'metus. In nec orci. Donec nibh. Quisque nonummy ipsum non'),
(95, 'Mohammad', 'Len Armstrong', 'ante.dictum.cursus@Crassedleo.co.uk', '01 43 66 86 46', 'felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit'),
(96, 'Zachary', 'Silas Hodge', 'lacus.varius.et@ProinvelitSed.net', '03 61 37 44 42', 'sit amet ornare lectus justo eu arcu. Morbi sit amet'),
(97, 'Hamilton', 'Keane Berger', 'libero.nec@tristique.co.uk', '04 37 73 11 45', 'ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque'),
(98, 'Orlando', 'Zeph Duran', 'in.molestie@eratEtiamvestibulum.ca', '09 37 70 74 48', 'turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi'),
(99, 'Alden', 'Rooney Vazquez', 'dictum.placerat.augue@aliquet.co.uk', '06 01 10 42 17', 'accumsan convallis, ante lectus convallis est, vitae sodales nisi magna'),
(100, 'Cruz', 'Tanek Knox', 'ornare@velitegestas.org', '03 13 13 07 46', 'Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel'),
(101, 'Acton', 'Henry Meadows', 'neque.In.ornare@at.co.uk', '05 68 65 87 44', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor,');

-- --------------------------------------------------------

--
-- Structure de la table `client_index`
--

CREATE TABLE `client_index` (
  `keyword` varchar(200) NOT NULL,
  `field` varchar(50) NOT NULL,
  `position` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` bigint(20) NOT NULL,
  `iduser` bigint(20) DEFAULT NULL,
  `idusermodif` bigint(20) DEFAULT NULL,
  `idfournisseur` bigint(20) DEFAULT NULL,
  `idetat` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `iduser`, `idusermodif`, `idfournisseur`, `idetat`, `date`, `datemodif`) VALUES
(1, 1, 2, 44, 2, '2013-07-25 18:15:18', '2014-01-02 04:45:31'),
(2, 1, 1, 43, 2, '2013-08-03 14:08:36', '2014-11-08 06:47:16'),
(3, 2, 1, 24, 2, '2014-12-17 02:13:04', '2014-02-17 01:24:50'),
(4, 2, 1, 41, 2, '2014-05-15 07:35:08', '2013-11-24 12:33:52'),
(5, 2, 1, 15, 2, '2015-06-28 17:23:04', '2013-10-28 11:46:02'),
(6, 2, 2, 66, 2, '2014-02-03 08:11:48', '2015-02-12 14:23:37'),
(7, 1, 2, 42, 2, '2015-01-29 06:52:07', '2014-07-22 13:21:55'),
(8, 1, 1, 16, 2, '2013-12-07 15:36:21', '2015-06-17 00:44:13'),
(9, 1, 1, 3, 2, '2015-04-29 02:28:11', '2015-01-08 10:04:26'),
(10, 1, 1, 3, 2, '2014-09-05 20:15:18', '2014-08-16 17:45:22'),
(11, 2, 2, 44, 2, '2015-06-01 15:02:47', '2013-10-09 09:25:28'),
(12, 2, 1, 40, 2, '2014-09-05 08:46:45', '2014-01-16 12:44:55'),
(13, 2, 1, 14, 2, '2014-11-30 17:07:16', '2013-09-04 14:55:05'),
(14, 1, 1, 2, 2, '2015-01-25 11:45:35', '2015-01-19 16:15:10'),
(15, 1, 1, 73, 2, '2014-12-27 11:42:39', '2014-01-20 17:25:15'),
(16, 1, 1, 2, 2, '2015-02-02 04:23:08', '2013-08-31 15:57:12'),
(17, 1, 2, 48, 2, '2013-09-03 02:40:07', '2014-10-03 00:25:46'),
(18, 2, 2, 27, 2, '2015-02-02 06:50:41', '2014-07-16 06:16:54'),
(19, 2, 1, 61, 2, '2013-11-25 09:17:48', '2014-02-09 19:17:52'),
(20, 1, 2, 77, 2, '2014-03-15 13:53:38', '2014-11-10 00:51:24'),
(21, 1, 2, 16, 2, '2013-08-20 08:51:29', '2014-05-28 17:37:03'),
(22, 2, 1, 47, 2, '2014-04-01 22:59:09', '2014-06-08 01:29:34'),
(23, 1, 2, 65, 2, '2014-04-04 16:36:41', '2014-03-24 11:56:48'),
(24, 1, 2, 2, 2, '2013-12-23 18:04:55', '2014-04-15 08:50:38'),
(25, 2, 2, 13, 2, '2014-10-18 10:09:18', '2015-05-26 04:05:16'),
(26, 2, 1, 15, 2, '2015-05-02 13:30:27', '2014-03-11 00:35:55'),
(27, 1, 2, 30, 2, '2013-09-22 08:44:42', '2015-06-13 19:12:31'),
(28, 1, 2, 12, 2, '2014-08-16 19:23:42', '2015-04-08 00:20:56'),
(29, 2, 2, 75, 2, '2014-09-22 18:08:36', '2014-11-06 15:21:28'),
(30, 2, 1, 79, 2, '2014-02-04 19:16:39', '2014-05-07 05:24:48'),
(31, 2, 1, 34, 2, '2013-12-10 13:39:31', '2014-09-22 00:07:46'),
(32, 2, 1, 5, 2, '2015-04-04 11:48:41', '2015-02-19 21:07:54'),
(33, 2, 1, 39, 2, '2014-02-08 01:09:29', '2014-05-20 11:51:26'),
(34, 1, 2, 3, 2, '2013-12-22 06:53:58', '2014-12-05 13:26:55'),
(35, 1, 1, 69, 2, '2014-05-31 09:09:31', '2014-09-27 11:27:27'),
(36, 1, 2, 28, 2, '2013-07-25 18:06:01', '2014-02-08 16:27:01'),
(37, 2, 1, 47, 2, '2014-01-05 19:27:40', '2014-03-09 03:57:32'),
(38, 2, 2, 3, 2, '2014-06-07 12:08:38', '2015-02-17 22:44:38'),
(39, 2, 1, 11, 2, '2013-12-08 19:28:45', '2014-10-04 04:04:27'),
(40, 2, 1, 19, 2, '2014-09-06 21:08:43', '2013-12-09 04:27:48'),
(41, 1, 1, 72, 2, '2014-04-23 21:05:51', '2015-04-13 01:04:06'),
(42, 1, 2, 12, 2, '2015-05-05 16:25:46', '2014-10-19 15:07:03'),
(43, 2, 2, 79, 2, '2014-05-26 13:09:24', '2015-01-09 02:52:09'),
(44, 1, 1, 73, 2, '2014-01-13 15:41:56', '2014-12-23 00:37:28'),
(45, 1, 1, 51, 2, '2013-11-06 09:57:06', '2014-07-21 22:17:20'),
(46, 1, 1, 48, 2, '2013-07-11 16:47:27', '2014-02-05 16:02:22'),
(47, 2, 1, 3, 2, '2015-06-16 13:15:56', '2014-12-07 02:09:12'),
(48, 2, 1, 59, 2, '2014-03-01 22:53:26', '2014-01-22 12:26:02'),
(49, 2, 2, 50, 2, '2015-04-20 02:07:12', '2014-12-20 11:26:43'),
(50, 2, 2, 16, 2, '2014-02-21 04:19:21', '2014-07-07 21:19:11'),
(51, 2, 2, 28, 2, '2014-10-22 10:13:31', '2014-12-31 05:14:37'),
(52, 2, 1, 3, 2, '2015-04-09 15:37:54', '2014-04-17 07:08:59'),
(53, 2, 2, 40, 2, '2015-03-18 15:58:29', '2014-08-05 21:51:54'),
(54, 2, 1, 19, 2, '2014-01-30 01:14:35', '2014-05-28 12:02:08'),
(55, 1, 2, 3, 2, '2014-08-09 18:33:31', '2014-11-29 19:45:32'),
(56, 2, 1, 6, 2, '2014-08-12 05:10:38', '2014-02-17 10:25:23'),
(57, 1, 2, 20, 2, '2014-05-21 03:08:51', '2013-11-07 00:29:53'),
(58, 2, 1, 7, 2, '2014-01-24 11:59:49', '2015-07-13 16:01:19'),
(59, 1, 1, 17, 2, '2015-03-11 06:27:12', '2013-12-31 01:18:44'),
(60, 1, 2, 69, 2, '2014-01-27 15:19:34', '2014-04-22 01:49:16'),
(61, 1, 2, 67, 2, '2015-07-02 02:35:59', '2014-04-12 01:34:51'),
(62, 1, 1, 63, 2, '2014-11-10 01:48:38', '2014-05-28 07:52:21'),
(63, 2, 1, 9, 2, '2014-06-20 10:04:11', '2015-05-31 04:12:41'),
(64, 2, 1, 58, 2, '2014-01-19 05:58:02', '2014-03-25 10:42:15'),
(65, 1, 1, 9, 2, '2014-11-09 15:05:45', '2013-11-19 21:46:30'),
(66, 2, 1, 4, 2, '2015-05-27 22:07:24', '2013-09-12 11:57:21'),
(67, 2, 1, 57, 2, '2015-01-31 17:12:51', '2014-06-26 18:37:04'),
(68, 1, 1, 17, 2, '2014-02-12 02:31:00', '2015-04-27 14:04:42'),
(69, 1, 2, 27, 2, '2014-08-07 23:21:09', '2013-11-21 08:10:21'),
(70, 1, 2, 33, 2, '2013-08-23 01:44:50', '2015-04-17 09:55:44'),
(71, 1, 2, 42, 2, '2014-07-11 04:09:09', '2014-11-12 20:59:41'),
(72, 1, 1, 7, 2, '2015-03-26 01:55:01', '2015-05-13 14:02:23'),
(73, 2, 1, 23, 2, '2013-12-25 00:37:10', '2015-04-05 09:32:49'),
(74, 2, 1, 73, 2, '2013-11-06 04:26:28', '2015-06-18 18:30:58'),
(75, 1, 1, 34, 2, '2015-04-27 11:42:02', '2013-09-03 01:28:51'),
(76, 1, 2, 48, 2, '2013-07-30 21:04:23', '2015-04-24 18:17:34'),
(77, 2, 1, 53, 2, '2014-08-19 03:30:05', '2014-10-19 05:43:02'),
(78, 1, 1, 13, 2, '2013-12-22 17:44:00', '2014-11-08 17:34:17'),
(79, 2, 2, 41, 2, '2013-10-11 23:18:30', '2015-03-16 02:50:31'),
(80, 2, 1, 49, 2, '2013-07-14 21:15:54', '2013-09-19 08:33:24'),
(81, 1, 2, 70, 2, '2013-07-01 00:49:08', '2013-09-16 21:46:48'),
(82, 2, 2, 59, 2, '2015-04-05 06:52:24', '2014-01-12 01:30:10'),
(83, 1, 1, 48, 2, '2014-12-01 11:57:13', '2014-12-14 22:01:40'),
(84, 2, 2, 25, 2, '2014-07-23 16:57:01', '2013-10-23 16:16:34'),
(85, 2, 2, 10, 2, '2014-10-11 00:53:18', '2014-03-01 03:43:21'),
(86, 1, 2, 72, 2, '2015-06-24 03:05:56', '2013-10-23 06:42:52'),
(87, 1, 2, 17, 2, '2013-10-21 06:18:46', '2014-03-05 03:44:17'),
(88, 1, 1, 70, 2, '2014-06-20 02:38:45', '2014-08-27 11:20:55'),
(89, 1, 2, 47, 2, '2015-04-21 10:26:06', '2014-08-05 03:35:05'),
(90, 2, 1, 17, 2, '2015-04-23 23:43:56', '2015-02-19 01:49:08'),
(91, 2, 1, 30, 2, '2015-02-16 06:10:08', '2014-09-04 06:18:07'),
(92, 1, 1, 1, 2, '2015-03-24 17:45:18', '2014-03-08 00:37:21'),
(93, 2, 2, 44, 2, '2014-05-01 16:35:31', '2014-02-13 04:21:40'),
(94, 2, 1, 33, 2, '2014-08-30 02:09:00', '2014-12-22 08:10:39'),
(95, 2, 2, 18, 2, '2014-09-26 21:35:26', '2015-02-03 08:47:36'),
(96, 2, 2, 42, 2, '2014-01-31 16:17:53', '2013-11-14 00:09:08'),
(97, 1, 1, 52, 2, '2014-09-03 14:35:12', '2013-07-16 19:51:12'),
(98, 2, 1, 20, 2, '2014-03-23 01:47:01', '2013-11-06 08:59:52'),
(99, 2, 2, 60, 2, '2014-06-18 03:22:56', '2014-12-07 21:30:00'),
(100, 2, 1, 72, 2, '2013-09-02 04:59:11', '2013-11-13 15:14:09');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `libelle`) VALUES
(1, 'Valid&eacute;e partiellement'),
(2, 'Commande en cours'),
(3, 'Valid&eacute;e');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` bigint(20) NOT NULL,
  `idclient` bigint(20) DEFAULT NULL,
  `iduser` bigint(20) NOT NULL,
  `idusermodif` bigint(20) NOT NULL,
  `totalht` float(18,2) DEFAULT NULL,
  `totalttc` float(18,2) DEFAULT NULL,
  `date` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `libelle`, `adresse`, `tel`, `mail`, `commentaire`) VALUES
(1, 'egestas a, scelerisque', 'Ap #753-9458 Lectus. Street', '08 29 00 85 54', 'lobortis@aliquetProin.ca', 'semper tellus id nunc interdum feugiat. Sed nec metus facilisis'),
(2, 'mi. Duis risus', 'Ap #785-2008 Ipsum. Avenue', '09 76 50 86 91', 'enim@rutrumFuscedolor.org', 'Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.'),
(3, 'enim commodo hendrerit.', 'Ap #274-5183 Mauris Street', '07 59 83 27 99', 'nec@lectus.net', 'mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare,'),
(4, 'lobortis tellus justo', 'Ap #612-6730 Nec, Av.', '05 09 00 06 99', 'Cum@etpede.co.uk', 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus'),
(5, 'gravida. Aliquam tincidunt,', '5864 Mauris St.', '09 27 32 85 27', 'pede.Suspendisse@diameudolor.com', 'consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.'),
(6, 'Quisque purus sapien,', '513-570 Nunc Rd.', '07 68 90 82 12', 'egestas.Aliquam.fringilla@sociisnatoquepenatibus.net', 'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et'),
(7, 'lectus ante dictum', '9899 Ut, Av.', '08 12 87 17 13', 'Ut.semper@sedturpis.org', 'vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean'),
(8, 'lacus. Ut nec', 'P.O. Box 289, 7220 Mollis. Av.', '05 22 68 09 17', 'ornare.tortor@justo.net', 'mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec'),
(9, 'ornare, elit elit', 'Ap #997-1140 Sed, Av.', '09 61 65 93 30', 'nunc.sed@actellusSuspendisse.co.uk', 'eros nec tellus. Nunc lectus pede, ultrices a, auctor non,'),
(10, 'amet, consectetuer adipiscing', 'P.O. Box 662, 8409 Blandit St.', '06 49 74 69 45', 'Nullam.feugiat.placerat@ultrices.net', 'eget nisi dictum augue malesuada malesuada. Integer id magna et'),
(11, 'ultricies ornare, elit', 'P.O. Box 700, 1876 Ut St.', '05 69 69 33 77', 'risus.varius.orci@Aliquamultricesiaculis.com', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris'),
(12, 'amet massa. Quisque', '953-9059 Ipsum Street', '05 15 35 59 83', 'sit.amet.orci@erosnectellus.org', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus'),
(13, 'Praesent eu nulla', 'P.O. Box 374, 8106 Ante Ave', '02 28 48 40 03', 'ridiculus.mus.Proin@dictumaugue.net', 'Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam'),
(14, 'placerat. Cras dictum', '536 Felis Street', '06 45 93 71 82', 'et@Sed.ca', 'Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus'),
(15, 'at auctor ullamcorper,', 'Ap #567-1615 Id Ave', '04 02 71 76 41', 'nec.tempus.mauris@magnamalesuada.ca', 'sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie'),
(16, 'Proin eget odio.', '2084 Eleifend Street', '05 32 45 45 74', 'ornare.tortor@nec.co.uk', 'sodales nisi magna sed dui. Fusce aliquam, enim nec tempus'),
(17, 'vitae diam. Proin', 'P.O. Box 965, 5467 Morbi Rd.', '01 81 31 57 94', 'metus@ullamcorper.ca', 'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,'),
(18, 'pharetra, felis eget', 'P.O. Box 332, 8038 Mi Avenue', '01 40 65 31 93', 'et@Crasloremlorem.com', 'porta elit, a feugiat tellus lorem eu metus. In lorem.'),
(19, 'Donec tempus, lorem', '657-1954 Cursus. Ave', '08 41 22 17 62', 'tincidunt.orci@Suspendisse.edu', 'sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem'),
(20, 'auctor ullamcorper, nisl', '9654 Libero. Ave', '07 89 14 37 93', 'gravida.nunc@amet.co.uk', 'aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam'),
(21, 'tempor lorem, eget', 'P.O. Box 850, 3175 Ut St.', '02 84 81 92 38', 'pharetra.sed.hendrerit@lacusMauris.edu', 'ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque'),
(22, 'diam. Duis mi', '1463 Nulla St.', '09 33 09 22 78', 'commodo@velpede.co.uk', 'per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.'),
(23, 'est ac facilisis', 'P.O. Box 479, 6314 Neque St.', '07 93 24 77 83', 'Cras@Nullamsuscipit.ca', 'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris'),
(24, 'risus. Quisque libero', 'Ap #898-6236 Mi. Rd.', '02 41 68 78 15', 'pede.nec.ante@atortor.ca', 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et,'),
(25, 'elit, dictum eu,', 'Ap #796-2803 Ut Ave', '07 24 16 27 14', 'vitae.semper@Nullamscelerisque.com', 'augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,'),
(26, 'diam. Duis mi', 'Ap #532-8990 Augue St.', '07 68 97 38 22', 'a.aliquet@neceuismod.com', 'aliquet vel, vulputate eu, odio. Phasellus at augue id ante'),
(27, 'facilisis lorem tristique', 'P.O. Box 769, 1857 Luctus Street', '03 20 63 36 49', 'Quisque@consectetuercursuset.com', 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae,'),
(28, 'ornare placerat, orci', '3637 Euismod Road', '07 29 23 35 19', 'lectus.pede.ultrices@ipsumdolor.org', 'Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer'),
(29, 'tincidunt adipiscing. Mauris', '393-1389 Montes, St.', '06 26 90 60 51', 'eu.turpis@liberoMorbiaccumsan.org', 'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor'),
(30, 'Curabitur vel lectus.', 'P.O. Box 657, 5568 Lectus. Rd.', '09 11 37 15 72', 'in@ipsumprimisin.co.uk', 'arcu iaculis enim, sit amet ornare lectus justo eu arcu.'),
(31, 'eros. Proin ultrices.', '7641 Mauris, Ave', '08 45 95 00 42', 'tortor.nibh.sit@odioEtiam.co.uk', 'interdum. Sed auctor odio a purus. Duis elementum, dui quis'),
(32, 'Nunc sollicitudin commodo', '153-1336 Cras Street', '05 22 58 12 89', 'vitae.aliquam@Aliquamauctorvelit.net', 'nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse'),
(33, 'feugiat metus sit', '4531 Nibh. Rd.', '04 73 88 48 59', 'ac.eleifend@mi.edu', 'eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce'),
(34, 'risus. Donec egestas.', '581-5073 Sagittis Rd.', '07 66 22 46 56', 'malesuada.vel@augueporttitorinterdum.co.uk', 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.'),
(35, 'lobortis mauris. Suspendisse', 'Ap #720-550 Odio. St.', '07 67 68 28 09', 'sit.amet.ultricies@egestas.com', 'eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris'),
(36, 'facilisis lorem tristique', '9100 Torquent Street', '04 88 27 42 33', 'Morbi@ullamcorpervelit.edu', 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt'),
(37, 'nec enim. Nunc', 'P.O. Box 695, 9214 Eu Street', '05 70 65 44 26', 'tempor.diam@libero.ca', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus'),
(38, 'Donec nibh. Quisque', 'Ap #674-4155 Euismod Ave', '03 98 89 92 33', 'commodo.tincidunt.nibh@erat.ca', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(39, 'convallis ligula. Donec', 'P.O. Box 664, 2120 Nulla Rd.', '08 99 40 73 41', 'Integer.in@sollicitudin.org', 'rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,'),
(40, 'Aliquam adipiscing lobortis', '6309 In Road', '08 50 66 65 87', 'gravida.molestie@pharetrafelis.co.uk', 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum'),
(41, 'et libero. Proin', 'P.O. Box 696, 7308 A, Av.', '04 27 59 23 98', 'accumsan@nasceturridiculusmus.edu', 'et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus'),
(42, 'cursus purus. Nullam', 'P.O. Box 354, 8415 Ipsum Street', '02 20 05 79 05', 'aliquet@enimgravidasit.co.uk', 'Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus.'),
(43, 'at pretium aliquet,', '237-8508 Feugiat St.', '08 82 65 32 52', 'est.mollis@tempordiamdictum.org', 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet.'),
(44, 'risus. Donec egestas.', 'Ap #101-6245 Facilisis Ave', '08 55 68 43 48', 'Curae.Phasellus@Maecenasmalesuadafringilla.org', 'ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat'),
(45, 'feugiat nec, diam.', 'Ap #962-2689 Nunc Rd.', '07 05 66 69 90', 'metus@musAenean.net', 'nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas.'),
(46, 'augue, eu tempor', '4929 Nam Road', '01 42 01 52 18', 'libero.Integer@laciniaSedcongue.edu', 'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,'),
(47, 'Ut nec urna', 'Ap #970-3078 Pellentesque St.', '02 37 82 22 92', 'in@NuncmaurisMorbi.edu', 'Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus'),
(48, 'faucibus orci luctus', '220-4934 Sagittis St.', '05 23 38 30 84', 'dui.nec.tempus@magnaPhasellus.com', 'sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus'),
(49, 'scelerisque neque. Nullam', '269-200 Phasellus Road', '07 53 44 11 23', 'convallis@Aeneaneuismod.co.uk', 'Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum.'),
(50, 'Proin dolor. Nulla', 'Ap #251-9104 In Ave', '07 87 84 83 99', 'consectetuer.adipiscing@eratnequenon.net', 'nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus'),
(51, 'sit amet metus.', 'Ap #938-4475 Diam Ave', '08 65 38 10 51', 'Mauris.nulla@purussapiengravida.co.uk', 'Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc'),
(52, 'imperdiet non, vestibulum', '940-1366 Duis Ave', '04 83 76 38 22', 'sit.amet.nulla@diamProindolor.co.uk', 'aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,'),
(53, 'elit sed consequat', 'Ap #148-7454 Ligula. St.', '03 65 55 44 99', 'Quisque.nonummy.ipsum@scelerisqueloremipsum.net', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent'),
(54, 'Donec dignissim magna', 'Ap #334-3808 Nec Avenue', '01 86 12 54 60', 'Duis@cursusdiamat.org', 'velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum'),
(55, 'magna. Praesent interdum', '338-8317 Semper, Street', '06 49 73 16 69', 'dignissim.magna@laciniaorciconsectetuer.net', 'Quisque libero lacus, varius et, euismod et, commodo at, libero.'),
(56, 'odio. Etiam ligula', '420-1659 Tellus. Rd.', '04 37 88 00 57', 'ipsum.dolor.sit@idante.co.uk', 'ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac'),
(57, 'sollicitudin a, malesuada', '9582 Quis Rd.', '05 44 18 08 97', 'Sed.nunc.est@Sedauctor.net', 'euismod est arcu ac orci. Ut semper pretium neque. Morbi'),
(58, 'nec tellus. Nunc', '1135 Ullamcorper. St.', '02 51 12 34 37', 'mauris.ut.mi@Curabitursed.co.uk', 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a'),
(59, 'Phasellus in felis.', '5879 Augue Rd.', '03 83 54 02 98', 'Nullam.suscipit.est@vulputateullamcorper.net', 'non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget'),
(60, 'ac arcu. Nunc', 'P.O. Box 793, 9644 Ligula Street', '08 06 08 37 37', 'Curabitur.egestas@sempereratin.co.uk', 'Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis'),
(61, 'a felis ullamcorper', 'Ap #371-5746 Accumsan Av.', '04 71 79 83 08', 'velit.eu@lacus.net', 'sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus'),
(62, 'ultrices posuere cubilia', '9973 Libero Street', '09 73 02 86 62', 'Pellentesque.habitant@pedeCrasvulputate.ca', 'a neque. Nullam ut nisi a odio semper cursus. Integer'),
(63, 'sodales purus, in', '804-4922 Massa Rd.', '04 61 66 55 57', 'viverra@rutrum.org', 'Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla'),
(64, 'diam vel arcu.', 'Ap #723-2467 Placerat. Ave', '05 74 52 06 98', 'nulla.Cras.eu@Aliquam.net', 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id'),
(65, 'neque. Nullam ut', 'P.O. Box 694, 2299 Rutrum. Road', '08 73 75 34 99', 'sit.amet.metus@gravidamauris.co.uk', 'diam vel arcu. Curabitur ut odio vel est tempor bibendum.'),
(66, 'sit amet risus.', '2896 Ornare Rd.', '05 41 54 62 44', 'non.hendrerit@interdumSedauctor.edu', 'Cras eget nisi dictum augue malesuada malesuada. Integer id magna'),
(67, 'magna. Praesent interdum', 'Ap #268-9162 Sed Road', '06 72 30 51 33', 'penatibus.et.magnis@erat.org', 'purus gravida sagittis. Duis gravida. Praesent eu nulla at sem'),
(68, 'natoque penatibus et', '1162 Scelerisque Rd.', '09 06 31 64 43', 'et@consequatlectus.edu', 'libero. Proin sed turpis nec mauris blandit mattis. Cras eget'),
(69, 'non, hendrerit id,', 'Ap #494-6009 Lorem Avenue', '07 24 32 92 55', 'vulputate.dui.nec@mauris.org', 'ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget'),
(70, 'ipsum primis in', '9973 Vel, Rd.', '05 95 25 87 22', 'Aliquam.erat@Sedcongue.co.uk', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean'),
(71, 'odio sagittis semper.', 'Ap #980-1178 Sem St.', '01 11 06 14 13', 'consectetuer.euismod@tinciduntorci.edu', 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.'),
(72, 'Mauris nulla. Integer', '2869 Elementum Street', '07 93 26 43 95', 'ante.ipsum.primis@lectus.com', 'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas'),
(73, 'placerat. Cras dictum', 'P.O. Box 119, 420 Odio. Ave', '05 41 46 62 78', 'sit@diamPellentesquehabitant.edu', 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent'),
(74, 'cubilia Curae; Phasellus', '643-7092 Habitant Ave', '09 81 94 82 37', 'Sed.nunc.est@consequatdolorvitae.net', 'Nullam velit dui, semper et, lacinia vitae, sodales at, velit.'),
(75, 'nec quam. Curabitur', 'P.O. Box 982, 9895 Tincidunt. Rd.', '04 76 46 55 65', 'vitae.purus.gravida@euismodenimEtiam.ca', 'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,'),
(76, 'scelerisque neque. Nullam', 'Ap #102-419 Eu, Ave', '08 83 71 10 95', 'vulputate.mauris@Maurisvelturpis.com', 'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque'),
(77, 'pellentesque eget, dictum', '346-4831 Fames Street', '01 42 90 66 63', 'ac@vulputatenisisem.org', 'imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,'),
(78, 'nec enim. Nunc', '3358 Nunc. Rd.', '09 78 26 70 17', 'Fusce.mi.lorem@imperdiet.ca', 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum'),
(79, 'tristique neque venenatis', 'P.O. Box 985, 8829 Dolor. St.', '09 95 63 69 47', 'lectus.sit@arcu.edu', 'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam'),
(80, 'libero at auctor', '5488 Tellus Avenue', '07 01 21 98 59', 'dis.parturient@euismodin.co.uk', 'eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce'),
(81, 'ac urna. Ut', 'Ap #651-7908 Vestibulum Ave', '09 69 88 83 75', 'non@nuncsed.ca', 'id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend'),
(82, 'ac metus vitae', '4151 Lorem, Rd.', '02 32 64 34 56', 'eget.lacus@lacusMauris.net', 'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci'),
(83, 'pede ac urna.', 'Ap #289-8806 Orci St.', '06 79 17 47 87', 'rutrum@ligulaelitpretium.net', 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis'),
(84, 'urna, nec luctus', 'Ap #274-1629 Nec Avenue', '01 48 96 63 49', 'amet.consectetuer@tincidunt.edu', 'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant'),
(85, 'mi tempor lorem,', 'P.O. Box 993, 7263 Euismod St.', '04 74 20 65 79', 'ornare.libero.at@laoreet.co.uk', 'Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy'),
(86, 'arcu. Vivamus sit', 'P.O. Box 813, 2369 Nec St.', '04 24 73 88 64', 'Sed@aliquet.ca', 'elit, a feugiat tellus lorem eu metus. In lorem. Donec'),
(87, 'vitae dolor. Donec', 'Ap #674-9588 Vel St.', '01 92 73 29 88', 'hendrerit.consectetuer@sit.co.uk', 'Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.'),
(88, 'hymenaeos. Mauris ut', 'Ap #781-2649 Ultricies Av.', '06 75 48 18 46', 'Integer@arcuVivamus.org', 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula'),
(89, 'lectus, a sollicitudin', '864-3241 Sit Street', '07 45 93 69 32', 'Aenean@liberoat.com', 'in faucibus orci luctus et ultrices posuere cubilia Curae; Donec'),
(90, 'ac facilisis facilisis,', 'Ap #528-5769 Diam Rd.', '04 95 20 69 07', 'non@elitsedconsequat.com', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt'),
(91, 'aptent taciti sociosqu', 'Ap #226-9303 Cras St.', '01 73 53 33 73', 'blandit@odiosemper.com', 'purus. Maecenas libero est, congue a, aliquet vel, vulputate eu,'),
(92, 'quis diam. Pellentesque', 'Ap #450-6537 Dolor, Avenue', '01 56 33 14 39', 'enim@dictumPhasellus.org', 'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum'),
(93, 'felis ullamcorper viverra.', '654-8421 Non, Ave', '06 78 62 89 99', 'Curabitur.sed@ultricesVivamus.org', 'varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem'),
(94, 'in sodales elit', 'P.O. Box 989, 6247 Nibh Rd.', '03 88 43 53 77', 'quam@nislNulla.com', 'felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.'),
(95, 'ante dictum mi,', '9571 Mollis St.', '02 33 38 37 42', 'pede@orciUt.com', 'Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,'),
(96, 'amet, dapibus id,', '879-2901 Nec, Ave', '02 81 98 34 24', 'tempor@etmagnisdis.org', 'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus'),
(97, 'velit. Pellentesque ultricies', '1457 Nullam St.', '06 60 48 20 07', 'Quisque@ut.org', 'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae,'),
(98, 'sed, est. Nunc', '4517 Enim. Av.', '02 63 14 98 26', 'tempor@mauris.com', 'faucibus leo, in lobortis tellus justo sit amet nulla. Donec'),
(99, 'sed leo. Cras', '9603 Metus. Road', '06 98 10 14 87', 'ipsum@magnamalesuadavel.org', 'non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum'),
(100, 'eu tellus eu', '429-5826 Elit Avenue', '09 88 33 58 74', 'nonummy.ipsum.non@primisinfaucibus.com', 'dui lectus rutrum urna, nec luctus felis purus ac tellus.');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur_index`
--

CREATE TABLE `fournisseur_index` (
  `keyword` varchar(200) NOT NULL,
  `field` varchar(50) NOT NULL,
  `position` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lignebordereau`
--

CREATE TABLE `lignebordereau` (
  `id` bigint(20) NOT NULL,
  `idproduit` bigint(20) DEFAULT NULL,
  `quantite` bigint(20) DEFAULT NULL,
  `idbordereau` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lignecommande`
--

CREATE TABLE `lignecommande` (
  `id` bigint(20) NOT NULL,
  `idcommande` bigint(20) DEFAULT NULL,
  `idproduit` bigint(20) DEFAULT NULL,
  `quantite` bigint(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lignecommande`
--

INSERT INTO `lignecommande` (`id`, `idcommande`, `idproduit`, `quantite`, `date`, `datemodif`) VALUES
(1, 1, 40, 3, '2013-12-20 21:07:11', '2014-06-07 15:29:36'),
(2, 2, 73, 4, '2015-01-05 09:13:52', '2014-02-28 16:14:38'),
(3, 3, 13, 9, '2013-09-17 13:35:31', '2014-01-30 16:33:55'),
(4, 4, 49, 9, '2014-11-09 16:37:57', '2013-12-18 02:28:44'),
(5, 5, 13, 7, '2013-11-15 19:30:14', '2013-10-13 13:41:59'),
(6, 6, 3, 7, '2014-07-11 08:35:18', '2013-08-15 10:38:51'),
(7, 7, 47, 7, '2014-04-17 12:32:53', '2014-04-22 22:19:56'),
(8, 8, 50, 10, '2013-12-01 04:14:06', '2015-05-11 06:41:51'),
(9, 9, 14, 3, '2014-10-28 20:15:24', '2014-07-26 19:13:55'),
(10, 10, 47, 10, '2015-01-13 10:16:19', '2014-12-04 11:16:26'),
(11, 11, 78, 2, '2014-09-21 13:30:42', '2014-11-07 10:58:20'),
(12, 12, 72, 4, '2013-11-03 16:41:13', '2014-02-11 02:55:38'),
(13, 13, 32, 2, '2014-12-18 13:08:51', '2014-06-19 03:42:36'),
(14, 14, 13, 3, '2015-06-18 18:14:49', '2015-06-22 21:34:10'),
(15, 15, 7, 8, '2015-04-05 15:20:41', '2014-05-10 11:48:15'),
(16, 16, 42, 3, '2014-07-11 03:53:02', '2014-01-27 02:03:44'),
(17, 17, 9, 7, '2014-07-29 05:09:02', '2015-04-22 13:03:20'),
(18, 18, 6, 6, '2013-08-17 12:59:38', '2014-06-01 01:37:04'),
(19, 19, 63, 2, '2014-08-22 02:41:20', '2015-04-30 18:10:30'),
(20, 20, 48, 4, '2014-12-22 14:59:51', '2014-05-12 15:00:17'),
(21, 21, 19, 5, '2014-04-09 12:59:50', '2014-07-13 04:18:20'),
(22, 22, 73, 6, '2014-05-16 22:39:58', '2015-06-12 11:55:52'),
(23, 23, 52, 10, '2013-11-23 04:44:59', '2015-02-15 10:57:08'),
(24, 24, 14, 1, '2014-01-11 08:02:02', '2014-05-06 11:34:52'),
(25, 25, 33, 5, '2014-01-22 19:25:56', '2013-08-11 06:15:47'),
(26, 26, 63, 7, '2015-02-22 20:41:48', '2013-09-30 21:20:07'),
(27, 27, 41, 6, '2014-03-08 04:08:14', '2013-07-28 18:18:11'),
(28, 28, 59, 4, '2014-03-02 03:31:33', '2013-08-25 02:47:51'),
(29, 29, 64, 3, '2014-06-06 20:45:01', '2013-10-31 11:01:50'),
(30, 30, 80, 6, '2014-06-25 01:30:49', '2014-01-24 22:56:21'),
(31, 31, 53, 4, '2014-04-19 01:36:51', '2015-02-10 21:53:54'),
(32, 32, 20, 7, '2014-06-24 21:36:24', '2013-08-01 11:50:44'),
(33, 33, 14, 8, '2015-01-05 08:10:23', '2014-03-19 07:11:31'),
(34, 34, 41, 5, '2013-07-25 21:13:46', '2013-09-03 22:33:41'),
(35, 35, 56, 3, '2014-10-14 08:29:56', '2015-01-03 13:37:04'),
(36, 36, 25, 9, '2014-07-10 16:37:28', '2013-12-30 01:49:49'),
(37, 37, 2, 4, '2014-10-18 17:53:57', '2014-10-05 22:51:48'),
(38, 38, 34, 4, '2014-05-09 21:19:15', '2013-09-13 10:00:08'),
(39, 39, 58, 1, '2015-04-29 17:20:21', '2014-05-13 03:38:41'),
(40, 40, 1, 5, '2014-05-17 09:33:43', '2015-06-18 04:16:11'),
(41, 41, 34, 6, '2014-06-05 16:54:29', '2015-01-12 07:06:34'),
(42, 42, 36, 10, '2013-10-10 09:25:10', '2014-07-03 22:33:44'),
(43, 43, 33, 2, '2014-11-28 13:50:46', '2013-08-12 07:50:32'),
(44, 44, 70, 1, '2015-02-27 18:00:35', '2014-12-30 23:23:48'),
(45, 45, 37, 9, '2014-04-11 07:40:02', '2014-08-07 18:19:10'),
(46, 46, 68, 7, '2014-05-03 17:08:42', '2014-07-28 09:54:40'),
(47, 47, 67, 9, '2015-02-03 02:41:14', '2013-12-11 22:14:30'),
(48, 48, 13, 6, '2015-04-09 13:04:02', '2015-07-09 02:37:24'),
(49, 49, 30, 4, '2014-09-11 01:18:59', '2014-05-26 11:40:43'),
(50, 50, 60, 6, '2015-04-06 07:35:55', '2014-04-07 17:14:48'),
(51, 51, 1, 2, '2015-05-20 03:59:44', '2013-08-30 18:31:28'),
(52, 52, 16, 2, '2014-11-22 09:00:23', '2013-12-17 05:37:10'),
(53, 53, 6, 2, '2015-05-20 19:44:22', '2014-09-18 12:00:24'),
(54, 54, 22, 5, '2014-02-28 09:51:46', '2015-01-29 18:37:09'),
(55, 55, 18, 2, '2014-11-09 11:20:53', '2014-05-16 12:12:27'),
(56, 56, 51, 2, '2014-05-21 15:01:30', '2013-12-05 16:57:20'),
(57, 57, 51, 7, '2014-11-07 21:21:20', '2013-12-13 20:21:12'),
(58, 58, 22, 10, '2014-12-27 02:38:17', '2014-02-05 11:40:51'),
(59, 59, 77, 3, '2013-08-10 19:05:15', '2015-06-03 08:30:45'),
(60, 60, 67, 2, '2013-07-18 11:57:06', '2013-11-08 06:53:39'),
(61, 61, 15, 9, '2013-11-02 01:43:34', '2015-03-15 16:27:21'),
(62, 62, 15, 2, '2014-05-26 21:32:18', '2014-06-26 00:23:53'),
(63, 63, 13, 5, '2013-12-26 15:48:24', '2014-01-21 09:56:39'),
(64, 64, 31, 6, '2013-09-02 18:04:35', '2015-03-31 23:53:45'),
(65, 65, 20, 10, '2015-01-15 19:22:48', '2015-06-05 08:31:59'),
(66, 66, 76, 8, '2014-09-26 00:43:24', '2014-02-24 18:52:07'),
(67, 67, 35, 9, '2015-03-04 09:48:53', '2014-01-03 13:34:47'),
(68, 68, 20, 6, '2014-04-06 06:17:41', '2014-06-10 10:31:07'),
(69, 69, 44, 7, '2013-09-23 21:18:04', '2013-11-22 20:17:02'),
(70, 70, 69, 5, '2014-11-26 22:53:00', '2014-03-15 18:25:49'),
(71, 71, 5, 1, '2015-02-20 21:31:44', '2015-04-29 11:48:09'),
(72, 72, 39, 3, '2014-07-10 03:42:29', '2014-08-31 08:37:29'),
(73, 73, 39, 9, '2014-04-10 08:13:17', '2014-09-01 12:02:08'),
(74, 74, 42, 10, '2014-06-08 02:50:58', '2015-06-15 06:19:35'),
(75, 75, 7, 1, '2013-11-04 06:45:17', '2014-11-04 12:59:11'),
(76, 76, 10, 7, '2013-10-15 13:56:42', '2014-06-20 10:28:57'),
(77, 77, 69, 6, '2014-03-06 09:44:12', '2015-05-29 03:28:56'),
(78, 78, 12, 3, '2015-05-09 09:13:53', '2015-04-28 23:03:19'),
(79, 79, 54, 4, '2014-02-20 08:23:37', '2013-10-03 05:07:53'),
(80, 80, 78, 8, '2015-03-08 19:34:21', '2015-04-30 21:24:11'),
(81, 81, 73, 8, '2015-02-01 21:21:15', '2013-07-28 14:12:22'),
(82, 82, 73, 4, '2015-06-01 13:52:36', '2013-10-16 09:49:11'),
(83, 83, 41, 10, '2015-01-18 14:54:21', '2013-12-24 09:46:13'),
(84, 84, 25, 10, '2013-10-10 07:52:11', '2014-04-20 22:08:13'),
(85, 85, 49, 9, '2015-05-03 17:36:46', '2013-09-14 16:43:23'),
(86, 86, 49, 2, '2014-02-27 22:00:05', '2015-04-21 11:29:36'),
(87, 87, 57, 4, '2013-12-20 08:36:38', '2014-08-08 21:27:15'),
(88, 88, 3, 9, '2013-10-15 03:31:35', '2015-05-01 21:14:47'),
(89, 89, 41, 9, '2014-05-13 05:22:18', '2014-05-16 13:49:04'),
(90, 90, 29, 7, '2013-12-18 16:54:05', '2013-09-03 12:27:55'),
(91, 91, 64, 2, '2014-10-01 17:35:08', '2015-06-06 14:16:20'),
(92, 92, 9, 7, '2014-02-06 12:03:22', '2015-05-25 12:14:26'),
(93, 93, 32, 3, '2014-11-22 21:33:49', '2013-12-25 19:56:23'),
(94, 94, 54, 8, '2014-06-20 14:59:51', '2014-05-31 21:56:04'),
(95, 95, 29, 6, '2015-04-25 18:11:45', '2013-08-14 19:55:41'),
(96, 96, 46, 6, '2015-06-13 15:03:02', '2013-11-09 02:54:51'),
(97, 97, 28, 10, '2015-06-15 01:14:28', '2014-07-21 07:57:00'),
(98, 98, 46, 5, '2014-10-22 04:18:32', '2014-01-29 09:44:36'),
(99, 99, 23, 9, '2014-03-09 04:54:23', '2015-01-28 18:06:19'),
(100, 100, 7, 3, '2015-02-28 13:52:24', '2014-12-17 21:36:48');

-- --------------------------------------------------------

--
-- Structure de la table `lignefacture`
--

CREATE TABLE `lignefacture` (
  `id` bigint(20) NOT NULL,
  `idarticle` bigint(20) DEFAULT NULL,
  `idfacture` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `prixat` float(18,2) DEFAULT NULL,
  `prix` float(18,2) DEFAULT NULL,
  `ordonnance` tinyint(1) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `alerte` bigint(20) DEFAULT NULL,
  `conditionnement` varchar(255) DEFAULT NULL,
  `idclasse` bigint(20) DEFAULT NULL,
  `idtaxe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `prixat`, `prix`, `ordonnance`, `commentaire`, `alerte`, `conditionnement`, `idclasse`, `idtaxe`) VALUES
(1, 'morbi', NULL, 742.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 2, 'aliquam eros turpis non enim. Mauris', 54, 48),
(2, 'inceptos', NULL, 740.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 42, 'massa. Suspendisse eleifend. Cras sed leo. Cras vehicula', 63, 84),
(3, 'sodales', NULL, 853.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 48, 'elit. Curabitur sed tortor. Integer aliquam adipiscing', 56, 34),
(4, 'nunc', NULL, 568.00, 1, 'Lorem ipsum dolor', 87, 'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan', 75, 7),
(5, 'urna', NULL, 58.00, 0, 'Lorem ipsum dolor', 97, 'auctor ullamcorper, nisl arcu iaculis enim,', 53, 16),
(6, 'arcu', NULL, 688.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 96, 'Vestibulum accumsan neque et nunc. Quisque', 72, 89),
(7, 'Aliquam', NULL, 808.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 48, 'Nunc ut erat. Sed nunc est, mollis non, cursus non,', 80, 25),
(8, 'non', NULL, 183.00, 0, 'Lorem', 24, 'dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 92, 6),
(9, 'Etiam', NULL, 89.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 97, 'ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet', 41, 35),
(10, 'natoque', NULL, 464.00, 0, 'Lorem ipsum dolor sit amet,', 34, 'sed pede nec ante blandit viverra. Donec tempus, lorem fringilla', 47, 86),
(11, 'Donec', NULL, 721.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 44, 'Sed', 47, 96),
(12, 'facilisis.', NULL, 729.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 85, 'arcu et pede. Nunc', 13, 16),
(13, 'auctor', NULL, 171.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 47, 'tellus', 53, 89),
(14, 'nec,', NULL, 531.00, 0, 'Lorem ipsum dolor sit', 18, 'non ante bibendum', 29, 91),
(15, 'dictum', NULL, 654.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 62, 'urna. Ut tincidunt vehicula risus.', 48, 49),
(16, 'iaculis', NULL, 236.00, 0, 'Lorem', 49, 'Aliquam gravida mauris', 73, 86),
(17, 'egestas.', NULL, 701.00, 0, 'Lorem ipsum dolor', 2, 'Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus', 92, 39),
(18, 'parturient', NULL, 565.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 67, 'posuere, enim nisl elementum purus, accumsan interdum libero dui', 2, 77),
(19, 'nisl.', NULL, 233.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 20, 'nunc nulla vulputate dui, nec tempus', 55, 61),
(20, 'feugiat', NULL, 617.00, 1, 'Lorem ipsum', 92, 'sodales', 16, 40),
(21, 'Fusce', NULL, 232.00, 1, 'Lorem ipsum dolor sit amet,', 67, 'vitae risus. Duis a mi fringilla mi lacinia', 99, 43),
(22, 'sit', NULL, 725.00, 1, 'Lorem', 97, 'ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', 46, 62),
(23, 'enim,', NULL, 42.00, 1, 'Lorem', 3, 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo.', 29, 74),
(24, 'Donec', NULL, 99.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 4, 'Integer sem elit, pharetra ut, pharetra', 46, 43),
(25, 'magnis', NULL, 583.00, 1, 'Lorem ipsum dolor sit amet,', 64, 'malesuada vel, convallis in,', 64, 79),
(26, 'sem,', NULL, 476.00, 1, 'Lorem ipsum dolor sit amet, consectetuer', 71, 'justo nec ante.', 1, 72),
(27, 'sem', NULL, 602.00, 1, 'Lorem ipsum dolor', 14, 'ante bibendum ullamcorper. Duis cursus, diam at', 98, 62),
(28, 'Quisque', NULL, 147.00, 1, 'Lorem ipsum dolor', 90, 'mi eleifend egestas. Sed', 50, 54),
(29, 'dapibus', NULL, 106.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 39, 'augue porttitor', 24, 27),
(30, 'tempus', NULL, 195.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 29, 'consequat nec, mollis vitae,', 26, 45),
(31, 'ut', NULL, 13.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 80, 'dolor, nonummy ac, feugiat non,', 3, 80),
(32, 'odio.', NULL, 881.00, 1, 'Lorem ipsum dolor', 90, 'sit amet luctus', 68, 39),
(33, 'arcu', NULL, 486.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 13, 'aliquam', 34, 59),
(34, 'eu,', NULL, 120.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 42, 'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed', 40, 53),
(35, 'elementum', NULL, 718.00, 1, 'Lorem', 33, 'eu', 76, 79),
(36, 'mus.', NULL, 607.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 68, 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc', 86, 16),
(37, 'feugiat', NULL, 10.00, 0, 'Lorem', 64, 'porta elit, a feugiat', 12, 2),
(38, 'enim.', NULL, 874.00, 1, 'Lorem ipsum dolor sit amet,', 5, 'auctor velit.', 52, 82),
(39, 'ac', NULL, 575.00, 0, 'Lorem', 5, 'ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.', 71, 56),
(40, 'vitae', NULL, 751.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 66, 'Fusce aliquet magna', 44, 12),
(41, 'consequat', NULL, 831.00, 0, 'Lorem ipsum dolor', 45, 'orci quis lectus. Nullam suscipit, est', 62, 2),
(42, 'leo.', NULL, 508.00, 1, 'Lorem', 90, 'semper. Nam tempor diam dictum', 64, 35),
(43, 'libero', NULL, 270.00, 0, 'Lorem ipsum dolor', 73, 'odio semper cursus.', 82, 97),
(44, 'convallis', NULL, 893.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 22, 'in, cursus et, eros. Proin', 66, 31),
(45, 'ac', NULL, 758.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 48, 'ipsum sodales purus, in', 66, 68),
(46, 'sit', NULL, 322.00, 0, 'Lorem ipsum dolor sit', 91, 'egestas a, dui. Cras', 36, 42),
(47, 'sem', NULL, 144.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 35, 'sit amet, consectetuer adipiscing', 91, 11),
(48, 'Nunc', NULL, 835.00, 1, 'Lorem ipsum dolor sit amet, consectetuer', 30, 'congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum', 48, 50),
(49, 'adipiscing', NULL, 635.00, 1, 'Lorem ipsum', 93, 'gravida sagittis. Duis gravida. Praesent eu nulla at', 78, 49),
(50, 'Suspendisse', NULL, 331.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 76, 'Mauris', 68, 46),
(51, 'urna,', NULL, 651.00, 1, 'Lorem ipsum dolor sit amet,', 50, 'libero. Integer in magna. Phasellus', 75, 14),
(52, 'sit', NULL, 733.00, 0, 'Lorem', 53, 'accumsan convallis, ante', 67, 10),
(53, 'facilisis.', NULL, 541.00, 1, 'Lorem ipsum dolor sit', 61, 'dolor. Fusce mi lorem, vehicula et,', 53, 79),
(54, 'ante.', NULL, 390.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 80, 'arcu. Vestibulum ante ipsum', 13, 16),
(55, 'odio', NULL, 434.00, 1, 'Lorem ipsum dolor sit amet,', 13, 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus', 99, 22),
(56, 'In', NULL, 769.00, 0, 'Lorem ipsum', 97, 'sagittis. Duis gravida.', 91, 81),
(57, 'risus.', NULL, 194.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 51, 'sem ut', 70, 55),
(58, 'Aliquam', NULL, 100.00, 0, 'Lorem ipsum dolor sit', 11, 'dolor. Donec fringilla. Donec', 73, 99),
(59, 'neque.', NULL, 439.00, 1, 'Lorem ipsum', 18, 'sit amet,', 82, 32),
(60, 'ac', NULL, 348.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 46, 'Cras dolor dolor, tempus', 73, 60),
(61, 'et', NULL, 27.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 56, 'nisi nibh lacinia orci, consectetuer euismod est', 3, 40),
(62, 'gravida', NULL, 935.00, 0, 'Lorem ipsum', 20, 'facilisis vitae, orci. Phasellus', 22, 72),
(63, 'Morbi', NULL, 909.00, 1, 'Lorem ipsum dolor', 50, 'vel, faucibus id, libero. Donec consectetuer mauris id', 29, 88),
(64, 'Cras', NULL, 618.00, 0, 'Lorem ipsum', 71, 'mollis nec, cursus a, enim. Suspendisse aliquet, sem', 32, 27),
(65, 'diam', NULL, 130.00, 0, 'Lorem ipsum dolor sit', 95, 'felis eget varius ultrices, mauris ipsum porta', 74, 32),
(66, 'In', NULL, 618.00, 1, 'Lorem ipsum dolor sit amet,', 53, 'sem', 98, 27),
(67, 'purus.', NULL, 898.00, 1, 'Lorem ipsum dolor sit amet,', 68, 'lacinia at,', 83, 93),
(68, 'orci', NULL, 870.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 10, 'urna et', 77, 50),
(69, 'sed,', NULL, 473.00, 0, 'Lorem ipsum dolor sit amet,', 93, 'lacus. Ut nec urna et arcu', 86, 2),
(70, 'mi', NULL, 342.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 95, 'et netus', 94, 91),
(71, 'tincidunt', NULL, 690.00, 0, 'Lorem ipsum', 93, 'vitae mauris sit amet lorem semper auctor. Mauris', 99, 59),
(72, 'lorem', NULL, 606.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 58, 'lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor', 79, 27),
(73, 'eu', NULL, 441.00, 0, 'Lorem', 65, 'Quisque ornare tortor at risus. Nunc ac sem ut', 39, 65),
(74, 'dictum', NULL, 383.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 57, 'Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere', 68, 48),
(75, 'enim', NULL, 341.00, 0, 'Lorem ipsum dolor sit amet, consectetuer', 8, 'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In', 61, 74),
(76, 'egestas', NULL, 175.00, 0, 'Lorem ipsum', 72, 'in, hendrerit consectetuer, cursus', 99, 43),
(77, 'est.', NULL, 787.00, 0, 'Lorem ipsum dolor sit', 36, 'scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', 54, 29),
(78, 'sagittis', NULL, 277.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 75, 'blandit congue. In scelerisque scelerisque', 88, 89),
(79, 'rhoncus', NULL, 5.00, 0, 'Lorem', 48, 'gravida non, sollicitudin a, malesuada id,', 25, 87),
(80, 'amet', NULL, 783.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 29, 'nibh', 73, 77),
(81, 'quis,', NULL, 732.00, 0, 'Lorem', 24, 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,', 100, 25),
(82, 'semper', NULL, 300.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 55, 'neque et nunc. Quisque ornare tortor at risus. Nunc', 25, 92),
(83, 'nulla.', NULL, 218.00, 1, 'Lorem ipsum', 53, 'Donec tincidunt. Donec vitae erat', 32, 39),
(84, 'mus.', NULL, 933.00, 0, 'Lorem ipsum dolor', 35, 'sodales.', 7, 46),
(85, 'odio.', NULL, 421.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 95, 'Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 50, 75),
(86, 'neque.', NULL, 105.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 38, 'porttitor scelerisque neque.', 47, 9),
(87, 'aliquam', NULL, 872.00, 0, 'Lorem ipsum dolor sit amet,', 41, 'arcu. Vestibulum ante', 68, 26),
(88, 'id', NULL, 96.00, 0, 'Lorem ipsum dolor sit', 55, 'vulputate', 73, 30),
(89, 'tellus', NULL, 506.00, 0, 'Lorem ipsum dolor sit', 56, 'nunc nulla vulputate', 32, 40),
(90, 'nunc', NULL, 529.00, 0, 'Lorem ipsum dolor sit', 7, 'nisl arcu iaculis enim, sit amet ornare lectus', 83, 49),
(91, 'molestie', NULL, 929.00, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 73, 'nisi. Mauris', 34, 48),
(92, 'commodo', NULL, 892.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 60, 'magna a tortor. Nunc commodo auctor velit.', 48, 71),
(93, 'amet', NULL, 415.00, 0, 'Lorem ipsum dolor', 94, 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.', 16, 98),
(94, 'Etiam', NULL, 997.00, 0, 'Lorem ipsum dolor', 13, 'nibh enim, gravida sit amet, dapibus id,', 24, 44),
(95, 'Ut', NULL, 933.00, 1, 'Lorem ipsum dolor sit amet,', 29, 'Morbi metus. Vivamus euismod urna. Nullam lobortis', 47, 100),
(96, 'consequat,', NULL, 1.00, 0, 'Lorem ipsum dolor sit amet,', 6, 'eget nisi dictum', 6, 37),
(97, 'ligula.', NULL, 656.00, 0, 'Lorem ipsum', 69, 'molestie sodales. Mauris blandit enim consequat', 75, 10),
(98, 'tempor', NULL, 5.00, 1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 94, 'tortor', 77, 92),
(99, 'dictum', NULL, 228.00, 1, 'Lorem ipsum dolor sit amet, consectetuer', 75, 'Nulla facilisi. Sed neque. Sed eget lacus. Mauris non', 75, 67),
(100, 'neque.', NULL, 305.00, 1, 'Lorem ipsum', 8, 'eu neque pellentesque massa lobortis ultrices.', 85, 3);

-- --------------------------------------------------------

--
-- Structure de la table `produit_index`
--

CREATE TABLE `produit_index` (
  `keyword` varchar(200) NOT NULL,
  `field` varchar(50) NOT NULL,
  `position` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `taxe`
--

CREATE TABLE `taxe` (
  `id` bigint(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `taux` float(18,2) DEFAULT NULL,
  `date` datetime NOT NULL,
  `datemodif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `taxe`
--

INSERT INTO `taxe` (`id`, `libelle`, `taux`, `date`, `datemodif`) VALUES
(1, 'Lacus Varius Inc.', 15.00, '2013-12-01 12:16:36', '2015-06-03 18:31:16'),
(2, 'Sapien Ltd', 16.00, '2014-11-02 01:04:09', '2015-06-07 00:29:31'),
(3, 'Odio Tristique Pharetra Inc.', 17.00, '2013-07-17 14:15:47', '2015-06-10 21:38:11'),
(4, 'Facilisis Suspendisse Institute', 15.00, '2015-02-24 10:44:29', '2015-06-14 22:17:10'),
(5, 'Eget Metus Consulting', 18.00, '2014-05-06 00:05:37', '2015-06-09 21:20:50'),
(6, 'A Mi Fringilla Foundation', 2.00, '2015-04-01 23:50:29', '2015-06-16 22:06:42'),
(7, 'Ultrices Vivamus Rhoncus PC', 1.00, '2014-12-07 22:04:37', '2015-06-22 11:21:31'),
(8, 'Lorem Vehicula Foundation', 20.00, '2014-09-10 16:02:50', '2015-06-03 15:22:39'),
(9, 'Mauris Industries', 16.00, '2014-08-06 22:31:38', '2015-06-18 15:08:24'),
(10, 'Sed Inc.', 14.00, '2014-10-12 12:55:36', '2015-06-11 06:05:30'),
(11, 'Elit Fermentum Associates', 13.00, '2014-07-18 22:59:18', '2015-06-23 18:43:26'),
(12, 'Eget Ipsum Donec Industries', 5.00, '2014-07-07 02:57:35', '2015-06-20 22:13:35'),
(13, 'Ac Ltd', 7.00, '2013-10-14 05:47:04', '2015-06-09 15:59:42'),
(14, 'Fusce Aliquet Magna Corp.', 7.00, '2014-02-13 08:05:57', '2015-06-09 05:40:04'),
(15, 'Orci Ut Inc.', 8.00, '2015-05-06 05:27:16', '2015-06-12 22:47:19'),
(16, 'Eget PC', 18.00, '2014-06-02 21:30:59', '2015-06-12 04:16:09'),
(17, 'Eros Nam Consequat PC', 12.00, '2013-07-19 02:21:37', '2015-06-09 08:32:14'),
(18, 'Eget Lacus Associates', 5.00, '2014-12-19 08:46:58', '2015-06-06 18:44:43'),
(19, 'Et Lacinia Vitae Company', 20.00, '2014-02-05 02:41:45', '2015-06-14 18:24:00'),
(20, 'Cursus Ltd', 3.00, '2014-11-15 02:30:15', '2015-06-21 23:51:51'),
(21, 'Mollis Corporation', 3.00, '2014-12-11 12:39:55', '2015-06-24 21:25:49'),
(22, 'Aenean Euismod Corporation', 1.00, '2015-03-23 13:48:51', '2015-06-21 20:33:18'),
(23, 'Pharetra Company', 10.00, '2014-08-25 00:29:48', '2015-06-04 14:26:08'),
(24, 'Sapien Corporation', 7.00, '2013-08-12 13:10:06', '2015-06-11 10:34:18'),
(25, 'Suspendisse Dui Fusce Industries', 10.00, '2015-05-09 13:53:01', '2015-06-20 18:25:53'),
(26, 'Hendrerit Id Ante Industries', 16.00, '2013-09-24 11:49:11', '2015-06-17 20:08:43'),
(27, 'Integer Mollis Integer Industries', 11.00, '2015-03-13 06:11:37', '2015-06-14 01:43:50'),
(28, 'Vivamus Nibh Industries', 4.00, '2013-12-06 22:50:09', '2015-06-21 05:33:22'),
(29, 'Mauris Ut Company', 6.00, '2015-04-27 08:54:50', '2015-06-17 11:53:56'),
(30, 'Faucibus Orci Luctus Ltd', 7.00, '2014-10-06 08:43:47', '2015-06-21 02:53:30'),
(31, 'Nullam Enim Sed PC', 9.00, '2015-02-07 09:44:24', '2015-06-17 07:44:46'),
(32, 'Iaculis Nec Ltd', 6.00, '2014-03-16 22:55:48', '2015-06-21 22:49:39'),
(33, 'Elit Incorporated', 19.00, '2013-10-31 22:39:23', '2015-06-10 08:35:36'),
(34, 'Sed Pede PC', 5.00, '2014-04-01 18:53:33', '2015-06-04 01:56:42'),
(35, 'Mauris Sagittis Corporation', 2.00, '2015-05-25 04:30:32', '2015-06-04 20:05:53'),
(36, 'Egestas Aliquam Consulting', 19.00, '2014-10-27 05:16:44', '2015-06-11 12:30:36'),
(37, 'Nunc Mauris Sapien Consulting', 11.00, '2015-01-30 02:45:14', '2015-06-12 19:40:58'),
(38, 'Blandit Mattis Consulting', 16.00, '2013-08-14 11:36:38', '2015-06-26 02:35:12'),
(39, 'Arcu Nunc Mauris PC', 11.00, '2013-09-12 01:48:41', '2015-06-05 18:51:13'),
(40, 'Mauris A Nunc Company', 14.00, '2014-07-02 00:16:13', '2015-06-16 03:29:06'),
(41, 'Pharetra Industries', 13.00, '2015-05-17 01:40:44', '2015-06-02 02:37:37'),
(42, 'Sem Corporation', 7.00, '2014-05-03 07:34:17', '2015-06-09 15:06:07'),
(43, 'Metus Associates', 3.00, '2013-08-16 13:17:25', '2015-06-22 05:05:39'),
(44, 'Sed Hendrerit Incorporated', 20.00, '2014-04-25 22:40:42', '2015-06-19 03:31:13'),
(45, 'Enim Corporation', 13.00, '2014-09-02 08:16:37', '2015-06-02 06:47:32'),
(46, 'Ipsum Industries', 19.00, '2015-06-02 17:11:53', '2015-06-19 11:51:20'),
(47, 'Tempor Arcu Vestibulum Corp.', 1.00, '2015-06-22 14:35:53', '2015-06-08 14:16:02'),
(48, 'Curabitur Sed Company', 11.00, '2014-10-07 20:42:52', '2015-06-18 14:38:35'),
(49, 'Tincidunt Ltd', 12.00, '2013-08-18 07:16:18', '2015-06-05 10:58:22'),
(50, 'Pharetra LLC', 16.00, '2015-05-18 14:22:35', '2015-06-19 13:54:04'),
(51, 'Semper Corporation', 15.00, '2014-08-28 20:55:54', '2015-06-10 17:30:54'),
(52, 'Dolor Institute', 19.00, '2014-07-30 20:18:42', '2015-06-01 05:00:24'),
(53, 'Non Industries', 5.00, '2013-09-06 04:08:54', '2015-06-08 13:25:43'),
(54, 'Vitae Sodales Nisi Incorporated', 7.00, '2013-07-12 17:31:03', '2015-06-12 13:50:28'),
(55, 'Duis A Mi Company', 18.00, '2014-10-15 07:48:10', '2015-06-14 23:32:13'),
(56, 'Praesent Luctus Institute', 15.00, '2014-07-10 14:28:08', '2015-06-09 09:15:25'),
(57, 'Dui LLC', 10.00, '2014-03-05 23:00:25', '2015-06-05 05:19:17'),
(58, 'Consectetuer Mauris Id LLP', 16.00, '2013-10-09 21:35:08', '2015-06-07 14:03:56'),
(59, 'Risus Nulla Industries', 18.00, '2014-03-11 02:50:46', '2015-06-10 19:22:27'),
(60, 'Mauris Aliquam Eu Associates', 9.00, '2014-03-27 18:06:03', '2015-06-08 21:19:16'),
(61, 'Vestibulum Massa Rutrum LLP', 3.00, '2013-07-29 23:11:33', '2015-06-10 12:39:59'),
(62, 'Integer Sem Corp.', 11.00, '2014-05-02 22:51:25', '2015-06-15 10:03:25'),
(63, 'Sem Elit Pharetra Consulting', 7.00, '2014-08-05 14:44:14', '2015-06-24 19:15:24'),
(64, 'Aliquet Molestie Tellus Industries', 2.00, '2014-05-17 10:23:28', '2015-06-19 06:21:21'),
(65, 'Magna Ut Inc.', 13.00, '2015-01-08 13:46:24', '2015-06-13 14:18:42'),
(66, 'Justo Faucibus Industries', 15.00, '2013-10-11 00:07:36', '2015-06-15 15:59:15'),
(67, 'Volutpat Nulla Corp.', 7.00, '2014-11-01 03:50:29', '2015-06-07 00:21:25'),
(68, 'Dui Institute', 5.00, '2014-03-11 01:51:21', '2015-06-13 23:52:56'),
(69, 'Dolor Sit Company', 14.00, '2013-07-31 07:29:18', '2015-06-18 21:11:30'),
(70, 'Nullam Enim Sed Institute', 6.00, '2013-07-15 17:21:40', '2015-06-03 17:42:20'),
(71, 'Cras Dolor Dolor Incorporated', 5.00, '2014-04-14 06:14:45', '2015-06-23 22:49:20'),
(72, 'Eget Metus Eu Incorporated', 20.00, '2015-01-19 07:56:30', '2015-06-12 15:05:46'),
(73, 'Vitae LLC', 7.00, '2014-01-20 14:11:31', '2015-06-06 07:59:02'),
(74, 'Vel Venenatis Vel Inc.', 5.00, '2015-01-08 11:23:49', '2015-06-18 02:19:46'),
(75, 'Placerat Eget Venenatis LLP', 3.00, '2013-12-07 21:07:15', '2015-06-21 19:46:37'),
(76, 'Elit Foundation', 7.00, '2015-02-23 15:12:21', '2015-06-14 20:49:19'),
(77, 'Ac Feugiat Institute', 14.00, '2015-04-01 23:21:43', '2015-06-01 23:32:15'),
(78, 'Vitae Aliquam Eros Associates', 8.00, '2015-03-08 15:27:40', '2015-06-02 21:36:43'),
(79, 'Amet Dapibus Corporation', 16.00, '2015-04-09 20:17:09', '2015-06-24 15:33:35'),
(80, 'Integer Incorporated', 10.00, '2014-04-26 07:40:41', '2015-06-10 03:50:47'),
(81, 'Ligula Incorporated', 9.00, '2014-12-23 00:35:06', '2015-06-16 08:38:10'),
(82, 'Diam Nunc Consulting', 7.00, '2014-06-15 13:14:16', '2015-06-07 17:54:06'),
(83, 'Tempor Lorem Eget Foundation', 19.00, '2014-04-12 04:16:56', '2015-06-03 08:44:45'),
(84, 'Eu Neque Associates', 10.00, '2014-10-16 07:58:40', '2015-06-07 17:19:07'),
(85, 'Scelerisque Scelerisque Dui Corporation', 19.00, '2015-02-13 15:53:42', '2015-06-16 14:43:45'),
(86, 'Erat Eget Ipsum LLP', 15.00, '2013-08-17 02:04:32', '2015-06-26 16:09:01'),
(87, 'Sed Foundation', 20.00, '2014-07-02 06:15:39', '2015-06-25 15:53:37'),
(88, 'Praesent Consulting', 11.00, '2014-04-06 07:35:10', '2015-06-10 04:54:25'),
(89, 'Enim Non Corp.', 5.00, '2013-08-17 08:36:32', '2015-06-16 12:40:23'),
(90, 'Sollicitudin A LLP', 6.00, '2014-04-15 05:48:50', '2015-06-14 03:03:36'),
(91, 'Eu Lacus Associates', 16.00, '2014-04-19 21:04:36', '2015-06-14 22:47:45'),
(92, 'Vitae Aliquet Nec Company', 15.00, '2014-11-24 00:12:48', '2015-06-18 23:20:01'),
(93, 'Nullam Velit Dui Ltd', 17.00, '2014-03-12 12:10:25', '2015-06-15 09:08:39'),
(94, 'Orci Lacus Vestibulum Corporation', 8.00, '2013-09-01 04:08:53', '2015-06-26 08:16:23'),
(95, 'Dignissim Limited', 4.00, '2014-05-24 01:44:55', '2015-06-01 16:35:35'),
(96, 'Orci Consectetuer Consulting', 6.00, '2015-06-21 14:31:27', '2015-06-05 03:00:02'),
(97, 'Odio Vel Est Corporation', 7.00, '2014-08-11 20:44:27', '2015-06-10 04:33:51'),
(98, 'Lectus Convallis LLP', 7.00, '2014-01-27 14:50:39', '2015-06-03 00:51:32'),
(99, 'Ornare Company', 2.00, '2013-10-03 20:25:44', '2015-06-18 00:19:24'),
(100, 'Aptent Taciti Company', 17.00, '2013-12-17 10:33:04', '2015-06-22 23:48:02');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `nom`, `prenom`, `mail`, `tel`, `type`) VALUES
(1, 'admin', 'admin', 'HAIDARA', 'Badi', 'badihaidara@gmail.com', '0629467871', 3),
(2, 'user', 'user', 'SACKO', 'MADOU', 'madou@sakco.fr', '06 29 46 89 71', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_index`
--

CREATE TABLE `user_index` (
  `keyword` varchar(200) NOT NULL,
  `field` varchar(50) NOT NULL,
  `position` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproduit_idx` (`idproduit`),
  ADD KEY `idbordereau_idx` (`idbordereau`);

--
-- Index pour la table `article_index`
--
ALTER TABLE `article_index`
  ADD PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  ADD KEY `article_index_id_Article_id` (`id`);

--
-- Index pour la table `bordereau`
--
ALTER TABLE `bordereau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcommande_idx` (`idcommande`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classe_index`
--
ALTER TABLE `classe_index`
  ADD PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  ADD KEY `classe_index_id_Classe_id` (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client_index`
--
ALTER TABLE `client_index`
  ADD PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  ADD KEY `client_index_id_Client_id` (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser_idx` (`iduser`),
  ADD KEY `idusermodif_idx` (`idusermodif`),
  ADD KEY `idfournisseur_idx` (`idfournisseur`),
  ADD KEY `idetat_idx` (`idetat`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idclient_idx` (`idclient`),
  ADD KEY `iduser_idx` (`iduser`),
  ADD KEY `idusermodif_idx` (`idusermodif`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fournisseur_index`
--
ALTER TABLE `fournisseur_index`
  ADD PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  ADD KEY `fournisseur_index_id_Fournisseur_id` (`id`);

--
-- Index pour la table `lignebordereau`
--
ALTER TABLE `lignebordereau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idbordereau_idx` (`idbordereau`),
  ADD KEY `idproduit_idx` (`idproduit`);

--
-- Index pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcommande_idx` (`idcommande`),
  ADD KEY `idproduit_idx` (`idproduit`);

--
-- Index pour la table `lignefacture`
--
ALTER TABLE `lignefacture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idfacture_idx` (`idfacture`),
  ADD KEY `idarticle_idx` (`idarticle`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idclasse_idx` (`idclasse`),
  ADD KEY `idtaxe_idx` (`idtaxe`);

--
-- Index pour la table `produit_index`
--
ALTER TABLE `produit_index`
  ADD PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  ADD KEY `produit_index_id_Produit_id` (`id`);

--
-- Index pour la table `taxe`
--
ALTER TABLE `taxe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Index pour la table `user_index`
--
ALTER TABLE `user_index`
  ADD PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  ADD KEY `user_index_id_User_id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `bordereau`
--
ALTER TABLE `bordereau`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `lignebordereau`
--
ALTER TABLE `lignebordereau`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `lignefacture`
--
ALTER TABLE `lignefacture`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `taxe`
--
ALTER TABLE `taxe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `Article_idbordereau_Bordereau_id` FOREIGN KEY (`idbordereau`) REFERENCES `bordereau` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `Article_idproduit_Produit_id` FOREIGN KEY (`idproduit`) REFERENCES `produit` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `article_index`
--
ALTER TABLE `article_index`
  ADD CONSTRAINT `article_index_id_Article_id` FOREIGN KEY (`id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `bordereau`
--
ALTER TABLE `bordereau`
  ADD CONSTRAINT `Bordereau_idcommande_Commande_id` FOREIGN KEY (`idcommande`) REFERENCES `commande` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `classe_index`
--
ALTER TABLE `classe_index`
  ADD CONSTRAINT `classe_index_id_Classe_id` FOREIGN KEY (`id`) REFERENCES `classe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `client_index`
--
ALTER TABLE `client_index`
  ADD CONSTRAINT `client_index_id_Client_id` FOREIGN KEY (`id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `Commande_idetat_Etat_id` FOREIGN KEY (`idetat`) REFERENCES `etat` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `Commande_idfournisseur_Fournisseur_id` FOREIGN KEY (`idfournisseur`) REFERENCES `fournisseur` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `Commande_iduser_User_id` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `Commande_idusermodif_User_id` FOREIGN KEY (`idusermodif`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `Facture_idclient_Client_id` FOREIGN KEY (`idclient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `Facture_iduser_User_id` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `Facture_idusermodif_User_id` FOREIGN KEY (`idusermodif`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `fournisseur_index`
--
ALTER TABLE `fournisseur_index`
  ADD CONSTRAINT `fournisseur_index_id_Fournisseur_id` FOREIGN KEY (`id`) REFERENCES `fournisseur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `lignebordereau`
--
ALTER TABLE `lignebordereau`
  ADD CONSTRAINT `LigneBordereau_idbordereau_Bordereau_id` FOREIGN KEY (`idbordereau`) REFERENCES `bordereau` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `LigneBordereau_idproduit_Produit_id` FOREIGN KEY (`idproduit`) REFERENCES `produit` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `lignecommande`
--
ALTER TABLE `lignecommande`
  ADD CONSTRAINT `LigneCommande_idcommande_Commande_id` FOREIGN KEY (`idcommande`) REFERENCES `commande` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `LigneCommande_idproduit_Produit_id` FOREIGN KEY (`idproduit`) REFERENCES `produit` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `lignefacture`
--
ALTER TABLE `lignefacture`
  ADD CONSTRAINT `LigneFacture_idarticle_Article_id` FOREIGN KEY (`idarticle`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `LigneFacture_idfacture_Facture_id` FOREIGN KEY (`idfacture`) REFERENCES `facture` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `Produit_idclasse_Classe_id` FOREIGN KEY (`idclasse`) REFERENCES `classe` (`id`),
  ADD CONSTRAINT `Produit_idtaxe_Taxe_id` FOREIGN KEY (`idtaxe`) REFERENCES `taxe` (`id`);

--
-- Contraintes pour la table `produit_index`
--
ALTER TABLE `produit_index`
  ADD CONSTRAINT `produit_index_id_Produit_id` FOREIGN KEY (`id`) REFERENCES `produit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user_index`
--
ALTER TABLE `user_index`
  ADD CONSTRAINT `user_index_id_User_id` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
