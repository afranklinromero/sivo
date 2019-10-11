-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2019 a las 00:22:56
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
(1, 'CC', 'COMUNIDAD CIUDADANA', 3),
(2, 'FPV', 'FRENTE PARA LA VICTORIA', 3),
(3, 'MTS', 'MOVIMIENTO TERCER SISTEMA', 1),
(4, 'UCS', 'UNIDAD CIVICA SOLIDARIA', 3),
(5, 'MAS', 'MOVIMIENTO AL SOCIALISMO', 0),
(6, 'BDN', 'BOLIVIA DICE NO', 0),
(7, 'PDC', 'PARTIDO DEMOCRATA CRISTIANO', 0),
(8, 'MNR', 'MOVIMIENTO NACIONALISTA REPUBLIANO', 0),
(9, 'PB', 'PAN BOL', 0),
(10, 'BL', 'BLANCO', 0),
(11, 'NL', 'NULO', 0);

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
  `estado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesa`, `id_recinto`, `numero_mesa`, `estado`) VALUES
(1, 1, 'Mesa-1', 0),
(2, 1, 'Mesa-2', 0),
(3, 1, 'Mesa-3', 0),
(4, 1, 'Mesa-4', 0),
(5, 1, 'Mesa-5', 0),
(6, 1, 'Mesa-6', 0),
(7, 1, 'Mesa-7', 0),
(8, 1, 'Mesa-8', 0),
(9, 1, 'Mesa-9', 0),
(10, 1, 'Mesa-10', 0),
(11, 2, 'Mesa-1', 1),
(12, 2, 'Mesa-2', 1),
(13, 2, 'Mesa-3', 1),
(14, 2, 'Mesa-4', 1),
(15, 3, 'Mesa-1', 0),
(16, 4, 'Mesa-1', 1),
(17, 4, 'Mesa-2', 1),
(18, 4, 'Mesa-3', 1),
(19, 4, 'Mesa-4', 1),
(20, 4, 'Mesa-5', 1),
(21, 4, 'Mesa-6', 1),
(22, 4, 'Mesa-7', 1),
(23, 4, 'Mesa-8', 1),
(24, 5, 'Mesa-1', 1),
(25, 5, 'Mesa-2', 1),
(26, 5, 'Mesa-3', 1),
(27, 5, 'Mesa-4', 1),
(28, 6, 'Mesa-1', 1),
(29, 6, 'Mesa-2', 1),
(30, 6, 'Mesa-3', 1),
(31, 6, 'Mesa-4', 1),
(32, 6, 'Mesa-5', 1),
(33, 6, 'Mesa-6', 1),
(34, 6, 'Mesa-7', 1),
(35, 6, 'Mesa-8', 1),
(36, 6, 'Mesa-9', 1),
(37, 6, 'Mesa-10', 1),
(38, 7, 'Mesa-1', 1),
(39, 7, 'Mesa-2', 1),
(40, 7, 'Mesa-3', 1),
(41, 7, 'Mesa-4', 1),
(42, 7, 'Mesa-5', 1),
(43, 7, 'Mesa-6', 1),
(44, 7, 'Mesa-7', 1),
(45, 7, 'Mesa-8', 1),
(46, 7, 'Mesa-9', 1),
(47, 7, 'Mesa-10', 1),
(48, 7, 'Mesa-11', 1),
(49, 7, 'Mesa-12', 1),
(50, 8, 'Mesa-1', 1),
(51, 8, 'Mesa-2', 1),
(52, 8, 'Mesa-3', 1),
(53, 8, 'Mesa-4', 1),
(54, 8, 'Mesa-5', 1),
(55, 8, 'Mesa-6', 1),
(56, 8, 'Mesa-7', 1),
(57, 8, 'Mesa-8', 1),
(58, 8, 'Mesa-9', 1),
(59, 8, 'Mesa-10', 1),
(60, 8, 'Mesa-11', 1),
(61, 8, 'Mesa-12', 1),
(62, 8, 'Mesa-13', 1),
(63, 8, 'Mesa-14', 1),
(64, 8, 'Mesa-15', 1),
(65, 8, 'Mesa-16', 1),
(66, 8, 'Mesa-17', 1),
(67, 8, 'Mesa-18', 1),
(68, 8, 'Mesa-19', 1),
(69, 8, 'Mesa-20', 1),
(70, 8, 'Mesa-21', 1),
(71, 8, 'Mesa-22', 1),
(72, 9, 'Mesa-1', 1),
(73, 9, 'Mesa-2', 1),
(74, 9, 'Mesa-3', 1),
(75, 9, 'Mesa-4', 1),
(76, 9, 'Mesa-5', 1),
(77, 9, 'Mesa-6', 1),
(78, 9, 'Mesa-7', 1),
(79, 9, 'Mesa-8', 1),
(80, 10, 'Mesa-1', 1),
(81, 10, 'Mesa-2', 1),
(82, 10, 'Mesa-3', 1),
(83, 10, 'Mesa-4', 1),
(84, 10, 'Mesa-5', 1),
(85, 10, 'Mesa-6', 1),
(86, 10, 'Mesa-7', 1),
(87, 10, 'Mesa-8', 1),
(88, 10, 'Mesa-9', 1),
(89, 10, 'Mesa-10', 1),
(90, 10, 'Mesa-11', 1),
(91, 10, 'Mesa-12', 1),
(92, 10, 'Mesa-13', 1),
(93, 10, 'Mesa-14', 1),
(94, 10, 'Mesa-15', 1),
(95, 10, 'Mesa-16', 1),
(96, 10, 'Mesa-17', 1),
(97, 10, 'Mesa-18', 1),
(98, 10, 'Mesa-19', 1),
(99, 10, 'Mesa-20', 1),
(100, 10, 'Mesa-21', 1),
(101, 10, 'Mesa-22', 1),
(102, 10, 'Mesa-23', 1),
(103, 10, 'Mesa-24', 1),
(104, 11, 'Mesa-1', 1),
(105, 11, 'Mesa-2', 1),
(106, 11, 'Mesa-3', 1),
(107, 11, 'Mesa-4', 1),
(108, 11, 'Mesa-5', 1),
(109, 11, 'Mesa-6', 1),
(110, 11, 'Mesa-7', 1),
(111, 11, 'Mesa-8', 1),
(112, 11, 'Mesa-9', 1),
(113, 11, 'Mesa-10', 1),
(114, 11, 'Mesa-11', 1),
(115, 11, 'Mesa-12', 1),
(116, 11, 'Mesa-13', 1),
(117, 11, 'Mesa-14', 1),
(118, 11, 'Mesa-15', 1),
(119, 11, 'Mesa-16', 1),
(120, 11, 'Mesa-17', 1),
(121, 11, 'Mesa-18', 1),
(122, 11, 'Mesa-19', 1),
(123, 11, 'Mesa-20', 1),
(124, 12, 'Mesa-1', 1),
(125, 12, 'Mesa-2', 1),
(126, 12, 'Mesa-3', 1),
(127, 12, 'Mesa-4', 1),
(128, 12, 'Mesa-5', 1),
(129, 12, 'Mesa-6', 1),
(130, 12, 'Mesa-7', 1),
(131, 12, 'Mesa-8', 1),
(132, 12, 'Mesa-9', 1),
(133, 12, 'Mesa-10', 1),
(134, 12, 'Mesa-11', 1),
(135, 12, 'Mesa-12', 1),
(136, 12, 'Mesa-13', 1),
(137, 12, 'Mesa-14', 1),
(138, 12, 'Mesa-15', 1),
(139, 12, 'Mesa-16', 1),
(140, 12, 'Mesa-17', 1),
(141, 12, 'Mesa-18', 1),
(142, 12, 'Mesa-19', 1),
(143, 12, 'Mesa-20', 1),
(144, 12, 'Mesa-21', 1),
(145, 12, 'Mesa-22', 1),
(146, 12, 'Mesa-23', 1),
(147, 12, 'Mesa-24', 1),
(148, 12, 'Mesa-25', 1),
(149, 12, 'Mesa-26', 1),
(150, 13, 'Mesa-1', 1),
(151, 13, 'Mesa-2', 1),
(152, 13, 'Mesa-3', 1),
(153, 13, 'Mesa-4', 1),
(154, 13, 'Mesa-5', 1),
(155, 13, 'Mesa-6', 1),
(156, 13, 'Mesa-7', 1),
(157, 13, 'Mesa-8', 1),
(158, 13, 'Mesa-9', 1),
(159, 13, 'Mesa-10', 1),
(160, 13, 'Mesa-11', 1),
(161, 13, 'Mesa-12', 1),
(162, 14, 'Mesa-1', 1),
(163, 14, 'Mesa-2', 1),
(164, 14, 'Mesa-3', 1),
(165, 14, 'Mesa-4', 1),
(166, 14, 'Mesa-5', 1),
(167, 14, 'Mesa-6', 1),
(168, 14, 'Mesa-7', 1),
(169, 14, 'Mesa-8', 1),
(170, 15, 'Mesa-1', 1),
(171, 15, 'Mesa-2', 1),
(172, 15, 'Mesa-3', 1),
(173, 15, 'Mesa-4', 1),
(174, 15, 'Mesa-5', 1),
(175, 15, 'Mesa-6', 1),
(176, 15, 'Mesa-7', 1),
(177, 15, 'Mesa-8', 1),
(178, 15, 'Mesa-9', 1),
(179, 15, 'Mesa-10', 1),
(180, 15, 'Mesa-11', 1),
(181, 15, 'Mesa-12', 1),
(182, 15, 'Mesa-13', 1),
(183, 15, 'Mesa-14', 1),
(184, 15, 'Mesa-15', 1),
(185, 15, 'Mesa-16', 1),
(186, 15, 'Mesa-17', 1),
(187, 15, 'Mesa-18', 1),
(188, 15, 'Mesa-19', 1),
(189, 15, 'Mesa-20', 1),
(190, 15, 'Mesa-21', 1),
(191, 15, 'Mesa-22', 1),
(192, 15, 'Mesa-23', 1),
(193, 16, 'Mesa-1', 1),
(194, 16, 'Mesa-2', 1),
(195, 16, 'Mesa-3', 1),
(196, 16, 'Mesa-4', 1),
(197, 16, 'Mesa-5', 1),
(198, 16, 'Mesa-6', 1),
(199, 16, 'Mesa-7', 1),
(200, 16, 'Mesa-8', 1),
(201, 16, 'Mesa-9', 1),
(202, 17, 'Mesa-1', 1),
(203, 17, 'Mesa-2', 1),
(204, 17, 'Mesa-3', 1),
(205, 17, 'Mesa-4', 1),
(206, 17, 'Mesa-5', 1),
(207, 17, 'Mesa-6', 1),
(208, 17, 'Mesa-7', 1),
(209, 17, 'Mesa-8', 1),
(210, 17, 'Mesa-9', 1),
(211, 17, 'Mesa-10', 1),
(212, 17, 'Mesa-11', 1),
(213, 17, 'Mesa-12', 1),
(214, 17, 'Mesa-13', 1),
(215, 17, 'Mesa-14', 1),
(216, 17, 'Mesa-15', 1),
(217, 17, 'Mesa-16', 1),
(218, 17, 'Mesa-17', 1),
(219, 17, 'Mesa-18', 1),
(220, 17, 'Mesa-19', 1),
(221, 17, 'Mesa-20', 1),
(222, 17, 'Mesa-21', 1),
(223, 17, 'Mesa-22', 1),
(224, 17, 'Mesa-23', 1),
(225, 17, 'Mesa-24', 1),
(226, 18, 'Mesa-1', 1),
(227, 18, 'Mesa-2', 1),
(228, 18, 'Mesa-3', 1),
(229, 18, 'Mesa-4', 1),
(230, 18, 'Mesa-5', 1),
(231, 18, 'Mesa-6', 1),
(232, 18, 'Mesa-7', 1),
(233, 18, 'Mesa-8', 1),
(234, 18, 'Mesa-9', 1),
(235, 19, 'Mesa-1', 1),
(236, 19, 'Mesa-2', 1),
(237, 19, 'Mesa-3', 1),
(238, 19, 'Mesa-4', 1),
(239, 19, 'Mesa-5', 1),
(240, 19, 'Mesa-6', 1),
(241, 19, 'Mesa-7', 1),
(242, 19, 'Mesa-8', 1),
(243, 19, 'Mesa-9', 1),
(244, 19, 'Mesa-10', 1),
(245, 19, 'Mesa-11', 1),
(246, 20, 'Mesa-1', 1),
(247, 20, 'Mesa-2', 1),
(248, 20, 'Mesa-3', 1),
(249, 20, 'Mesa-4', 1),
(250, 20, 'Mesa-5', 1),
(251, 20, 'Mesa-6', 1),
(252, 20, 'Mesa-7', 1),
(253, 20, 'Mesa-8', 1),
(254, 20, 'Mesa-9', 1),
(255, 20, 'Mesa-10', 1),
(256, 20, 'Mesa-11', 1),
(257, 21, 'Mesa-1', 1),
(258, 21, 'Mesa-2', 1),
(259, 21, 'Mesa-3', 1),
(260, 21, 'Mesa-4', 1),
(261, 21, 'Mesa-5', 1),
(262, 21, 'Mesa-6', 1),
(263, 21, 'Mesa-7', 1),
(264, 21, 'Mesa-8', 1),
(265, 21, 'Mesa-9', 1),
(266, 21, 'Mesa-10', 1),
(267, 21, 'Mesa-11', 1),
(268, 21, 'Mesa-12', 1),
(269, 21, 'Mesa-13', 1),
(270, 21, 'Mesa-14', 1),
(271, 21, 'Mesa-15', 1),
(272, 21, 'Mesa-16', 1),
(273, 21, 'Mesa-17', 1),
(274, 22, 'Mesa-1', 1),
(275, 22, 'Mesa-2', 1),
(276, 22, 'Mesa-3', 1),
(277, 22, 'Mesa-4', 1),
(278, 22, 'Mesa-5', 1),
(279, 22, 'Mesa-6', 1),
(280, 22, 'Mesa-7', 1),
(281, 22, 'Mesa-8', 1),
(282, 22, 'Mesa-9', 1),
(283, 22, 'Mesa-10', 1),
(284, 22, 'Mesa-11', 1),
(285, 22, 'Mesa-12', 1),
(286, 22, 'Mesa-13', 1),
(287, 22, 'Mesa-14', 1),
(288, 22, 'Mesa-15', 1),
(289, 22, 'Mesa-16', 1),
(290, 22, 'Mesa-17', 1),
(291, 22, 'Mesa-18', 1),
(292, 22, 'Mesa-19', 1),
(293, 22, 'Mesa-20', 1),
(294, 22, 'Mesa-21', 1),
(295, 22, 'Mesa-22', 1),
(296, 22, 'Mesa-23', 1),
(297, 23, 'Mesa-1', 1),
(298, 23, 'Mesa-2', 1),
(299, 23, 'Mesa-3', 1),
(300, 23, 'Mesa-4', 1),
(301, 23, 'Mesa-5', 1),
(302, 23, 'Mesa-6', 1),
(303, 23, 'Mesa-7', 1),
(304, 23, 'Mesa-8', 1),
(305, 23, 'Mesa-9', 1),
(306, 23, 'Mesa-10', 1),
(307, 23, 'Mesa-11', 1),
(308, 23, 'Mesa-12', 1),
(309, 23, 'Mesa-13', 1),
(310, 23, 'Mesa-14', 1),
(311, 23, 'Mesa-15', 1),
(312, 23, 'Mesa-16', 1),
(313, 23, 'Mesa-17', 1),
(314, 23, 'Mesa-18', 1),
(315, 23, 'Mesa-19', 1),
(316, 23, 'Mesa-20', 1),
(317, 23, 'Mesa-21', 1),
(318, 23, 'Mesa-22', 1),
(319, 23, 'Mesa-23', 1),
(320, 23, 'Mesa-24', 1),
(321, 23, 'Mesa-25', 1),
(322, 23, 'Mesa-26', 1),
(323, 24, 'Mesa-1', 1),
(324, 24, 'Mesa-2', 1),
(325, 24, 'Mesa-3', 1),
(326, 24, 'Mesa-4', 1),
(327, 24, 'Mesa-5', 1),
(328, 24, 'Mesa-6', 1),
(329, 24, 'Mesa-7', 1),
(330, 24, 'Mesa-8', 1),
(331, 25, 'Mesa-1', 1),
(332, 25, 'Mesa-2', 1),
(333, 25, 'Mesa-3', 1),
(334, 25, 'Mesa-4', 1),
(335, 25, 'Mesa-5', 1),
(336, 25, 'Mesa-6', 1),
(337, 25, 'Mesa-7', 1),
(338, 25, 'Mesa-8', 1),
(339, 25, 'Mesa-9', 1),
(340, 25, 'Mesa-10', 1),
(341, 25, 'Mesa-11', 1),
(342, 25, 'Mesa-12', 1),
(343, 25, 'Mesa-13', 1),
(344, 25, 'Mesa-14', 1),
(345, 25, 'Mesa-15', 1),
(346, 25, 'Mesa-16', 1),
(347, 25, 'Mesa-17', 1),
(348, 25, 'Mesa-18', 1),
(349, 25, 'Mesa-19', 1),
(350, 25, 'Mesa-20', 1),
(351, 25, 'Mesa-21', 1),
(352, 25, 'Mesa-22', 1),
(353, 26, 'Mesa-1', 1),
(354, 26, 'Mesa-2', 1),
(355, 26, 'Mesa-3', 1),
(356, 26, 'Mesa-4', 1),
(357, 26, 'Mesa-5', 1),
(358, 26, 'Mesa-6', 1),
(359, 26, 'Mesa-7', 1),
(360, 26, 'Mesa-8', 1),
(361, 26, 'Mesa-9', 1),
(362, 26, 'Mesa-10', 1),
(363, 27, 'Mesa-1', 1),
(364, 27, 'Mesa-2', 1),
(365, 27, 'Mesa-3', 0),
(366, 27, 'Mesa-4', 1),
(367, 27, 'Mesa-5', 1),
(368, 27, 'Mesa-6', 1),
(369, 27, 'Mesa-7', 1),
(370, 27, 'Mesa-8', 1),
(371, 27, 'Mesa-9', 1),
(372, 27, 'Mesa-10', 1),
(373, 27, 'Mesa-11', 1),
(374, 28, 'Mesa-1', 1),
(375, 28, 'Mesa-2', 1),
(376, 28, 'Mesa-3', 1),
(377, 28, 'Mesa-4', 1),
(378, 28, 'Mesa-5', 1),
(379, 28, 'Mesa-6', 1),
(380, 28, 'Mesa-7', 1),
(381, 28, 'Mesa-8', 1),
(382, 28, 'Mesa-9', 1),
(383, 28, 'Mesa-10', 1),
(384, 28, 'Mesa-11', 1),
(385, 28, 'Mesa-12', 1),
(386, 28, 'Mesa-13', 1),
(387, 28, 'Mesa-14', 1),
(388, 28, 'Mesa-15', 1),
(389, 28, 'Mesa-16', 1),
(390, 29, 'Mesa-1', 1),
(391, 29, 'Mesa-2', 1),
(392, 29, 'Mesa-3', 1),
(393, 29, 'Mesa-4', 1),
(394, 29, 'Mesa-5', 1),
(395, 29, 'Mesa-6', 1),
(396, 29, 'Mesa-7', 1),
(397, 29, 'Mesa-8', 1),
(398, 29, 'Mesa-9', 1),
(399, 29, 'Mesa-10', 1),
(400, 29, 'Mesa-11', 1),
(401, 29, 'Mesa-12', 1),
(402, 30, 'Mesa-1', 1),
(403, 30, 'Mesa-2', 1),
(404, 30, 'Mesa-3', 1),
(405, 30, 'Mesa-4', 1),
(406, 30, 'Mesa-5', 1),
(407, 30, 'Mesa-6', 1),
(408, 30, 'Mesa-7', 1),
(409, 30, 'Mesa-8', 1),
(410, 30, 'Mesa-9', 1),
(411, 30, 'Mesa-10', 1),
(412, 31, 'Mesa-1', 1),
(413, 31, 'Mesa-2', 1),
(414, 31, 'Mesa-3', 1),
(415, 31, 'Mesa-4', 1),
(416, 31, 'Mesa-5', 1),
(417, 31, 'Mesa-6', 1),
(418, 31, 'Mesa-7', 1),
(419, 31, 'Mesa-8', 1),
(420, 31, 'Mesa-9', 1),
(421, 31, 'Mesa-10', 1),
(422, 31, 'Mesa-11', 1),
(423, 31, 'Mesa-12', 1),
(424, 31, 'Mesa-13', 1),
(425, 31, 'Mesa-14', 1),
(426, 31, 'Mesa-15', 1),
(427, 32, 'Mesa-1', 1),
(428, 32, 'Mesa-2', 1),
(429, 32, 'Mesa-3', 1),
(430, 32, 'Mesa-4', 1),
(431, 32, 'Mesa-5', 1),
(432, 32, 'Mesa-6', 1),
(433, 32, 'Mesa-7', 1),
(434, 32, 'Mesa-8', 1),
(435, 32, 'Mesa-9', 1),
(436, 32, 'Mesa-10', 1),
(437, 32, 'Mesa-11', 1),
(438, 32, 'Mesa-12', 1),
(439, 32, 'Mesa-13', 1),
(440, 32, 'Mesa-14', 1),
(441, 32, 'Mesa-15', 1),
(442, 32, 'Mesa-16', 1),
(443, 32, 'Mesa-17', 1),
(444, 32, 'Mesa-18', 1),
(445, 32, 'Mesa-19', 1),
(446, 32, 'Mesa-20', 1),
(447, 32, 'Mesa-21', 1),
(448, 32, 'Mesa-22', 1),
(449, 32, 'Mesa-23', 1),
(450, 32, 'Mesa-24', 1),
(451, 32, 'Mesa-25', 1),
(452, 32, 'Mesa-26', 1),
(453, 32, 'Mesa-27', 1),
(454, 32, 'Mesa-28', 1),
(455, 32, 'Mesa-29', 1),
(456, 32, 'Mesa-30', 1),
(457, 32, 'Mesa-31', 1),
(458, 32, 'Mesa-32', 1),
(459, 32, 'Mesa-33', 1),
(460, 32, 'Mesa-34', 1),
(461, 32, 'Mesa-35', 1),
(462, 32, 'Mesa-36', 1),
(463, 32, 'Mesa-37', 1),
(464, 32, 'Mesa-38', 1),
(465, 32, 'Mesa-39', 1),
(466, 32, 'Mesa-40', 1),
(467, 32, 'Mesa-41', 1),
(468, 32, 'Mesa-42', 1),
(469, 33, 'Mesa-1', 1),
(470, 33, 'Mesa-2', 1),
(471, 33, 'Mesa-3', 1),
(472, 33, 'Mesa-4', 1),
(473, 33, 'Mesa-5', 1),
(474, 33, 'Mesa-6', 1),
(475, 33, 'Mesa-7', 1),
(476, 33, 'Mesa-8', 1),
(477, 33, 'Mesa-9', 1),
(478, 33, 'Mesa-10', 1),
(479, 33, 'Mesa-11', 1),
(480, 33, 'Mesa-12', 1),
(481, 33, 'Mesa-13', 1),
(482, 34, 'Mesa-1', 1),
(483, 34, 'Mesa-2', 1),
(484, 34, 'Mesa-3', 1),
(485, 34, 'Mesa-4', 1),
(486, 34, 'Mesa-5', 1),
(487, 34, 'Mesa-6', 1),
(488, 34, 'Mesa-7', 1),
(489, 34, 'Mesa-8', 1),
(490, 34, 'Mesa-9', 1),
(491, 34, 'Mesa-10', 1),
(492, 34, 'Mesa-11', 1),
(493, 34, 'Mesa-12', 1),
(494, 34, 'Mesa-13', 1),
(495, 34, 'Mesa-14', 1),
(496, 34, 'Mesa-15', 1),
(497, 34, 'Mesa-16', 1),
(498, 34, 'Mesa-17', 1),
(499, 34, 'Mesa-18', 1),
(500, 34, 'Mesa-19', 1),
(501, 34, 'Mesa-20', 1),
(502, 34, 'Mesa-21', 1),
(503, 34, 'Mesa-22', 1),
(504, 34, 'Mesa-23', 1),
(505, 34, 'Mesa-24', 1),
(506, 34, 'Mesa-25', 1),
(507, 34, 'Mesa-26', 1),
(508, 35, 'Mesa-1', 1),
(509, 35, 'Mesa-2', 1),
(510, 35, 'Mesa-3', 1),
(511, 35, 'Mesa-4', 1),
(512, 35, 'Mesa-5', 1),
(513, 35, 'Mesa-6', 1),
(514, 35, 'Mesa-7', 1),
(515, 35, 'Mesa-8', 1),
(516, 35, 'Mesa-9', 1),
(517, 35, 'Mesa-10', 1),
(518, 35, 'Mesa-11', 1),
(519, 35, 'Mesa-12', 1),
(520, 36, 'Mesa-1', 1),
(521, 36, 'Mesa-2', 1),
(522, 36, 'Mesa-3', 1),
(523, 36, 'Mesa-4', 1),
(524, 36, 'Mesa-5', 1),
(525, 36, 'Mesa-6', 1),
(526, 36, 'Mesa-7', 1),
(527, 36, 'Mesa-8', 1),
(528, 36, 'Mesa-9', 1),
(529, 36, 'Mesa-10', 1),
(530, 36, 'Mesa-11', 1),
(531, 36, 'Mesa-12', 1),
(532, 36, 'Mesa-13', 1),
(533, 36, 'Mesa-14', 1),
(534, 36, 'Mesa-15', 1),
(535, 36, 'Mesa-16', 1),
(536, 36, 'Mesa-17', 1),
(537, 36, 'Mesa-18', 1),
(538, 36, 'Mesa-19', 1),
(539, 36, 'Mesa-20', 1),
(540, 36, 'Mesa-21', 1),
(541, 36, 'Mesa-22', 1),
(542, 36, 'Mesa-23', 1),
(543, 36, 'Mesa-24', 1),
(544, 36, 'Mesa-25', 1),
(545, 36, 'Mesa-26', 1),
(546, 37, 'Mesa-1', 1),
(547, 37, 'Mesa-2', 1),
(548, 37, 'Mesa-3', 1),
(549, 37, 'Mesa-4', 1),
(550, 37, 'Mesa-5', 1),
(551, 37, 'Mesa-6', 1),
(552, 37, 'Mesa-7', 1),
(553, 37, 'Mesa-8', 1),
(554, 37, 'Mesa-9', 1),
(555, 37, 'Mesa-10', 1),
(556, 37, 'Mesa-11', 1),
(557, 37, 'Mesa-12', 1),
(558, 37, 'Mesa-13', 1),
(559, 37, 'Mesa-14', 1),
(560, 37, 'Mesa-15', 1),
(561, 37, 'Mesa-16', 1),
(562, 37, 'Mesa-17', 1),
(563, 37, 'Mesa-18', 1),
(564, 37, 'Mesa-19', 1),
(565, 37, 'Mesa-20', 1),
(566, 37, 'Mesa-21', 1),
(567, 37, 'Mesa-22', 1),
(568, 37, 'Mesa-23', 1),
(569, 37, 'Mesa-24', 1),
(570, 37, 'Mesa-25', 1),
(571, 37, 'Mesa-26', 1),
(572, 37, 'Mesa-27', 1),
(573, 37, 'Mesa-28', 1),
(574, 37, 'Mesa-29', 1),
(575, 37, 'Mesa-30', 1),
(576, 37, 'Mesa-31', 1),
(577, 37, 'Mesa-32', 1),
(578, 37, 'Mesa-33', 1),
(579, 37, 'Mesa-34', 1),
(580, 37, 'Mesa-35', 1),
(581, 37, 'Mesa-36', 1),
(582, 37, 'Mesa-37', 1),
(583, 37, 'Mesa-38', 1),
(584, 37, 'Mesa-39', 1),
(585, 37, 'Mesa-40', 1),
(586, 37, 'Mesa-41', 1),
(587, 37, 'Mesa-42', 1),
(588, 37, 'Mesa-43', 1),
(589, 37, 'Mesa-44', 1),
(590, 37, 'Mesa-45', 1),
(591, 37, 'Mesa-46', 1),
(592, 38, 'Mesa-1', 1),
(593, 38, 'Mesa-2', 1),
(594, 38, 'Mesa-3', 1),
(595, 38, 'Mesa-4', 1),
(596, 38, 'Mesa-5', 1),
(597, 38, 'Mesa-6', 1),
(598, 38, 'Mesa-7', 1),
(599, 38, 'Mesa-8', 1),
(600, 38, 'Mesa-9', 1),
(601, 38, 'Mesa-10', 1),
(602, 38, 'Mesa-11', 1),
(603, 38, 'Mesa-12', 1),
(604, 38, 'Mesa-13', 1),
(605, 38, 'Mesa-14', 1),
(606, 38, 'Mesa-15', 1),
(607, 39, 'Mesa-1', 1),
(608, 39, 'Mesa-2', 1),
(609, 39, 'Mesa-3', 1),
(610, 39, 'Mesa-4', 1),
(611, 39, 'Mesa-5', 1),
(612, 39, 'Mesa-6', 1),
(613, 39, 'Mesa-7', 1),
(614, 39, 'Mesa-8', 1),
(615, 39, 'Mesa-9', 1),
(616, 39, 'Mesa-10', 1),
(617, 39, 'Mesa-11', 1),
(618, 39, 'Mesa-12', 1),
(619, 39, 'Mesa-13', 1),
(620, 39, 'Mesa-14', 1),
(621, 39, 'Mesa-15', 1),
(622, 39, 'Mesa-16', 1),
(623, 39, 'Mesa-17', 1),
(624, 39, 'Mesa-18', 1),
(625, 39, 'Mesa-19', 1),
(626, 40, 'Mesa-1', 1),
(627, 40, 'Mesa-2', 1),
(628, 40, 'Mesa-3', 1),
(629, 40, 'Mesa-4', 1),
(630, 40, 'Mesa-5', 1),
(631, 40, 'Mesa-6', 1),
(632, 40, 'Mesa-7', 1),
(633, 40, 'Mesa-8', 1),
(634, 41, 'Mesa-9', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recintos`
--

CREATE TABLE `recintos` (
  `id_recinto` int(11) NOT NULL,
  `nombre_recinto` varchar(250) NOT NULL,
  `id_distrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recintos`
--

INSERT INTO `recintos` (`id_recinto`, `nombre_recinto`, `id_distrito`) VALUES
(1, 'COL.CARDENAL CUSHING JESUS MARIA', 1),
(2, 'COL. ESC. CORONEL IGNACIO WARNES', 1),
(3, 'COL. ARZ. DANIEL RIVERO', 1),
(4, 'COL. JULIO A. GUTIERREZ', 1),
(5, 'COL. CLUB DE LEONES #6', 1),
(6, 'COL.UNIDAD EDUCATIVA LORENZO CABALLERO', 1),
(7, 'COL PLACIDO MOLINA', 1),
(8, 'COL. FE Y ALEGRIA LA MERCED', 1),
(9, 'COL. AMADEO MOZART', 2),
(10, 'COL. JHON KENNEDY', 2),
(11, 'COL. VILLA ROSARIO', 2),
(12, 'COL. UV. LA MADRE', 2),
(13, 'COL. ESCUELA SARA PORRAS DE PINTO', 2),
(14, 'COL. ESCUELA AMBROCIO VILLARROEL', 2),
(15, 'COL. JOSE MALKY JESUS MARIA', 3),
(16, 'COL. NUCLEO ESCOLAR RAMAFA', 3),
(17, 'COL. COMPLEJO EDUCATIVO JAPON', 3),
(18, 'COL. ALFA Y OMEGA', 3),
(19, 'COL. EL CARMEN 16 DE JULIO', 3),
(20, 'COL.ANTONIO VICENTE SEOANE', 3),
(21, 'COL. SOCIEDAD DE INGENIEROS', 3),
(22, 'COL. VICTOR PAZ ESTENSORO', 3),
(23, 'COL. MONSEÑOR LUIS RODRIGUEZ P.', 3),
(24, 'COL. HENRRY PRINCE', 3),
(25, 'COL. VILLA FATIMA', 3),
(26, 'COL. AMERICAN SCHOOL COOP.', 3),
(27, 'COLEGIO 24 DE SEPTIEMBRE', 4),
(28, 'COLEGIO LITORAL', 4),
(29, 'COL. UNIDAD EDUCATIVA LA COLINA', 4),
(30, 'COL. ESC. 29 DE DICIEMBRE', 4),
(31, 'COL. ESC. HILANDERIA', 4),
(32, 'COLEGIO DOMINGO SAVIO - DON BOSCO', 4),
(33, 'COL. ESC. LA BASE', 4),
(34, 'COLEGIO EL PROGRESO', 4),
(35, 'COL. MODULO FLAMINGO', 4),
(36, 'COL. HERMANOS CAVANIS', 4),
(37, 'COL. ESC. UNZAGA DE LA VEGA', 4),
(38, 'COL. ESCUELA JORGE URENDA TRIGO', 4),
(39, 'COL. OSCAR ARNULFO', 4),
(40, 'COL. ANITA SUAREZ DE LEYGUE', 4);

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
(11, 11, 365, 0);

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
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
