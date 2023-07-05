-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2023 a las 04:42:22
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyect_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `apellido`, `direccion`, `email`, `password`) VALUES
(1, 'Diego', 'Landaverde', 'Chalatenango, Chalatenango', 'admin@gmail.com', '12345'),
(2, 'juana', 'Hernandez', 'Chalatenango', 'juan@prueba.com', '123'),
(3, 'Pedro', 'Salvador', 'Santa Ana', 'pedro@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Electrodomesticos'),
(9, 'Biberes'),
(15, 'pruebasssss'),
(17, 'rty'),
(18, 'hhyu'),
(20, 'test25'),
(21, 'test26'),
(22, 'test27'),
(23, 'test90'),
(24, 'test100'),
(25, 'miercoles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`) VALUES
(1, 'mabes'),
(2, 'prueba'),
(3, 'cat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `idcategoria`, `idmarca`, `idproveedor`, `idestado`, `cantidad`) VALUES
(4, 'Licuadora', 'color negro', 45.5, 1, 1, 16, 2, 10),
(5, 'Microonda', 'Color azul', 25.5, 1, 1, 16, 1, 10),
(6, 'Television', 'TV', 150, 1, 1, 28, 1, 7),
(7, 'me vale', 'y4h45', 53, 1, 1, 1, 2, 12),
(8, 'sdSF', 'afAGg', 34, 1, 1, 1, 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Maria Carmens', 'Chalatenango', 75502063),
(16, 'Pedro', 'San Salvador', 758963),
(24, 'lejia', 'San Ignaciohuuuuuuuuu', 758963),
(28, 'Pedro', 'Chalatenango', 758963),
(31, 'dscsds', 'dsvfrg', 458910);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testproducto`
--

CREATE TABLE `testproducto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `testproducto`
--

INSERT INTO `testproducto` (`id`, `nombre`, `precio`, `cantidad`) VALUES
(1, 'laptop hp', 500, 10),
(2, 'laptop hp', 500, 10),
(3, 'laptop hp', 500, 10),
(5, 'Refrigeradora', 60, 7),
(6, 'Refrigeradora', 60, 7),
(7, 'Refrigeradora', 60, 7),
(8, 'Refrigeradora', 60, 7),
(9, 'Refri Mabe', 60, 7),
(11, 'Aceite', 2.5, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idcategoria` (`idcategoria`),
  ADD KEY `fk_idmarca` (`idmarca`),
  ADD KEY `fk_idproveedor` (`idproveedor`),
  ADD KEY `fk_idestado` (`idestado`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testproducto`
--
ALTER TABLE `testproducto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `testproducto`
--
ALTER TABLE `testproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
