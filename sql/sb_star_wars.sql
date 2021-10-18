-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 05:06 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sb_star_wars`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fid` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `name`, `fid`, `status`) VALUES
(1, 'A New Hope', 1, '1'),
(2, 'The Empire Strikes Back', 2, '1'),
(3, 'Return of the Jedi', 3, '1'),
(4, 'The Phantom Menace', 4, '1'),
(5, 'Attack of the Clones', 5, '1'),
(6, 'Revenge of the Sith', 6, '1');

-- --------------------------------------------------------

--
-- Table structure for table `peoples`
--

CREATE TABLE `peoples` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `height` mediumint(9) NOT NULL,
  `mass` mediumint(9) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `height`, `mass`, `pid`, `status`) VALUES
(1, 'Luke Skywalker', 175, 81, 1, '1'),
(2, 'C-3PO', 167, 75, 2, '1'),
(3, 'R2-D2', 96, 32, 3, '1'),
(4, 'Darth Vader', 202, 136, 4, '1'),
(5, 'Leia Organa', 150, 49, 5, '1'),
(6, 'Owen Lars', 178, 120, 6, '1'),
(7, 'Beru Whitesun lars', 165, 75, 7, '1'),
(8, 'R5-D4', 97, 32, 8, '1'),
(9, 'Biggs Darklighter', 183, 84, 9, '1'),
(10, 'Obi-Wan Kenobi', 182, 77, 10, '1'),
(11, 'Anakin Skywalker', 188, 84, 11, '1'),
(12, 'Wilhuff Tarkin', 180, 0, 12, '1'),
(13, 'Chewbacca', 228, 112, 13, '1'),
(14, 'Han Solo', 180, 80, 14, '1'),
(15, 'Greedo', 173, 74, 15, '1'),
(16, 'Jabba Desilijic Tiure', 175, 1, 16, '1'),
(17, 'Wedge Antilles', 170, 77, 18, '1'),
(18, 'Jek Tono Porkins', 180, 110, 19, '1'),
(19, 'Yoda', 66, 17, 20, '1'),
(20, 'Palpatine', 170, 75, 21, '1'),
(21, 'Boba Fett', 183, 78, 22, '1'),
(22, 'IG-88', 200, 140, 23, '1'),
(23, 'Bossk', 190, 113, 24, '1'),
(24, 'Lando Calrissian', 177, 79, 25, '1'),
(25, 'Lobot', 175, 79, 26, '1'),
(26, 'Ackbar', 180, 83, 27, '1'),
(27, 'Mon Mothma', 150, 0, 28, '1'),
(28, 'Arvel Crynyd', 0, 0, 29, '1'),
(29, 'Wicket Systri Warrick', 88, 20, 30, '1'),
(30, 'Nien Nunb', 160, 68, 31, '1');

-- --------------------------------------------------------

--
-- Table structure for table `people_to_film_relations`
--

CREATE TABLE `people_to_film_relations` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_to_film_relations`
--

INSERT INTO `people_to_film_relations` (`id`, `pid`, `fid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 6),
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 2, 4),
(9, 2, 5),
(10, 2, 6),
(11, 3, 1),
(12, 3, 2),
(13, 3, 3),
(14, 3, 4),
(15, 3, 5),
(16, 3, 6),
(17, 4, 1),
(18, 4, 2),
(19, 4, 3),
(20, 4, 6),
(21, 5, 1),
(22, 5, 2),
(23, 5, 3),
(24, 5, 6),
(25, 6, 1),
(26, 6, 5),
(27, 6, 6),
(28, 7, 1),
(29, 7, 5),
(30, 7, 6),
(31, 8, 1),
(32, 9, 1),
(33, 10, 1),
(34, 10, 2),
(35, 10, 3),
(36, 10, 4),
(37, 10, 5),
(38, 10, 6),
(39, 11, 4),
(40, 11, 5),
(41, 11, 6),
(42, 12, 1),
(43, 12, 6),
(44, 13, 1),
(45, 13, 2),
(46, 13, 3),
(47, 13, 6),
(48, 14, 1),
(49, 14, 2),
(50, 14, 3),
(51, 15, 1),
(52, 16, 1),
(53, 16, 3),
(54, 16, 4),
(55, 18, 1),
(56, 18, 2),
(57, 18, 3),
(58, 19, 1),
(59, 20, 2),
(60, 20, 3),
(61, 20, 4),
(62, 20, 5),
(63, 20, 6),
(64, 21, 2),
(65, 21, 3),
(66, 21, 4),
(67, 21, 5),
(68, 21, 6),
(69, 22, 2),
(70, 22, 3),
(71, 22, 5),
(72, 23, 2),
(73, 24, 2),
(74, 25, 2),
(75, 25, 3),
(76, 26, 2),
(77, 27, 3),
(78, 28, 3),
(79, 29, 3),
(80, 30, 3),
(81, 31, 3);

-- --------------------------------------------------------

--
-- Table structure for table `people_to_starship_relations`
--

CREATE TABLE `people_to_starship_relations` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_to_starship_relations`
--

INSERT INTO `people_to_starship_relations` (`id`, `pid`, `sid`) VALUES
(1, 1, 12),
(2, 1, 22),
(3, 4, 13),
(4, 9, 12),
(5, 10, 48),
(6, 10, 59),
(7, 10, 64),
(8, 10, 65),
(9, 10, 74),
(10, 11, 39),
(11, 11, 59),
(12, 11, 65),
(13, 13, 10),
(14, 13, 22),
(15, 14, 10),
(16, 14, 22),
(17, 18, 12),
(18, 19, 12),
(19, 22, 21),
(20, 25, 10),
(21, 29, 28),
(22, 31, 10);

-- --------------------------------------------------------

--
-- Table structure for table `people_to_vehicle_relations`
--

CREATE TABLE `people_to_vehicle_relations` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_to_vehicle_relations`
--

INSERT INTO `people_to_vehicle_relations` (`id`, `pid`, `vid`) VALUES
(1, 1, 14),
(2, 1, 30),
(3, 5, 30),
(4, 10, 38),
(5, 11, 44),
(6, 11, 46),
(7, 13, 19),
(8, 18, 14);

-- --------------------------------------------------------

--
-- Table structure for table `planets`
--

CREATE TABLE `planets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `planets`
--

INSERT INTO `planets` (`id`, `name`, `pid`, `status`) VALUES
(1, 'Tatooine', 1, '1'),
(2, 'Alderaan', 2, '1'),
(3, 'Yavin IV', 3, '1'),
(4, 'Hoth', 4, '1'),
(5, 'Dagobah', 5, '1'),
(6, 'Bespin', 6, '1'),
(7, 'Endor', 7, '1'),
(8, 'Naboo', 8, '1'),
(9, 'Coruscant', 9, '1'),
(10, 'Kamino', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `starships`
--

CREATE TABLE `starships` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `starships`
--

INSERT INTO `starships` (`id`, `name`, `sid`, `status`) VALUES
(1, 'CR90 corvette', 2, '1'),
(2, 'Star Destroyer', 3, '1'),
(3, 'Sentinel-class landing craft', 5, '1'),
(4, 'Death Star', 9, '1'),
(5, 'Millennium Falcon', 10, '1'),
(6, 'Y-wing', 11, '1'),
(7, 'X-wing', 12, '1'),
(8, 'TIE Advanced x1', 13, '1'),
(9, 'Executor', 15, '1'),
(10, 'Rebel transport', 17, '1'),
(11, 'Slave 1', 21, '1'),
(12, 'Imperial shuttle', 22, '1'),
(13, 'EF76 Nebulon-B escort frigate', 23, '1'),
(14, 'Calamari Cruiser', 27, '1'),
(15, 'A-wing', 28, '1'),
(16, 'B-wing', 29, '1'),
(17, 'Republic Cruiser', 31, '1'),
(18, 'Droid control ship', 32, '1'),
(19, 'Naboo fighter', 39, '1'),
(20, 'Naboo Royal Starship', 40, '1'),
(21, 'Scimitar', 41, '1'),
(22, 'J-type diplomatic barge', 43, '1'),
(23, 'AA-9 Coruscant freighter', 47, '1'),
(24, 'Jedi starfighter', 48, '1'),
(25, 'H-type Nubian yacht', 49, '1'),
(26, 'Republic Assault ship', 52, '1'),
(27, 'Solar Sailer', 58, '1'),
(28, 'Trade Federation cruiser', 59, '1'),
(29, 'Theta-class T-2c shuttle', 61, '1'),
(30, 'Republic attack cruiser', 63, '1'),
(31, 'Naboo star skiff', 64, '1'),
(32, 'Jedi Interceptor', 65, '1'),
(33, 'arc-170', 66, '1'),
(34, 'Banking clan frigte', 68, '1'),
(35, 'Belbullab-22 starfighter', 74, '1'),
(36, 'V-wing', 75, '1'),
(37, 'Naboo star skiff', 64, '1'),
(38, 'Jedi Interceptor', 65, '1'),
(39, 'arc-170', 66, '1'),
(40, 'Banking clan frigte', 68, '1'),
(41, 'Belbullab-22 starfighter', 74, '1'),
(42, 'V-wing', 75, '1'),
(43, 'Naboo star skiff', 64, '1'),
(44, 'Jedi Interceptor', 65, '1'),
(45, 'arc-170', 66, '1'),
(46, 'Banking clan frigte', 68, '1'),
(47, 'Belbullab-22 starfighter', 74, '1'),
(48, 'V-wing', 75, '1'),
(49, 'Naboo star skiff', 64, '1'),
(50, 'Jedi Interceptor', 65, '1'),
(51, 'arc-170', 66, '1'),
(52, 'Banking clan frigte', 68, '1'),
(53, 'Belbullab-22 starfighter', 74, '1'),
(54, 'V-wing', 75, '1'),
(55, 'Naboo star skiff', 64, '1'),
(56, 'Jedi Interceptor', 65, '1'),
(57, 'arc-170', 66, '1'),
(58, 'Banking clan frigte', 68, '1'),
(59, 'Belbullab-22 starfighter', 74, '1'),
(60, 'V-wing', 75, '1'),
(61, 'Naboo star skiff', 64, '1'),
(62, 'Jedi Interceptor', 65, '1'),
(63, 'arc-170', 66, '1'),
(64, 'Banking clan frigte', 68, '1'),
(65, 'Belbullab-22 starfighter', 74, '1'),
(66, 'V-wing', 75, '1'),
(67, 'Naboo star skiff', 64, '1'),
(68, 'Jedi Interceptor', 65, '1'),
(69, 'arc-170', 66, '1'),
(70, 'Banking clan frigte', 68, '1'),
(71, 'Belbullab-22 starfighter', 74, '1'),
(72, 'V-wing', 75, '1'),
(73, 'Naboo star skiff', 64, '1'),
(74, 'Jedi Interceptor', 65, '1'),
(75, 'arc-170', 66, '1'),
(76, 'Banking clan frigte', 68, '1'),
(77, 'Belbullab-22 starfighter', 74, '1'),
(78, 'V-wing', 75, '1'),
(79, 'Naboo star skiff', 64, '1'),
(80, 'Jedi Interceptor', 65, '1'),
(81, 'arc-170', 66, '1'),
(82, 'Banking clan frigte', 68, '1'),
(83, 'Belbullab-22 starfighter', 74, '1'),
(84, 'V-wing', 75, '1'),
(85, 'Naboo star skiff', 64, '1'),
(86, 'Jedi Interceptor', 65, '1'),
(87, 'arc-170', 66, '1'),
(88, 'Banking clan frigte', 68, '1'),
(89, 'Belbullab-22 starfighter', 74, '1'),
(90, 'V-wing', 75, '1'),
(91, 'Naboo star skiff', 64, '1'),
(92, 'Jedi Interceptor', 65, '1'),
(93, 'arc-170', 66, '1'),
(94, 'Banking clan frigte', 68, '1'),
(95, 'Belbullab-22 starfighter', 74, '1'),
(96, 'V-wing', 75, '1'),
(97, 'Naboo star skiff', 64, '1'),
(98, 'Jedi Interceptor', 65, '1'),
(99, 'arc-170', 66, '1'),
(100, 'Banking clan frigte', 68, '1'),
(101, 'Belbullab-22 starfighter', 74, '1'),
(102, 'V-wing', 75, '1'),
(103, 'Naboo star skiff', 64, '1'),
(104, 'Jedi Interceptor', 65, '1'),
(105, 'arc-170', 66, '1'),
(106, 'Banking clan frigte', 68, '1'),
(107, 'Belbullab-22 starfighter', 74, '1'),
(108, 'V-wing', 75, '1'),
(109, 'Naboo star skiff', 64, '1'),
(110, 'Jedi Interceptor', 65, '1'),
(111, 'arc-170', 66, '1'),
(112, 'Banking clan frigte', 68, '1'),
(113, 'Belbullab-22 starfighter', 74, '1'),
(114, 'V-wing', 75, '1'),
(115, 'Naboo star skiff', 64, '1'),
(116, 'Jedi Interceptor', 65, '1'),
(117, 'arc-170', 66, '1'),
(118, 'Banking clan frigte', 68, '1'),
(119, 'Belbullab-22 starfighter', 74, '1'),
(120, 'V-wing', 75, '1'),
(121, 'Naboo star skiff', 64, '1'),
(122, 'Jedi Interceptor', 65, '1'),
(123, 'arc-170', 66, '1'),
(124, 'Banking clan frigte', 68, '1'),
(125, 'Belbullab-22 starfighter', 74, '1'),
(126, 'V-wing', 75, '1'),
(127, 'Naboo star skiff', 64, '1'),
(128, 'Jedi Interceptor', 65, '1'),
(129, 'arc-170', 66, '1'),
(130, 'Banking clan frigte', 68, '1'),
(131, 'Belbullab-22 starfighter', 74, '1'),
(132, 'V-wing', 75, '1'),
(133, 'Naboo star skiff', 64, '1'),
(134, 'Jedi Interceptor', 65, '1'),
(135, 'arc-170', 66, '1'),
(136, 'Banking clan frigte', 68, '1'),
(137, 'Belbullab-22 starfighter', 74, '1'),
(138, 'V-wing', 75, '1'),
(139, 'Naboo star skiff', 64, '1'),
(140, 'Jedi Interceptor', 65, '1'),
(141, 'arc-170', 66, '1'),
(142, 'Banking clan frigte', 68, '1'),
(143, 'Belbullab-22 starfighter', 74, '1'),
(144, 'V-wing', 75, '1'),
(145, 'Naboo star skiff', 64, '1'),
(146, 'Jedi Interceptor', 65, '1'),
(147, 'arc-170', 66, '1'),
(148, 'Banking clan frigte', 68, '1'),
(149, 'Belbullab-22 starfighter', 74, '1'),
(150, 'V-wing', 75, '1'),
(151, 'Naboo star skiff', 64, '1'),
(152, 'Jedi Interceptor', 65, '1'),
(153, 'arc-170', 66, '1'),
(154, 'Banking clan frigte', 68, '1'),
(155, 'Belbullab-22 starfighter', 74, '1'),
(156, 'V-wing', 75, '1'),
(157, 'Naboo star skiff', 64, '1'),
(158, 'Jedi Interceptor', 65, '1'),
(159, 'arc-170', 66, '1'),
(160, 'Banking clan frigte', 68, '1'),
(161, 'Belbullab-22 starfighter', 74, '1'),
(162, 'V-wing', 75, '1'),
(163, 'Naboo star skiff', 64, '1'),
(164, 'Jedi Interceptor', 65, '1'),
(165, 'arc-170', 66, '1'),
(166, 'Banking clan frigte', 68, '1'),
(167, 'Belbullab-22 starfighter', 74, '1'),
(168, 'V-wing', 75, '1'),
(169, 'Naboo star skiff', 64, '1'),
(170, 'Jedi Interceptor', 65, '1'),
(171, 'arc-170', 66, '1'),
(172, 'Banking clan frigte', 68, '1'),
(173, 'Belbullab-22 starfighter', 74, '1'),
(174, 'V-wing', 75, '1'),
(175, 'Naboo star skiff', 64, '1'),
(176, 'Jedi Interceptor', 65, '1'),
(177, 'arc-170', 66, '1'),
(178, 'Banking clan frigte', 68, '1'),
(179, 'Belbullab-22 starfighter', 74, '1'),
(180, 'V-wing', 75, '1'),
(181, 'Naboo star skiff', 64, '1'),
(182, 'Jedi Interceptor', 65, '1'),
(183, 'arc-170', 66, '1'),
(184, 'Banking clan frigte', 68, '1'),
(185, 'Belbullab-22 starfighter', 74, '1'),
(186, 'V-wing', 75, '1'),
(187, 'Naboo star skiff', 64, '1'),
(188, 'Jedi Interceptor', 65, '1'),
(189, 'arc-170', 66, '1'),
(190, 'Banking clan frigte', 68, '1'),
(191, 'Belbullab-22 starfighter', 74, '1'),
(192, 'V-wing', 75, '1'),
(193, 'Naboo star skiff', 64, '1'),
(194, 'Jedi Interceptor', 65, '1'),
(195, 'arc-170', 66, '1'),
(196, 'Banking clan frigte', 68, '1'),
(197, 'Belbullab-22 starfighter', 74, '1'),
(198, 'V-wing', 75, '1'),
(199, 'Naboo star skiff', 64, '1'),
(200, 'Jedi Interceptor', 65, '1'),
(201, 'arc-170', 66, '1'),
(202, 'Banking clan frigte', 68, '1'),
(203, 'Belbullab-22 starfighter', 74, '1'),
(204, 'V-wing', 75, '1'),
(205, 'Naboo star skiff', 64, '1'),
(206, 'Jedi Interceptor', 65, '1'),
(207, 'arc-170', 66, '1'),
(208, 'Banking clan frigte', 68, '1'),
(209, 'Belbullab-22 starfighter', 74, '1'),
(210, 'V-wing', 75, '1'),
(211, 'Naboo star skiff', 64, '1'),
(212, 'Jedi Interceptor', 65, '1'),
(213, 'arc-170', 66, '1'),
(214, 'Banking clan frigte', 68, '1'),
(215, 'Belbullab-22 starfighter', 74, '1'),
(216, 'V-wing', 75, '1'),
(217, 'Naboo star skiff', 64, '1'),
(218, 'Jedi Interceptor', 65, '1'),
(219, 'arc-170', 66, '1'),
(220, 'Banking clan frigte', 68, '1'),
(221, 'Belbullab-22 starfighter', 74, '1'),
(222, 'V-wing', 75, '1'),
(223, 'Naboo star skiff', 64, '1'),
(224, 'Jedi Interceptor', 65, '1'),
(225, 'arc-170', 66, '1'),
(226, 'Banking clan frigte', 68, '1'),
(227, 'Belbullab-22 starfighter', 74, '1'),
(228, 'V-wing', 75, '1'),
(229, 'Naboo star skiff', 64, '1'),
(230, 'Jedi Interceptor', 65, '1'),
(231, 'arc-170', 66, '1'),
(232, 'Banking clan frigte', 68, '1'),
(233, 'Belbullab-22 starfighter', 74, '1'),
(234, 'V-wing', 75, '1'),
(235, 'Naboo star skiff', 64, '1'),
(236, 'Jedi Interceptor', 65, '1'),
(237, 'arc-170', 66, '1'),
(238, 'Banking clan frigte', 68, '1'),
(239, 'Belbullab-22 starfighter', 74, '1'),
(240, 'V-wing', 75, '1'),
(241, 'Naboo star skiff', 64, '1'),
(242, 'Jedi Interceptor', 65, '1'),
(243, 'arc-170', 66, '1'),
(244, 'Banking clan frigte', 68, '1'),
(245, 'Belbullab-22 starfighter', 74, '1'),
(246, 'V-wing', 75, '1'),
(247, 'Naboo star skiff', 64, '1'),
(248, 'Jedi Interceptor', 65, '1'),
(249, 'arc-170', 66, '1'),
(250, 'Banking clan frigte', 68, '1'),
(251, 'Belbullab-22 starfighter', 74, '1'),
(252, 'V-wing', 75, '1'),
(253, 'Naboo star skiff', 64, '1'),
(254, 'Jedi Interceptor', 65, '1'),
(255, 'arc-170', 66, '1'),
(256, 'Banking clan frigte', 68, '1'),
(257, 'Belbullab-22 starfighter', 74, '1'),
(258, 'V-wing', 75, '1'),
(259, 'Naboo star skiff', 64, '1'),
(260, 'Jedi Interceptor', 65, '1'),
(261, 'arc-170', 66, '1'),
(262, 'Banking clan frigte', 68, '1'),
(263, 'Belbullab-22 starfighter', 74, '1'),
(264, 'V-wing', 75, '1'),
(265, 'Naboo star skiff', 64, '1'),
(266, 'Jedi Interceptor', 65, '1'),
(267, 'arc-170', 66, '1'),
(268, 'Banking clan frigte', 68, '1'),
(269, 'Belbullab-22 starfighter', 74, '1'),
(270, 'V-wing', 75, '1'),
(271, 'Naboo star skiff', 64, '1'),
(272, 'Jedi Interceptor', 65, '1'),
(273, 'arc-170', 66, '1'),
(274, 'Banking clan frigte', 68, '1'),
(275, 'Belbullab-22 starfighter', 74, '1'),
(276, 'V-wing', 75, '1'),
(277, 'Naboo star skiff', 64, '1'),
(278, 'Jedi Interceptor', 65, '1'),
(279, 'arc-170', 66, '1'),
(280, 'Banking clan frigte', 68, '1'),
(281, 'Belbullab-22 starfighter', 74, '1'),
(282, 'V-wing', 75, '1'),
(283, 'Naboo star skiff', 64, '1'),
(284, 'Jedi Interceptor', 65, '1'),
(285, 'arc-170', 66, '1'),
(286, 'Banking clan frigte', 68, '1'),
(287, 'Belbullab-22 starfighter', 74, '1'),
(288, 'V-wing', 75, '1'),
(289, 'Naboo star skiff', 64, '1'),
(290, 'Jedi Interceptor', 65, '1'),
(291, 'arc-170', 66, '1'),
(292, 'Banking clan frigte', 68, '1'),
(293, 'Belbullab-22 starfighter', 74, '1'),
(294, 'V-wing', 75, '1'),
(295, 'Naboo star skiff', 64, '1'),
(296, 'Jedi Interceptor', 65, '1'),
(297, 'arc-170', 66, '1'),
(298, 'Banking clan frigte', 68, '1'),
(299, 'Belbullab-22 starfighter', 74, '1'),
(300, 'V-wing', 75, '1'),
(301, 'Naboo star skiff', 64, '1'),
(302, 'Jedi Interceptor', 65, '1'),
(303, 'arc-170', 66, '1'),
(304, 'Banking clan frigte', 68, '1'),
(305, 'Belbullab-22 starfighter', 74, '1'),
(306, 'V-wing', 75, '1'),
(307, 'Naboo star skiff', 64, '1'),
(308, 'Jedi Interceptor', 65, '1'),
(309, 'arc-170', 66, '1'),
(310, 'Banking clan frigte', 68, '1'),
(311, 'Belbullab-22 starfighter', 74, '1'),
(312, 'V-wing', 75, '1'),
(313, 'Naboo star skiff', 64, '1'),
(314, 'Jedi Interceptor', 65, '1'),
(315, 'arc-170', 66, '1'),
(316, 'Banking clan frigte', 68, '1'),
(317, 'Belbullab-22 starfighter', 74, '1'),
(318, 'V-wing', 75, '1'),
(319, 'Naboo star skiff', 64, '1'),
(320, 'Jedi Interceptor', 65, '1'),
(321, 'arc-170', 66, '1'),
(322, 'Banking clan frigte', 68, '1'),
(323, 'Belbullab-22 starfighter', 74, '1'),
(324, 'V-wing', 75, '1'),
(325, 'Naboo star skiff', 64, '1'),
(326, 'Jedi Interceptor', 65, '1'),
(327, 'arc-170', 66, '1'),
(328, 'Banking clan frigte', 68, '1'),
(329, 'Belbullab-22 starfighter', 74, '1'),
(330, 'V-wing', 75, '1'),
(331, 'Naboo star skiff', 64, '1'),
(332, 'Jedi Interceptor', 65, '1'),
(333, 'arc-170', 66, '1'),
(334, 'Banking clan frigte', 68, '1'),
(335, 'Belbullab-22 starfighter', 74, '1'),
(336, 'V-wing', 75, '1'),
(337, 'Naboo star skiff', 64, '1'),
(338, 'Jedi Interceptor', 65, '1'),
(339, 'arc-170', 66, '1'),
(340, 'Banking clan frigte', 68, '1'),
(341, 'Belbullab-22 starfighter', 74, '1'),
(342, 'V-wing', 75, '1'),
(343, 'Naboo star skiff', 64, '1'),
(344, 'Jedi Interceptor', 65, '1'),
(345, 'arc-170', 66, '1'),
(346, 'Banking clan frigte', 68, '1'),
(347, 'Belbullab-22 starfighter', 74, '1'),
(348, 'V-wing', 75, '1'),
(349, 'Naboo star skiff', 64, '1'),
(350, 'Jedi Interceptor', 65, '1'),
(351, 'arc-170', 66, '1'),
(352, 'Banking clan frigte', 68, '1'),
(353, 'Belbullab-22 starfighter', 74, '1'),
(354, 'V-wing', 75, '1'),
(355, 'Naboo star skiff', 64, '1'),
(356, 'Jedi Interceptor', 65, '1'),
(357, 'arc-170', 66, '1'),
(358, 'Banking clan frigte', 68, '1'),
(359, 'Belbullab-22 starfighter', 74, '1'),
(360, 'V-wing', 75, '1'),
(361, 'Naboo star skiff', 64, '1'),
(362, 'Jedi Interceptor', 65, '1'),
(363, 'arc-170', 66, '1'),
(364, 'Banking clan frigte', 68, '1'),
(365, 'Belbullab-22 starfighter', 74, '1'),
(366, 'V-wing', 75, '1'),
(367, 'Naboo star skiff', 64, '1'),
(368, 'Jedi Interceptor', 65, '1'),
(369, 'arc-170', 66, '1'),
(370, 'Banking clan frigte', 68, '1'),
(371, 'Belbullab-22 starfighter', 74, '1'),
(372, 'V-wing', 75, '1'),
(373, 'Naboo star skiff', 64, '1'),
(374, 'Jedi Interceptor', 65, '1'),
(375, 'arc-170', 66, '1'),
(376, 'Banking clan frigte', 68, '1'),
(377, 'Belbullab-22 starfighter', 74, '1'),
(378, 'V-wing', 75, '1'),
(379, 'Naboo star skiff', 64, '1'),
(380, 'Jedi Interceptor', 65, '1'),
(381, 'arc-170', 66, '1'),
(382, 'Banking clan frigte', 68, '1'),
(383, 'Belbullab-22 starfighter', 74, '1'),
(384, 'V-wing', 75, '1'),
(385, 'Naboo star skiff', 64, '1'),
(386, 'Jedi Interceptor', 65, '1'),
(387, 'arc-170', 66, '1'),
(388, 'Banking clan frigte', 68, '1'),
(389, 'Belbullab-22 starfighter', 74, '1'),
(390, 'V-wing', 75, '1'),
(391, 'Naboo star skiff', 64, '1'),
(392, 'Jedi Interceptor', 65, '1'),
(393, 'arc-170', 66, '1'),
(394, 'Banking clan frigte', 68, '1'),
(395, 'Belbullab-22 starfighter', 74, '1'),
(396, 'V-wing', 75, '1'),
(397, 'Naboo star skiff', 64, '1'),
(398, 'Jedi Interceptor', 65, '1'),
(399, 'arc-170', 66, '1'),
(400, 'Banking clan frigte', 68, '1'),
(401, 'Belbullab-22 starfighter', 74, '1'),
(402, 'V-wing', 75, '1'),
(403, 'Naboo star skiff', 64, '1'),
(404, 'Jedi Interceptor', 65, '1'),
(405, 'arc-170', 66, '1'),
(406, 'Banking clan frigte', 68, '1'),
(407, 'Belbullab-22 starfighter', 74, '1'),
(408, 'V-wing', 75, '1'),
(409, 'Naboo star skiff', 64, '1'),
(410, 'Jedi Interceptor', 65, '1'),
(411, 'arc-170', 66, '1'),
(412, 'Banking clan frigte', 68, '1'),
(413, 'Belbullab-22 starfighter', 74, '1'),
(414, 'V-wing', 75, '1'),
(415, 'Naboo star skiff', 64, '1'),
(416, 'Jedi Interceptor', 65, '1'),
(417, 'arc-170', 66, '1'),
(418, 'Banking clan frigte', 68, '1'),
(419, 'Belbullab-22 starfighter', 74, '1'),
(420, 'V-wing', 75, '1'),
(421, 'Naboo star skiff', 64, '1'),
(422, 'Jedi Interceptor', 65, '1'),
(423, 'arc-170', 66, '1'),
(424, 'Banking clan frigte', 68, '1'),
(425, 'Belbullab-22 starfighter', 74, '1'),
(426, 'V-wing', 75, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pin` varchar(250) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pin`, `status`) VALUES
(1, 'super_admin', 'e10adc3949ba59abbe56e057f20f883e', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `vid` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `vid`, `status`) VALUES
(1, 'Sand Crawler', 4, '1'),
(2, 'T-16 skyhopper', 6, '1'),
(3, 'X-34 landspeeder', 7, '1'),
(4, 'TIE/LN starfighter', 8, '1'),
(5, 'Snowspeeder', 14, '1'),
(6, 'TIE bomber', 16, '1'),
(7, 'AT-AT', 18, '1'),
(8, 'AT-ST', 19, '1'),
(9, 'Storm IV Twin-Pod cloud car', 20, '1'),
(10, 'Sail barge', 24, '1'),
(11, 'Bantha-II cargo skiff', 25, '1'),
(12, 'TIE/IN interceptor', 26, '1'),
(13, 'Imperial Speeder Bike', 30, '1'),
(14, 'Vulture Droid', 33, '1'),
(15, 'Multi-Troop Transport', 34, '1'),
(16, 'Armored Assault Tank', 35, '1'),
(17, 'Single Trooper Aerial Platform', 36, '1'),
(18, 'C-9979 landing craft', 37, '1'),
(19, 'Tribubble bongo', 38, '1'),
(20, 'Sith speeder', 42, '1'),
(21, 'Zephyr-G swoop bike', 44, '1'),
(22, 'Koro-2 Exodrive airspeeder', 45, '1'),
(23, 'XJ-6 airspeeder', 46, '1'),
(24, 'LAAT/i', 50, '1'),
(25, 'LAAT/c', 51, '1'),
(26, 'AT-TE', 53, '1'),
(27, 'SPHA', 54, '1'),
(28, 'Flitknot speeder', 55, '1'),
(29, 'Neimoidian shuttle', 56, '1'),
(30, 'Geonosian starfighter', 57, '1'),
(31, 'Tsmeu-6 personal wheel bike', 60, '1'),
(32, 'Emergency Firespeeder', 62, '1'),
(33, 'Droid tri-fighter', 67, '1'),
(34, 'Oevvaor jet catamaran', 69, '1'),
(35, 'Raddaugh Gnasp fluttercraft', 70, '1'),
(36, 'Clone turbo tank', 71, '1'),
(37, 'Corporate Alliance tank droid', 72, '1'),
(38, 'Droid gunship', 73, '1'),
(39, 'AT-RT', 76, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_to_film_relations`
--
ALTER TABLE `people_to_film_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_to_starship_relations`
--
ALTER TABLE `people_to_starship_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_to_vehicle_relations`
--
ALTER TABLE `people_to_vehicle_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planets`
--
ALTER TABLE `planets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starships`
--
ALTER TABLE `starships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `people_to_film_relations`
--
ALTER TABLE `people_to_film_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `people_to_starship_relations`
--
ALTER TABLE `people_to_starship_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `people_to_vehicle_relations`
--
ALTER TABLE `people_to_vehicle_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `planets`
--
ALTER TABLE `planets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `starships`
--
ALTER TABLE `starships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
