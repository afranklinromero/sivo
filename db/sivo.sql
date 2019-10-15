-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2019 a las 00:19:49
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `id_candidato` int(11) NOT NULL,
  `sigla_candidato` varchar(50) NOT NULL,
  `nombre_candidato` varchar(50) NOT NULL,
  `total_votos` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id_candidato`, `sigla_candidato`, `nombre_candidato`, `total_votos`) VALUES
(1, 'CC', 'COMUNIDAD CIUDADANA', 60),
(2, 'FPV', 'FRENTE PARA LA VICTORIA', 55),
(3, 'MTS', 'MOVIMIENTO TERCER SISTEMA', 58),
(4, 'UCS', 'UNIDAD CIVICA SOLIDARIA', 355),
(5, 'MAS', 'MOVIMIENTO AL SOCIALISMO', 80),
(6, 'BDN', 'BOLIVIA DICE NO', 105),
(7, 'PDC', 'PARTIDO DEMOCRATA CRISTIANO', 78),
(8, 'MNR', 'MOVIMIENTO NACIONALISTA REPUBLIANO', 68),
(9, 'PB', 'PAN BOL', 69),
(10, 'BL', 'BLANCO', 70),
(11, 'NL', 'NULO', 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id_distrito` int(50) NOT NULL,
  `numero_distrito` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id_distrito`, `numero_distrito`) VALUES
(1, 11),
(2, 1),
(3, 4),
(4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id_mesa` int(50) NOT NULL,
  `id_recinto` int(50) NOT NULL,
  `numero_mesa` varchar(50) NOT NULL,
  `estado` int(10) NOT NULL,
  `rum` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesa`, `id_recinto`, `numero_mesa`, `estado`, `rum`) VALUES
(1, 1, 'Mesa-1', 0, 123),
(2, 1, 'Mesa-2', 0, 0),
(3, 1, 'Mesa-3', 0, 0),
(4, 1, 'Mesa-4', 0, 0),
(5, 1, 'Mesa-5', 0, 0),
(6, 1, 'Mesa-6', 0, 0),
(7, 1, 'Mesa-7', 0, 0),
(8, 1, 'Mesa-8', 0, 0),
(9, 1, 'Mesa-9', 0, 0),
(10, 1, 'Mesa-10', 0, 0),
(11, 2, 'Mesa-1', 0, 0),
(12, 2, 'Mesa-2', 0, 0),
(13, 2, 'Mesa-3', 1, 0),
(14, 2, 'Mesa-4', 1, 0),
(15, 3, 'Mesa-1', 0, 0),
(16, 4, 'Mesa-1', 1, 0),
(17, 4, 'Mesa-2', 1, 0),
(18, 4, 'Mesa-3', 1, 0),
(19, 4, 'Mesa-4', 1, 0),
(20, 4, 'Mesa-5', 1, 0),
(21, 4, 'Mesa-6', 1, 0),
(22, 4, 'Mesa-7', 1, 0),
(23, 4, 'Mesa-8', 1, 0),
(24, 5, 'Mesa-1', 1, 0),
(25, 5, 'Mesa-2', 1, 0),
(26, 5, 'Mesa-3', 1, 0),
(27, 5, 'Mesa-4', 1, 0),
(28, 6, 'Mesa-1', 1, 0),
(29, 6, 'Mesa-2', 1, 0),
(30, 6, 'Mesa-3', 1, 0),
(31, 6, 'Mesa-4', 1, 0),
(32, 6, 'Mesa-5', 1, 0),
(33, 6, 'Mesa-6', 1, 0),
(34, 6, 'Mesa-7', 1, 0),
(35, 6, 'Mesa-8', 1, 0),
(36, 6, 'Mesa-9', 1, 0),
(37, 6, 'Mesa-10', 1, 0),
(38, 7, 'Mesa-1', 1, 0),
(39, 7, 'Mesa-2', 1, 0),
(40, 7, 'Mesa-3', 1, 0),
(41, 7, 'Mesa-4', 1, 0),
(42, 7, 'Mesa-5', 1, 0),
(43, 7, 'Mesa-6', 1, 0),
(44, 7, 'Mesa-7', 1, 0),
(45, 7, 'Mesa-8', 1, 0),
(46, 7, 'Mesa-9', 1, 0),
(47, 7, 'Mesa-10', 1, 0),
(48, 7, 'Mesa-11', 1, 0),
(49, 7, 'Mesa-12', 1, 0),
(50, 8, 'Mesa-1', 1, 0),
(51, 8, 'Mesa-2', 1, 0),
(52, 8, 'Mesa-3', 1, 0),
(53, 8, 'Mesa-4', 1, 0),
(54, 8, 'Mesa-5', 1, 0),
(55, 8, 'Mesa-6', 1, 0),
(56, 8, 'Mesa-7', 1, 0),
(57, 8, 'Mesa-8', 1, 0),
(58, 8, 'Mesa-9', 1, 0),
(59, 8, 'Mesa-10', 1, 0),
(60, 8, 'Mesa-11', 1, 0),
(61, 8, 'Mesa-12', 1, 0),
(62, 8, 'Mesa-13', 1, 0),
(63, 8, 'Mesa-14', 1, 0),
(64, 8, 'Mesa-15', 1, 0),
(65, 8, 'Mesa-16', 1, 0),
(66, 8, 'Mesa-17', 1, 0),
(67, 8, 'Mesa-18', 1, 0),
(68, 8, 'Mesa-19', 1, 0),
(69, 8, 'Mesa-20', 1, 0),
(70, 8, 'Mesa-21', 1, 0),
(71, 8, 'Mesa-22', 1, 0),
(72, 9, 'Mesa-1', 0, 0),
(73, 9, 'Mesa-2', 1, 0),
(74, 9, 'Mesa-3', 1, 0),
(75, 9, 'Mesa-4', 1, 0),
(76, 9, 'Mesa-5', 1, 0),
(77, 9, 'Mesa-6', 1, 0),
(78, 9, 'Mesa-7', 1, 0),
(79, 9, 'Mesa-8', 1, 0),
(80, 10, 'Mesa-1', 0, 0),
(81, 10, 'Mesa-2', 1, 0),
(82, 10, 'Mesa-3', 1, 0),
(83, 10, 'Mesa-4', 0, 0),
(84, 10, 'Mesa-5', 1, 0),
(85, 10, 'Mesa-6', 1, 0),
(86, 10, 'Mesa-7', 1, 0),
(87, 10, 'Mesa-8', 1, 0),
(88, 10, 'Mesa-9', 1, 0),
(89, 10, 'Mesa-10', 1, 0),
(90, 10, 'Mesa-11', 1, 0),
(91, 10, 'Mesa-12', 1, 0),
(92, 10, 'Mesa-13', 1, 0),
(93, 10, 'Mesa-14', 1, 0),
(94, 10, 'Mesa-15', 1, 0),
(95, 10, 'Mesa-16', 1, 0),
(96, 10, 'Mesa-17', 1, 0),
(97, 10, 'Mesa-18', 1, 0),
(98, 10, 'Mesa-19', 1, 0),
(99, 10, 'Mesa-20', 1, 0),
(100, 10, 'Mesa-21', 1, 0),
(101, 10, 'Mesa-22', 1, 0),
(102, 10, 'Mesa-23', 1, 0),
(103, 10, 'Mesa-24', 1, 0),
(104, 11, 'Mesa-1', 1, 0),
(105, 11, 'Mesa-2', 1, 0),
(106, 11, 'Mesa-3', 1, 0),
(107, 11, 'Mesa-4', 1, 0),
(108, 11, 'Mesa-5', 1, 0),
(109, 11, 'Mesa-6', 1, 0),
(110, 11, 'Mesa-7', 1, 0),
(111, 11, 'Mesa-8', 1, 0),
(112, 11, 'Mesa-9', 1, 0),
(113, 11, 'Mesa-10', 1, 0),
(114, 11, 'Mesa-11', 1, 0),
(115, 11, 'Mesa-12', 1, 0),
(116, 11, 'Mesa-13', 1, 0),
(117, 11, 'Mesa-14', 1, 0),
(118, 11, 'Mesa-15', 1, 0),
(119, 11, 'Mesa-16', 1, 0),
(120, 11, 'Mesa-17', 1, 0),
(121, 11, 'Mesa-18', 1, 0),
(122, 11, 'Mesa-19', 1, 0),
(123, 11, 'Mesa-20', 1, 0),
(124, 12, 'Mesa-1', 1, 0),
(125, 12, 'Mesa-2', 1, 0),
(126, 12, 'Mesa-3', 1, 0),
(127, 12, 'Mesa-4', 1, 0),
(128, 12, 'Mesa-5', 1, 0),
(129, 12, 'Mesa-6', 1, 0),
(130, 12, 'Mesa-7', 1, 0),
(131, 12, 'Mesa-8', 1, 0),
(132, 12, 'Mesa-9', 1, 0),
(133, 12, 'Mesa-10', 1, 0),
(134, 12, 'Mesa-11', 1, 0),
(135, 12, 'Mesa-12', 1, 0),
(136, 12, 'Mesa-13', 1, 0),
(137, 12, 'Mesa-14', 1, 0),
(138, 12, 'Mesa-15', 1, 0),
(139, 12, 'Mesa-16', 1, 0),
(140, 12, 'Mesa-17', 1, 0),
(141, 12, 'Mesa-18', 1, 0),
(142, 12, 'Mesa-19', 1, 0),
(143, 12, 'Mesa-20', 1, 0),
(144, 12, 'Mesa-21', 1, 0),
(145, 12, 'Mesa-22', 1, 0),
(146, 12, 'Mesa-23', 1, 0),
(147, 12, 'Mesa-24', 1, 0),
(148, 12, 'Mesa-25', 1, 0),
(149, 12, 'Mesa-26', 1, 0),
(150, 13, 'Mesa-1', 1, 0),
(151, 13, 'Mesa-2', 1, 0),
(152, 13, 'Mesa-3', 1, 0),
(153, 13, 'Mesa-4', 1, 0),
(154, 13, 'Mesa-5', 1, 0),
(155, 13, 'Mesa-6', 1, 0),
(156, 13, 'Mesa-7', 1, 0),
(157, 13, 'Mesa-8', 1, 0),
(158, 13, 'Mesa-9', 1, 0),
(159, 13, 'Mesa-10', 1, 0),
(160, 13, 'Mesa-11', 1, 0),
(161, 13, 'Mesa-12', 1, 0),
(162, 14, 'Mesa-1', 1, 0),
(163, 14, 'Mesa-2', 1, 0),
(164, 14, 'Mesa-3', 1, 0),
(165, 14, 'Mesa-4', 1, 0),
(166, 14, 'Mesa-5', 1, 0),
(167, 14, 'Mesa-6', 1, 0),
(168, 14, 'Mesa-7', 1, 0),
(169, 14, 'Mesa-8', 1, 0),
(170, 15, 'Mesa-1', 1, 0),
(171, 15, 'Mesa-2', 1, 0),
(172, 15, 'Mesa-3', 1, 0),
(173, 15, 'Mesa-4', 1, 0),
(174, 15, 'Mesa-5', 1, 0),
(175, 15, 'Mesa-6', 1, 0),
(176, 15, 'Mesa-7', 1, 0),
(177, 15, 'Mesa-8', 1, 0),
(178, 15, 'Mesa-9', 1, 0),
(179, 15, 'Mesa-10', 1, 0),
(180, 15, 'Mesa-11', 1, 0),
(181, 15, 'Mesa-12', 1, 0),
(182, 15, 'Mesa-13', 1, 0),
(183, 15, 'Mesa-14', 1, 0),
(184, 15, 'Mesa-15', 1, 0),
(185, 15, 'Mesa-16', 1, 0),
(186, 15, 'Mesa-17', 1, 0),
(187, 15, 'Mesa-18', 1, 0),
(188, 15, 'Mesa-19', 1, 0),
(189, 15, 'Mesa-20', 1, 0),
(190, 15, 'Mesa-21', 1, 0),
(191, 15, 'Mesa-22', 1, 0),
(192, 15, 'Mesa-23', 1, 0),
(193, 16, 'Mesa-1', 1, 0),
(194, 16, 'Mesa-2', 1, 0),
(195, 16, 'Mesa-3', 1, 0),
(196, 16, 'Mesa-4', 1, 0),
(197, 16, 'Mesa-5', 1, 0),
(198, 16, 'Mesa-6', 1, 0),
(199, 16, 'Mesa-7', 1, 0),
(200, 16, 'Mesa-8', 1, 0),
(201, 16, 'Mesa-9', 1, 0),
(202, 17, 'Mesa-1', 1, 0),
(203, 17, 'Mesa-2', 0, 0),
(204, 17, 'Mesa-3', 1, 0),
(205, 17, 'Mesa-4', 1, 0),
(206, 17, 'Mesa-5', 1, 0),
(207, 17, 'Mesa-6', 1, 0),
(208, 17, 'Mesa-7', 1, 0),
(209, 17, 'Mesa-8', 1, 0),
(210, 17, 'Mesa-9', 1, 0),
(211, 17, 'Mesa-10', 1, 0),
(212, 17, 'Mesa-11', 1, 0),
(213, 17, 'Mesa-12', 1, 0),
(214, 17, 'Mesa-13', 1, 0),
(215, 17, 'Mesa-14', 1, 0),
(216, 17, 'Mesa-15', 1, 0),
(217, 17, 'Mesa-16', 1, 0),
(218, 17, 'Mesa-17', 1, 0),
(219, 17, 'Mesa-18', 1, 0),
(220, 17, 'Mesa-19', 1, 0),
(221, 17, 'Mesa-20', 1, 0),
(222, 17, 'Mesa-21', 1, 0),
(223, 17, 'Mesa-22', 1, 0),
(224, 17, 'Mesa-23', 1, 0),
(225, 17, 'Mesa-24', 1, 0),
(226, 18, 'Mesa-1', 1, 0),
(227, 18, 'Mesa-2', 0, 0),
(228, 18, 'Mesa-3', 1, 0),
(229, 18, 'Mesa-4', 1, 0),
(230, 18, 'Mesa-5', 1, 0),
(231, 18, 'Mesa-6', 1, 0),
(232, 18, 'Mesa-7', 1, 0),
(233, 18, 'Mesa-8', 1, 0),
(234, 18, 'Mesa-9', 1, 0),
(235, 19, 'Mesa-1', 1, 0),
(236, 19, 'Mesa-2', 1, 0),
(237, 19, 'Mesa-3', 1, 0),
(238, 19, 'Mesa-4', 1, 0),
(239, 19, 'Mesa-5', 1, 0),
(240, 19, 'Mesa-6', 1, 0),
(241, 19, 'Mesa-7', 1, 0),
(242, 19, 'Mesa-8', 1, 0),
(243, 19, 'Mesa-9', 1, 0),
(244, 19, 'Mesa-10', 1, 0),
(245, 19, 'Mesa-11', 1, 0),
(246, 20, 'Mesa-1', 1, 0),
(247, 20, 'Mesa-2', 1, 0),
(248, 20, 'Mesa-3', 1, 0),
(249, 20, 'Mesa-4', 1, 0),
(250, 20, 'Mesa-5', 1, 0),
(251, 20, 'Mesa-6', 1, 0),
(252, 20, 'Mesa-7', 1, 0),
(253, 20, 'Mesa-8', 1, 0),
(254, 20, 'Mesa-9', 1, 0),
(255, 20, 'Mesa-10', 1, 0),
(256, 20, 'Mesa-11', 1, 0),
(257, 21, 'Mesa-1', 1, 0),
(258, 21, 'Mesa-2', 1, 0),
(259, 21, 'Mesa-3', 1, 0),
(260, 21, 'Mesa-4', 1, 0),
(261, 21, 'Mesa-5', 1, 0),
(262, 21, 'Mesa-6', 1, 0),
(263, 21, 'Mesa-7', 1, 0),
(264, 21, 'Mesa-8', 1, 0),
(265, 21, 'Mesa-9', 1, 0),
(266, 21, 'Mesa-10', 1, 0),
(267, 21, 'Mesa-11', 1, 0),
(268, 21, 'Mesa-12', 1, 0),
(269, 21, 'Mesa-13', 1, 0),
(270, 21, 'Mesa-14', 1, 0),
(271, 21, 'Mesa-15', 1, 0),
(272, 21, 'Mesa-16', 1, 0),
(273, 21, 'Mesa-17', 1, 0),
(274, 22, 'Mesa-1', 1, 0),
(275, 22, 'Mesa-2', 1, 0),
(276, 22, 'Mesa-3', 1, 0),
(277, 22, 'Mesa-4', 1, 0),
(278, 22, 'Mesa-5', 1, 0),
(279, 22, 'Mesa-6', 1, 0),
(280, 22, 'Mesa-7', 1, 0),
(281, 22, 'Mesa-8', 1, 0),
(282, 22, 'Mesa-9', 1, 0),
(283, 22, 'Mesa-10', 1, 0),
(284, 22, 'Mesa-11', 1, 0),
(285, 22, 'Mesa-12', 1, 0),
(286, 22, 'Mesa-13', 1, 0),
(287, 22, 'Mesa-14', 1, 0),
(288, 22, 'Mesa-15', 1, 0),
(289, 22, 'Mesa-16', 1, 0),
(290, 22, 'Mesa-17', 1, 0),
(291, 22, 'Mesa-18', 1, 0),
(292, 22, 'Mesa-19', 1, 0),
(293, 22, 'Mesa-20', 1, 0),
(294, 22, 'Mesa-21', 1, 0),
(295, 22, 'Mesa-22', 1, 0),
(296, 22, 'Mesa-23', 1, 0),
(297, 23, 'Mesa-1', 1, 0),
(298, 23, 'Mesa-2', 1, 0),
(299, 23, 'Mesa-3', 1, 0),
(300, 23, 'Mesa-4', 1, 0),
(301, 23, 'Mesa-5', 1, 0),
(302, 23, 'Mesa-6', 1, 0),
(303, 23, 'Mesa-7', 1, 0),
(304, 23, 'Mesa-8', 1, 0),
(305, 23, 'Mesa-9', 1, 0),
(306, 23, 'Mesa-10', 1, 0),
(307, 23, 'Mesa-11', 1, 0),
(308, 23, 'Mesa-12', 1, 0),
(309, 23, 'Mesa-13', 1, 0),
(310, 23, 'Mesa-14', 1, 0),
(311, 23, 'Mesa-15', 1, 0),
(312, 23, 'Mesa-16', 1, 0),
(313, 23, 'Mesa-17', 1, 0),
(314, 23, 'Mesa-18', 1, 0),
(315, 23, 'Mesa-19', 1, 0),
(316, 23, 'Mesa-20', 1, 0),
(317, 23, 'Mesa-21', 1, 0),
(318, 23, 'Mesa-22', 1, 0),
(319, 23, 'Mesa-23', 1, 0),
(320, 23, 'Mesa-24', 1, 0),
(321, 23, 'Mesa-25', 1, 0),
(322, 23, 'Mesa-26', 1, 0),
(323, 24, 'Mesa-1', 1, 0),
(324, 24, 'Mesa-2', 1, 0),
(325, 24, 'Mesa-3', 1, 0),
(326, 24, 'Mesa-4', 1, 0),
(327, 24, 'Mesa-5', 1, 0),
(328, 24, 'Mesa-6', 1, 0),
(329, 24, 'Mesa-7', 1, 0),
(330, 24, 'Mesa-8', 1, 0),
(331, 25, 'Mesa-1', 1, 0),
(332, 25, 'Mesa-2', 1, 0),
(333, 25, 'Mesa-3', 1, 0),
(334, 25, 'Mesa-4', 1, 0),
(335, 25, 'Mesa-5', 1, 0),
(336, 25, 'Mesa-6', 1, 0),
(337, 25, 'Mesa-7', 1, 0),
(338, 25, 'Mesa-8', 1, 0),
(339, 25, 'Mesa-9', 1, 0),
(340, 25, 'Mesa-10', 1, 0),
(341, 25, 'Mesa-11', 1, 0),
(342, 25, 'Mesa-12', 1, 0),
(343, 25, 'Mesa-13', 1, 0),
(344, 25, 'Mesa-14', 1, 0),
(345, 25, 'Mesa-15', 1, 0),
(346, 25, 'Mesa-16', 1, 0),
(347, 25, 'Mesa-17', 1, 0),
(348, 25, 'Mesa-18', 1, 0),
(349, 25, 'Mesa-19', 1, 0),
(350, 25, 'Mesa-20', 1, 0),
(351, 25, 'Mesa-21', 1, 0),
(352, 25, 'Mesa-22', 1, 0),
(353, 26, 'Mesa-1', 1, 0),
(354, 26, 'Mesa-2', 1, 0),
(355, 26, 'Mesa-3', 1, 0),
(356, 26, 'Mesa-4', 1, 0),
(357, 26, 'Mesa-5', 1, 0),
(358, 26, 'Mesa-6', 1, 0),
(359, 26, 'Mesa-7', 1, 0),
(360, 26, 'Mesa-8', 1, 0),
(361, 26, 'Mesa-9', 1, 0),
(362, 26, 'Mesa-10', 1, 0),
(363, 27, 'Mesa-1', 1, 0),
(364, 27, 'Mesa-2', 1, 0),
(365, 27, 'Mesa-3', 0, 0),
(366, 27, 'Mesa-4', 1, 0),
(367, 27, 'Mesa-5', 1, 0),
(368, 27, 'Mesa-6', 1, 0),
(369, 27, 'Mesa-7', 1, 0),
(370, 27, 'Mesa-8', 1, 0),
(371, 27, 'Mesa-9', 1, 0),
(372, 27, 'Mesa-10', 1, 0),
(373, 27, 'Mesa-11', 1, 0),
(374, 28, 'Mesa-1', 1, 0),
(375, 28, 'Mesa-2', 0, 0),
(376, 28, 'Mesa-3', 1, 0),
(377, 28, 'Mesa-4', 0, 0),
(378, 28, 'Mesa-5', 1, 0),
(379, 28, 'Mesa-6', 1, 0),
(380, 28, 'Mesa-7', 1, 0),
(381, 28, 'Mesa-8', 1, 0),
(382, 28, 'Mesa-9', 1, 0),
(383, 28, 'Mesa-10', 1, 0),
(384, 28, 'Mesa-11', 1, 0),
(385, 28, 'Mesa-12', 1, 0),
(386, 28, 'Mesa-13', 1, 0),
(387, 28, 'Mesa-14', 1, 0),
(388, 28, 'Mesa-15', 1, 0),
(389, 28, 'Mesa-16', 1, 0),
(390, 29, 'Mesa-1', 1, 0),
(391, 29, 'Mesa-2', 1, 0),
(392, 29, 'Mesa-3', 1, 0),
(393, 29, 'Mesa-4', 1, 0),
(394, 29, 'Mesa-5', 1, 0),
(395, 29, 'Mesa-6', 1, 0),
(396, 29, 'Mesa-7', 1, 0),
(397, 29, 'Mesa-8', 1, 0),
(398, 29, 'Mesa-9', 1, 0),
(399, 29, 'Mesa-10', 1, 0),
(400, 29, 'Mesa-11', 1, 0),
(401, 29, 'Mesa-12', 1, 0),
(402, 30, 'Mesa-1', 1, 0),
(403, 30, 'Mesa-2', 1, 0),
(404, 30, 'Mesa-3', 1, 0),
(405, 30, 'Mesa-4', 1, 0),
(406, 30, 'Mesa-5', 1, 0),
(407, 30, 'Mesa-6', 1, 0),
(408, 30, 'Mesa-7', 1, 0),
(409, 30, 'Mesa-8', 1, 0),
(410, 30, 'Mesa-9', 1, 0),
(411, 30, 'Mesa-10', 1, 0),
(412, 31, 'Mesa-1', 1, 0),
(413, 31, 'Mesa-2', 1, 0),
(414, 31, 'Mesa-3', 1, 0),
(415, 31, 'Mesa-4', 1, 0),
(416, 31, 'Mesa-5', 1, 0),
(417, 31, 'Mesa-6', 1, 0),
(418, 31, 'Mesa-7', 1, 0),
(419, 31, 'Mesa-8', 1, 0),
(420, 31, 'Mesa-9', 1, 0),
(421, 31, 'Mesa-10', 1, 0),
(422, 31, 'Mesa-11', 1, 0),
(423, 31, 'Mesa-12', 1, 0),
(424, 31, 'Mesa-13', 1, 0),
(425, 31, 'Mesa-14', 1, 0),
(426, 31, 'Mesa-15', 1, 0),
(427, 32, 'Mesa-1', 1, 0),
(428, 32, 'Mesa-2', 1, 0),
(429, 32, 'Mesa-3', 1, 0),
(430, 32, 'Mesa-4', 1, 0),
(431, 32, 'Mesa-5', 1, 0),
(432, 32, 'Mesa-6', 1, 0),
(433, 32, 'Mesa-7', 1, 0),
(434, 32, 'Mesa-8', 1, 0),
(435, 32, 'Mesa-9', 1, 0),
(436, 32, 'Mesa-10', 1, 0),
(437, 32, 'Mesa-11', 1, 0),
(438, 32, 'Mesa-12', 1, 0),
(439, 32, 'Mesa-13', 1, 0),
(440, 32, 'Mesa-14', 1, 0),
(441, 32, 'Mesa-15', 1, 0),
(442, 32, 'Mesa-16', 1, 0),
(443, 32, 'Mesa-17', 1, 0),
(444, 32, 'Mesa-18', 1, 0),
(445, 32, 'Mesa-19', 1, 0),
(446, 32, 'Mesa-20', 1, 0),
(447, 32, 'Mesa-21', 1, 0),
(448, 32, 'Mesa-22', 1, 0),
(449, 32, 'Mesa-23', 1, 0),
(450, 32, 'Mesa-24', 1, 0),
(451, 32, 'Mesa-25', 1, 0),
(452, 32, 'Mesa-26', 1, 0),
(453, 32, 'Mesa-27', 1, 0),
(454, 32, 'Mesa-28', 1, 0),
(455, 32, 'Mesa-29', 1, 0),
(456, 32, 'Mesa-30', 1, 0),
(457, 32, 'Mesa-31', 1, 0),
(458, 32, 'Mesa-32', 1, 0),
(459, 32, 'Mesa-33', 1, 0),
(460, 32, 'Mesa-34', 1, 0),
(461, 32, 'Mesa-35', 1, 0),
(462, 32, 'Mesa-36', 1, 0),
(463, 32, 'Mesa-37', 1, 0),
(464, 32, 'Mesa-38', 1, 0),
(465, 32, 'Mesa-39', 1, 0),
(466, 32, 'Mesa-40', 1, 0),
(467, 32, 'Mesa-41', 1, 0),
(468, 32, 'Mesa-42', 1, 0),
(469, 33, 'Mesa-1', 1, 0),
(470, 33, 'Mesa-2', 1, 0),
(471, 33, 'Mesa-3', 1, 0),
(472, 33, 'Mesa-4', 1, 0),
(473, 33, 'Mesa-5', 1, 0),
(474, 33, 'Mesa-6', 1, 0),
(475, 33, 'Mesa-7', 1, 0),
(476, 33, 'Mesa-8', 1, 0),
(477, 33, 'Mesa-9', 1, 0),
(478, 33, 'Mesa-10', 1, 0),
(479, 33, 'Mesa-11', 1, 0),
(480, 33, 'Mesa-12', 1, 0),
(481, 33, 'Mesa-13', 1, 0),
(482, 34, 'Mesa-1', 1, 0),
(483, 34, 'Mesa-2', 1, 0),
(484, 34, 'Mesa-3', 1, 0),
(485, 34, 'Mesa-4', 1, 0),
(486, 34, 'Mesa-5', 1, 0),
(487, 34, 'Mesa-6', 1, 0),
(488, 34, 'Mesa-7', 1, 0),
(489, 34, 'Mesa-8', 1, 0),
(490, 34, 'Mesa-9', 1, 0),
(491, 34, 'Mesa-10', 1, 0),
(492, 34, 'Mesa-11', 1, 0),
(493, 34, 'Mesa-12', 1, 0),
(494, 34, 'Mesa-13', 1, 0),
(495, 34, 'Mesa-14', 1, 0),
(496, 34, 'Mesa-15', 1, 0),
(497, 34, 'Mesa-16', 1, 0),
(498, 34, 'Mesa-17', 1, 0),
(499, 34, 'Mesa-18', 1, 0),
(500, 34, 'Mesa-19', 1, 0),
(501, 34, 'Mesa-20', 1, 0),
(502, 34, 'Mesa-21', 1, 0),
(503, 34, 'Mesa-22', 1, 0),
(504, 34, 'Mesa-23', 1, 0),
(505, 34, 'Mesa-24', 1, 0),
(506, 34, 'Mesa-25', 1, 0),
(507, 34, 'Mesa-26', 1, 0),
(508, 35, 'Mesa-1', 1, 0),
(509, 35, 'Mesa-2', 1, 0),
(510, 35, 'Mesa-3', 1, 0),
(511, 35, 'Mesa-4', 1, 0),
(512, 35, 'Mesa-5', 1, 0),
(513, 35, 'Mesa-6', 1, 0),
(514, 35, 'Mesa-7', 1, 0),
(515, 35, 'Mesa-8', 1, 0),
(516, 35, 'Mesa-9', 1, 0),
(517, 35, 'Mesa-10', 1, 0),
(518, 35, 'Mesa-11', 1, 0),
(519, 35, 'Mesa-12', 1, 0),
(520, 36, 'Mesa-1', 1, 0),
(521, 36, 'Mesa-2', 1, 0),
(522, 36, 'Mesa-3', 1, 0),
(523, 36, 'Mesa-4', 1, 0),
(524, 36, 'Mesa-5', 1, 0),
(525, 36, 'Mesa-6', 1, 0),
(526, 36, 'Mesa-7', 1, 0),
(527, 36, 'Mesa-8', 1, 0),
(528, 36, 'Mesa-9', 1, 0),
(529, 36, 'Mesa-10', 1, 0),
(530, 36, 'Mesa-11', 1, 0),
(531, 36, 'Mesa-12', 1, 0),
(532, 36, 'Mesa-13', 1, 0),
(533, 36, 'Mesa-14', 1, 0),
(534, 36, 'Mesa-15', 1, 0),
(535, 36, 'Mesa-16', 1, 0),
(536, 36, 'Mesa-17', 1, 0),
(537, 36, 'Mesa-18', 1, 0),
(538, 36, 'Mesa-19', 1, 0),
(539, 36, 'Mesa-20', 1, 0),
(540, 36, 'Mesa-21', 1, 0),
(541, 36, 'Mesa-22', 1, 0),
(542, 36, 'Mesa-23', 1, 0),
(543, 36, 'Mesa-24', 1, 0),
(544, 36, 'Mesa-25', 1, 0),
(545, 36, 'Mesa-26', 1, 0),
(546, 37, 'Mesa-1', 1, 0),
(547, 37, 'Mesa-2', 1, 0),
(548, 37, 'Mesa-3', 1, 0),
(549, 37, 'Mesa-4', 1, 0),
(550, 37, 'Mesa-5', 1, 0),
(551, 37, 'Mesa-6', 1, 0),
(552, 37, 'Mesa-7', 1, 0),
(553, 37, 'Mesa-8', 1, 0),
(554, 37, 'Mesa-9', 1, 0),
(555, 37, 'Mesa-10', 1, 0),
(556, 37, 'Mesa-11', 1, 0),
(557, 37, 'Mesa-12', 1, 0),
(558, 37, 'Mesa-13', 1, 0),
(559, 37, 'Mesa-14', 1, 0),
(560, 37, 'Mesa-15', 1, 0),
(561, 37, 'Mesa-16', 1, 0),
(562, 37, 'Mesa-17', 1, 0),
(563, 37, 'Mesa-18', 1, 0),
(564, 37, 'Mesa-19', 1, 0),
(565, 37, 'Mesa-20', 1, 0),
(566, 37, 'Mesa-21', 1, 0),
(567, 37, 'Mesa-22', 1, 0),
(568, 37, 'Mesa-23', 1, 0),
(569, 37, 'Mesa-24', 1, 0),
(570, 37, 'Mesa-25', 1, 0),
(571, 37, 'Mesa-26', 1, 0),
(572, 37, 'Mesa-27', 1, 0),
(573, 37, 'Mesa-28', 1, 0),
(574, 37, 'Mesa-29', 1, 0),
(575, 37, 'Mesa-30', 1, 0),
(576, 37, 'Mesa-31', 1, 0),
(577, 37, 'Mesa-32', 1, 0),
(578, 37, 'Mesa-33', 1, 0),
(579, 37, 'Mesa-34', 1, 0),
(580, 37, 'Mesa-35', 1, 0),
(581, 37, 'Mesa-36', 1, 0),
(582, 37, 'Mesa-37', 1, 0),
(583, 37, 'Mesa-38', 1, 0),
(584, 37, 'Mesa-39', 1, 0),
(585, 37, 'Mesa-40', 1, 0),
(586, 37, 'Mesa-41', 1, 0),
(587, 37, 'Mesa-42', 1, 0),
(588, 37, 'Mesa-43', 1, 0),
(589, 37, 'Mesa-44', 1, 0),
(590, 37, 'Mesa-45', 1, 0),
(591, 37, 'Mesa-46', 1, 0),
(592, 38, 'Mesa-1', 1, 0),
(593, 38, 'Mesa-2', 1, 0),
(594, 38, 'Mesa-3', 1, 0),
(595, 38, 'Mesa-4', 1, 0),
(596, 38, 'Mesa-5', 1, 0),
(597, 38, 'Mesa-6', 1, 0),
(598, 38, 'Mesa-7', 1, 0),
(599, 38, 'Mesa-8', 1, 0),
(600, 38, 'Mesa-9', 1, 0),
(601, 38, 'Mesa-10', 1, 0),
(602, 38, 'Mesa-11', 1, 0),
(603, 38, 'Mesa-12', 1, 0),
(604, 38, 'Mesa-13', 1, 0),
(605, 38, 'Mesa-14', 1, 0),
(606, 38, 'Mesa-15', 1, 0),
(607, 39, 'Mesa-1', 1, 0),
(608, 39, 'Mesa-2', 1, 0),
(609, 39, 'Mesa-3', 1, 0),
(610, 39, 'Mesa-4', 1, 0),
(611, 39, 'Mesa-5', 1, 0),
(612, 39, 'Mesa-6', 1, 0),
(613, 39, 'Mesa-7', 1, 0),
(614, 39, 'Mesa-8', 1, 0),
(615, 39, 'Mesa-9', 1, 0),
(616, 39, 'Mesa-10', 1, 0),
(617, 39, 'Mesa-11', 1, 0),
(618, 39, 'Mesa-12', 1, 0),
(619, 39, 'Mesa-13', 1, 0),
(620, 39, 'Mesa-14', 1, 0),
(621, 39, 'Mesa-15', 1, 0),
(622, 39, 'Mesa-16', 1, 0),
(623, 39, 'Mesa-17', 1, 0),
(624, 39, 'Mesa-18', 1, 0),
(625, 39, 'Mesa-19', 1, 0),
(626, 40, 'Mesa-1', 1, 0),
(627, 40, 'Mesa-2', 1, 0),
(628, 40, 'Mesa-3', 1, 0),
(629, 40, 'Mesa-4', 1, 0),
(630, 40, 'Mesa-5', 1, 0),
(631, 40, 'Mesa-6', 1, 0),
(632, 40, 'Mesa-7', 1, 0),
(633, 40, 'Mesa-8', 1, 0),
(634, 41, 'Mesa-9', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recintos`
--

CREATE TABLE `recintos` (
  `id_recinto` int(11) NOT NULL,
  `nombre_recinto` varchar(250) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `codigo_recinto` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recintos`
--

INSERT INTO `recintos` (`id_recinto`, `nombre_recinto`, `id_distrito`, `codigo_recinto`) VALUES
(1, 'COL.CARDENAL CUSHING JESUS MARIA', 1, 4021),
(2, 'COL. ESC. CORONEL IGNACIO WARNES', 1, 4022),
(3, 'COL. ARZ. DANIEL RIVERO', 1, 4023),
(4, 'COL. JULIO A. GUTIERREZ', 1, 4017),
(5, 'COL. CLUB DE LEONES #6', 1, 4018),
(6, 'COL.UNIDAD EDUCATIVA LORENZO CABALLERO', 1, 4019),
(7, 'COL PLACIDO MOLINA', 1, 4005),
(8, 'COL. FE Y ALEGRIA LA MERCED', 1, 4000),
(9, 'COL. AMADEO MOZART', 2, 0),
(10, 'COL. JHON KENNEDY', 2, 4014),
(11, 'COL. VILLA ROSARIO', 2, 4002),
(12, 'COL. UV. LA MADRE', 2, 4003),
(13, 'COL. ESCUELA SARA PORRAS DE PINTO', 2, 10017),
(14, 'COL. ESCUELA AMBROCIO VILLARROEL', 2, 10016),
(15, 'COL. JOSE MALKY JESUS MARIA', 3, 4012),
(16, 'COL. NUCLEO ESCOLAR RAMAFA', 3, 4013),
(17, 'COL. COMPLEJO EDUCATIVO JAPON', 3, 4015),
(18, 'COL. ALFA Y OMEGA', 3, 4016),
(19, 'COL. EL CARMEN 16 DE JULIO', 3, 4008),
(20, 'COL.ANTONIO VICENTE SEOANE', 3, 4020),
(21, 'COL. SOCIEDAD DE INGENIEROS', 3, 4004),
(22, 'COL. VICTOR PAZ ESTENSORO', 3, 4011),
(23, 'COL. MONSEÑOR LUIS RODRIGUEZ P.', 3, 4010),
(24, 'COL. HENRRY PRINCE', 3, 4007),
(25, 'COL. VILLA FATIMA', 3, 4009),
(26, 'COL. AMERICAN SCHOOL COOP.', 3, 4006),
(27, 'COLEGIO 24 DE SEPTIEMBRE', 4, 25444),
(28, 'COLEGIO LITORAL', 4, 0),
(29, 'COL. UNIDAD EDUCATIVA LA COLINA', 4, 10002),
(30, 'COL. ESC. 29 DE DICIEMBRE', 4, 10003),
(31, 'COL. ESC. HILANDERIA', 4, 10004),
(32, 'COLEGIO DOMINGO SAVIO - DON BOSCO', 4, 9008),
(33, 'COL. ESC. LA BASE', 4, 10015),
(34, 'COLEGIO EL PROGRESO', 4, 10018),
(35, 'COL. MODULO FLAMINGO', 4, 10014),
(36, 'COL. HERMANOS CAVANIS', 4, 10012),
(37, 'COL. ESC. UNZAGA DE LA VEGA', 4, 10007),
(38, 'COL. ESCUELA JORGE URENDA TRIGO', 4, 0),
(39, 'COL. OSCAR ARNULFO', 4, 10),
(40, 'COL. ANITA SUAREZ DE LEYGUE', 4, 10011);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id_voto` int(11) NOT NULL,
  `id_candidato` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `cantidad` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`id_voto`, `id_candidato`, `id_mesa`, `cantidad`) VALUES
(1, 1, 365, 3),
(2, 2, 365, 3),
(3, 3, 365, 1),
(4, 4, 365, 3),
(5, 5, 365, 0),
(6, 6, 365, 0),
(7, 7, 365, 0),
(8, 8, 365, 0),
(9, 9, 365, 0),
(10, 10, 365, 0),
(11, 11, 365, 0),
(12, 1, 1, 12),
(13, 2, 1, 0),
(14, 3, 1, 0),
(15, 4, 1, 0),
(16, 5, 1, 0),
(17, 6, 1, 0),
(18, 7, 1, 0),
(19, 8, 1, 0),
(20, 9, 1, 0),
(21, 10, 1, 0),
(22, 11, 1, 0),
(23, 1, 11, 1),
(24, 2, 11, 1),
(25, 3, 11, 1),
(26, 4, 11, 1),
(27, 5, 11, 1),
(28, 6, 11, 11),
(29, 7, 11, 1),
(30, 8, 11, 1),
(31, 9, 11, 2),
(32, 10, 11, 3),
(33, 11, 11, 1),
(34, 1, 11, 1),
(35, 2, 11, 1),
(36, 3, 11, 1),
(37, 4, 11, 1),
(38, 5, 11, 1),
(39, 6, 11, 11),
(40, 7, 11, 1),
(41, 8, 11, 1),
(42, 9, 11, 2),
(43, 10, 11, 3),
(44, 11, 11, 1),
(45, 1, 72, 2),
(46, 2, 72, 3),
(47, 3, 72, 4),
(48, 4, 72, 5),
(49, 5, 72, 7),
(50, 6, 72, 6),
(51, 7, 72, 3),
(52, 8, 72, 3),
(53, 9, 72, 4),
(54, 10, 72, 5),
(55, 11, 72, 6),
(56, 1, 72, 2),
(57, 2, 72, 3),
(58, 3, 72, 4),
(59, 4, 72, 5),
(60, 5, 72, 7),
(61, 6, 72, 6),
(62, 7, 72, 3),
(63, 8, 72, 3),
(64, 9, 72, 4),
(65, 10, 72, 5),
(66, 11, 72, 6),
(67, 1, 72, 2),
(68, 2, 72, 3),
(69, 3, 72, 4),
(70, 4, 72, 5),
(71, 5, 72, 7),
(72, 6, 72, 6),
(73, 7, 72, 3),
(74, 8, 72, 3),
(75, 9, 72, 4),
(76, 10, 72, 5),
(77, 11, 72, 6),
(78, 1, 72, 2),
(79, 2, 72, 3),
(80, 3, 72, 4),
(81, 4, 72, 5),
(82, 5, 72, 7),
(83, 6, 72, 6),
(84, 7, 72, 3),
(85, 8, 72, 3),
(86, 9, 72, 4),
(87, 10, 72, 5),
(88, 11, 72, 6),
(89, 1, 72, 2),
(90, 2, 72, 3),
(91, 3, 72, 4),
(92, 4, 72, 5),
(93, 5, 72, 7),
(94, 6, 72, 6),
(95, 7, 72, 3),
(96, 8, 72, 3),
(97, 9, 72, 4),
(98, 10, 72, 5),
(99, 11, 72, 6),
(100, 1, 72, 2),
(101, 2, 72, 3),
(102, 3, 72, 4),
(103, 4, 72, 5),
(104, 5, 72, 7),
(105, 6, 72, 6),
(106, 7, 72, 3),
(107, 8, 72, 3),
(108, 9, 72, 4),
(109, 10, 72, 5),
(110, 11, 72, 6),
(111, 1, 80, 2),
(112, 2, 80, 3),
(113, 3, 80, 2),
(114, 4, 80, 56),
(115, 5, 80, 4),
(116, 6, 80, 6),
(117, 7, 80, 7),
(118, 8, 80, 4),
(119, 9, 80, 5),
(120, 10, 80, 6),
(121, 11, 80, 3),
(122, 1, 80, 2),
(123, 2, 80, 3),
(124, 3, 80, 2),
(125, 4, 80, 56),
(126, 5, 80, 4),
(127, 6, 80, 6),
(128, 7, 80, 7),
(129, 8, 80, 4),
(130, 9, 80, 5),
(131, 10, 80, 6),
(132, 11, 80, 3),
(133, 1, 80, 2),
(134, 2, 80, 3),
(135, 3, 80, 2),
(136, 4, 80, 56),
(137, 5, 80, 4),
(138, 6, 80, 6),
(139, 7, 80, 7),
(140, 8, 80, 4),
(141, 9, 80, 5),
(142, 10, 80, 6),
(143, 11, 80, 3),
(144, 1, 12, 1),
(145, 2, 12, 1),
(146, 3, 12, 2),
(147, 4, 12, 33),
(148, 5, 12, 1),
(149, 6, 12, 2),
(150, 7, 12, 2),
(151, 8, 12, 1),
(152, 9, 12, 1),
(153, 10, 12, 1),
(154, 11, 12, 1),
(155, 1, 12, 1),
(156, 2, 12, 1),
(157, 3, 12, 2),
(158, 4, 12, 33),
(159, 5, 12, 1),
(160, 6, 12, 2),
(161, 7, 12, 2),
(162, 8, 12, 1),
(163, 9, 12, 1),
(164, 10, 12, 1),
(165, 11, 12, 1),
(166, 1, 12, 1),
(167, 2, 12, 1),
(168, 3, 12, 2),
(169, 4, 12, 33),
(170, 5, 12, 1),
(171, 6, 12, 2),
(172, 7, 12, 2),
(173, 8, 12, 1),
(174, 9, 12, 1),
(175, 10, 12, 1),
(176, 11, 12, 1),
(177, 1, 203, 0),
(178, 2, 203, 0),
(179, 3, 203, 0),
(180, 4, 203, 0),
(181, 5, 203, 0),
(182, 6, 203, 0),
(183, 7, 203, 0),
(184, 8, 203, 0),
(185, 9, 203, 0),
(186, 10, 203, 0),
(187, 11, 203, 0),
(188, 1, 375, 1),
(189, 2, 375, 1),
(190, 3, 375, 0),
(191, 4, 375, 0),
(192, 5, 375, 0),
(193, 6, 375, 0),
(194, 7, 375, 0),
(195, 8, 375, 0),
(196, 9, 375, 0),
(197, 10, 375, 0),
(198, 11, 375, 0),
(199, 1, 375, 1),
(200, 2, 375, 1),
(201, 3, 375, 0),
(202, 4, 375, 0),
(203, 5, 375, 0),
(204, 6, 375, 0),
(205, 7, 375, 0),
(206, 8, 375, 0),
(207, 9, 375, 0),
(208, 10, 375, 0),
(209, 11, 375, 0),
(210, 1, 83, 1),
(211, 2, 83, 1),
(212, 3, 83, 1),
(213, 4, 83, 1),
(214, 5, 83, 1),
(215, 6, 83, 1),
(216, 7, 83, 2),
(217, 8, 83, 2),
(218, 9, 83, 1),
(219, 10, 83, 1),
(220, 11, 83, 0),
(221, 1, 83, 1),
(222, 2, 83, 1),
(223, 3, 83, 1),
(224, 4, 83, 1),
(225, 5, 83, 1),
(226, 6, 83, 1),
(227, 7, 83, 2),
(228, 8, 83, 2),
(229, 9, 83, 1),
(230, 10, 83, 1),
(231, 11, 83, 0),
(232, 1, 83, 1),
(233, 2, 83, 1),
(234, 3, 83, 1),
(235, 4, 83, 1),
(236, 5, 83, 1),
(237, 6, 83, 1),
(238, 7, 83, 2),
(239, 8, 83, 2),
(240, 9, 83, 1),
(241, 10, 83, 1),
(242, 11, 83, 0),
(243, 1, 83, 1),
(244, 2, 83, 1),
(245, 3, 83, 1),
(246, 4, 83, 1),
(247, 5, 83, 1),
(248, 6, 83, 1),
(249, 7, 83, 2),
(250, 1, 83, 1),
(251, 8, 83, 2),
(252, 2, 83, 1),
(253, 9, 83, 1),
(254, 3, 83, 1),
(255, 10, 83, 1),
(256, 4, 83, 1),
(257, 11, 83, 0),
(258, 5, 83, 1),
(259, 6, 83, 1),
(260, 7, 83, 2),
(261, 8, 83, 2),
(262, 9, 83, 1),
(263, 10, 83, 1),
(264, 11, 83, 0),
(265, 1, 83, 1),
(266, 2, 83, 1),
(267, 3, 83, 1),
(268, 4, 83, 1),
(269, 5, 83, 1),
(270, 6, 83, 1),
(271, 7, 83, 2),
(272, 8, 83, 2),
(273, 9, 83, 1),
(274, 10, 83, 1),
(275, 11, 83, 0),
(276, 1, 83, 1),
(277, 2, 83, 1),
(278, 3, 83, 1),
(279, 4, 83, 1),
(280, 5, 83, 1),
(281, 6, 83, 1),
(282, 7, 83, 2),
(283, 8, 83, 2),
(284, 9, 83, 1),
(285, 10, 83, 1),
(286, 11, 83, 0),
(287, 1, 83, 1),
(288, 2, 83, 1),
(289, 3, 83, 1),
(290, 4, 83, 1),
(291, 5, 83, 1),
(292, 6, 83, 1),
(293, 7, 83, 2),
(294, 8, 83, 2),
(295, 9, 83, 1),
(296, 10, 83, 1),
(297, 11, 83, 0),
(298, 1, 83, 1),
(299, 2, 83, 1),
(300, 3, 83, 1),
(301, 4, 83, 1),
(302, 5, 83, 1),
(303, 6, 83, 1),
(304, 7, 83, 2),
(305, 8, 83, 2),
(306, 9, 83, 1),
(307, 10, 83, 1),
(308, 11, 83, 0),
(309, 1, 83, 1),
(310, 2, 83, 1),
(311, 3, 83, 1),
(312, 4, 83, 1),
(313, 5, 83, 1),
(314, 6, 83, 1),
(315, 7, 83, 2),
(316, 8, 83, 2),
(317, 9, 83, 1),
(318, 10, 83, 1),
(319, 11, 83, 0),
(320, 1, 83, 1),
(321, 2, 83, 1),
(322, 3, 83, 1),
(323, 4, 83, 1),
(324, 5, 83, 1),
(325, 6, 83, 1),
(326, 7, 83, 2),
(327, 8, 83, 2),
(328, 9, 83, 1),
(329, 10, 83, 1),
(330, 11, 83, 0),
(331, 1, 83, 1),
(332, 2, 83, 1),
(333, 3, 83, 1),
(334, 4, 83, 1),
(335, 5, 83, 1),
(336, 6, 83, 1),
(337, 7, 83, 2),
(338, 8, 83, 2),
(339, 9, 83, 1),
(340, 10, 83, 1),
(341, 11, 83, 0),
(342, 1, 377, 2),
(343, 2, 377, 2),
(344, 3, 377, 1),
(345, 4, 377, 33),
(346, 5, 377, 1),
(347, 6, 377, 1),
(348, 7, 377, 1),
(349, 8, 377, 1),
(350, 9, 377, 1),
(351, 10, 377, 1),
(352, 11, 377, 1),
(353, 1, 227, 3),
(354, 2, 227, 2),
(355, 3, 227, 3),
(356, 4, 227, 4),
(357, 5, 227, 4),
(358, 6, 227, 5),
(359, 7, 227, 3),
(360, 8, 227, 4),
(361, 9, 227, 5),
(362, 10, 227, 0),
(363, 11, 227, 0),
(364, 1, 227, 3),
(365, 2, 227, 2),
(366, 3, 227, 3),
(367, 4, 227, 4),
(368, 5, 227, 4),
(369, 6, 227, 5),
(370, 7, 227, 3),
(371, 8, 227, 4),
(372, 9, 227, 5),
(373, 10, 227, 0),
(374, 11, 227, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id_distrito`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `recintos`
--
ALTER TABLE `recintos`
  ADD PRIMARY KEY (`id_recinto`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id_voto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidato`
--
ALTER TABLE `candidato`
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id_mesa` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT de la tabla `recintos`
--
ALTER TABLE `recintos`
  MODIFY `id_recinto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
