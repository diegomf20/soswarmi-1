-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 13-11-2016 a las 11:28:55
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `dbhackaton`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `amigo`
-- 

CREATE TABLE `amigo` (
  `idcuenta` int(11) NOT NULL,
  `idafiliado` int(11) NOT NULL,
  KEY `idcuenta` (`idcuenta`,`idafiliado`),
  KEY `idafiliado` (`idafiliado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- 
-- Volcar la base de datos para la tabla `amigo`
-- 

INSERT INTO `amigo` VALUES (1, 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `animo`
-- 

CREATE TABLE `animo` (
  `idanimo` int(11) NOT NULL auto_increment,
  `idpersona` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY  (`idanimo`),
  KEY `idpersona` (`idpersona`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=31 ;

-- 
-- Volcar la base de datos para la tabla `animo`
-- 

INSERT INTO `animo` VALUES (1, 1, '2016-11-13', '09:55:10', 0);
INSERT INTO `animo` VALUES (2, 2, '2016-11-13', '09:55:10', 0);
INSERT INTO `animo` VALUES (3, 1, '2016-11-13', '09:56:51', 0);
INSERT INTO `animo` VALUES (4, 1, '2016-11-13', '09:57:31', 2);
INSERT INTO `animo` VALUES (5, 1, '2016-11-13', '09:57:37', 3);
INSERT INTO `animo` VALUES (6, 1, '2016-11-13', '09:57:41', 4);
INSERT INTO `animo` VALUES (7, 1, '2016-11-13', '09:57:56', 1);
INSERT INTO `animo` VALUES (8, 1, '2016-11-13', '09:57:58', 0);
INSERT INTO `animo` VALUES (9, 1, '2016-11-13', '09:57:59', 1);
INSERT INTO `animo` VALUES (10, 1, '2016-11-13', '09:58:01', 2);
INSERT INTO `animo` VALUES (11, 1, '2016-11-13', '09:58:05', 2);
INSERT INTO `animo` VALUES (12, 1, '2016-11-13', '09:58:06', 2);
INSERT INTO `animo` VALUES (13, 1, '2016-11-13', '09:58:39', 4);
INSERT INTO `animo` VALUES (14, 1, '2016-11-13', '10:19:21', 0);
INSERT INTO `animo` VALUES (15, 1, '2016-11-13', '10:19:25', 1);
INSERT INTO `animo` VALUES (16, 1, '2016-11-13', '10:19:28', 2);
INSERT INTO `animo` VALUES (17, 1, '2016-11-13', '10:19:32', 3);
INSERT INTO `animo` VALUES (18, 1, '2016-11-13', '10:19:35', 4);
INSERT INTO `animo` VALUES (19, 1, '2016-11-13', '10:39:17', 0);
INSERT INTO `animo` VALUES (20, 1, '2016-11-13', '10:39:29', 1);
INSERT INTO `animo` VALUES (21, 1, '2016-11-13', '11:08:00', 0);
INSERT INTO `animo` VALUES (22, 1, '2016-11-13', '11:08:57', 0);
INSERT INTO `animo` VALUES (23, 1, '2016-11-13', '11:09:39', 0);
INSERT INTO `animo` VALUES (24, 1, '2016-11-13', '11:10:40', 0);
INSERT INTO `animo` VALUES (25, 1, '2016-11-13', '11:11:19', 0);
INSERT INTO `animo` VALUES (26, 1, '2016-11-13', '11:12:40', 0);
INSERT INTO `animo` VALUES (27, 1, '2016-11-13', '11:13:13', 0);
INSERT INTO `animo` VALUES (28, 1, '2016-11-13', '11:13:14', 0);
INSERT INTO `animo` VALUES (29, 1, '2016-11-13', '11:13:18', 0);
INSERT INTO `animo` VALUES (30, 1, '2016-11-13', '11:14:25', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `persona`
-- 

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL auto_increment,
  `nombres` varchar(50) collate latin1_spanish_ci NOT NULL,
  `apellidos` varchar(50) collate latin1_spanish_ci NOT NULL,
  `telefono` varchar(12) collate latin1_spanish_ci NOT NULL,
  `sexo` varchar(1) collate latin1_spanish_ci NOT NULL default 'F',
  PRIMARY KEY  (`idpersona`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `persona`
-- 

INSERT INTO `persona` VALUES (1, 'ANGIE CLARIZA', 'CORREA CUEVA', '123456789', 'F');
INSERT INTO `persona` VALUES (2, 'CRISTIAN', 'PALOMINO VEGA', '978456122', 'M');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `reporte`
-- 

CREATE TABLE `reporte` (
  `idreporte` int(11) NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `longitud` double default NULL,
  `latitud` double default NULL,
  `precision` int(11) default NULL,
  `idpersona` int(11) NOT NULL,
  PRIMARY KEY  (`idreporte`),
  KEY `idpersona` (`idpersona`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `reporte`
-- 

INSERT INTO `reporte` VALUES (1, '2016-11-12', '16:43:00', 10.5, 10.5, 28, 1);
INSERT INTO `reporte` VALUES (2, '2016-11-13', '11:15:03', NULL, NULL, NULL, 1);

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `amigo`
-- 
ALTER TABLE `amigo`
  ADD CONSTRAINT `amigo_ibfk_2` FOREIGN KEY (`idafiliado`) REFERENCES `persona` (`idpersona`),
  ADD CONSTRAINT `amigo_ibfk_1` FOREIGN KEY (`idcuenta`) REFERENCES `persona` (`idpersona`);

-- 
-- Filtros para la tabla `animo`
-- 
ALTER TABLE `animo`
  ADD CONSTRAINT `animo_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`);

-- 
-- Filtros para la tabla `reporte`
-- 
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`);
