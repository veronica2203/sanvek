-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2023 a las 18:18:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sanvek`
--
CREATE DATABASE IF NOT EXISTS `sanvek` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sanvek`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciosesion`
--
-- Creación: 03-08-2023 a las 20:08:40
--

CREATE TABLE `iniciosesion` (
  `id` int(11) NOT NULL,
  `Usuario` varchar(40) DEFAULT NULL,
  `Contraseña` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `iniciosesion`
--

INSERT INTO `iniciosesion` (`id`, `Usuario`, `Contraseña`) VALUES
(1, 'Santiagovalle', 'Santi123'),
(2, 'Veronica', 'Vero456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrar`
--
-- Creación: 03-08-2023 a las 20:12:36
--

CREATE TABLE `registrar` (
  `id` int(15) NOT NULL,
  `TipoDocumento` varchar(40) DEFAULT NULL,
  `Nombres` varchar(40) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrar`
--

INSERT INTO `registrar` (`id`, `TipoDocumento`, `Nombres`, `Telefono`, `Email`, `FechaNacimiento`) VALUES
(1, 'CC', 'Julian Valle Morales', 2310454, 'Julian31@hptmail.com', '2005-08-31'),
(2, 'CC', 'Laura Restrepo Ospina', 2315687, 'Laura23@hotmail.com', '2003-03-23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `iniciosesion`
--
ALTER TABLE `iniciosesion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registrar`
--
ALTER TABLE `registrar`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
