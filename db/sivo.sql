-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2019 a las 05:04:12
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

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
  `nombre_candidato` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidato`
--

INSERT INTO `candidato` (`id_candidato`, `sigla_candidato`, `nombre_candidato`) VALUES
(1, 'CC', 'COMUNIDAD CIUDADANA'),
(2, 'FPV', 'FRENTE PARA LA VICTORIA'),
(3, 'MTS', 'MOVIMIENTO TERCER SISTEMA'),
(4, 'UCS', 'UNIDAD CIVICA SOLIDARIA'),
(5, 'MAS', 'MOVIMIENTO AL SOCIALISMO'),
(6, 'BDN', 'BOLIVIA DICE NO'),
(7, 'PDC', 'PARTIDO DEMOCRATA CRISTIANO'),
(8, 'MNR', 'MOVIMIENTO NACIONALISTA REPUBLIANO'),
(9, 'PB', 'PAN BOL'),
(10, 'BL', 'BLANCO'),
(11, 'NL', 'NULO');

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
  `numero_mesa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesa`, `id_recinto`, `numero_mesa`) VALUES
(1, 1, 'Mesa-1'),
(2, 1, 'Mesa-2'),
(3, 1, 'Mesa-3'),
(4, 1, 'Mesa-4'),
(5, 1, 'Mesa-5'),
(6, 1, 'Mesa-6'),
(7, 1, 'Mesa-7'),
(8, 1, 'Mesa-8'),
(9, 1, 'Mesa-9'),
(10, 1, 'Mesa-10'),
(11, 2, 'Mesa-1'),
(12, 2, 'Mesa-2'),
(13, 2, 'Mesa-3'),
(14, 2, 'Mesa-4'),
(15, 3, 'Mesa-1'),
(16, 4, 'Mesa-1'),
(17, 4, 'Mesa-2'),
(18, 4, 'Mesa-3'),
(19, 4, 'Mesa-4'),
(20, 4, 'Mesa-5'),
(21, 4, 'Mesa-6'),
(22, 4, 'Mesa-7'),
(23, 4, 'Mesa-8'),
(24, 5, 'Mesa-1'),
(25, 5, 'Mesa-2'),
(26, 5, 'Mesa-3'),
(27, 5, 'Mesa-4'),
(28, 6, 'Mesa-1'),
(29, 6, 'Mesa-2'),
(30, 6, 'Mesa-3'),
(31, 6, 'Mesa-4'),
(32, 6, 'Mesa-5'),
(33, 6, 'Mesa-6'),
(34, 6, 'Mesa-7'),
(35, 6, 'Mesa-8'),
(36, 6, 'Mesa-9'),
(37, 6, 'Mesa-10'),
(38, 7, 'Mesa-1'),
(39, 7, 'Mesa-2'),
(40, 7, 'Mesa-3'),
(41, 7, 'Mesa-4'),
(42, 7, 'Mesa-5'),
(43, 7, 'Mesa-6'),
(44, 7, 'Mesa-7'),
(45, 7, 'Mesa-8'),
(46, 7, 'Mesa-9'),
(47, 7, 'Mesa-10'),
(48, 7, 'Mesa-11'),
(49, 7, 'Mesa-12'),
(50, 8, 'Mesa-1'),
(51, 8, 'Mesa-2'),
(52, 8, 'Mesa-3'),
(53, 8, 'Mesa-4'),
(54, 8, 'Mesa-5'),
(55, 8, 'Mesa-6'),
(56, 8, 'Mesa-7'),
(57, 8, 'Mesa-8'),
(58, 8, 'Mesa-9'),
(59, 8, 'Mesa-10'),
(60, 8, 'Mesa-11'),
(61, 8, 'Mesa-12'),
(62, 8, 'Mesa-13'),
(63, 8, 'Mesa-14'),
(64, 8, 'Mesa-15'),
(65, 8, 'Mesa-16'),
(66, 8, 'Mesa-17'),
(67, 8, 'Mesa-18'),
(68, 8, 'Mesa-19'),
(69, 8, 'Mesa-20'),
(70, 8, 'Mesa-21'),
(71, 8, 'Mesa-22'),
(72, 9, 'Mesa-1'),
(73, 9, 'Mesa-2'),
(74, 9, 'Mesa-3'),
(75, 9, 'Mesa-4'),
(76, 9, 'Mesa-5'),
(77, 9, 'Mesa-6'),
(78, 9, 'Mesa-7'),
(79, 9, 'Mesa-8'),
(80, 10, 'Mesa-1'),
(81, 10, 'Mesa-2'),
(82, 10, 'Mesa-3'),
(83, 10, 'Mesa-4'),
(84, 10, 'Mesa-5'),
(85, 10, 'Mesa-6'),
(86, 10, 'Mesa-7'),
(87, 10, 'Mesa-8'),
(88, 10, 'Mesa-9'),
(89, 10, 'Mesa-10'),
(90, 10, 'Mesa-11'),
(91, 10, 'Mesa-12'),
(92, 10, 'Mesa-13'),
(93, 10, 'Mesa-14'),
(94, 10, 'Mesa-15'),
(95, 10, 'Mesa-16'),
(96, 10, 'Mesa-17'),
(97, 10, 'Mesa-18'),
(98, 10, 'Mesa-19'),
(99, 10, 'Mesa-20'),
(100, 10, 'Mesa-21'),
(101, 10, 'Mesa-22'),
(102, 10, 'Mesa-23'),
(103, 10, 'Mesa-24'),
(104, 11, 'Mesa-1'),
(105, 11, 'Mesa-2'),
(106, 11, 'Mesa-3'),
(107, 11, 'Mesa-4'),
(108, 11, 'Mesa-5'),
(109, 11, 'Mesa-6'),
(110, 11, 'Mesa-7'),
(111, 11, 'Mesa-8'),
(112, 11, 'Mesa-9'),
(113, 11, 'Mesa-10'),
(114, 11, 'Mesa-11'),
(115, 11, 'Mesa-12'),
(116, 11, 'Mesa-13'),
(117, 11, 'Mesa-14'),
(118, 11, 'Mesa-15'),
(119, 11, 'Mesa-16'),
(120, 11, 'Mesa-17'),
(121, 11, 'Mesa-18'),
(122, 11, 'Mesa-19'),
(123, 11, 'Mesa-20'),
(124, 12, 'Mesa-1'),
(125, 12, 'Mesa-2'),
(126, 12, 'Mesa-3'),
(127, 12, 'Mesa-4'),
(128, 12, 'Mesa-5'),
(129, 12, 'Mesa-6'),
(130, 12, 'Mesa-7'),
(131, 12, 'Mesa-8'),
(132, 12, 'Mesa-9'),
(133, 12, 'Mesa-10'),
(134, 12, 'Mesa-11'),
(135, 12, 'Mesa-12'),
(136, 12, 'Mesa-13'),
(137, 12, 'Mesa-14'),
(138, 12, 'Mesa-15'),
(139, 12, 'Mesa-16'),
(140, 12, 'Mesa-17'),
(141, 12, 'Mesa-18'),
(142, 12, 'Mesa-19'),
(143, 12, 'Mesa-20'),
(144, 12, 'Mesa-21'),
(145, 12, 'Mesa-22'),
(146, 12, 'Mesa-23'),
(147, 12, 'Mesa-24'),
(148, 12, 'Mesa-25'),
(149, 12, 'Mesa-26'),
(150, 13, 'Mesa-1'),
(151, 13, 'Mesa-2'),
(152, 13, 'Mesa-3'),
(153, 13, 'Mesa-4'),
(154, 13, 'Mesa-5'),
(155, 13, 'Mesa-6'),
(156, 13, 'Mesa-7'),
(157, 13, 'Mesa-8'),
(158, 13, 'Mesa-9'),
(159, 13, 'Mesa-10'),
(160, 13, 'Mesa-11'),
(161, 13, 'Mesa-12'),
(162, 14, 'Mesa-1'),
(163, 14, 'Mesa-2'),
(164, 14, 'Mesa-3'),
(165, 14, 'Mesa-4'),
(166, 14, 'Mesa-5'),
(167, 14, 'Mesa-6'),
(168, 14, 'Mesa-7'),
(169, 14, 'Mesa-8'),
(170, 15, 'Mesa-1'),
(171, 15, 'Mesa-2'),
(172, 15, 'Mesa-3'),
(173, 15, 'Mesa-4'),
(174, 15, 'Mesa-5'),
(175, 15, 'Mesa-6'),
(176, 15, 'Mesa-7'),
(177, 15, 'Mesa-8'),
(178, 15, 'Mesa-9'),
(179, 15, 'Mesa-10'),
(180, 15, 'Mesa-11'),
(181, 15, 'Mesa-12'),
(182, 15, 'Mesa-13'),
(183, 15, 'Mesa-14'),
(184, 15, 'Mesa-15'),
(185, 15, 'Mesa-16'),
(186, 15, 'Mesa-17'),
(187, 15, 'Mesa-18'),
(188, 15, 'Mesa-19'),
(189, 15, 'Mesa-20'),
(190, 15, 'Mesa-21'),
(191, 15, 'Mesa-22'),
(192, 15, 'Mesa-23'),
(193, 16, 'Mesa-1'),
(194, 16, 'Mesa-2'),
(195, 16, 'Mesa-3'),
(196, 16, 'Mesa-4'),
(197, 16, 'Mesa-5'),
(198, 16, 'Mesa-6'),
(199, 16, 'Mesa-7'),
(200, 16, 'Mesa-8'),
(201, 16, 'Mesa-9'),
(202, 17, 'Mesa-1'),
(203, 17, 'Mesa-2'),
(204, 17, 'Mesa-3'),
(205, 17, 'Mesa-4'),
(206, 17, 'Mesa-5'),
(207, 17, 'Mesa-6'),
(208, 17, 'Mesa-7'),
(209, 17, 'Mesa-8'),
(210, 17, 'Mesa-9'),
(211, 17, 'Mesa-10'),
(212, 17, 'Mesa-11'),
(213, 17, 'Mesa-12'),
(214, 17, 'Mesa-13'),
(215, 17, 'Mesa-14'),
(216, 17, 'Mesa-15'),
(217, 17, 'Mesa-16'),
(218, 17, 'Mesa-17'),
(219, 17, 'Mesa-18'),
(220, 17, 'Mesa-19'),
(221, 17, 'Mesa-20'),
(222, 17, 'Mesa-21'),
(223, 17, 'Mesa-22'),
(224, 17, 'Mesa-23'),
(225, 17, 'Mesa-24'),
(226, 18, 'Mesa-1'),
(227, 18, 'Mesa-2'),
(228, 18, 'Mesa-3'),
(229, 18, 'Mesa-4'),
(230, 18, 'Mesa-5'),
(231, 18, 'Mesa-6'),
(232, 18, 'Mesa-7'),
(233, 18, 'Mesa-8'),
(234, 18, 'Mesa-9'),
(235, 19, 'Mesa-1'),
(236, 19, 'Mesa-2'),
(237, 19, 'Mesa-3'),
(238, 19, 'Mesa-4'),
(239, 19, 'Mesa-5'),
(240, 19, 'Mesa-6'),
(241, 19, 'Mesa-7'),
(242, 19, 'Mesa-8'),
(243, 19, 'Mesa-9'),
(244, 19, 'Mesa-10'),
(245, 19, 'Mesa-11'),
(246, 20, 'Mesa-1'),
(247, 20, 'Mesa-2'),
(248, 20, 'Mesa-3'),
(249, 20, 'Mesa-4'),
(250, 20, 'Mesa-5'),
(251, 20, 'Mesa-6'),
(252, 20, 'Mesa-7'),
(253, 20, 'Mesa-8'),
(254, 20, 'Mesa-9'),
(255, 20, 'Mesa-10'),
(256, 20, 'Mesa-11'),
(257, 21, 'Mesa-1'),
(258, 21, 'Mesa-2'),
(259, 21, 'Mesa-3'),
(260, 21, 'Mesa-4'),
(261, 21, 'Mesa-5'),
(262, 21, 'Mesa-6'),
(263, 21, 'Mesa-7'),
(264, 21, 'Mesa-8'),
(265, 21, 'Mesa-9'),
(266, 21, 'Mesa-10'),
(267, 21, 'Mesa-11'),
(268, 21, 'Mesa-12'),
(269, 21, 'Mesa-13'),
(270, 21, 'Mesa-14'),
(271, 21, 'Mesa-15'),
(272, 21, 'Mesa-16'),
(273, 21, 'Mesa-17');

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
  MODIFY `id_candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id_mesa` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT de la tabla `recintos`
--
ALTER TABLE `recintos`
  MODIFY `id_recinto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id_voto` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
