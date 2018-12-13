-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2018 a las 21:17:59
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ieslluis_gestiovfc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accessos`
--

CREATE TABLE `accessos` (
  `numero` bigint(20) NOT NULL,
  `usuariregistrat` int(11) DEFAULT NULL COMMENT 'Usuari registrat M-1',
  `data` date DEFAULT NULL,
  `horai` time DEFAULT NULL,
  `horaf` time DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cicles`
--

CREATE TABLE `cicles` (
  `codi` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `titol` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `grau` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `familia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `tutor` int(11) DEFAULT NULL COMMENT 'tutor del cicle en aquest curs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compres`
--

CREATE TABLE `compres` (
  `numero` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `proveidor` int(11) DEFAULT NULL,
  `dataentrada` date DEFAULT NULL,
  `total` float NOT NULL DEFAULT '0',
  `observacions` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linees_compres`
--

CREATE TABLE `linees_compres` (
  `linea` int(11) NOT NULL,
  `ncompra` int(11) NOT NULL,
  `producte` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `unitats` int(11) NOT NULL DEFAULT '1',
  `pcompra` float NOT NULL DEFAULT '0',
  `observacions` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linees_vendes`
--

CREATE TABLE `linees_vendes` (
  `linea` int(11) NOT NULL,
  `nvenda` int(11) NOT NULL,
  `producte` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `unitats` int(11) NOT NULL DEFAULT '1',
  `pvenda` float NOT NULL DEFAULT '0',
  `observacions` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagaments`
--

CREATE TABLE `pagaments` (
  `numero` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `usuari` int(11) DEFAULT NULL,
  `import` float NOT NULL DEFAULT '0',
  `observacions` text COLLATE utf8_spanish_ci,
  `tipus` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pagaments`
--

INSERT INTO `pagaments` (`numero`, `data`, `usuari`, `import`, `observacions`, `tipus`) VALUES
(1, '2018-12-14', 1, 1000, 'El mundo se consume en dinero pow pow.', 'Cobro del Dembow');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productes`
--

CREATE TABLE `productes` (
  `codi` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `nom` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `proveidor` int(11) DEFAULT NULL,
  `pcost` float NOT NULL DEFAULT '0',
  `pvenda` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `imatge` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveidors`
--

CREATE TABLE `proveidors` (
  `id` int(11) NOT NULL,
  `cif` varchar(11) COLLATE utf8_spanish_ci NOT NULL COMMENT 'cif o dni',
  `nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL COMMENT 'denominació empresa/autònom',
  `nomcomercial` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adreça` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cp` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `poblacio` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contactenom` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'nom del contacte en l''empresa',
  `contactecognoms` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Cognoms del representant',
  `contacteemail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'email persona de contacte',
  `telefon1` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefon2` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `web` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'url de l''empresa',
  `observacions` text COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE `tokens` (
  `usuari` int(11) NOT NULL COMMENT 'usuari registrat',
  `token` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris`
--

CREATE TABLE `usuaris` (
  `id` int(11) NOT NULL,
  `dni` varchar(11) COLLATE utf8_spanish_ci NOT NULL COMMENT 'dni - nie',
  `nom` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cognoms` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `contra` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `datanaixement` date DEFAULT NULL,
  `cicle` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `datacaducitat` date DEFAULT NULL,
  `nacionalitat` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adreca` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cp` varchar(6) COLLATE utf8_spanish_ci DEFAULT NULL,
  `poblacio` varchar(35) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefon1` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefon2` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefon3` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexe` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipus` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Alumne, Professor, Administrador',
  `foto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'imatge adjunta',
  `fotodni` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autoritzacio` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'fitxer autorització si menor',
  `observacions` text COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuaris`
--

INSERT INTO `usuaris` (`id`, `dni`, `nom`, `cognoms`, `email`, `contra`, `datanaixement`, `cicle`, `datacaducitat`, `nacionalitat`, `adreca`, `cp`, `poblacio`, `provincia`, `telefon1`, `telefon2`, `telefon3`, `sexe`, `tipus`, `foto`, `fotodni`, `autoritzacio`, `observacions`) VALUES
(1, 'X5514136Rrr', 'TIHOMIR', 'STOYCHEV', 'TIHOMIR_ALCUDIA3@HOTMAIL.COM', '219961', '0000-00-00', NULL, '2020-01-01', 'BULGARA', 'DEMBOW STREET', '46650', 'CANALS', 'VALENCIA', '603680594', '', '', 'on', 'DEMBOW', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendes`
--

CREATE TABLE `vendes` (
  `numero` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `usuari` int(11) DEFAULT NULL,
  `total` float NOT NULL DEFAULT '0',
  `observacions` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accessos`
--
ALTER TABLE `accessos`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `cicles`
--
ALTER TABLE `cicles`
  ADD PRIMARY KEY (`codi`),
  ADD UNIQUE KEY `titol` (`titol`);

--
-- Indices de la tabla `compres`
--
ALTER TABLE `compres`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_compra_proveidor` (`proveidor`);

--
-- Indices de la tabla `linees_compres`
--
ALTER TABLE `linees_compres`
  ADD PRIMARY KEY (`linea`),
  ADD KEY `fk_lineacompra_compra` (`ncompra`),
  ADD KEY `fk_lineacompra_producte` (`producte`) USING BTREE;

--
-- Indices de la tabla `linees_vendes`
--
ALTER TABLE `linees_vendes`
  ADD PRIMARY KEY (`linea`),
  ADD KEY `fk_lineavenda_venda` (`nvenda`),
  ADD KEY `fk_lineavenda_producte` (`producte`);

--
-- Indices de la tabla `pagaments`
--
ALTER TABLE `pagaments`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_pago_usuari` (`usuari`);

--
-- Indices de la tabla `productes`
--
ALTER TABLE `productes`
  ADD PRIMARY KEY (`codi`),
  ADD KEY `fk_producte_proveidor` (`proveidor`);

--
-- Indices de la tabla `proveidors`
--
ALTER TABLE `proveidors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cif` (`cif`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Indices de la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`usuari`);

--
-- Indices de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `fk_usuari_cicle` (`cicle`);

--
-- Indices de la tabla `vendes`
--
ALTER TABLE `vendes`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_venda_usuari` (`usuari`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accessos`
--
ALTER TABLE `accessos`
  MODIFY `numero` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compres`
--
ALTER TABLE `compres`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `linees_compres`
--
ALTER TABLE `linees_compres`
  MODIFY `linea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `linees_vendes`
--
ALTER TABLE `linees_vendes`
  MODIFY `linea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagaments`
--
ALTER TABLE `pagaments`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveidors`
--
ALTER TABLE `proveidors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vendes`
--
ALTER TABLE `vendes`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compres`
--
ALTER TABLE `compres`
  ADD CONSTRAINT `fk_compra_proveidor` FOREIGN KEY (`proveidor`) REFERENCES `proveidors` (`id`);

--
-- Filtros para la tabla `linees_compres`
--
ALTER TABLE `linees_compres`
  ADD CONSTRAINT `fk_lineacompra_compra` FOREIGN KEY (`ncompra`) REFERENCES `compres` (`numero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lineacompra_producte` FOREIGN KEY (`producte`) REFERENCES `productes` (`codi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `linees_vendes`
--
ALTER TABLE `linees_vendes`
  ADD CONSTRAINT `fk_lineavenda_producte` FOREIGN KEY (`producte`) REFERENCES `productes` (`codi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lineavenda_venda` FOREIGN KEY (`nvenda`) REFERENCES `vendes` (`numero`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagaments`
--
ALTER TABLE `pagaments`
  ADD CONSTRAINT `fk_pago_usuari` FOREIGN KEY (`usuari`) REFERENCES `usuaris` (`id`);

--
-- Filtros para la tabla `productes`
--
ALTER TABLE `productes`
  ADD CONSTRAINT `fk_producte_proveidor` FOREIGN KEY (`proveidor`) REFERENCES `proveidors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuaris`
--
ALTER TABLE `usuaris`
  ADD CONSTRAINT `fk_usuari_cicle` FOREIGN KEY (`cicle`) REFERENCES `cicles` (`codi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `vendes`
--
ALTER TABLE `vendes`
  ADD CONSTRAINT `fk_venda_usuari` FOREIGN KEY (`usuari`) REFERENCES `usuaris` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
