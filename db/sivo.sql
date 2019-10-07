-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2019 a las 04:35:43
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id_distrito`);

--
-- Indices de la tabla `recintos`
--
ALTER TABLE `recintos`
  ADD PRIMARY KEY (`id_recinto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `recintos`
--
ALTER TABLE `recintos`
  MODIFY `id_recinto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
