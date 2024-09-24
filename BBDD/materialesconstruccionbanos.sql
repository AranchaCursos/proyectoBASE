-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2024 a las 15:40:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `materialesconstruccionbanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `azulejos`
--

CREATE TABLE `azulejos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `dimensiones` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `azulejos`
--

INSERT INTO `azulejos` (`id`, `nombre`, `color`, `material`, `dimensiones`, `precio`, `fecha_adquisicion`, `proveedor`, `stock`) VALUES
(1, 'Azulejo Blanco Brillante', 'Blanco', 'Cerámico', '30x30 cm', 15.99, '2024-01-15', 'Cerámicas López', 500),
(2, 'Azulejo Gris Mate', 'Gris', 'Porcelánico', '60x60 cm', 29.99, '2024-03-10', 'Cerámica Europa', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baneras`
--

CREATE TABLE `baneras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `dimensiones` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `baneras`
--

INSERT INTO `baneras` (`id`, `nombre`, `color`, `material`, `dimensiones`, `tipo`, `precio`, `fecha_adquisicion`, `proveedor`, `stock`) VALUES
(1, 'Bañera Clásica Independiente', 'Blanco', 'Acrílico', '170x70 cm', 'Independiente', 499.99, '2024-01-20', 'Baños de Lujo', 50),
(2, 'Bañera Empotrada Moderna', 'Gris', 'Fibra de vidrio', '180x80 cm', 'Empotrada', 599.99, '2024-05-01', 'Baños de Lujo', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duchas`
--

CREATE TABLE `duchas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `duchas`
--

INSERT INTO `duchas` (`id`, `nombre`, `tipo`, `material`, `precio`, `fecha_adquisicion`, `proveedor`, `stock`) VALUES
(1, 'Columna de Ducha con Hidromasaje', 'Columna de ducha', 'Acero inoxidable', 349.99, '2024-02-25', 'AquaTech', 30),
(2, 'Ducha Empotrada con Termostato', 'Ducha empotrada', 'Cromo', 249.99, '2024-03-15', 'Duchas Elegance', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grifos`
--

CREATE TABLE `grifos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `acabado` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grifos`
--

INSERT INTO `grifos` (`id`, `nombre`, `color`, `tipo`, `material`, `acabado`, `precio`, `fecha_adquisicion`, `proveedor`, `stock`) VALUES
(1, 'Grifo Monomando Cromado', 'Cromo', 'Monomando', 'Latón', 'Cromado', 89.99, '2024-01-05', 'Grifería Premium', 200),
(2, 'Grifo Bimando Dorado', 'Oro', 'Bimando', 'Bronce', 'Oro', 149.99, '2024-02-22', 'Grifería de Lujo', 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inodoros`
--

CREATE TABLE `inodoros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `sistema_descarga` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inodoros`
--

INSERT INTO `inodoros` (`id`, `nombre`, `color`, `tipo`, `material`, `sistema_descarga`, `precio`, `fecha_adquisicion`, `proveedor`, `stock`) VALUES
(1, 'Inodoro Clásico de Tanque Bajo', 'Blanco', 'De tanque bajo', 'Porcelana', 'Dual', 199.99, '2024-02-05', 'Sanitarios Delux', 100),
(2, 'Inodoro Suspendido Moderno', 'Negro', 'Suspendido', 'Cerámica', 'Sencillo', 299.99, '2024-04-12', 'Sanitarios Futuro', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suelos`
--

CREATE TABLE `suelos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `dimensiones` varchar(50) DEFAULT NULL,
  `antideslizante` tinyint(1) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_adquisicion` date DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `suelos`
--

INSERT INTO `suelos` (`id`, `nombre`, `color`, `material`, `dimensiones`, `antideslizante`, `precio`, `fecha_adquisicion`, `proveedor`, `stock`) VALUES
(1, 'Suelo Cerámico Antideslizante', 'Marrón', 'Cerámico', '45x45 cm', 1, 19.99, '2024-01-12', 'Pavimentos Seguros', 400),
(2, 'Suelo Vinílico Imitación Madera', 'Roble', 'Vinílico', '30x30 cm', 0, 24.99, '2024-03-05', 'Suelos Modernos', 350);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `azulejos`
--
ALTER TABLE `azulejos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `baneras`
--
ALTER TABLE `baneras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `duchas`
--
ALTER TABLE `duchas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grifos`
--
ALTER TABLE `grifos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inodoros`
--
ALTER TABLE `inodoros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suelos`
--
ALTER TABLE `suelos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `azulejos`
--
ALTER TABLE `azulejos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `baneras`
--
ALTER TABLE `baneras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `duchas`
--
ALTER TABLE `duchas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grifos`
--
ALTER TABLE `grifos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inodoros`
--
ALTER TABLE `inodoros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `suelos`
--
ALTER TABLE `suelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
