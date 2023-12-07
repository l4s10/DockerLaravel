-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2023 a las 21:04:01
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sia2_test`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_stock` (IN `producto_id` INT, IN `cantidad` INT)   BEGIN
                UPDATE materiales SET STOCK = STOCK - cantidad WHERE ID_MATERIAL = producto_id;
            END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidad_juridica`
--

CREATE TABLE `calidad_juridica` (
  `ID_CALIDAD` int(10) UNSIGNED NOT NULL,
  `CALIDAD` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calidad_juridica`
--

INSERT INTO `calidad_juridica` (`ID_CALIDAD`, `CALIDAD`) VALUES
(1, 'PLANTA'),
(2, 'CONTRATA'),
(3, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `ID_CARGO` int(10) UNSIGNED NOT NULL,
  `CARGO` varchar(128) DEFAULT NULL,
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`ID_CARGO`, `CARGO`, `ID_DIRECCION`) VALUES
(1, 'DIRECTOR REGIONAL', 16),
(2, 'JEFE DE DEPARTAMENTO JURIDICO', 16),
(3, 'JEFE DE DEPARTAMENTO DE FISCALIZACION', 16),
(4, 'JEFE DE DEPARTAMENTO DE ASISTENCIA', 16),
(5, 'JEFE DE DEPARTAMENTO DE AVALUACIONES', 16),
(6, 'JEFE DE DEPARTAMENTO DE PROCEDIMIENTOS ADMINISTRATIVOS', 16),
(7, 'JEFE DE DEPARTAMENTO DE ADMINISTRACION', 16),
(8, 'JEFE DE UNIDAD DE TALCAHUANO', 16),
(9, 'JEFE DE UNIDAD DE LOS ANGELES', 16),
(10, 'JEFE DE UNIDAD DE LEBU', 16),
(11, 'JEFE DE GRUPO CONCEPCION 1', 16),
(12, 'JEFE DE GRUPO CONCEPCION 2', 16),
(13, 'JEFE DE GRUPO CONCEPCION 3', 16),
(14, 'JEFE DE GRUPO CONCEPCION 4', 16),
(15, 'JEFE DE GRUPO CONCEPCION 5', 16),
(16, 'JEFE DE GRUPO CONCEPCION 6', 16),
(17, 'JEFE DE GRUPO CONCEPCION 7', 16),
(18, 'JEFE DE GRUPO CUMPLIMIENTO TRIBUTARIO EN TERRENO (CTT)', 16),
(19, 'JEFE GRUPO N° 1 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(20, 'JEFE GRUPO N° 2 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(21, 'JEFE GRUPO N° 3 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(22, 'JEFE GRUPO N° 1 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(23, 'JEFE GRUPO N° 2 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(24, 'JEFE GRUPO N° 3 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(25, 'JEFE GRUPO N° 4 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL CONCEPCION', 16),
(26, 'JEFE GRUPO N° 1 FISCALIZACION UNIDAD DE CHILLAN', 15),
(27, 'JEFE GRUPO N° 2 FISCALIZACION UNIDAD DE CHILLAN', 15),
(28, 'JEFE GRUPO N° 1 FISCALIZACION UNIDAD DE LOS ANGELES', 16),
(29, 'JEFE GRUPO N° 2 FISCALIZACION UNIDAD DE LOS ANGELES', 16),
(30, 'JEFE GRUPO N° 1 FISCALIZACION TALCAHUANO', 16),
(31, 'JEFE DE UNIDAD DE CHILLAN', 15),
(32, 'JEFE DE UNIDAD DE SAN CARLOS', 15),
(33, 'JEFE DE GRUPO N°1 AVALUACIONES', 16),
(35, 'JEFE DE UNIDAD DE LA UNION', 18),
(36, 'JEDE DE UNIDAD DE LANCO', 18),
(37, 'JEDE DE UNIDAD DE PANGUIPULLI', 18),
(39, 'DIRECTOR REGIONAL', 18),
(40, 'JEFE DE DEPARTAMENTO JURIDICO', 18),
(41, 'JEFE DE DEPARTAMENTO DE FISCALIZACION', 18),
(42, 'JEFE DE DEPARTAMENTO DE ASISTENCIA', 18),
(43, 'JEFE DE DEPARTAMENTO DE AVALUACIONES', 18),
(44, 'JEFE DE OFICINA DE PROCEDIMIENTOS ADMINISTRATIVOS', 18),
(45, 'JEFE DE DEPARTAMENTO DE ADMINISTRACION', 18),
(46, 'JEFE DE GRUPO CUMPLIMIENTO TRIBUTARIO EN TERRENO (CTT)', 18),
(47, 'JEFE DE GRUPO N°1 AVALUACIONES', 18),
(48, 'JEFE DE OFICINA PROCEDIMIENTOS ADMINISTRATIVOS', 18),
(49, 'JEFE GRUPO N° 3 MEDIANAS Y GRANDES EMPRESAS SEDE REGIONAL VALDIVIA', 18),
(50, 'JEFE GRUPO N° 1 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL VALDIVIA', 18),
(51, 'JEFE GRUPO N° 2 PERSONAS Y MICRO-PEQUEÑA EMPRESAS SEDE REGIONAL VALDIVIA', 18),
(99, 'FUNCIONARIO', 16),
(991, 'FUNCIONARIO', 18),
(999, 'EXTERNO', 16),
(9991, 'EXTERNO', 18),
(9999, 'DIRECTOR', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_salas`
--

CREATE TABLE `categoria_salas` (
  `ID_CATEGORIA_SALA` int(10) UNSIGNED NOT NULL,
  `CATEGORIA_SALA` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_salas`
--

INSERT INTO `categoria_salas` (`ID_CATEGORIA_SALA`, `CATEGORIA_SALA`) VALUES
(1, 'SALAS'),
(2, 'BODEGAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `ID_COMUNA` int(10) UNSIGNED NOT NULL,
  `COMUNA` varchar(128) DEFAULT NULL,
  `ID_REGION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`ID_COMUNA`, `COMUNA`, `ID_REGION`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Tal-tal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'María Elena', 3),
(20, 'Tocopilla', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paihuano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Rio Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quilpué', 6),
(51, 'Quintero', 6),
(52, 'Villa Alemana', 6),
(53, 'Viña del Mar', 6),
(54, 'Zapallar', 6),
(55, 'La Ligua', 6),
(56, 'Papudo', 6),
(57, 'Petorca', 6),
(58, 'Cabildo', 6),
(59, 'Calle Larga', 6),
(60, 'Los Andes', 6),
(61, 'Rinconada', 6),
(62, 'San Esteban', 6),
(63, 'La Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'Quillota', 6),
(68, 'Buin', 7),
(69, 'Limache', 6),
(70, 'Olmue', 6),
(71, 'Cerrillos', 7),
(72, 'Cerro Navia', 7),
(73, 'Conchalí', 7),
(74, 'El Bosque', 7),
(75, 'Estación Central', 7),
(76, 'Huechuraba', 7),
(77, 'Independencia', 7),
(78, 'La Cisterna', 7),
(79, 'La Florida', 7),
(80, 'La Granja', 7),
(81, 'La Pintana', 7),
(82, 'La Reina', 7),
(83, 'Las Condes', 7),
(84, 'Lo Barnechea', 7),
(85, 'Lo Espejo', 7),
(86, 'Lo Prado', 7),
(87, 'Macul', 7),
(88, 'Maipú', 7),
(89, 'Ñuñoa', 7),
(90, 'Pedro Aguirre Cerda', 7),
(91, 'Peñalolén', 7),
(92, 'Providencia', 7),
(93, 'Pudahuel', 7),
(94, 'Puente Alto', 7),
(95, 'Quilicura', 7),
(96, 'Quinta Normal', 7),
(97, 'Recoleta', 7),
(98, 'Renca', 7),
(99, 'San Bernardo', 7),
(100, 'San Joaquín', 7),
(101, 'San José de Maipo', 7),
(102, 'San Miguel', 7),
(103, 'San Pedro', 7),
(104, 'San Ramón', 7),
(105, 'Santiago Centro', 7),
(106, 'Vitacura', 7),
(107, 'Rancagua', 11),
(108, 'Codegua', 11),
(109, 'Coinco', 11),
(110, 'Coltauco', 11),
(111, 'Doñihue', 11),
(112, 'Graneros', 11),
(113, 'Las Cabras', 11),
(114, 'Machalí', 11),
(115, 'Malloa', 11),
(117, 'Olivar', 11),
(118, 'Peumo', 11),
(119, 'Pichidegua', 11),
(120, 'Quinta de Tilcoco', 11),
(121, 'Rengo', 11),
(122, 'Requínoa', 11),
(123, 'San Vicente', 11),
(124, 'Talca', 9),
(125, 'Constitución', 9),
(126, 'Curepto', 9),
(127, 'Empedrado', 9),
(128, 'Maule', 9),
(129, 'Pelarco', 9),
(130, 'Pencahue', 9),
(131, 'Rio Claro', 9),
(132, 'San Clemente', 9),
(133, 'San Rafael', 9),
(134, 'Cauquenes', 9),
(135, 'Chanco', 9),
(136, 'Pelluhue', 9),
(137, 'Curicó', 9),
(138, 'Hualañé', 9),
(139, 'Licantén', 9),
(140, 'Molina', 9),
(141, 'Rauco', 9),
(142, 'Romeral', 9),
(143, 'Sagrada Familia', 9),
(144, 'Teno', 9),
(145, 'Vichuquén', 9),
(146, 'Linares', 9),
(147, 'Colbún', 9),
(148, 'Longaví', 9),
(149, 'Parral', 9),
(150, 'Retiro', 9),
(151, 'San Javier', 9),
(152, 'Villa Alegre', 9),
(153, 'Yerbas Buenas', 9),
(154, 'Chillán', 10),
(155, 'Bulnes', 10),
(156, 'Chillán Viejo', 10),
(157, 'El Carmen', 10),
(158, 'Pemuco', 10),
(159, 'Pinto', 10),
(160, 'Quillón', 10),
(161, 'San Ignacio', 10),
(162, 'Yungay', 10),
(163, 'Cobquecura', 10),
(164, 'Coelemu', 10),
(165, 'Ninhue', 10),
(166, 'Portezuelo', 10),
(167, 'Quirihue', 10),
(168, 'Ránquil', 10),
(169, 'Treguaco', 10),
(170, 'San Carlos', 10),
(171, 'Coihueco', 10),
(172, 'Ñiquén', 10),
(173, 'San Fabián', 10),
(174, 'San Nicolás', 10),
(175, 'Concepción', 8),
(176, 'Coronel', 8),
(177, 'Chiguayante', 8),
(178, 'Florida', 8),
(179, 'Hualqui', 8),
(180, 'Lota', 8),
(181, 'Penco', 8),
(182, 'San Pedro de la Paz', 8),
(183, 'Santa Juana', 8),
(184, 'Talcahuano', 8),
(185, 'Tomé', 8),
(186, 'Hualpén', 8),
(187, 'Lebu', 8),
(188, 'Arauco', 8),
(189, 'Cañete', 8),
(190, 'Contulmo', 8),
(191, 'Curanilahue', 8),
(192, 'Los Álamos', 8),
(193, 'Tirúa', 8),
(194, 'Los Angeles', 8),
(195, 'Antuco', 8),
(196, 'Cabrero', 8),
(197, 'Laja', 8),
(198, 'Mulchén', 8),
(199, 'Nacimiento', 8),
(200, 'Negrete', 8),
(201, 'Quilaco', 8),
(202, 'Quilleco', 8),
(203, 'San Rosendo', 8),
(204, 'Santa Bárbara', 8),
(205, 'Tucapel', 8),
(206, 'Yumbel', 8),
(207, 'Alto Biobío', 8),
(208, 'Temuco', 12),
(209, 'Carahue', 12),
(210, 'Cunco', 12),
(211, 'Curarrehue', 12),
(212, 'Freire', 12),
(213, 'Galvarino', 12),
(214, 'Gorbea', 12),
(215, 'Lautaro', 12),
(216, 'Loncoche', 12),
(217, 'Melipeuco', 12),
(218, 'Nueva Imperial', 12),
(219, 'Padre las Casas', 12),
(220, 'Perquenco', 12),
(221, 'Pitrufquén', 12),
(222, 'Pucón', 12),
(223, 'Saavedra', 12),
(224, 'Teodoro Schmidt', 12),
(225, 'Toltén', 12),
(226, 'Vilcún', 12),
(227, 'Villarrica', 12),
(228, 'Cholchol', 12),
(229, 'Angol', 12),
(230, 'Collipulli', 12),
(231, 'Curacautín', 12),
(232, 'Ercilla', 12),
(233, 'Lonquimay', 12),
(234, 'Los Sauces', 12),
(235, 'Lumaco', 12),
(236, 'Purén', 12),
(237, 'Renaico', 12),
(238, 'Traiguén', 12),
(239, 'Victoria', 12),
(240, 'Valdivia', 13),
(241, 'Corral', 13),
(242, 'Lanco', 13),
(243, 'Los Lagos', 13),
(244, 'Máfil', 13),
(245, 'Mariquina', 13),
(246, 'Paillaco', 13),
(247, 'Panguipulli', 13),
(248, 'La Unión', 13),
(249, 'Futrono', 13),
(250, 'Lago Ranco', 13),
(251, 'Río Bueno', 13),
(252, 'Puerto Montt', 14),
(253, 'Calbuco', 14),
(254, 'Cochamó', 14),
(255, 'Fresia', 14),
(256, 'Frutillar', 14),
(257, 'Los Muermos', 14),
(258, 'Llanquihue', 14),
(259, 'Maullín', 14),
(260, 'Puerto Varas', 14),
(261, 'Castro', 14),
(262, 'Ancud', 14),
(263, 'Chonchi', 14),
(264, 'Curaco de Vélez', 14),
(265, 'Dalcahue', 14),
(266, 'Puqueldón', 14),
(267, 'Queilén', 14),
(268, 'Quellón', 14),
(269, 'Quemchi', 14),
(270, 'Quinchao', 14),
(271, 'Osorno', 14),
(272, 'Puerto Octay', 14),
(273, 'Purranque', 14),
(274, 'Puyehue', 14),
(275, 'Río Negro', 14),
(276, 'San Juan de la Costa', 14),
(277, 'San Pablo', 14),
(278, 'Coyhaique', 15),
(279, 'Lago Verde', 15),
(280, 'Aysén', 15),
(281, 'Cisnes', 15),
(282, 'Guaitecas', 15),
(283, 'Cochrane', 15),
(284, 'OHiggins', 15),
(285, 'Tortel', 15),
(286, 'Punta Arenas', 16),
(287, 'Laguna Blanca', 16),
(288, 'Río Verde', 16),
(289, 'San Gregorio', 16),
(290, 'Cabo de Hornos', 16),
(292, 'Porvenir', 16),
(293, 'Primavera', 16),
(294, 'Timaukel', 16),
(295, 'Puerto Natales', 16),
(296, 'Torres del Paine', 16),
(297, 'Algarrobo', 6),
(298, 'Cartagena', 6),
(299, 'Catemu', 6),
(300, 'El Quisco', 6),
(301, 'EL Tabo', 6),
(302, 'Isla de Pascua', 6),
(303, 'Llaillay', 6),
(304, 'Putaendo', 6),
(305, 'Panquehue', 6),
(306, 'San Felipe', 6),
(307, 'San Antonio', 6),
(308, 'Santa Maria', 6),
(309, 'Santo Domingo', 6),
(310, 'Chepica', 11),
(311, 'Chimbarongo', 11),
(312, 'La Estrella', 11),
(313, 'Litueche', 11),
(314, 'Lolol', 11),
(315, 'Marchihue', 11),
(316, 'Mostazal', 11),
(317, 'Nancagua', 11),
(318, 'Navidad', 11),
(319, 'Palmilla', 11),
(320, 'Paredones', 11),
(321, 'Peralillo', 11),
(322, 'Pichilemu', 11),
(323, 'Placilla', 11),
(324, 'Pumanque', 11),
(325, 'San Fernando', 11),
(326, 'Santa Cruz', 11),
(327, 'Los Alamos', 8),
(328, 'Chaitén', 14),
(329, 'Futaleufú', 14),
(330, 'Hualaihué', 14),
(331, 'Palena', 14),
(332, 'Chile Chico', 14),
(333, 'Rio Ibañez', 14),
(334, 'Antártica', 16),
(335, 'Alhué', 7),
(336, 'Calera de Tango', 7),
(337, 'Colina', 7),
(338, 'Curacaví', 7),
(339, 'El Monte', 7),
(340, 'Isla Del Maipo', 7),
(341, 'Lampa', 7),
(342, 'María Pinto', 7),
(343, 'Melipilla', 7),
(344, 'Padre Hurtado', 7),
(345, 'Paine', 7),
(346, 'Peñaflor', 7),
(347, 'Pirque', 7),
(348, 'Talagante', 7),
(349, 'Tiltil', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones_regionales`
--

CREATE TABLE `direcciones_regionales` (
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL,
  `DIRECCION` varchar(128) DEFAULT NULL,
  `ID_REGION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `direcciones_regionales`
--

INSERT INTO `direcciones_regionales` (`ID_DIRECCION`, `DIRECCION`, `ID_REGION`) VALUES
(1, 'DIRECCION REGIONAL DE ARICA', 1),
(2, 'DIRECCION REGIONAL DE IQUIQUE', 2),
(3, 'DIRECCION REGIONAL DE ANTOFAGASTA', 3),
(4, 'DIRECCION REGIONAL DE COPIAPO', 4),
(5, 'DIRECCION REGIONAL DE LA SERENA', 5),
(6, 'DIRECCION REGIONAL DE VALPARAISO', 6),
(7, 'DIRECCION NACIONAL', 7),
(8, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO PONIENTE', 7),
(9, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO SUR', 7),
(10, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO NORTE', 7),
(11, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO ORIENTE', 7),
(12, 'DIRECCION REGIONAL METROPOLITANA SANTIAGO CENTRO', 7),
(13, 'DIRECCION REGIONAL DE RANCAGUA', 11),
(14, 'DIRECCION REGIONAL DE TALCA', 9),
(15, 'DIRECCION REGIONAL DE CHILLAN', 10),
(16, 'DIRECCION REGIONAL DE CONCEPCION', 8),
(17, 'DIRECCION REGIONAL DE TEMUCO', 12),
(18, 'DIRECCION REGIONAL DE VALDIVIA', 13),
(19, 'DIRECCION REGIONAL DE PUERTO MONTT', 14),
(20, 'DIRECCION REGIONAL DE COYHAIQUE', 15),
(21, 'DIRECCION REGIONAL DE PUNTA ARENAS', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `ID_EQUIPO` int(10) UNSIGNED NOT NULL,
  `MARCA_EQUIPO` varchar(128) DEFAULT NULL,
  `MODELO_EQUIPO` varchar(128) DEFAULT NULL,
  `ESTADO_EQUIPO` varchar(128) DEFAULT NULL,
  `ID_TIPO_EQUIPOS` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID_EQUIPO`, `MARCA_EQUIPO`, `MODELO_EQUIPO`, `ESTADO_EQUIPO`, `ID_TIPO_EQUIPOS`) VALUES
(1, 'HP', 'HP', 'DISPONIBLE', 1),
(2, 'LENOVO', 'T420', 'DISPONIBLE', 1),
(3, 'SAMSUNG', 'S', 'DISPONIBLE', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escalafon`
--

CREATE TABLE `escalafon` (
  `ID_ESCALAFON` int(10) UNSIGNED NOT NULL,
  `ESCALAFON` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `escalafon`
--

INSERT INTO `escalafon` (`ID_ESCALAFON`, `ESCALAFON`) VALUES
(1, 'TECNICO EN FISCALIZACION'),
(2, 'ADMINISTRATIVO'),
(3, 'FISCALIZADOR TRIBUTARIO'),
(4, 'PROFESIONAL'),
(5, 'DIRECTIVO'),
(6, 'AUXILIAR'),
(7, 'TECNICO EN INFORMATICA'),
(8, 'TECNICO EN AVALUACIONES'),
(9, 'FISCALIZADOR TASADOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `ID_FACULTAD` int(10) UNSIGNED NOT NULL,
  `NRO` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(256) NOT NULL,
  `CONTENIDO` text NOT NULL,
  `LEY_ASOCIADA` varchar(128) NOT NULL,
  `ART_LEY_ASOCIADA` varchar(128) NOT NULL,
  `REFERENCIA_LEGAL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`ID_FACULTAD`, `NRO`, `NOMBRE`, `CONTENIDO`, `LEY_ASOCIADA`, `ART_LEY_ASOCIADA`, `REFERENCIA_LEGAL`) VALUES
(1, 1, 'Nombre 1', 'Aplicar sanciones y girar multas por infracciones a las leyes tributarias que se sometan al procedimiento del artículo 165 del Código Tributario, que no hayan sido objeto de reclamo de conformidad con lo dispuesto en el número 3º de dicha disposición legal.', ' D.F.L. N° 7, Ley Orgánica del SII', 'Artículo 19', 'Le corresponde a los Directores Regionales dentro de sus respectivas jurisdicciones:\r\nb) Aplicar sanciones y girar multas por infracciones a las leyes tributarias que se sometan al procedimiento del artículo 165 del Código Tributario, que no hayan sido objeto de reclamo de conformidad con lo dispuesto en el número 3º de dicha disposición legal.'),
(2, 2, 'Nombre 2', 'Designar el abogado que asumirá el patrocinio y representación de la Dirección Regional en los juicios y actuaciones ante los Tribunales de cualquier denominación', ' D.F.L. N° 7, Ley Orgánica del SII', 'Artículo 46', 'En los juicios y actuaciones en que intervenga el Servicio ante los Tribunales de cualquier denominación, el patrocinio y representación serán asumidos por el abogado que designe el Director o el Director Regional. '),
(3, 3, 'Nombre 3', 'Absolver las consultas sobre aplicación e interpretación de las normas tributarias', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°1', 'Corresponde al Servicio de Impuestos Internos el ejercicio de las atribuciones que le confiere su Estatuto Orgánico, el presente Código y las leyes y, en especial, la aplicación y fiscalización administrativa de las disposiciones tributarias.\r\nDentro de las facultades que las leyes confieren al Servicio, corresponde:\r\nLetra B. A los Directores Regionales en la jurisdicción de su territorio:\r\n1°. Absolver las consultas sobre la aplicación e interpretación de las normas tributarias.'),
(4, 4, 'Nombre 4', 'Solicitar la aplicación de apremios y pedir su renovación, en los casos a que se refiere el Título I del Libro Segundo.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°2', 'Solicitar la aplicación de apremios y pedir su renovación, en los casos a que se refiere el Título I del Libro Segundo.'),
(5, 5, 'Nombre 5', 'Aplicar, rebajar o condonar las sanciones administrativas fijas o variables.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°3', 'Aplicar, rebajar o condonar las sanciones administrativas fijas o variables.'),
(6, 6, 'Nombre 6', 'Condonar total o parcialmente los intereses penales por la mora en el pago de los impuestos, en los casos expresamente autorizados por la ley.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°4', 'Condonar total o parcialmente los intereses penales por la mora en el pago de los impuestos, en los casos expresamente autorizados por la ley.\r\nSin embargo, la condonación de intereses o sanciones podrá ser total, si el Servicio incurriere en error al determinar un impuesto o cuando, a juicio del Director Regional, dichos intereses o sanciones se hubieren originado por causa no imputable al contribuyente.'),
(7, 7, 'Nombre 7', '* Resolver administrativamente, las peticiones de revisión que se deduzcan en cualquier tiempo, respecto de las liquidaciones, giros o resoluciones que incidan en el pago de un impuesto o en los elementos que sirvan de base para determinarlo o que denieguen cualquiera de las peticiones a que se refiere el artículo 126 del citado cuerpo legal.                                                                                                                                                            * Autorizar o denegar las solicitudes de cambios de regímenes tributarios.                                 * Autorizar o denegar las solicitudes para acogerse  a la tributación simplificada de IVA del artículo 29º del DL Nª 830, de 1974.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°5', 'Resolver administrativamente todos los asuntos de carácter tributario que se promuevan, incluso corregir de oficio, en cualquier tiempo, los vicios o errores manifiestos en que se haya incurrido en las liquidaciones o giros de impuestos.'),
(8, 8, 'Nombre 8', 'Disponer el cumplimiento administrativo de las sentencias dictadas por los Tribunales Tributarios y Aduaneros, que incidan en materias de su competencia. Cuando dichas sentencias sean dictadas en procesos de reclamación, la facultad de disponer el cumplimiento administrativo de las mismas comprende la potestad de girar las costas que en ellas se decreten cuando resulte vencido el contribuyente.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°6', 'Sin embargo, el Director Regional no podrá resolver peticiones administrativas que contengan las mismas pretensiones planteadas previamente por el contribuyente en sede jurisdiccional.'),
(9, 9, 'Nombre 9', 'Ordenar la publicación o la notificación por avisos de cualquiera clase de resoluciones o disposiciones de orden general o particular.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 6, Letra B N°10', 'Ordenar la publicación o la notificación por avisos de cualquiera clase de resoluciones o disposiciones de orden general o particular.'),
(10, 10, 'Nombre 10', 'Autorizar el cambio de sistemas de contabilidad usados por los contribuyentes \r\n', ' Decreto Ley N° 830, Código Tributario', 'Artículo 16°, inc. 6', 'No es permitido a los contribuyentes cambiar el sistema de su contabilidad, que haya servido de base para el cálculo de su renta de acuerdo con sus libros, sin aprobación del Director Regional.'),
(11, 11, 'Nombre 11', 'Autorizar la sustitución de los libros de contabilidad y libros auxiliares por hojas sueltas, escritas a mano o en otra forma, o por aplicaciones informáticas o sistemas tecnológicos.                                                                                                                                                          Exigir a los contribuyentes llevar libros auxiliares para el mejor cumplimiento de sus obligciones tributarias.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 17, incisos 4° y 5°', 'El Director Regional podrá autorizar la sustitución de los libros de contabilidad y sus registros auxiliares por hojas sueltas, escritas a mano o en otra forma, o por aplicaciones informáticas o sistemas tecnológicos, consultando las garantías necesarias para el resguardo de los intereses fiscales.\r\nSin perjuicio de los libros de contabilidad exigidos por la ley, los contribuyentes deberán llevar los libros adicionales o auxiliares que exija el Director Regional, a su juicio exclusivo, de acuerdo con las normas que dicte para el mejor cumplimiento o fiscalización de las obligaciones tributarias.'),
(12, 12, 'Nombre 12', 'Calificar las declaraciones, documentos, libros o antecedentes como no fidedignos, siempre que ellos influyan en la determinación y cálculos de los impuestos correspondientes.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 21º, inciso 2º', 'El Servicio no podrá prescindir de las declaraciones y antecedentes presentados o producidos por el contribuyente y liquidar otro impuesto que el que de ellos resulte, a menos que esas declaraciones, documentos, libros o antecedentes no sean fidedignos. En tal caso, el Servicio, previos los trámites establecidos en los artículos 63 y 64 practicará las liquidaciones o reliquidaciones que procedan, tasando la base imponible con los antecedentes que obren en su poder. Para obtener que se anule o modifique la liquidación o reliquidación, el contribuyente deberá desvirtuar con pruebas suficientes las impugnaciones del Servicio, en conformidad a las normas pertinentes del Libro Tercero.'),
(13, 13, 'Nombre 13', 'Eximir de la obligación de llevar libros de contabilidad completa a las personas naturales sujetas al impuesto a que se refieren los números 3°, 4° y 5° del artículo 20° de la Ley de la Renta, cuyos capitales destinados a su negocio o actividades no excedan de dos unidades tributarias anuales, y cuyas rentas anuales no sobrepasen, a su juicio, de una unidad tributaria anual, podrán ser liberados de la obligación de llevar libros de contabilidad completa.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 23, inc. 1° y Artículo 68°, inc. 3° DL 824', 'Las personas naturales sujetas al impuesto a que se refieren los números 3°, 4° y 5° del artículo 20° de la Ley de la Renta, cuyos capitales destinados a su negocio o actividades no excedan de dos unidades tributarias anuales, y cuyas rentas anuales no sobrepasen a juicio exclusivo de la Dirección Regional de una unidad tributaria anual, podrán ser liberados de la obligación de llevar libros de contabilidad completa. No podrán acogerse a este beneficio los contribuyentes que se dediquen a la minería, los agentes de aduana y los corredores de propiedades.\r\n'),
(14, 14, 'Nombre 14', 'Eximir por un tiempo determinado a los comerciantes ambulantes, de ferias libres y propietarios de pequeños negocios de artículos de primera necesidad o en otros casos análogos, de la obligación de emitir boletas por todas sus ventas y de la obligación de llevar el Libro de Ventas Diarias, según lo dispuesto en el inciso 3° del artículo 23 del Código Tributario. ', ' Decreto Ley N° 830, Código Tributario', '\r\nArt.23 inc.3', ' Asimismo, para los efectos de la aplicación de la ley sobre Impuesto a las Rentas, la Dirección Regional podrá, de oficio o a petición del interesado y a su juicio exclusivo, por resolución fundada, eximir por un tiempo determinado a los comerciantes ambulantes, de ferias libres y propietarios de pequeños negocios de artículos de primera necesidad o en otros casos análogos, de la obligación de emitir boletas por todas sus ventas, pudiendo, además, eximirlos de la obligación de llevar el Libro de Ventas Diarias. En estos casos, el Servicio tasará el monto mensual de las ventas afectas a impuesto.'),
(15, 15, 'Nombre 15', 'Practicar liquidaciones a los contribuyentes que no presentaren declaración estando obligados a hacerlo o a los que se les determinen diferencias de impuestos.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 24', 'A los contribuyentes que no presentaren declaración estando obligados a hacerlo, o a los cuales se les determinaren diferencias de impuestos, el Servicio les practicará una liquidación en la cual se dejará constancia de las partidas no comprendidas en su declaración o liquidación anterior. En la misma liquidación deberá indicarse el monto de los tributos adeudados y, cuando proceda, el monto de las multas en que haya incurrido el contribuyente por atraso en presentar su declaración y los reajustes e intereses por mora en el pago.'),
(16, 16, 'Nombre 16', 'Ampliar el plazo para la presentación de las declaraciones', ' Decreto Ley N° 830, Código Tributario', 'Artículo 31', 'El Director Regional podrá ampliar el plazo para la presentación de las declaraciones siempre que a su juicio exclusivo existan razones fundadas para ello, y dejará constancia escrita de la prórroga y de su fundamento. Las prórrogas no serán concedidas por más de cuatro meses, salvo que el contribuyente se encuentre en el extranjero y las declaraciones se refieran al impuesto a la renta.'),
(17, 17, 'Nombre 17', 'Requerir a los contribuyentes para atestiguar, bajo juramento, de acuerdo a lo dispuesto en el Art. 34 del Código Tributario', ' Decreto Ley N° 830, Código Tributario', 'Artículo 34', 'Están obligados a atestiguar bajo juramento sobre los puntos contenidos en una declaración, los contribuyentes, los que las hayan firmado y los técnicos y asesores que hayan intervenido en su confección, o en la preparación de ella o de sus antecedentes, siempre que el Servicio lo requiera, dentro de los plazos de prescripción. Tratándose de sociedades esta obligación recaerá, además, sobre los socios o administradores que señale la Dirección Regional. Si se trata de sociedades anónimas o en comandita, están obligados a prestar ese juramento su presidente, vicepresidente, gerente, directores o socios gestores, que, según el caso, indique la Dirección Regional.'),
(18, 18, 'Nombre 18', 'Remitir los antecedentes  e información  de contribuyentes solicitada por los Tribunales, para la prosecucuón de juicios sobre impuesto y sobre alimentos. Remitir los antecedentes e información de contribuyentes solicitada por los fiscales del Ministerio Público cuando investiguen hechos constitutivos de delito.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 35, inc 3°', 'El Director y demás funcionarios del Servicio no podrán divulgar, en forma alguna, la cuantía o fuente de las rentas, ni las pérdidas, gastos o cualesquiera datos relativos a ellas, que figuren en las declaraciones obligatorias, ni permitirán que éstas o sus copias o los libros o papeles que contengan extractos o datos tomados de ellas sean conocidos por persona alguna ajena al Servicio salvo en cuanto fueren necesarios para dar cumplimiento a las disposiciones del presente Código u otras normas legales. \r\nEl precepto anterior no obsta al examen de las declaraciones por los jueces o al otorgamiento de la información que éstos soliciten sobre datos contenidos en ellas, cuando dicho examen o información sea necesario para la prosecución de los juicios sobre impuesto y sobre alimentos; ni al examen que practiquen o a la información que soliciten los fiscales del Ministerio Público cuando investiguen hechos constitutivos de delito, ni a la publicación de datos estadísticos en forma que no puedan identificarse los informes, declaraciones o partidas respecto de cada contribuyente en particular.'),
(19, 19, 'Nombre 19', 'Enmendar administrativamente, de oficio o a petición de parte, cualquier error manifiesto de cálculo en que pudiera haberse incurrido en la emisión de los giros por diferencias de impuestos y recargos entre lo pagado y lo efectivamente adeudado.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 48, inciso final', 'El Director Regional, podrá de oficio o a petición del contribuyente, enmendar administrativamente cualquier error manifiesto de cálculo en que pudiera haberse incurrido en la emisión del giro referido en el inciso anterior.'),
(20, 20, 'Nombre 20', 'Resolver administrativamente las peticiones de imputación al pago de impuestos o contribuciones de cualquier especie  o a pagos provisionales de impuesto a que se refiere el artículo 51 del Código Tributario, de las sumas ingresadas en arcas fiscales indebidamente, doblemente o en exceso a título de impuestos, reajustes, intereses o sanciones.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 51°, DL 830', 'Cuando los contribuyentes no ejerciten el derecho a solicitar la devolución de las cantidades que corresponden a pagos indebidos o en exceso de lo adeudado a título de impuestos, las Tesorerías procederán a ingresar dichas cantidades como pagos provisionales de impuestos. Para estos fines, bastará que el contribuyente acompañe a la Tesorería una copia autorizada de la resolución del Servicio en la cual conste que tales cantidades pueden ser imputadas en virtud de las causales ya indicadas.'),
(21, 21, 'Nombre 21', 'Declarar que no procede el reajuste ni el devengo de los intereses penales cuando el atraso en el pago se haya debido a causa imputable al Servicio.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 53°, inciso 5°', 'No procederá el reajuste ni se devengarán los intereses penales a que se refieren los incisos precedentes, cuando el atraso en el pago se haya debido a causa imputable a los Servicio de Impuestos Internos o Tesorería, lo cual deberá ser declarado por el respectivo Director Regional o Tesorero Regional o Provincial, en su caso.'),
(22, 22, 'Nombre 22', 'Disponer que los contribuyentes presenten un estado de situación que incluya el valor de costo y fecha de adquisición de los bienes.                                                                                Exigir que se incluyan los vehículos terrestres, marítimos  y aéreos de uso personal.                                                                                                              Ordenar la confrontación de inventarios con auxilio de la fuerza pública', ' Decreto Ley N° 830, Código Tributario', 'Artículo  60°, incisos 2°, 3° y 6°', 'El Director Regional podrá disponer que los contribuyentes presenten, en los casos que así lo determine, un estado de situación. Podrá exigirse, además, que este estado de situación incluya el valor de costo y fecha de adquisición de los bienes que especifique el Director Regional.\r\nNo se incluirán en este estado de situación los bienes muebles de uso personal del contribuyente ni los objetos que forman parte del mobiliario de su casa habitación, con excepción de los vehículos terrestres, marítimos y aéreos de uso personal, los que deberán indicarse si así lo exigiere el Director Regional.\r\nEl Director o el Director Regional, según el caso, podrá ordenar que el inventario se confronte con el auxilio de la fuerza pública, cuando exista oposición de parte del contribuyente.'),
(23, 23, 'Nombre 23', 'Solicitar declaración jurada por escrito o citar a toda persona domiciliada dentro de la jurisdicción de la Oficina respectiva, para que concurra a declarar, bajo juramento, sobre hechos, datos o antecedentes de cualquiera naturaleza relacionados con terceras personas.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 60, inc. 8°', 'Para la aplicación, fiscalización o investigación del cumplimiento de las leyes tributarias, el Servicio podrá pedir declaración jurada por escrito o citar a toda persona domiciliada dentro de la jurisdicción de la oficina que la cite, para que concurra a declarar, bajo juramento, sobre hechos, datos o antecedentes de cualquiera naturaleza relacionados con terceras personas. Estarán exceptuados de estas obligaciones, salvo en los casos de sucesión por causa de muerte o comunidades en que sean comuneros los parientes, el cónyuge, los parientes por consanguinidad en la línea recta o dentro del cuarto grado de la colateral, el adoptante, el adoptado, los parientes por afinidad en la línea recta o dentro del segundo grado de la colateral de dichos terceros. Además estarán exceptuadas de estas obligaciones las personas obligadas a guardar el secreto profesional.'),
(24, 24, 'Nombre 24', 'Ordenar el diseño y ejecución de actividades de muestreo y punto fijo para la fiscalización del correcto cumplimiento tributario de los contribuyentes.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 60 quáter', 'El Director Regional podrá ordenar el diseño y ejecución de cualquier tipo de actividad o técnica de auditoría de entre aquellas generalmente aceptadas, sin afectar el normal desarrollo de las operaciones del contribuyente. En el ejercicio de esta facultad el Servicio podrá, en especial, realizar actividades de muestreo y puntos fijos.'),
(25, 25, 'Nombre 25', 'Citar en los casos en que la ley la establezca como trámite previo al contribuyente para que dentro del plazo de un mes, presente una declaración o rectifique, aclare, amplíe o confirme la anterior. Ampliar este plazo, a solicitud de interesado, hasta por un mes.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 63, inc. 2°', 'El Jefe de la Oficina respectiva del Servicio podrá citar al contribuyente para que, dentro del plazo de un mes, presente una declaración o rectifique, aclare, amplíe o confirme la anterior. Sin embargo, dicha citación deberá practicarse en los casos en que la ley la establezca como trámite previo. A solicitud del interesado dicho funcionario podrá ampliar este plazo, por una sola vez, hasta por un mes. Esta facultad podrá ser delegada en otros jefes de las respectivas oficinas.'),
(26, 26, 'Nombre 26', 'Efectuar tasación de la base imponible en caso que el contribuyente no concurriere a la citación que se le hiciere de acuerdo con el artículo 63° o no contestare o no cumpliere las exigencias que se le formulen, o al cumplir con ellas no subsanare las deficiencias comprobadas o que en definitiva se comprueben.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 64', 'El Servicio podrá tasar la base imponible, con los antecedentes que tenga en su poder, en caso que el contribuyente no concurriere a la citación que se le hiciere de acuerdo con el artículo 63° o no contestare o no cumpliere las exigencias que se le formulen, o al cumplir con ellas no subsanare las deficiencias comprobadas o que en definitiva se comprueben.'),
(27, 27, 'Nombre 27', 'Efectuar tasación de oficio y para todos los efectos tributarios el monto de las ventas u operaciones gravadas sobre las cuales deberá pagarse el impuesto y las multas, en los casos a que se refiere el número 4° del artículo 97°', ' Decreto Ley N° 830, Código Tributario', 'Artículo 65', 'En los casos a que se refiere el número 4° del artículo 97°, el Servicio tasará de oficio y para todos los efectos tributarios el monto de las ventas u operaciones gravadas sobre las cuales deberá pagarse el impuesto y las multas. Para estos efectos se presume que el monto de las ventas y demás operaciones gravadas no podrá ser inferior, en un período determinado, al monto de las compras efectuadas y de las existencias iniciales, descontándose las existencias en poder del contribuyente y agregando las utilidades fijadas por los organismos estatales, tratándose de precios controlados, o las que determine el Servicio, en los demás casos.'),
(28, 28, 'Nombre 28', 'En el casos señalado en el artículo 75 del Código Tributario, determinar que en los documentos que den cuenta la declaración y pago del Impuesto a las Ventas y Servicios se haga dentro del plazo establecido en esa ley', ' Decreto Ley N° 830, Código Tributario', ' Artículo 75, inciso 3°', 'Los notarios y demás ministros de fe deberán dejar constancia del pago del tributo contemplado en la Ley sobre Impuesto a las Ventas y Servicios, en los documentos que den cuenta de una convención afecta a dicho impuesto.\r\nPara los efectos contemplados en este artículo, no regirán los plazos de declaración y pago señalados en esa ley.\r\nCon todo, el Director Regional podrá, a su juicio exclusivo, determinar que la declaración y pago del impuesto se haga dentro de los plazos indicados en esa ley, cuando estime debidamente resguardado el interés fiscal.'),
(29, 29, 'Nombre 29', 'Solicitar copia de los balances y estados de situación que se hayan presentado a los bancos y demás instituciones de crédito.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 84', 'Una copia de los balances y estados de situación que se presenten a los bancos y demás instituciones de crédito será enviada por estas instituciones a la Dirección Regional, en los casos particulares en que el Director Regional lo solicite.'),
(30, 30, 'Nombre 30', 'Eximir de la obligación de acreditar el pago de un impuesto', ' Decreto Ley N° 830, Código Tributario', 'Artículo 92', 'Salvo disposición en contrario, en los casos en que se exija comprobar el pago de un impuesto, se entenderá cumplida esta obligación con la exhibición del respectivo recibo o del certificado de exención, o demostrándose en igual forma estar al día en el cumplimiento de un convenio de pago celebrado con el Servicio de Tesorerías. El Director Regional podrá autorizar, en casos calificados, se omita el cumplimiento de la obligación precedente, siempre que el interesado caucione suficientemente el interés fiscal. No procederá esta caución cuando el Director Regional pueda verificar el pago de los impuestos de la información entregada al Servicio por Tesorerías.'),
(31, 31, 'Nombre 31', 'Solicitar el apremio en los casos en que los contribuyentes habiendo sido citadas por segunda vez en conformidad a lo dispuesto en los artículos (del Código Tributario) 34 o 60, penúltimo inciso, durante la recopilación de antecedentes a que se refiere el artículo 161, Nº 10, no concurran sin causa justificada, en los casos de las infracciones señaladas en el N° 7 del artículo 97 y también en todo caso en que el contribuyente no exhiba sus libros o documentos de contabilidad o entrabe el examen de los mismos.\r\n', ' Decreto Ley N° 830, Código Tributario', 'Artículo 95', 'Procederá el apremio en contra de las personas que, habiendo sido citadas por segunda vez en conformidad a lo dispuesto en los artículos 34 o 60, penúltimo inciso, durante la recopilación de antecedentes a que se refiere el artículo 161, Nº 10, no concurran sin causa justificada; procederá, además, el apremio en los casos de las infracciones señaladas en el N° 7 del artículo 97 y también en todo caso en que el contribuyente no exhiba sus libros o documentos de contabilidad o entrabe el examen de los mismos.\r\nLas citaciones a que se refiere el inciso anterior, deberán efectuarse por carta certificada y a lo menos para quinto día contado desde la fecha en que ésta se entienda recibida. Entre una y otra de las dos citaciones a que se refiere dicho inciso deberá mediar, a lo menos, un plazo de cinco días.\r\nEn los casos señalados en este artículo, el apercibimiento deberá efectuarse por el Servicio, y corresponderá al Director Regional solicitar el apremio.\r\nSerá juez competente para conocer de los apremios a que se refiere el presente artículo el juez de letras en lo civil de turno del domicilio del infractor.'),
(32, 32, 'Nombre 32', 'Aplicar las sanciones administrativas que correspondan respecto de las infracciones tributarias previstas y tipificadas en el artículo 97 números 3, 6, 7, 10, 15, 16, 17, 19, 20 y 21 y en el artículo 109, ambos del Código Tributario, contenido en el artículo 1° del DL N°830, de 1974, del Ministerio de Hacienda, cuando no se haya reclamado de ellas, y además, conceder las condonaciones que se soliciten respecto de las sanciones que les corresponda aplicar, siempre\r\nque se cumplan las condiciones establecidas en las resoluciones e instrucciones dictadas al efecto', ' Decreto Ley N° 830, Código Tributario', 'Artículo 97° y Artículo 109°', 'Aplicar las sanciones administrativas que correspondan respecto de las infracciones tributarias previstas y tipificadas en el artículo 97 N°s 3, 6, 7, 10, 15, 16, 17, 19, 20 y 21 y artículo 109, ambos del Código Tributario, y además, conceder las condonaciones que se soliciten respecto de las sanciones que les corresponda aplicar, en los casos que el contribuyente interesado lo haya solicitado y se cumplan las condiciones establecidas en las resoluciones e instrucciones dictadas al efecto; y la de aplicar las sanciones administrativas que correspondan a las infracciones señaladas, cuando transcurrido el plazo legal, no se haya reclamado de ellas.'),
(33, 33, 'Nombre 33', 'Remitir, rebajar o suspender, las sanciones pecuniarias en los casos señalados en el inciso 1° del artículo 106 del Código Tributario, contenido en el artículo 1° del DL N°830, de 1974, del Ministerio de Hacienda.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 106, inciso 1°', 'Las sanciones pecuniarias podrán ser remitidas, rebajadas o suspendidas, a juicio exclusivo del Director Regional si el contribuyente probare que ha procedido con antecedentes que hagan excusable la acción u omisión en que hubiere incurrido o si el implicado se ha denunciado y confesado la infracción y sus circunstancias.'),
(34, 34, 'Nombre 34', 'Anular las denuncias notificadas por infracciones que no constituyan amenazas para el interés fiscal u omitir los giros de las multas que se apliquen en estos casos.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 106, inciso 2°', 'Sin perjuicio de lo anterior, el Director Regional podrá anular las denuncias notificadas por infracciones que no constituyan amenazas para el interés fiscal u omitir los giros de las multas que se apliquen en estos casos, de acuerdo a normas o criterios de general aplicación que fije el Director.'),
(35, 35, 'Nombre 35', 'Aplicar administrativamente las sanciones en los casos a que se refieren los números 1º y 2º del artículo 165 del Código Tributario', ' Decreto Ley N° 830, Código Tributario', 'Artículo 115, inciso 3°', 'El conocimiento de las infracciones a las normas tributarias y la aplicación de las sanciones pecuniarias por tales infracciones, corresponderá al Tribunal Tributario y Aduanero que tenga competencia en el territorio donde tiene su domicilio el infractor. Sin embargo, en los casos a que se refieren los números 1º y 2º del artículo 165, la aplicación administrativa de las sanciones corresponderá al Director Regional del domicilio del infractor.'),
(36, 36, 'Nombre 36', 'Resolver los recursos de reposición administrativa interpuestos por los contribuyentes de acuerdo con lo dispuesto en el artículo 123 bis del Código Tributario, respecto de las resoluciones, giros y liquidaciones dictadas por la respectiva Dirección Regional', ' Decreto Ley N° 830, Código Tributario', 'Artículo 123 bis', 'Respecto de los actos a que se refiere el artículo 124, será procedente el recurso de reposición administrativa, en conformidad a las normas del Capítulo IV de la Ley Nº 19.880, con las siguientes modificaciones:\r\na) El plazo para presentar la reposición será de treinta días.\r\nb) La reposición se entenderá rechazada en caso de no encontrarse notificada la resolución que se pronuncia sobre ella dentro del plazo de noventa días contados desde su presentación.\r\nc) La presentación de la reposición suspenderá el plazo para la interposición de la reclamación judicial contemplada en el artículo siguiente. (205a)\r\nNo serán procedentes en contra de las actuaciones a que se refiere el inciso primero los recursos jerárquico y extraordinario de revisión.\r\nLos plazos a que se refiere este artículo se regularán por lo señalado en la Ley Nº 19.880. '),
(37, 37, 'Nombre 37', 'Resolver Administrativamente las peticiones de devolución por sumas ingresadas indebidamente, doble o en exceso a título de impuestos, reajustes, intereses o sanciones. Emitir planillas de anulación de giros de impuestos en casos de duplicidad o cuando se ha girado impuestos en exceso de lo debido por error de cálculo o errores manifiestos de hecho o diferente a lo ordenado  en una resolución     ', ' Decreto Ley N° 830, Código Tributario', 'Artículo 126º', 'No constituirán reclamo las peticiones de devolución de impuestos cuyo fundamento sea:                                                                        1.- Corregir errores propios del contribuyente.                                                                                                                                                  2.- Obtener la restitución de sumas pagadas doblemente, en exceso o indebidamente a título de impuestos, reajustes, intereses y multas.                                                                                                                                                                                                                                '),
(38, 38, 'Nombre 38', 'Disponer la devolución de las sumas que un contribuyente haya trasladado o recargado indebidamente o en exceso, por concepto de impuestos, en los casos en que se haya acreditado haber restituido dichas sumas a las personas que efectivamente soportaron el gravamen indebido.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 128', 'Las sumas que un contribuyente haya trasladado o recargado indebidamente o en exceso, por concepto de impuestos, deberán ser enteradas en arcas fiscales, no pudiendo disponerse su devolución sino en los casos en que se acredite fehacientemente, a juicio exclusivo del Director Regional de Impuestos Internos, haberse restituido dichas sumas a las personas que efectivamente soportaron el gravamen indebido.'),
(39, 39, 'Nombre 39', 'Disponer se practiquen nuevas liquidaciones en relación al mismo impuesto que origino la reclamación, de conformidad a lo dispuesto en el artículo 134 del Código Tributario.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 134', 'Pendiente el fallo de primera instancia, el Director Regional podrá disponer se practiquen nuevas liquidaciones en relación al mismo impuesto que hubiere dado origen a la reclamación.'),
(40, 40, 'Nombre 40', 'Disponer la suspensión total o parcial del cobro judicial por un plazo determinado, cuando se trate de aquella parte de los impuestos no reclamados.', ' Decreto Ley N° 830, Código Tributario', 'Artículo 147, inciso 4°', 'El Tribunal Tributario y Aduanero podrá disponer la suspensión total o parcial del cobro judicial por un plazo determinado o hasta que se dicte sentencia de primera instancia, cuando se trate de aquella parte de los impuestos correspondientes a la reclamación que hubieren sido girados con anterioridad al reclamo. \r\nCuando no se presentare reclamación, la facultad mencionada en el inciso anterior podrá ser ejercida por el Director Regional.'),
(41, 41, 'Nombre 41', 'Resolver los recursos de reposición administrativa interpuestos por los contribuyentes de acuerdo con lo dispuesto en el artículo 150 del Código Tributario', ' Decreto Ley N° 830, Código Tributario', 'Artículo 150', 'Se sujetarán asimismo al procedimiento de este párrafo, los reclamos que dedujeren los contribuyentes que se consideren perjudicados por las modificaciones individuales de los avalúos de sus predios, o efectuadas de conformidad con lo dispuesto en el párrafo 2º del Título V de la Ley sobre Impuesto Territorial y artículos 25° y 26° de la ley N° 15.163. En estos casos, el plazo para reclamar será de 90 días y se contará desde el envío del aviso respectivo. Respecto de las modificaciones individuales de los avalúos de los predios, será procedente el recurso de reposición administrativa en conformidad a las normas del Capítulo IV de la ley Nº 19.880 y con las mismas modificaciones establecidas en el artículo 123 bis.'),
(42, 42, 'Nombre 42', 'Informar a los Tribunales de Justicia en el procedimiento indicado en el artículo 158 del Código Tributario', ' Decreto Ley N° 830, Código Tributario', 'Artículo 158°', 'El contribuyente y cualquiera otra persona que tenga interés comprometido, que tuviere dudas acerca del impuesto que deba pagarse con arreglo a las normas de la Ley de Timbres, Estampillas y Papel Sellado, podrá recurrir al juez competente, con arreglo al artículo 118, pidiendo su determinación. El Tribunal solicitará informe al jefe del Servicio del lugar, quien deberá ser notificado de la resolución personalmente o por cédula, acompañándosele copia de los antecedentes allegados a la solicitud.'),
(43, 43, 'Nombre 43', 'Emitir y notificar los giros correspondientes a sanciones por infracciones tributarias determinadas de conformidad al procedimiento establecido en el Libro III, título IV, párrafo 1°, del Código Tributario, en sentencias firmes y ejecutoriadas dictadas por los Tribunales Tributarios y Aduaneros, por las Cortes de Apelaciones y por la Corte Suprema, según proceda, a contribuyentes que tengan su domicilio en su territorio jurisdiccional.', ' Decreto Ley N° 830, Código Tributario', 'Libro III, título IV, párrafo 1°', 'Emitir y notificar los giros correspondientes a sanciones por infracciones tributarias determinadas de conformidad al procedimiento establecido en el Libro III, título IV, párrafo 1°, del Código Tributario, en sentencias firmes y ejecutoriadas dictadas por los Tribunales Tributarios y Aduaneros, por las Cortes de Apelaciones y por la Corte Suprema, según proceda, a contribuyentes que tengan su domicilio en su territorio jurisdiccional.'),
(44, 44, 'Nombre 44', 'Emitir y notificar los giros correspondientes a la ejecución de las sentencias, determinadas de acuerdo al procedimiento establecido en el Libro III, título IV, párrafo 2°, del Código Tributario, que apliquen sanciones por infracciones tributarias por los Tribunales Tributarios y Aduaneros y por las Cortes de Apelaciones, según proceda, a los contribuyentes que tengan su domicilio en su territorio jurisdiccional', ' Decreto Ley N° 830, Código Tributario', 'Libro III, título IV, párrafo 2°', 'Emitir y notificar los giros correspondientes a la ejecución de las sentencias, determinadas de acuerdo al procedimiento establecido en el Libro III, título IV, párrafo 2°, del Código Tributario, que apliquen sanciones por infracciones tributarias por los Tribunales Tributarios y Aduaneros y por las Cortes de Apelaciones, según proceda, a los contribuyentes que tengan su domicilio en su territorio jurisdiccional'),
(45, 45, 'Nombre 45', 'Determinar el valor de los bienes muebles en los casos contemplados en el\r\nartículo 8°, letra d), de Ley Sobre Impuesto a las Ventas y Servicios, según dispone el artículo 16, letra b), del mismo cuerpo legal', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 8, letra d)', 'El impuesto de este Título afecta a las ventas y servicios. Para estos efectos serán consideradas también como ventas y servicios según corresponda:\r\nd) Los retiros de bienes corporales muebles e inmuebles efectuados por un vendedor o por el dueño, socios, directores o empleados de la empresa, para su uso o consumo personal o de su familia, ya sean de su propia producción o comprados para la reventa, o para la prestación de servicios, cualquiera que sea la naturaleza jurídica de la empresa. Para estos efectos, se considerarán retirados para su uso o consumo propio todos los bienes que faltaren en los inventarios del vendedor o prestador de servicios y cuya salida de la empresa no pudiere justificarse con documentación fehaciente, salvo los casos de fuerza mayor, calificada por el Servicio de Impuestos Internos, u otros que determine el Reglamento.\r\nIgualmente serán considerados como ventas los retiros de bienes corporales muebles e inmuebles destinados a rifas y sorteos, aún a título gratuito, y sean o no de su giro, efectuados con fines promocionales o de propaganda por los vendedores afectos a este impuesto.\r\nLo establecido en el inciso anterior será aplicable, del mismo modo, a toda entrega o distribución gratuita de bienes corporales muebles e inmuebles que los vendedores efectuén con iguales fines.\r\nLos impuestos que se recarguen en razón de los retiros a que se refiere esta letra, no darán derecho al crédito establecido en el artículo 23°.'),
(46, 46, 'Nombre 46', 'Declarar exentos del IVA los espectáculos y reuniones a los que se refieren las letras c) y d)', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 12º, letras c) y d)', 'Las exenciones establecidas en las letras c) y d) deberán ser declaradas por el Director Regional de Impuestos Internos que corresponda al lugar en que tenga su domicilio la empresa o entidad que presente el espectáculo u organice la reunión. La exención que se declare sólo beneficiará a la empresa o entidad que la solicite, y por las funciones o reuniones que expresamente indique. Con todo, tratándose de compañías o conjuntos artísticos o circenses estables, la exención podrá ser declarada por una temporada de funciones o presentaciones, siempre que ella no sea superior a un año. Las exenciones referidas están condicionadas a que los espectáculos no se presenten conjuntamente con otro u otros no exentos, en un mismo programa.'),
(47, 47, 'Nombre 47', ' Tasar el valor de los bienes corporales muebles del giro del vendedor\r\ncomprendidos en la venta de universalidades efectuadas por suma alzada, conforme al artículo\r\n16, letra d), de la Ley Sobre Impuesto a las Ventas y Servicios', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 16, letra d)', 'En los casos que a continuación se señalan, se entenderá por base imponible:\r\nd) En el caso contemplado en la letra f) del artículo 8°, el valor de los bienes corporales muebles e inmuebles comprendidos en la venta, sin que sea admisible deducir de dicho valor el monto de las deudas que puedan afectar a tales bienes.\r\nSi la venta de las universalidades a que se refiere el inciso anterior se hiciere por suma alzada, el Servicio de Impuestos Internos tasará, para los efectos de este impuesto, el valor de los diferentes bienes corporales muebles e inmuebles del giro del vendedor comprendidos en la venta.\r\nLo dispuesto en el inciso anterior será aplicable, asimismo, respecto de todas aquellas convenciones en que los interesados no asignaren un valor determinado a los bienes corporales muebles e inmuebles que enajenen o el fijado fuere notoriamente inferior al corriente en plaza;'),
(48, 48, 'Nombre 48', 'Determinar el valor de los bienes corporales muebles en los casos a que se refiere el artículo 19 de la Ley Sobre Impuesto a las Ventas y Servicios;', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 19', 'Cuando se dieren en pago de un servicio bienes corporales muebles o inmuebles, se tendrá como precio del servicio, para los fines del impuesto de este Título, el valor que las partes hubieren asignado a los bienes transferidos o el que, en su defecto, fijare el Servicio de Impuestos Internos, a su juicio exclusivo.\r\nEn los casos a que se refiere este artículo, el beneficiario del servicio será tenido como vendedor de los bienes para los efectos de la aplicación del impuesto cuando proceda.\r\nIgual tratamiento se aplicará en los casos de ventas de bienes corporales muebles o inmuebles que se paguen con servicios.'),
(49, 49, 'Nombre 49', 'Tasar el impuesto a pagar en aquellos casos en que no pueda determinarse el débito fiscal del contribuyente por falta de antecedentes o cualquiera otra circunstancia imputable al contribuyente, conforme al inciso 4° y siguientes del artículo 20 de la Ley Sobre Impuesto a las Ventas y Servicios.', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 20º, incisos 4, 5 y 6', 'En aquellos casos en que no pueda determinarse el débito fiscal del contribuyente por falta de antecedentes o cualquiera otra circunstancia imputable al contribuyente, el Servicio, mediante resolución fundada, podrá tasar el impuesto a pagar, tomando como base los márgenes observados para contribuyentes de similar actividad, negocio, segmento o localidad. En la determinación del impuesto a pagar, el Servicio deberá estimar un monto de crédito fiscal imputable a un monto estimado como débito fiscal, conforme a los parámetros señalados u otros que permitan hacer una estimación razonable del monto a pagar en cada uno de los periodos tributarios en cuestión. Si la imposibilidad de determinar el débito fiscal proviene de caso fortuito o fuerza mayor, el contribuyente dispondrá de un plazo de 6 meses para reunir los antecedentes que le permitan realizar la declaración de los períodos tributarios involucrados de conformidad al artículo 35 de la Ley sobre Impuesto a la Renta, para lo cual deberá presentar ante el Servicio de Impuestos Internos una petición en la forma que este determine mediante resolución. Los plazos de prescripción se entenderán aumentados por igual tiempo. No podrán acogerse a este procedimiento los contribuyentes que se encuentren formalizados, querellados o sancionados por delito tributario. Con todo, cuando el contribuyente fundadamente señale que no está en condiciones de determinar su impuesto a pagar, podrá solicitar al Servicio de Impuestos Internos que efectúe la tasación a que se refiere el inciso cuarto de este artículo'),
(50, 50, 'Nombre 50', 'Certificar que no habiendo el contribuyente dado cumplimiento a lo requerido por el Servicio de Impuestos Internos, se presume que la factura es falsa o no fidedigna, no dando derecho a la utilización del crédito fiscal mientras no se acredite que dicha factura es fidedigna.', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 23º, Nº5', 'El contribuyente deberá aportar los antecedentes que acrediten las circunstancias de las letras a) y b) precedentes, dentro del plazo de un mes contado desde la fecha de notificación del requerimiento realizado por el Servicio de Impuestos Internos. En caso que no dé cumplimiento a lo requerido, previa certificación del Director Regional respectivo, se presumirá que la factura es falsa o no fidedigna, no dando derecho a la utilización del crédito fiscal mientras no se acredite que dicha factura es fidedigna.'),
(51, 51, 'Nombre 51', 'Autorizar individualmente el empleo de cajas  registradoras o electrónicas de marcas y modelos previamente aprobadas por la Dirección del Servicio, para la emisión de vales en reemplazo de boletas de ventas y servicios.', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 56º', 'En los casos en que, de acuerdo a esta ley, los contribuyentes emitan boletas en soporte de papel, la Dirección Nacional del Servicio de Impuestos Internos podrá autorizar su emisión mediante máquinas registradoras u otros medios tecnológicos.'),
(52, 52, 'Nombre 52', 'Autorizar a petición de los contribuyentes la destrucción de las boletas y duplicados de las facturas, guías de despacho, notas de crédito, notas de débito y de otros documentos.', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 58º y Artículo 72º del Reglamento', 'Los duplicados de las facturas y los originales de las boletas a que se refiere este párrafo deberán ser conservados por los respectivos contribuyentes durante seis años. Sin embargo, cuando el cumplimiento de esta obligación ocasionare dificultades de orden material a los contribuyentes, el Servicio de Impuestos Internos podrá autorizar la destrucción de dichos duplicados u originales, conforme al procedimiento que establezca el Reglamento.'),
(53, 53, 'Nombre 53', 'Autorizar el pago en cuotas del Impuesto al Valor Agregado que se devengue en la primera venta de vehículos destinados al transporte de pasajeros, con  capacidad de más de 15 asientos, incluido el del conductor; dentro de un plazo máximo de sesenta meses contado desde la fecha de la factura respectiva, dictando las resoluciones que procedan, tanto para acoger al vendedor al régimen contenido en el inciso final del artículo 64 de Ley Sobre Impuesto\r\na las Ventas y Servicios, como la que fija al comprador el número de cuotas y fechas de pago, pudiendo exigir las garantías personales o reales que estime conveniente para el debido resguardo de los intereses fiscales. Lo anterior en aplicación de lo dispuesto en el artículo 64 inciso final de Ley Sobre Impuesto a las Ventas y Servicios. ', 'Decreto Ley N° 825, Impuesto a las Ventas y Servicios', 'Artículo 64°', 'El Servicio de Impuestos Internos podrá autorizar el pago del Impuesto al Valor Agregado, que se devengue en la primera venta en el país de vehículos destinados al transporte de pasajeros con capacidad de más de 15 asientos, incluido el del conductor, en cuotas iguales mensuales, trimestrales o semestrales; pero dentro de un plazo máximo de sesenta meses, contado desde la fecha de emisión de la factura respectiva. '),
(54, 54, 'Nombre 54', 'Prorrogar en casos calificados el plazo de tres años  establecido en el iciso segundo del artículo 3° de la Ley sobre Impuesto a la Renta.', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 3, inciso 2°', 'Con todo, el extranjero que constituya domicilio o residencia en el país, durante los tres primeros años contados desde su ingreso a Chile sólo estará afecto a los impuestos que gravan las rentas obtenidas de fuentes chilenas. Este plazo podrá ser prorrogado por el Director Regional en casos calificados.'),
(55, 55, 'Nombre 55', 'Calificar como ingresos no constitutivos de renta la alimentación, movilización, alojamiento o la cantidad pagada en dinero por el mismo concepto, las asignaciones de traslación y viaticos                                                                                                                                                                                                                                                                                                                                                                                                ', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 17', 'No constituye renta:\r\nN° 14:  La alimentación, movilización o alojamiento proporcionado al empleado u obrero sólo en el interés del empleador o patrón, o la cantidad que se pague en dinero por esta misma causa, siempre que sea razonable a juicio del Director Regional.\r\nN° 15: Las asignaciones de traslación y viáticos, a juicio del Director Regional.'),
(56, 56, 'Nombre 56', 'Excluir, en el caso establecido en el artículo 22 N° 2 de la Ley de Impuesto a la Renta, a determinados contribuyentes del régimen del artículo 24°', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 22, N° 2', 'Los \"pequeños comerciantes que desarrollen actividades en la vía pública\", entendiéndose por tales las personas naturales que prestan servicios o venden productos en la vía pública, en forma ambulante o estacionada y directamente al público, según calificación que quedará determinada en el respectivo permiso municipal, sin perjuicio de la facultad del Director Regional para excluir a determinados contribuyentes del régimen que se establece en el artículo 24, cuando existan circunstancias que los coloquen en una situación de excepción con respecto del resto de los contribuyentes de su misma actividad o cuando la rentabilidad de sus negocios no se compadezca con la tributación especial a que estén sometidos.');
INSERT INTO `facultades` (`ID_FACULTAD`, `NRO`, `NOMBRE`, `CONTENIDO`, `LEY_ASOCIADA`, `ART_LEY_ASOCIADA`, `REFERENCIA_LEGAL`) VALUES
(57, 57, 'Nombre 57', 'Determinar la renta líquida imponible conforme al artículo 35 de la Ley sobre\r\nImpuesto a la Renta', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 35', 'Cuando la renta líquida imponible no pueda determinarse clara y fehacientemente, por falta de antecedentes o cualquiera otra circunstancia, se presume que la renta mínima imponible de las personas sometidas al impuesto de esta categoría es igual al 10% del capital efectivo invertido en la empresa o a un porcentaje de las ventas realizadas durante el ejercicio, el que será determinado por la Dirección Regional, tomando como base, entre otros antecedentes, un promedio de los porcentajes obtenidos por este concepto o por otros contribuyentes que giren en el mismo ramo o en la misma plaza. Corresponderá, en cada caso, al Director Regional, adoptar una u otra base de determinación de la renta.\r\nNo se aplicarán las presunciones establecidas en el inciso anterior, cuando a juicio de la Dirección Regional, no pueda determinarse la renta líquida imponible debido a caso fortuito.'),
(58, 58, 'Nombre 58', 'Determinar la renta líquida imponible de importadores y/o exportadores, según el artículo 36 de la Ley sobre Impuesto a la Renta', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 36', 'Sin perjuicio de otras normas de esta ley, para determinar la renta efectiva de los contribuyentes que efectúen importaciones o exportaciones, o ambas operaciones, la Dirección Regional podrá, respecto de dichas operaciones, impugnar los precios o valores en que efectúen sus transacciones o contabilicen su movimiento, cuando ellos difieran de los que se obtienen de ordinario en el mercado interno o externo. Para estos efectos, la Dirección Regional podrá solicitar informe del Servicio Nacional de Aduanas.'),
(59, 59, 'Nombre 59', 'Determinar la renta líquida imponible de las agencias, sucursales u otras formas de establecimientos permanentes de empresas extranjeras que operan en Chile', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 38', 'Sin perjuicio de lo dispuesto en el artículo 35, cuando los elementos contables de estos establecimientos permanentes no permitan establecer su renta efectiva, el Servicio podrá determinar la renta afecta, aplicando a los ingresos brutos del establecimiento permanente la proporción que guarden entre sí la renta líquida total de la casa matriz y los ingresos brutos de ésta, determinados todos estos rubros conforme a las normas de la presente ley. Podrá, también, fijar la renta afecta, aplicando al activo del establecimiento permanente, la proporción existente entre la renta líquida total de la casa matriz y el activo total de ésta.'),
(60, 60, 'Nombre 60', 'Comprobar el monto líquido de las rentas acreditadas por los contribuyentes y, cuando proceda, fijar o tasar dicho monto, de acuerdo al artículo 71 de la Ley sobre Impuesto a la Renta;', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 71', 'Si el contribuyente alegare que sus ingresos o inversiones provienen de rentas exentas de impuesto o afectas a impuestos sustitutivos, o de rentas efectivas de un monto superior que las presumidas de derecho, deberá acreditarlo mediante contabilidad fidedigna, de acuerdo con normas generales que dictará el Director. En estos casos el Director Regional deberá comprobar el monto líquido de dichas rentas. Si el monto declarado por el contribuyente no fuere correcto, el Director Regional podrá fijar o tasar dicho monto, tomando como base la rentabilidad de las actividades a las que se atribuyen las rentas respectivas o, en su defecto, considerando otros antecedentes que obren en poder del Servicio.\r\nLa diferencia de renta que se produzca entre lo acreditado por el contribuyente y lo tasado por el Director Regional, se gravará de acuerdo con lo dispuesto en el inciso segundo del artículo 70°.\r\nCuando el volumen de ingresos brutos que aparezcan atribuidos a una actividad amparada en una presunción de renta de derecho o afecta a impuestos sustitutivos del de la renta no se compadeciere significativamente con la capacidad de producción o explotación de dicha actividad, el Director Regional podrá exigir al contribuyente que explique esta circunstancia. Si la explicación no fuere satisfactoria, el Director Regional procederá a tasar el monto de los ingresos que no provinieren de la actividad mencionada, los cuales se considerarán renta del artículo 20° N° 5, para todos los efectos legales.'),
(61, 61, 'Nombre 61', 'Disponer el examen de los registros y libros de contabilidad de los contribuyentes para verificar las sumas retenidas por impuestos, conforme al artículo 77 de la Ley sobre Impuesto a la Renta.', '  Decreto Ley N° 824, Ley sobre Impuesto a la Renta', 'Artículo 77', 'Las personas naturales o jurídicas obligadas a retener el impuesto deberán llevar un registro especial en el cual se anotará el impuesto retenido y el nombre y la dirección de la persona por cuya cuenta se retenga. La Dirección determinará la forma de llevar el registro. En los libros de contabilidad y en los balances se dejará también constancia de las sumas retenidas. El Servicio podrá examinar, para estos efectos, dichos registros y libros.\r\nLa obligación de llevar el registro especial mencionado en el inciso anterior no regirá para las personas obligadas a retener el impuesto establecido en el artículo 25.'),
(62, 62, 'Nombre 62', 'Ampliar el plazo para el reconocimiento legal de las Corporaciones o Fundaciones .', ' Ley N° 16.271, Impuesto a las Herencias, Asignac.y Donaciones', 'Artículo 5, inciso final', 'Con todo, no se aplicarán las reglas de los dos incisos precedentes respecto de las asignaciones en favor de Corporaciones o Fundaciones destinadas al cumplimiento de alguno de los fines contemplados en el artículo 18 y que no existan a la fecha de la delación de la asignación, siempre que dichas Corporaciones o Fundaciones obtengan el reconocimiento legal de su existencia dentro del plazo de dos años, contado desde que la asignación se defiera. Dicho plazo podrá ser ampliado por el Director Regional cuando, a su juicio, existan motivos que así lo justifiquen.'),
(63, 63, 'Nombre 63', 'Liquidar y girar el impuesto en los casos en que transcurrido el plazo del artículo 50 de la Ley N°16.271 de Impuesto a las Herencias, Asignaciones y Donaciones no se hubiere pagado totalmente la contribución adeudada', ' Ley N° 16.271, Impuesto a las Herencias, Asignac.y Donaciones', 'Artículo 53°', 'Certificar el impuesto de Herencias y Donaciones que proceda, en el caso de mora en el pago del tributo, de acuerdo a lo dispuesto en el artículo 53 de la Ley N°16.271 de Impuesto a las Herencias, Asignaciones y Donaciones.'),
(64, 64, 'Nombre 64', 'Dictar las resoluciones que autoricen excepcionalmente o denieguen la enajenación de bienes hereditarios, respecto de aquellas sucesiones que no hubieren pagado o garantizado el pago del impuesto de herencias, siempre que no hubiere menoscabo del interés fiscal, en los términos del artículo 58 de la Ley N°16.271 de Impuesto a las Herencias, Asignaciones y Donaciones', ' Ley N° 16.271, Impuesto a las Herencias, Asignac.y Donaciones', 'Artículo 58° ', 'Aun antes de estar pagado o garantizado el pago del impuesto y siempre que, a juicio del Servicio, no hubiere menoscabo del interés fiscal, esta Oficina podrá autorizar la enajenación de determinados bienes, bajo las condiciones que ella misma señale.'),
(65, 65, 'Nombre 65', 'Fijar las normas conforme a las cuales se deberá declarar en forma simultánea, el impuesto a las asignaciones y a las donaciones ', ' Ley N° 16.271, Impuesto a las Herencias, Asignac.y Donaciones', 'Artículos 60°, inc 1º', 'La declaración y pago simultáneo de los impuestos que establece esta ley se hará de conformidad a las normas que fije el Servicio de Impuestos Internos, pudiendo, incluso, determinar que respecto de asignaciones o donaciones que estuvieren exentas de impuesto, no se presente la declaración\"'),
(66, 66, 'Nombre 66', 'Otorgar, a petición de los solicitantes de herencias, certificado exención parcial del Impuesto a las herencias, certificado de pago total del Impuesto a las herencias, y certificado de haber transcurrido los plazos que tiene el Servicio para revisar, liquidar y girar el Impuesto alas herencias.                                                                                                                                                                                                  Otorgar a petición de los solicitantes, Certificado de Exención de Impuesto a las Donaciones y Certificado de Pago de Impuesto a las Donaciones.                                                                                                                                                                                                                                                                              ', ' Ley N° 16.271, Impuesto a las Herencias, Asignac.y Donaciones', 'Artículo 60°, inc 2º y 3º', 'Asimismo, el Servicio de Impuestos Internos establecerá la forma en que se acreditará el pago del impuesto o la circunstancia de resultar exento, para todos los efectos legales.'),
(67, 67, 'Nombre 67', 'Liquidar y girar el Impuesto a las Herencias y Donaciones, en los casos que se compruebe que se celebró un contrato con el objeto de encubrir una donación o anticipo a cuenta de herencia', ' Ley N° 16.271, Impuesto a las Herencias, Asignac.y Donaciones', 'Artículo 63°', 'El Servicio de Impuestos Internos podrá investigar si las obligaciones impuestas a las partes por cualquier contrato son efectivas, si realmente dichas obligaciones se han cumplido o si lo que una parte da en virtud de un contrato oneroso guarda proporción con el precio corriente en plaza, a la fecha del contrato, de lo que recibe en cambio. Si el Servicio comprobare que dichas obligaciones no son efectivas o no se han cumplido realmente, o lo que una de las partes da en virtud de un contrato oneroso es notoriamente desproporcionado al precio corriente en plaza de lo que recibe en cambio, y dichos actos y circunstancias hubieren tenido por objeto encubrir una donación y anticipo a cuenta de herencia, liquidará y girará el impuesto que corresponda.'),
(68, 68, 'Nombre 68', 'Informar sobre el monto del capital propio y/ o sobre utilidades de las empresas afectos a gratificaciones legales en conformidad con los artículos 48 y 49 del Código del Trabajo', 'Código del Trabajo', 'Artículos 48° y Artículo 49°', 'Art. 48. Para estos efectos se considerará utilidad la que resulte de la liquidación que practique el Servicio de Impuestos Internos para la determinación del impuesto a la renta, aplicando el régimen de depreciación normal que establece el número 5 del artículo 31 de la ley sobre Impuesto a la Renta, sin deducir las pérdidas de ejercicios anteriores; y por utilidad líquida se entenderá la que arroje dicha liquidación deducido el diez por ciento del valor del capital propio del empleador, por interés de dicho capital.                                                                                                                                                                                                      Art. 49. Para los efectos del pago de gratificaciones, el Servicio de Impuestos Internos determinará, en la liquidación, el capital propio del empleador invertido en la empresa y calculará el monto de la utilidad líquida que deberá servir de base para el pago de gratificaciones. El referido Servicio comunicará este antecedente al Juzgado de Letras del Trabajo o a la Dirección del Trabajo, cuando éstos lo soliciten. Asimismo, deberá otorgar certificaciones en igual sentido a los empleadores o sindicatos de trabajadores cuando ellos lo requieran, dentro del plazo de treinta días hábiles, contado desde el momento en que el empleador haya entregado todos los antecedentes necesarios y suficientes para la determinación de la utilidad conforme al artículo precedente.'),
(69, 69, 'Nombre 69', 'Dictar las resoluciones que modifican de oficio o a petición de los contribuyentes o entidades externas, los avalúos y contribuciones de los bienes raíces, así como también aquellas que no son acogidas, y que se pronuncian sobre factores o circunstancias que indican sobre el monto a pagar del Impuesto Territorial, así como también, aquellas que fijan el valor comercial de una construcción o de su terreno.', 'Ley N° 17.235, Impuesto Territorial', 'Ley N° 17.235, Impuesto Territorial; Código Tributario', 'Dictar las resoluciones que modifican de oficio o a petición de los contribuyentes o entidades externas, los avalúos y contribuciones de los bienes raíces, así como también aquellas que no son acogidas, y que se pronuncian sobre factores o circunstancias que indican sobre el monto a pagar del Impuesto Territorial.                                                                                       Dictar resoluciones que fijan el valor comercial de un bien raíz o de su terreno.'),
(70, 70, 'Nombre 70', 'Otorgar certificados de avalúo de bienes raíces cuyos datos sean extraídos o impresos total o parcialmente por medios computacionales, en los que se deba complementar la información, entre ellos Certificados de Avalúo Fiscal Provisional y Proporcional.', 'Ley N° 17.235, Impuesto Territorial', 'Ley N° 17.235', 'Otorgar certificados de avalúo de bienes raíces cuyos datos sean extraídos o impresos total o parcialmente por medios computacionales, en los que se deba complementar la información, entre ellos Certificados de Avalúo Fiscal Provisional y Proporcional; y certificados que contengan información catastral.'),
(71, 71, 'Nombre 71', 'Requerir información a las municipalidades, conforme a lo previsto en los artículos 83 y 87 del Código Tributario y 16 de la Ley N°17.235; y,o dar respuesta a las  solicitudes de información de estas Corporaciones', 'Ley N° 17.235, Impuesto Territorial', 'Artículo 16 N° 2, (Artículos 83 y 87 del DL 830)', 'Art. 16- Los roles definitivos de los avalúos de los bienes raíces del país, deberán ser mantenidos al día por el Servicio de Impuestos Internos, utilizando, entre otras fuentes:                                                                                                                                                          2) La información que deberán remitirle las respectivas municipalidades, relativa a permisos y recepciones de construcciones, loteos y subdivisiones, patentes municipales, concesiones de bienes municipales o nacionales de uso público entregados a terceros y aprobaciones de propiedades acogidas a la Ley sobre Copropiedad Inmobiliaria, en la forma y plazo que este Servicio determine.                                                                                                                                                                                                           DL N° 830                                                                                                                                                                                                                (Artículo 83.- Las municipalidades estarán obligadas a cooperar en los trabajos de tasación de la propiedad raíz en la forma, plazo y condiciones que determine el Director.                                                                                                                                               Artículo 87.- Los funcionarios fiscales, semifiscales, de instituciones fiscales y semifiscales de administración autónoma y municipales, y las autoridades en general, estarán obligados a proporcionar al Servicio todos los datos y antecedentes que éste solicite para la fiscalización de los impuestos.                                                                                                                                       Cuando así lo determine el Servicio de Impuestos Internos, las instituciones fiscales, semifiscales, municipales, organismos de administración autónoma y las empresas de todos ellos, como, asimismo, las personas que deban llevar contabilidad, deberán mantener un registro especial en el que se dejará constancia de los servicios profesionales u otros propios de ocupaciones lucrativas, de que tomen conocimiento en razón de sus funciones, giro o actividades propias. Este registro contendrá las indicaciones que el Servicio determine, a su juicio exclusivo. )                                                                                                                                                                                                             '),
(72, 72, 'Nombre 72', 'Otorgar Certificados de Avalúo Fiscal que den cuenta de que existe un procedimiento en tramitación                                                                                                             ', 'Ley N° 17.235, Impuesto Territorial', 'Circ N° 38 de 2016', 'Otorgar certificados que den cuenta de resoluciones en trámite'),
(73, 73, 'Nombre 73', 'Otorgar certificados de Avalúo Proporcional                                                                                                                   ', 'Ley N° 17.235, Impuesto Territorial', 'Circ N° 38 de 2016', 'Otorgar certificados de avalúos proporcional de parte del terreno o construcción'),
(74, 74, 'Nombre 74', 'Modificar de oficio o a petición de parte el Rol de Avalúos de un bien raíz                                                                                                                  ', 'Ley N° 17.235, Impuesto Territorial', 'Circ N° 15 de 2019', 'Efectuar modifcaciones a los archivos de datos de los bienes raíces generadas por fiscalización u ordenadas  por sentencias emitidas con arreglo al Código Tributario que sirvan de base para la dictación de resoluciones de modificaciones al Rol de Avalúos'),
(75, 75, 'Nombre 75', 'Dejar sin efecto o caducar los beneficios, franquicias y exenciones de aquellas viviendas económicas en que se comprobare la existencia de alguna infracción en conformidad a lo establecido en el artículo 5° del DFL N° 2, de 1959, del Ministerio de Hacienda, como asimismo para declarar la caducidad de dichos beneficios, franquicias y exenciones en los casos previstos en el artículo 18 de ese mismo cuerpo legal.', 'DFL2 y DFL 458, Ley General de Urbanismo y Construcción', 'Artículos 5° y 18°, DFL 2 y Artículo 167°, DFL 458 ', 'DFL 2 Artículo 5°. - El Ministerio de Obras Públicas, por medio de la Dirección de Arquitectura supervigilará el cumplimiento de los preceptos del presente decreto con fuerza de ley y de su reglamento por parte de las Direcciones de Obras Municipales, y podrá, por decreto supremo, dejar sin efecto los beneficios, exenciones y franquicias que este decreto con fuerza de ley otorga, respecto de las construcciones determinadas que los hayan infringido. Esta facultad se entenderá incorporada en el contrato a que se refiere el artículo 18.o y aceptada por el interesado que lo suscriba.                                                                                    Artículo 18°. - Aprobado un permiso de edificación que contemple \"viviendas económicas\", dicho permiso será reducido a escritura pública que firmarán el Tesorero Comunal respectivo, en representación del Estado, y el interesado. Esta escritura tendrá el carácter de un contrato, en el cual se entenderán incorporadas de pleno derecho las franquicias, exenciones y beneficios del presente decreto con fuerza de ley, y, en consecuencia, la persona natural acogida a sus disposiciones, así como sus sucesores o causa-habientes a cualquier título, con las limitaciones establecidas en el artículo 1°, gozarán en forma permanente de los privilegios indicados, no obstante cualquier modificación posterior que puedan sufrir parcial o totalmente las disposiciones referidas.                                                                                                                                                                                                              Las \"viviendas económicas\" o las cuotas de dominio sobre ellas que se adquieran por personas naturales por sucesión por causa de muerte, no se considerarán para el límite máximo establecido en el artículo 1° de esta ley.                                                                                                                           Las franquicias, exenciones y beneficios expresados caducarán en caso de que las \"viviendas económicas\" respectivas fueren destruidas, o se iniciare su demolición o transformación de modo que vayan a perder sus características de tales. En estos últimos casos, la Dirección de Obras Municipales correspondiente, al otorgar el permiso, deberá declararlo expresamente y comunicar este hecho a la Dirección de Impuestos Internos.                                                                                                                                         DFL 458  Artículo 167°. - Corresponderá al Servicio de Impuestos Internos supervigilar que las Viviendas Económicas mantengan los requisitos, características y condiciones en que fueron aprobadas. Dicho Servicio podrá, mediante resolución, dejar sin efecto los beneficios, franquicias y exenciones de aquellas viviendas en que se comprobare la existencia de alguna infracción, situación prevista en el artículo 5° del DFL. N° 2, de 1959, y declarará caducados los mismos beneficios, franquicias y exenciones en los casos previstos, a su vez, en el artículo 18° del mismo decreto con fuerza de ley, sin perjuicio de la multa que corresponda aplicar.                                                                                                                    De la resolución de Impuestos Internos que aplique las referidas sanciones, el afectado podrá apelar ante la Secretaría Regional correspondiente del Ministerio de la Vivienda y Urbanismo, dentro del plazo de 30 días, contados desde su notificación, la que resolverá, en definitiva.'),
(76, 76, 'Nombre 76', 'Condonar, en el caso del artículo 2° de la Ley 17.990, un porcentaje de la multa establecida en el numeral 1 del artículo 97 del Código Tributario.', 'Ley 17.990, Impuesto de Timbres y estampillas; Código Tributario', 'Artículo 2°, Ley 17.990 y Artículo 97 N° 1, Código Tributario.', '\r\nArtículo 2°. - Los notarios y los conservadores de bienes raíces estarán obligados a proporcionar al Servicio de Impuestos Internos la información que éste les exija respecto de las transferencias de bienes raíces en la forma, plazo y condiciones que el Director Nacional de dicho organismo determine. El incumplimiento de esta obligación será sancionado según lo previsto en el N° 1 del artículo 97 del Código Tributario.\r\nDL N° 830, Código Tributario\r\nArtículo 97°. - Las siguientes infracciones a las disposiciones tributarias serán sancionadas en la forma que a continuación se indica:\r\n1°. - El retardo u omisión en la presentación de declaraciones, informes o solicitudes de inscripciones en roles o registros obligatorios, que no constituyan la base inmediata para la determinación o liquidación de un impuesto, con multa de una unidad tributaria mensual a una unidad tributaria anual. En caso de retardo u omisión en la presentación de informes referidos a operaciones realizadas o antecedentes relacionados con terceras personas, se aplicarán las multas contempladas en el inciso anterior. Sin embargo, si requerido posteriormente bajo apercibimiento por el Servicio, el contribuyente no da cumplimiento a estas obligaciones legales en el plazo de 30 días, se le aplicará, además, una multa que será de hasta 0,2 Unidades Tributarias Mensuales por cada mes o fracción de mes de atraso y por cada persona que se haya omitido, o respecto de la cual se haya retardado la presentación respectiva. Con todo, la multa máxima que corresponda aplicar no podrá exceder a 30 Unidades Tributarias Anuales, ya sea que el infractor se trate de un contribuyente o de un Organismo de la Administración del Estado.\r\n'),
(77, 77, 'Nombre 77', 'Fijar el valor de la tasación fiscal del metro cuadrado del sector de terreno playa y de playa, y el comercial de las mejoras fiscales incluidas en la solicitud, si las hubiere, según lo dispuesto en el Decreto Supremo N° 9, de 2018, del Ministerio de Defensa. ', 'DS N° 9, de 2018', 'Párrafo 2, Artículo 49, Letra e)', 'Párrafo 2º\r\nRequisitos de la solicitud\r\nArtículo 49.- Requisitos de la solicitud de otorgamiento y de modificación sustancial de concesión marítima mayor.\r\nEl expediente de solicitud de otorgamiento de concesión marítima mayor deberá contener los siguientes documentos:\r\ne) Certificado emitido por el Servicio de Impuestos Internos, con el valor de la tasación fiscal del metro cuadrado del sector de terreno de playa y de playa, y el comercial de las mejoras fiscales incluidas en la solicitud, si las hubiese. No será exigible certificar el valor de la tasación fiscal del metro cuadrado del sector de terreno de playa y de playa para aquellas construcciones y/o instalaciones indicadas en el artículo 136, las cuales deberán pagar las tarifas establecidas en el citado artículo.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularios`
--

CREATE TABLE `formularios` (
  `ID_FORMULARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_FORMULARIO` varchar(128) DEFAULT NULL,
  `TIPO_FORMULARIO` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `formularios`
--

INSERT INTO `formularios` (`ID_FORMULARIO`, `NOMBRE_FORMULARIO`, `TIPO_FORMULARIO`) VALUES
(1, 'F1816', 'TIPO B'),
(2, 'F2121', 'TIPO B'),
(3, 'F2816', 'TIPO B'),
(4, 'F2890', 'TIPO B'),
(5, 'F2899', 'TIPO B'),
(6, 'F2900', 'TIPO B'),
(7, 'F3230', 'TIPO B'),
(8, 'F3239', 'TIPO B'),
(9, 'F4415', 'TIPO B'),
(10, 'F4416', 'TIPO B'),
(11, 'F4417', 'TIPO B'),
(12, 'F4418', 'TIPO B'),
(13, 'F0024', 'TIPO B'),
(14, 'FF0024,1', 'TIPO C'),
(15, 'F1575', 'TIPO C'),
(16, 'F2117', 'TIPO C'),
(17, 'Q314', 'TIPO C'),
(18, 'F2771', 'TIPO C'),
(19, 'F2772', 'TIPO C'),
(20, 'Q772.1', 'TIPO C'),
(21, 'Q773', 'TIPO C'),
(22, 'F2773', 'TIPO C'),
(23, 'Q794', 'TIPO C'),
(24, '22895', 'TIPO C'),
(25, 'F3217', 'TIPO C'),
(26, 'F3280', 'TIPO C'),
(27, 'F3285', 'TIPO C'),
(28, 'F3294', 'TIPO C'),
(29, 'F3300', 'TIPO C'),
(30, 'F3301', 'TIPO C'),
(31, 'F3302', 'TIPO C'),
(32, 'F3317', 'TIPO C'),
(33, 'F4423', 'TIPO C'),
(34, 'FNC37', 'TIPO C'),
(35, 'FNC38', 'TIPO C'),
(36, 'FNC47', 'TIPO C'),
(37, 'FNC91', 'TIPO C'),
(38, 'F3238', 'TIPO C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `ID_GRADO` int(10) UNSIGNED NOT NULL,
  `GRADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`ID_GRADO`, `GRADO`) VALUES
(1, 4),
(2, 7),
(3, 8),
(4, 9),
(5, 10),
(6, 11),
(7, 12),
(8, 13),
(9, 14),
(10, 15),
(11, 16),
(12, 17),
(13, 18),
(14, 19),
(15, 20),
(16, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `ID_GRUPO` int(10) UNSIGNED NOT NULL,
  `GRUPO` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`ID_GRUPO`, `GRUPO`) VALUES
(1, 'GRUPO N°1 FISCALIZACIÓN'),
(2, 'GRUPO N°2 FISCALIZACIÓN'),
(3, 'GRUPO N°3 FISCALIZACIÓN'),
(4, 'GRUPO N°4 FISCALIZACIÓN'),
(5, 'GRUPO N°5 FISCALIZACIÓN'),
(6, 'GRUPO N°6 FISCALIZACIÓN'),
(7, 'GRUPO N°7 FISCALIZACIÓN'),
(8, 'GRUPO N°1 AVALUACIONES'),
(9, 'GRUPO N°2 AVALUACIONES'),
(10, 'GRUPO N°1 ATENCIÓN DE CONTRIBUYENTES'),
(11, 'GRUPO N°2 ATENCIÓN DE CONTRIBUYENTES'),
(12, 'GRUPO N°1 INFORMACIÓN Y ASISTENCIA'),
(13, 'GRUPO N°1 ATENCIÓN Y ASISTENCIA'),
(14, 'GRUPO CUMPLIMIENTO TRIBUTARIO EN TERRENO'),
(15, 'GRUPO AVALUACIONES'),
(99, 'NO PERTENECE A GRUPO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inexistentes`
--

CREATE TABLE `inexistentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_FORMULARIO` int(11) NOT NULL,
  `RUT` varchar(20) DEFAULT NULL,
  `NOMBRE` varchar(128) DEFAULT NULL,
  `MATERIAL` varchar(128) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `MOTIVO` varchar(1000) DEFAULT NULL,
  `FECHA_PETICION` date DEFAULT NULL,
  `ESTADO` varchar(128) DEFAULT NULL,
  `OBSERVACIONES` varchar(1000) DEFAULT NULL,
  `ID_USUARIO` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `ID_MATERIAL` int(10) UNSIGNED NOT NULL,
  `ID_TIPO_MAT` int(10) UNSIGNED NOT NULL,
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL,
  `NOMBRE_MATERIAL` varchar(128) DEFAULT NULL,
  `STOCK` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`ID_MATERIAL`, `ID_TIPO_MAT`, `ID_DIRECCION`, `NOMBRE_MATERIAL`, `STOCK`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'ESCOBA', 30, NULL, '2023-11-18 01:36:37'),
(2, 1, 16, 'CLORO', 50, NULL, NULL),
(3, 2, 16, 'LAPIZ PASTA ROJO', 93, NULL, NULL),
(4, 2, 16, 'LAPIZ PASTA AZUL', 95, NULL, NULL),
(5, 1, 16, 'BOLSAS DE BASURA', 85, NULL, NULL),
(6, 2, 16, 'LAPIZ CORRECTOR', 63, NULL, NULL),
(7, 3, 16, 'MOUSE INALAMBRICO', 6, NULL, NULL),
(8, 3, 16, 'TECLADO INALAMBRICO', 10, NULL, NULL),
(9, 3, 16, 'AURICULARES', 12, NULL, NULL),
(10, 4, 16, 'TELEVISION', 2, NULL, NULL),
(11, 4, 16, 'MICRONDAS', 2, NULL, NULL),
(12, 4, 16, 'HORNO ELECTRICO', 0, NULL, '2023-10-18 18:21:16'),
(26, 1, 16, 'TESTING MATERIAL 2', 100, '2023-08-29 20:07:25', '2023-08-29 20:07:25'),
(27, 1, 16, 'asd', 0, '2023-10-18 18:41:03', '2023-10-18 18:41:03'),
(28, 1, 16, 'asd', 0, '2023-10-18 18:44:58', '2023-10-18 18:44:58'),
(29, 2, 16, 'weqwe', 12, '2023-11-17 02:58:28', '2023-11-17 02:58:28'),
(30, 2, 16, 'asdadsdas', 60, '2023-11-18 01:43:36', '2023-11-18 02:21:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_23_025644_create_sessions_table', 1),
(8, '2023_02_25_033652_create_vehiculos_table', 1),
(10, '2023_03_17_204021_create_tipo_reparacion_table', 1),
(12, '2023_03_23_152835_create_solicitud_reparacion_vehiculos_table', 1),
(13, '2023_03_23_160041_create_tipo_vehiculos_table', 1),
(14, '2023_03_23_162052_create_tipo_servicios_table', 1),
(15, '2023_03_26_182728_create_formularios_table', 1),
(16, '2023_03_27_144811_create_solicitud_formularios_table', 1),
(17, '2023_03_30_145841_create_tipo_equipos_table', 1),
(18, '2023_03_31_152130_create_equipos_table', 1),
(19, '2023_03_31_154823_create_solicitud_equipos_table', 1),
(20, '2023_04_06_164511_create_categoria_salas_table', 1),
(21, '2023_04_06_180026_create_salas_table', 1),
(22, '2023_04_06_180053_create_solicitud_salas_table', 1),
(23, '2023_04_30_183917_create_permission_tables', 1),
(24, '2023_05_09_153043_create_solicitud_bodegas_table', 1),
(26, '2023_05_15_145345_actualizar_stock_procedure', 1),
(27, '2023_06_02_111429_create_comunas_table', 1),
(28, '2023_06_06_063106_create_resoluciones_table', 1),
(29, '2023_06_08_013121_create_polizas_table', 1),
(30, '2023_06_13_195421_create_facultades_table', 1),
(31, '2023_06_14_043713_create_tipo_resoluciones_table', 1),
(32, '2023_06_19_144119_create_inexistentes_table', 1),
(36, '2023_05_12_154932_create_rel_fun_veh_table', 4),
(37, '2023_03_17_205130_create_rel_fun_rep_general_table', 5),
(38, '2023_02_24_221120_create_materiales_table', 6),
(50, '2023_08_10_102303_create_movimientos_materiales_table', 9),
(51, '2023_03_08_155211_create_solicitud_materiales_table', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 26),
(1, 'App\\Models\\User', 234),
(1, 'App\\Models\\User', 563),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 564),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 565),
(4, 'App\\Models\\User', 250),
(4, 'App\\Models\\User', 253),
(4, 'App\\Models\\User', 254),
(4, 'App\\Models\\User', 255),
(4, 'App\\Models\\User', 257),
(4, 'App\\Models\\User', 258),
(4, 'App\\Models\\User', 259),
(4, 'App\\Models\\User', 260),
(4, 'App\\Models\\User', 261),
(4, 'App\\Models\\User', 262),
(4, 'App\\Models\\User', 263),
(4, 'App\\Models\\User', 264),
(4, 'App\\Models\\User', 265),
(4, 'App\\Models\\User', 266),
(4, 'App\\Models\\User', 267),
(4, 'App\\Models\\User', 566),
(5, 'App\\Models\\User', 7),
(5, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 10),
(5, 'App\\Models\\User', 12),
(5, 'App\\Models\\User', 20),
(5, 'App\\Models\\User', 23),
(5, 'App\\Models\\User', 25),
(5, 'App\\Models\\User', 30),
(5, 'App\\Models\\User', 31),
(5, 'App\\Models\\User', 32),
(5, 'App\\Models\\User', 33),
(5, 'App\\Models\\User', 34),
(5, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(5, 'App\\Models\\User', 37),
(5, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 39),
(5, 'App\\Models\\User', 40),
(5, 'App\\Models\\User', 41),
(5, 'App\\Models\\User', 42),
(5, 'App\\Models\\User', 43),
(5, 'App\\Models\\User', 44),
(5, 'App\\Models\\User', 45),
(5, 'App\\Models\\User', 46),
(5, 'App\\Models\\User', 47),
(5, 'App\\Models\\User', 48),
(5, 'App\\Models\\User', 49),
(5, 'App\\Models\\User', 50),
(5, 'App\\Models\\User', 51),
(5, 'App\\Models\\User', 52),
(5, 'App\\Models\\User', 53),
(5, 'App\\Models\\User', 54),
(5, 'App\\Models\\User', 55),
(5, 'App\\Models\\User', 56),
(5, 'App\\Models\\User', 58),
(5, 'App\\Models\\User', 59),
(5, 'App\\Models\\User', 60),
(5, 'App\\Models\\User', 61),
(5, 'App\\Models\\User', 62),
(5, 'App\\Models\\User', 63),
(5, 'App\\Models\\User', 64),
(5, 'App\\Models\\User', 65),
(5, 'App\\Models\\User', 66),
(5, 'App\\Models\\User', 67),
(5, 'App\\Models\\User', 68),
(5, 'App\\Models\\User', 69),
(5, 'App\\Models\\User', 70),
(5, 'App\\Models\\User', 71),
(5, 'App\\Models\\User', 72),
(5, 'App\\Models\\User', 73),
(5, 'App\\Models\\User', 74),
(5, 'App\\Models\\User', 75),
(5, 'App\\Models\\User', 76),
(5, 'App\\Models\\User', 77),
(5, 'App\\Models\\User', 78),
(5, 'App\\Models\\User', 79),
(5, 'App\\Models\\User', 80),
(5, 'App\\Models\\User', 81),
(5, 'App\\Models\\User', 82),
(5, 'App\\Models\\User', 83),
(5, 'App\\Models\\User', 84),
(5, 'App\\Models\\User', 85),
(5, 'App\\Models\\User', 86),
(5, 'App\\Models\\User', 87),
(5, 'App\\Models\\User', 88),
(5, 'App\\Models\\User', 89),
(5, 'App\\Models\\User', 90),
(5, 'App\\Models\\User', 91),
(5, 'App\\Models\\User', 92),
(5, 'App\\Models\\User', 93),
(5, 'App\\Models\\User', 94),
(5, 'App\\Models\\User', 95),
(5, 'App\\Models\\User', 96),
(5, 'App\\Models\\User', 97),
(5, 'App\\Models\\User', 98),
(5, 'App\\Models\\User', 99),
(5, 'App\\Models\\User', 100),
(5, 'App\\Models\\User', 101),
(5, 'App\\Models\\User', 102),
(5, 'App\\Models\\User', 103),
(5, 'App\\Models\\User', 104),
(5, 'App\\Models\\User', 105),
(5, 'App\\Models\\User', 106),
(5, 'App\\Models\\User', 107),
(5, 'App\\Models\\User', 108),
(5, 'App\\Models\\User', 109),
(5, 'App\\Models\\User', 110),
(5, 'App\\Models\\User', 111),
(5, 'App\\Models\\User', 112),
(5, 'App\\Models\\User', 113),
(5, 'App\\Models\\User', 114),
(5, 'App\\Models\\User', 115),
(5, 'App\\Models\\User', 116),
(5, 'App\\Models\\User', 117),
(5, 'App\\Models\\User', 118),
(5, 'App\\Models\\User', 119),
(5, 'App\\Models\\User', 120),
(5, 'App\\Models\\User', 121),
(5, 'App\\Models\\User', 122),
(5, 'App\\Models\\User', 123),
(5, 'App\\Models\\User', 124),
(5, 'App\\Models\\User', 125),
(5, 'App\\Models\\User', 126),
(5, 'App\\Models\\User', 127),
(5, 'App\\Models\\User', 128),
(5, 'App\\Models\\User', 129),
(5, 'App\\Models\\User', 130),
(5, 'App\\Models\\User', 131),
(5, 'App\\Models\\User', 132),
(5, 'App\\Models\\User', 133),
(5, 'App\\Models\\User', 134),
(5, 'App\\Models\\User', 135),
(5, 'App\\Models\\User', 136),
(5, 'App\\Models\\User', 137),
(5, 'App\\Models\\User', 138),
(5, 'App\\Models\\User', 139),
(5, 'App\\Models\\User', 140),
(5, 'App\\Models\\User', 142),
(5, 'App\\Models\\User', 143),
(5, 'App\\Models\\User', 144),
(5, 'App\\Models\\User', 145),
(5, 'App\\Models\\User', 146),
(5, 'App\\Models\\User', 147),
(5, 'App\\Models\\User', 148),
(5, 'App\\Models\\User', 149),
(5, 'App\\Models\\User', 150),
(5, 'App\\Models\\User', 151),
(5, 'App\\Models\\User', 152),
(5, 'App\\Models\\User', 153),
(5, 'App\\Models\\User', 154),
(5, 'App\\Models\\User', 155),
(5, 'App\\Models\\User', 156),
(5, 'App\\Models\\User', 157),
(5, 'App\\Models\\User', 159),
(5, 'App\\Models\\User', 160),
(5, 'App\\Models\\User', 161),
(5, 'App\\Models\\User', 162),
(5, 'App\\Models\\User', 163),
(5, 'App\\Models\\User', 164),
(5, 'App\\Models\\User', 167),
(5, 'App\\Models\\User', 168),
(5, 'App\\Models\\User', 169),
(5, 'App\\Models\\User', 170),
(5, 'App\\Models\\User', 171),
(5, 'App\\Models\\User', 172),
(5, 'App\\Models\\User', 173),
(5, 'App\\Models\\User', 174),
(5, 'App\\Models\\User', 175),
(5, 'App\\Models\\User', 176),
(5, 'App\\Models\\User', 177),
(5, 'App\\Models\\User', 178),
(5, 'App\\Models\\User', 179),
(5, 'App\\Models\\User', 180),
(5, 'App\\Models\\User', 181),
(5, 'App\\Models\\User', 182),
(5, 'App\\Models\\User', 183),
(5, 'App\\Models\\User', 184),
(5, 'App\\Models\\User', 185),
(5, 'App\\Models\\User', 186),
(5, 'App\\Models\\User', 187),
(5, 'App\\Models\\User', 188),
(5, 'App\\Models\\User', 189),
(5, 'App\\Models\\User', 190),
(5, 'App\\Models\\User', 191),
(5, 'App\\Models\\User', 192),
(5, 'App\\Models\\User', 193),
(5, 'App\\Models\\User', 194),
(5, 'App\\Models\\User', 195),
(5, 'App\\Models\\User', 196),
(5, 'App\\Models\\User', 197),
(5, 'App\\Models\\User', 198),
(5, 'App\\Models\\User', 199),
(5, 'App\\Models\\User', 200),
(5, 'App\\Models\\User', 201),
(5, 'App\\Models\\User', 202),
(5, 'App\\Models\\User', 203),
(5, 'App\\Models\\User', 204),
(5, 'App\\Models\\User', 205),
(5, 'App\\Models\\User', 206),
(5, 'App\\Models\\User', 207),
(5, 'App\\Models\\User', 208),
(5, 'App\\Models\\User', 209),
(5, 'App\\Models\\User', 210),
(5, 'App\\Models\\User', 211),
(5, 'App\\Models\\User', 212),
(5, 'App\\Models\\User', 213),
(5, 'App\\Models\\User', 214),
(5, 'App\\Models\\User', 215),
(5, 'App\\Models\\User', 216),
(5, 'App\\Models\\User', 217),
(5, 'App\\Models\\User', 218),
(5, 'App\\Models\\User', 219),
(5, 'App\\Models\\User', 220),
(5, 'App\\Models\\User', 221),
(5, 'App\\Models\\User', 222),
(5, 'App\\Models\\User', 223),
(5, 'App\\Models\\User', 224),
(5, 'App\\Models\\User', 225),
(5, 'App\\Models\\User', 226),
(5, 'App\\Models\\User', 227),
(5, 'App\\Models\\User', 228),
(5, 'App\\Models\\User', 229),
(5, 'App\\Models\\User', 230),
(5, 'App\\Models\\User', 231),
(5, 'App\\Models\\User', 232),
(5, 'App\\Models\\User', 233),
(5, 'App\\Models\\User', 235),
(5, 'App\\Models\\User', 236),
(5, 'App\\Models\\User', 237),
(5, 'App\\Models\\User', 238),
(5, 'App\\Models\\User', 239),
(5, 'App\\Models\\User', 240),
(5, 'App\\Models\\User', 241),
(5, 'App\\Models\\User', 242),
(5, 'App\\Models\\User', 243),
(5, 'App\\Models\\User', 244),
(5, 'App\\Models\\User', 245),
(5, 'App\\Models\\User', 246),
(5, 'App\\Models\\User', 247),
(5, 'App\\Models\\User', 248),
(5, 'App\\Models\\User', 249),
(5, 'App\\Models\\User', 252),
(5, 'App\\Models\\User', 256),
(5, 'App\\Models\\User', 268),
(5, 'App\\Models\\User', 269),
(5, 'App\\Models\\User', 270),
(5, 'App\\Models\\User', 271),
(5, 'App\\Models\\User', 272),
(5, 'App\\Models\\User', 273),
(5, 'App\\Models\\User', 274),
(5, 'App\\Models\\User', 275),
(5, 'App\\Models\\User', 276),
(5, 'App\\Models\\User', 277),
(5, 'App\\Models\\User', 278),
(5, 'App\\Models\\User', 279),
(5, 'App\\Models\\User', 280),
(5, 'App\\Models\\User', 281),
(5, 'App\\Models\\User', 282),
(5, 'App\\Models\\User', 283),
(5, 'App\\Models\\User', 284),
(5, 'App\\Models\\User', 285),
(5, 'App\\Models\\User', 286),
(5, 'App\\Models\\User', 287),
(5, 'App\\Models\\User', 288),
(5, 'App\\Models\\User', 289),
(5, 'App\\Models\\User', 290),
(5, 'App\\Models\\User', 291),
(5, 'App\\Models\\User', 292),
(5, 'App\\Models\\User', 293),
(5, 'App\\Models\\User', 294),
(5, 'App\\Models\\User', 295),
(5, 'App\\Models\\User', 296),
(5, 'App\\Models\\User', 297),
(5, 'App\\Models\\User', 298),
(5, 'App\\Models\\User', 299),
(5, 'App\\Models\\User', 300),
(5, 'App\\Models\\User', 301),
(5, 'App\\Models\\User', 302),
(5, 'App\\Models\\User', 303),
(5, 'App\\Models\\User', 304),
(5, 'App\\Models\\User', 305),
(5, 'App\\Models\\User', 306),
(5, 'App\\Models\\User', 307),
(5, 'App\\Models\\User', 308),
(5, 'App\\Models\\User', 309),
(5, 'App\\Models\\User', 310),
(5, 'App\\Models\\User', 311),
(5, 'App\\Models\\User', 312),
(5, 'App\\Models\\User', 313),
(5, 'App\\Models\\User', 314),
(5, 'App\\Models\\User', 315),
(5, 'App\\Models\\User', 316),
(5, 'App\\Models\\User', 317),
(5, 'App\\Models\\User', 318),
(5, 'App\\Models\\User', 319),
(5, 'App\\Models\\User', 320),
(5, 'App\\Models\\User', 321),
(5, 'App\\Models\\User', 322),
(5, 'App\\Models\\User', 323),
(5, 'App\\Models\\User', 324),
(5, 'App\\Models\\User', 325),
(5, 'App\\Models\\User', 326),
(5, 'App\\Models\\User', 327),
(5, 'App\\Models\\User', 328),
(5, 'App\\Models\\User', 329),
(5, 'App\\Models\\User', 330),
(5, 'App\\Models\\User', 331),
(5, 'App\\Models\\User', 332),
(5, 'App\\Models\\User', 333),
(5, 'App\\Models\\User', 334),
(5, 'App\\Models\\User', 335),
(5, 'App\\Models\\User', 336),
(5, 'App\\Models\\User', 337),
(5, 'App\\Models\\User', 338),
(5, 'App\\Models\\User', 339),
(5, 'App\\Models\\User', 340),
(5, 'App\\Models\\User', 341),
(5, 'App\\Models\\User', 342),
(5, 'App\\Models\\User', 343),
(5, 'App\\Models\\User', 344),
(5, 'App\\Models\\User', 345),
(5, 'App\\Models\\User', 346),
(5, 'App\\Models\\User', 347),
(5, 'App\\Models\\User', 348),
(5, 'App\\Models\\User', 349),
(5, 'App\\Models\\User', 350),
(5, 'App\\Models\\User', 351),
(5, 'App\\Models\\User', 352),
(5, 'App\\Models\\User', 353),
(5, 'App\\Models\\User', 354),
(5, 'App\\Models\\User', 355),
(5, 'App\\Models\\User', 356),
(5, 'App\\Models\\User', 357),
(5, 'App\\Models\\User', 358),
(5, 'App\\Models\\User', 359),
(5, 'App\\Models\\User', 360),
(5, 'App\\Models\\User', 361),
(5, 'App\\Models\\User', 362),
(5, 'App\\Models\\User', 363),
(5, 'App\\Models\\User', 364),
(5, 'App\\Models\\User', 365),
(5, 'App\\Models\\User', 366),
(5, 'App\\Models\\User', 367),
(5, 'App\\Models\\User', 368),
(5, 'App\\Models\\User', 369),
(5, 'App\\Models\\User', 370),
(5, 'App\\Models\\User', 371),
(5, 'App\\Models\\User', 372),
(5, 'App\\Models\\User', 373),
(5, 'App\\Models\\User', 374),
(5, 'App\\Models\\User', 375),
(5, 'App\\Models\\User', 376),
(5, 'App\\Models\\User', 377),
(5, 'App\\Models\\User', 378),
(5, 'App\\Models\\User', 379),
(5, 'App\\Models\\User', 380),
(5, 'App\\Models\\User', 381),
(5, 'App\\Models\\User', 382),
(5, 'App\\Models\\User', 383),
(5, 'App\\Models\\User', 384),
(5, 'App\\Models\\User', 385),
(5, 'App\\Models\\User', 386),
(5, 'App\\Models\\User', 387),
(5, 'App\\Models\\User', 388),
(5, 'App\\Models\\User', 389),
(5, 'App\\Models\\User', 390),
(5, 'App\\Models\\User', 391),
(5, 'App\\Models\\User', 392),
(5, 'App\\Models\\User', 393),
(5, 'App\\Models\\User', 394),
(5, 'App\\Models\\User', 395),
(5, 'App\\Models\\User', 396),
(5, 'App\\Models\\User', 397),
(5, 'App\\Models\\User', 398),
(5, 'App\\Models\\User', 399),
(5, 'App\\Models\\User', 400),
(5, 'App\\Models\\User', 401),
(5, 'App\\Models\\User', 402),
(5, 'App\\Models\\User', 403),
(5, 'App\\Models\\User', 404),
(5, 'App\\Models\\User', 405),
(5, 'App\\Models\\User', 406),
(5, 'App\\Models\\User', 407),
(5, 'App\\Models\\User', 408),
(5, 'App\\Models\\User', 409),
(5, 'App\\Models\\User', 410),
(5, 'App\\Models\\User', 411),
(5, 'App\\Models\\User', 412),
(5, 'App\\Models\\User', 413),
(5, 'App\\Models\\User', 414),
(5, 'App\\Models\\User', 415),
(5, 'App\\Models\\User', 416),
(5, 'App\\Models\\User', 417),
(5, 'App\\Models\\User', 418),
(5, 'App\\Models\\User', 419),
(5, 'App\\Models\\User', 420),
(5, 'App\\Models\\User', 421),
(5, 'App\\Models\\User', 422),
(5, 'App\\Models\\User', 423),
(5, 'App\\Models\\User', 424),
(5, 'App\\Models\\User', 425),
(5, 'App\\Models\\User', 426),
(5, 'App\\Models\\User', 427),
(5, 'App\\Models\\User', 428),
(5, 'App\\Models\\User', 429),
(5, 'App\\Models\\User', 430),
(5, 'App\\Models\\User', 431),
(5, 'App\\Models\\User', 432),
(5, 'App\\Models\\User', 433),
(5, 'App\\Models\\User', 434),
(5, 'App\\Models\\User', 435),
(5, 'App\\Models\\User', 436),
(5, 'App\\Models\\User', 437),
(5, 'App\\Models\\User', 438),
(5, 'App\\Models\\User', 439),
(5, 'App\\Models\\User', 440),
(5, 'App\\Models\\User', 441),
(5, 'App\\Models\\User', 442),
(5, 'App\\Models\\User', 443),
(5, 'App\\Models\\User', 444),
(5, 'App\\Models\\User', 445),
(5, 'App\\Models\\User', 446),
(5, 'App\\Models\\User', 447),
(5, 'App\\Models\\User', 448),
(5, 'App\\Models\\User', 449),
(5, 'App\\Models\\User', 450),
(5, 'App\\Models\\User', 451),
(5, 'App\\Models\\User', 452),
(5, 'App\\Models\\User', 453),
(5, 'App\\Models\\User', 454),
(5, 'App\\Models\\User', 455),
(5, 'App\\Models\\User', 456),
(5, 'App\\Models\\User', 457),
(5, 'App\\Models\\User', 458),
(5, 'App\\Models\\User', 459),
(5, 'App\\Models\\User', 460),
(5, 'App\\Models\\User', 461),
(5, 'App\\Models\\User', 462),
(5, 'App\\Models\\User', 463),
(5, 'App\\Models\\User', 464),
(5, 'App\\Models\\User', 465),
(5, 'App\\Models\\User', 466),
(5, 'App\\Models\\User', 467),
(5, 'App\\Models\\User', 468),
(5, 'App\\Models\\User', 469),
(5, 'App\\Models\\User', 470),
(5, 'App\\Models\\User', 471),
(5, 'App\\Models\\User', 472),
(5, 'App\\Models\\User', 473),
(5, 'App\\Models\\User', 474),
(5, 'App\\Models\\User', 475),
(5, 'App\\Models\\User', 476),
(5, 'App\\Models\\User', 477),
(5, 'App\\Models\\User', 478),
(5, 'App\\Models\\User', 479),
(5, 'App\\Models\\User', 480),
(5, 'App\\Models\\User', 481),
(5, 'App\\Models\\User', 482),
(5, 'App\\Models\\User', 483),
(5, 'App\\Models\\User', 484),
(5, 'App\\Models\\User', 485),
(5, 'App\\Models\\User', 486),
(5, 'App\\Models\\User', 487),
(5, 'App\\Models\\User', 488),
(5, 'App\\Models\\User', 489),
(5, 'App\\Models\\User', 490),
(5, 'App\\Models\\User', 491),
(5, 'App\\Models\\User', 492),
(5, 'App\\Models\\User', 493),
(5, 'App\\Models\\User', 494),
(5, 'App\\Models\\User', 495),
(5, 'App\\Models\\User', 496),
(5, 'App\\Models\\User', 497),
(5, 'App\\Models\\User', 498),
(5, 'App\\Models\\User', 499),
(5, 'App\\Models\\User', 500),
(5, 'App\\Models\\User', 501),
(5, 'App\\Models\\User', 502),
(5, 'App\\Models\\User', 503),
(5, 'App\\Models\\User', 504),
(5, 'App\\Models\\User', 505),
(5, 'App\\Models\\User', 506),
(5, 'App\\Models\\User', 507),
(5, 'App\\Models\\User', 508),
(5, 'App\\Models\\User', 509),
(5, 'App\\Models\\User', 510),
(5, 'App\\Models\\User', 511),
(5, 'App\\Models\\User', 512),
(5, 'App\\Models\\User', 513),
(5, 'App\\Models\\User', 514),
(5, 'App\\Models\\User', 515),
(5, 'App\\Models\\User', 516),
(5, 'App\\Models\\User', 517),
(5, 'App\\Models\\User', 518),
(5, 'App\\Models\\User', 519),
(5, 'App\\Models\\User', 520),
(5, 'App\\Models\\User', 521),
(5, 'App\\Models\\User', 522),
(5, 'App\\Models\\User', 523),
(5, 'App\\Models\\User', 524),
(5, 'App\\Models\\User', 525),
(5, 'App\\Models\\User', 526),
(5, 'App\\Models\\User', 527),
(5, 'App\\Models\\User', 528),
(5, 'App\\Models\\User', 529),
(5, 'App\\Models\\User', 530),
(5, 'App\\Models\\User', 531),
(5, 'App\\Models\\User', 532),
(5, 'App\\Models\\User', 533),
(5, 'App\\Models\\User', 534),
(5, 'App\\Models\\User', 535),
(5, 'App\\Models\\User', 536),
(5, 'App\\Models\\User', 537),
(5, 'App\\Models\\User', 538),
(5, 'App\\Models\\User', 539),
(5, 'App\\Models\\User', 540),
(5, 'App\\Models\\User', 541),
(5, 'App\\Models\\User', 542),
(5, 'App\\Models\\User', 543),
(5, 'App\\Models\\User', 544),
(5, 'App\\Models\\User', 545),
(5, 'App\\Models\\User', 546),
(5, 'App\\Models\\User', 547),
(5, 'App\\Models\\User', 548),
(5, 'App\\Models\\User', 549),
(5, 'App\\Models\\User', 550),
(5, 'App\\Models\\User', 551),
(5, 'App\\Models\\User', 552),
(5, 'App\\Models\\User', 553),
(5, 'App\\Models\\User', 554),
(5, 'App\\Models\\User', 555),
(5, 'App\\Models\\User', 556),
(5, 'App\\Models\\User', 557),
(5, 'App\\Models\\User', 558),
(5, 'App\\Models\\User', 559),
(5, 'App\\Models\\User', 560),
(5, 'App\\Models\\User', 561),
(5, 'App\\Models\\User', 562),
(5, 'App\\Models\\User', 567),
(6, 'App\\Models\\User', 11),
(6, 'App\\Models\\User', 18),
(6, 'App\\Models\\User', 22),
(6, 'App\\Models\\User', 28),
(6, 'App\\Models\\User', 141),
(6, 'App\\Models\\User', 158),
(6, 'App\\Models\\User', 165),
(6, 'App\\Models\\User', 166),
(6, 'App\\Models\\User', 251),
(6, 'App\\Models\\User', 568);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Nivel 1', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(2, 'Nivel 2', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(3, 'Nivel 3', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizas`
--

CREATE TABLE `polizas` (
  `ID_POLIZA` int(10) UNSIGNED NOT NULL,
  `ID` bigint(20) UNSIGNED NOT NULL,
  `FECHA_VENCIMIENTO_LICENCIA` varchar(191) NOT NULL,
  `NRO_POLIZA` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `ID_REGION` int(10) UNSIGNED NOT NULL,
  `REGION` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`ID_REGION`, `REGION`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Biobío'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Libertador General Bernardo OHiggins'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_bodegas`
--

CREATE TABLE `rel_fun_bodegas` (
  `ID_SOL_BODEGA` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `MOTIVO_SOL_BODEGA` varchar(1000) DEFAULT NULL,
  `FECHA_SOL_BODEGA` varchar(191) DEFAULT NULL,
  `HORA_INICIO_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `HORA_TERM_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `FECHA_INICIO_ASIG_BODEGA` timestamp NULL DEFAULT NULL,
  `FECHA_TERM_ASIG_BODEGA` timestamp NULL DEFAULT NULL,
  `BODEGA_PEDIDA` varchar(128) DEFAULT NULL,
  `ESTADO_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `MODIFICADO_POR_SOL_BODEGA` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_BODEGA` varchar(1000) DEFAULT NULL,
  `ID_CATEGORIA_SALA` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_equipos`
--

CREATE TABLE `rel_fun_equipos` (
  `ID_SOL_EQUIPOS` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `MOTIVO_SOL_EQUIPO` text DEFAULT NULL,
  `EQUIPO_SOL` text DEFAULT NULL,
  `FECHA_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `HORA_INICIO_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `HORA_TERM_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `FECHA_INICIO_EQUIPO` timestamp NULL DEFAULT NULL,
  `FECHA_FIN_EQUIPO` timestamp NULL DEFAULT NULL,
  `ESTADO_SOL_EQUIPO` varchar(128) NOT NULL DEFAULT 'INGRESADO',
  `EQUIPO_A_ASIGNAR` text DEFAULT NULL,
  `MODIFICADO_POR_SOL_EQUIPO` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_EQUIPO` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_form`
--

CREATE TABLE `rel_fun_form` (
  `ID_SOL_FORM` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ID_FORMULARIO` int(11) DEFAULT NULL,
  `FORM_SOL` text DEFAULT NULL,
  `ESTADO_SOL_FORM` varchar(191) NOT NULL DEFAULT 'INGRESADO',
  `OBSERV_SOL_FORM` text DEFAULT NULL,
  `MODIFICADO_POR_SOL_FORM` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_mat`
--

CREATE TABLE `rel_fun_mat` (
  `ID_SOLICITUD` bigint(20) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `FECHA_ATENCION` date DEFAULT NULL,
  `FECHA_RECEPCION` date DEFAULT NULL,
  `FECHA_DESPACHO` date DEFAULT NULL,
  `MATERIAL_SOL` text NOT NULL,
  `OBSERVACIONES` text NOT NULL DEFAULT 'No existen observaciones',
  `ESTADO_SOL` varchar(20) NOT NULL DEFAULT 'INGRESADO',
  `MODIFICADO_POR` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_rep_general`
--

CREATE TABLE `rel_fun_rep_general` (
  `ID_REP_INM` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `ID_TIPO_REP_GENERAL` int(11) NOT NULL,
  `REP_SOL` varchar(1000) NOT NULL,
  `MODIFICADO_POR_REP_GEN` varchar(128) DEFAULT NULL,
  `ESTADO_REP_INM` varchar(20) NOT NULL DEFAULT 'INGRESADO',
  `OBSERV_REP_INM` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_rep_veh`
--

CREATE TABLE `rel_fun_rep_veh` (
  `ID_SOL_REP_VEH` bigint(20) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `PATENTE_VEHICULO` varchar(7) NOT NULL,
  `ID_TIPO_SERVICIO` int(11) NOT NULL,
  `DETALLE_REPARACION_REP_VEH` text DEFAULT NULL,
  `FECHA_INICIO_REP_VEH` datetime DEFAULT NULL,
  `FECHA_TERMINO_REP_VEH` datetime DEFAULT NULL,
  `ESTADO_SOL_REP_VEH` varchar(128) DEFAULT 'INGRESADO',
  `MODIFICADO_POR_REP_VEH` varchar(128) DEFAULT NULL,
  `OBSERV_REP_VEH` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_salas`
--

CREATE TABLE `rel_fun_salas` (
  `ID_SOL_SALA` int(10) UNSIGNED NOT NULL,
  `ID_USUARIO` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `EQUIPO_SALA` varchar(128) DEFAULT NULL,
  `MOTIVO_SOL_SALA` varchar(1000) DEFAULT NULL,
  `CANT_PERSONAS_SOL_SALAS` int(11) DEFAULT NULL,
  `FECHA_SOL_SALA` varchar(128) DEFAULT NULL,
  `FECHA_INICIO_ASIG_SALA` timestamp NULL DEFAULT NULL,
  `FECHA_TERM_ASIG_SALA` timestamp NULL DEFAULT NULL,
  `HORA_SOL_SALA` varchar(128) DEFAULT NULL,
  `HORA_TERM_SOL_SALA` varchar(128) DEFAULT NULL,
  `SALA_PEDIDA` varchar(128) DEFAULT NULL,
  `SALA_A_ASIGNAR` varchar(128) DEFAULT NULL,
  `ESTADO_SOL_SALA` varchar(128) DEFAULT NULL,
  `MODIFICADO_POR_SOL_SALA` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_SALA` varchar(1000) DEFAULT NULL,
  `ID_CATEGORIA_SALA` int(11) NOT NULL,
  `ID_TIPO_EQUIPOS` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_fun_veh`
--

CREATE TABLE `rel_fun_veh` (
  `ID_SOL_VEH` int(10) UNSIGNED NOT NULL,
  `PATENTE_VEHICULO` varchar(7) DEFAULT NULL,
  `ID_USUARIO` int(10) UNSIGNED DEFAULT NULL,
  `NOMBRE_SOLICITANTE` varchar(128) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `DEPTO` varchar(128) NOT NULL,
  `EMAIL` varchar(128) NOT NULL,
  `MOTIVO_SOL_VEH` varchar(1000) DEFAULT NULL,
  `CONDUCTOR` varchar(128) DEFAULT NULL,
  `OCUPANTE_1` varchar(128) DEFAULT NULL,
  `OCUPANTE_2` varchar(128) DEFAULT NULL,
  `OCUPANTE_3` varchar(128) DEFAULT NULL,
  `OCUPANTE_4` varchar(128) DEFAULT NULL,
  `OCUPANTE_5` varchar(128) DEFAULT NULL,
  `OCUPANTE_6` varchar(128) DEFAULT NULL,
  `ORIGEN` varchar(128) DEFAULT NULL,
  `DESTINO` varchar(128) DEFAULT NULL,
  `N_ORDEN_TRABAJO` int(10) UNSIGNED DEFAULT NULL,
  `FIRMA_CONDUCTOR` varchar(128) DEFAULT NULL,
  `FIRMA_JEFE_ADMINISTRACION` varchar(128) DEFAULT NULL,
  `FIRMA_ADMINISTRADOR` varchar(128) DEFAULT NULL,
  `KMS_INICIAL` varchar(128) DEFAULT NULL,
  `KMS_FINAL` varchar(128) DEFAULT NULL,
  `KMS_RECORRIDOS` varchar(128) DEFAULT NULL,
  `HORA_SALIDA` varchar(128) DEFAULT NULL,
  `HORA_LLEGADA` varchar(128) DEFAULT NULL,
  `HORAS_TOTALES` varchar(128) DEFAULT NULL,
  `NIVEL_TANQUE` varchar(128) DEFAULT NULL,
  `N_BITACORA` int(10) UNSIGNED DEFAULT NULL,
  `ABS_BENCINA` varchar(128) DEFAULT NULL,
  `FECHA_SOL_VEH` varchar(128) DEFAULT NULL,
  `FECHA_SALIDA` timestamp NULL DEFAULT NULL,
  `FECHA_LLEGADA` timestamp NULL DEFAULT NULL,
  `FECHA_LLEGADA_CONDUCTOR` timestamp NULL DEFAULT NULL,
  `NOMBRE_OCUPANTES` varchar(1000) DEFAULT NULL,
  `ESTADO_SOL_VEH` varchar(128) NOT NULL DEFAULT 'INGRESADO',
  `MODIFICADO_POR_SOL_VEH` varchar(128) DEFAULT NULL,
  `OBSERV_SOL_VEH` varchar(1000) DEFAULT NULL,
  `ID_TIPO_VEH` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resoluciones`
--

CREATE TABLE `resoluciones` (
  `ID_RESOLUCION` int(10) UNSIGNED NOT NULL,
  `NRO_RESOLUCION` int(10) UNSIGNED NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  `ID_TIPO` int(10) UNSIGNED NOT NULL,
  `ID_FIRMANTE` int(10) UNSIGNED NOT NULL,
  `ID_FACULTAD` int(10) UNSIGNED NOT NULL,
  `ID_DELEGADO` int(10) UNSIGNED NOT NULL,
  `DOCUMENTO` varchar(191) DEFAULT NULL,
  `OBSERVACIONES` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resoluciones`
--

INSERT INTO `resoluciones` (`ID_RESOLUCION`, `NRO_RESOLUCION`, `FECHA`, `ID_TIPO`, `ID_FIRMANTE`, `ID_FACULTAD`, `ID_DELEGADO`, `DOCUMENTO`, `OBSERVACIONES`) VALUES
(1, 1, '2023-08-08 00:00:00', 1, 9999, 16, 1, '654155bbc5157.pdf', '-'),
(2, 2, '2023-08-08 00:00:00', 1, 9999, 19, 1, '', '-'),
(3, 3, '2023-08-08 00:00:00', 1, 9999, 20, 1, '', '-'),
(4, 4, '2023-08-08 00:00:00', 1, 9999, 21, 1, '', '-'),
(5, 5, '2023-08-08 00:00:00', 1, 9999, 39, 1, '', '-'),
(6, 6, '2023-08-08 00:00:00', 1, 9999, 40, 1, '', '-'),
(7, 7, '2023-08-08 00:00:00', 1, 9999, 54, 1, '', '-'),
(8, 8, '2023-08-08 00:00:00', 1, 9999, 56, 1, '', '-'),
(9, 9, '2023-08-08 00:00:00', 1, 9999, 62, 1, '', '-'),
(10, 10, '2023-08-08 00:00:00', 1, 9999, 41, 5, '', '-'),
(11, 11, '2023-08-08 00:00:00', 1, 9999, 69, 5, '', '-'),
(12, 12, '2023-08-08 00:00:00', 1, 9999, 70, 5, '', '-'),
(13, 13, '2023-08-08 00:00:00', 1, 9999, 71, 5, '', '-'),
(14, 14, '2023-08-08 00:00:00', 1, 9999, 72, 5, '', '-'),
(15, 15, '2023-08-08 00:00:00', 1, 9999, 73, 5, '', '-'),
(16, 16, '2023-08-08 00:00:00', 1, 9999, 74, 5, '', '-'),
(17, 17, '2023-08-08 00:00:00', 1, 9999, 75, 5, '', '-'),
(18, 18, '2023-08-08 00:00:00', 1, 9999, 76, 5, '', '-'),
(19, 19, '2023-08-08 00:00:00', 1, 9999, 77, 5, '', '-'),
(20, 20, '2023-08-08 00:00:00', 1, 9999, 12, 3, '', '-'),
(21, 21, '2023-08-08 00:00:00', 1, 9999, 15, 3, '', '-'),
(22, 22, '2023-08-08 00:00:00', 1, 9999, 17, 3, '', '-'),
(23, 23, '2023-08-08 00:00:00', 1, 9999, 22, 3, '', '-'),
(24, 24, '2023-08-08 00:00:00', 1, 9999, 23, 3, '', '-'),
(25, 25, '2023-08-08 00:00:00', 1, 9999, 24, 3, '', '-'),
(26, 26, '2023-08-08 00:00:00', 1, 9999, 25, 3, '', '-'),
(27, 27, '2023-08-08 00:00:00', 1, 9999, 26, 3, '', '-'),
(28, 28, '2023-08-08 00:00:00', 1, 9999, 27, 3, '', '-'),
(29, 29, '2023-08-08 00:00:00', 1, 9999, 28, 3, '', '-'),
(30, 30, '2023-08-08 00:00:00', 1, 9999, 29, 3, '', '-'),
(31, 31, '2023-08-08 00:00:00', 1, 9999, 30, 3, '', '-'),
(32, 32, '2023-08-08 00:00:00', 1, 9999, 37, 3, '', '-'),
(33, 33, '2023-08-08 00:00:00', 1, 9999, 38, 3, '', '-'),
(34, 34, '2023-08-08 00:00:00', 1, 9999, 45, 3, '', '-'),
(35, 35, '2023-08-08 00:00:00', 1, 9999, 47, 3, '', '-'),
(36, 36, '2023-08-08 00:00:00', 1, 9999, 48, 3, '', '-'),
(37, 37, '2023-08-08 00:00:00', 1, 9999, 55, 3, '', '-'),
(38, 38, '2023-08-08 00:00:00', 1, 9999, 57, 3, '', '-'),
(39, 39, '2023-08-08 00:00:00', 1, 9999, 58, 3, '', '-'),
(40, 40, '2023-08-08 00:00:00', 1, 9999, 59, 3, '', '-'),
(41, 41, '2023-08-08 00:00:00', 1, 9999, 60, 3, '', '-'),
(42, 42, '2023-08-08 00:00:00', 1, 9999, 61, 3, '', '-'),
(43, 43, '2023-08-08 00:00:00', 1, 9999, 67, 3, '', '-'),
(44, 44, '2023-08-08 00:00:00', 1, 9999, 7, 4, '', '-'),
(45, 45, '2023-08-08 00:00:00', 1, 9999, 10, 4, '', '-'),
(46, 46, '2023-08-08 00:00:00', 1, 9999, 11, 4, '', '-'),
(47, 47, '2023-08-08 00:00:00', 1, 9999, 13, 4, '', '-'),
(48, 48, '2023-08-08 00:00:00', 1, 9999, 14, 4, '', '-'),
(49, 49, '2023-08-08 00:00:00', 1, 9999, 18, 4, '', '-'),
(50, 50, '2023-08-08 00:00:00', 1, 9999, 46, 4, '', '-'),
(51, 51, '2023-08-08 00:00:00', 1, 9999, 49, 4, '', '-'),
(52, 52, '2023-08-08 00:00:00', 1, 9999, 50, 4, '', '-'),
(53, 53, '2023-08-08 00:00:00', 1, 9999, 51, 4, '', '-'),
(54, 54, '2023-08-08 00:00:00', 1, 9999, 52, 4, '', '-'),
(55, 55, '2023-08-08 00:00:00', 1, 9999, 53, 4, '', '-'),
(56, 56, '2023-08-08 00:00:00', 1, 9999, 68, 4, '', '-'),
(57, 57, '2023-08-08 00:00:00', 1, 9999, 7, 8, '', '-'),
(58, 58, '2023-08-08 00:00:00', 1, 9999, 10, 8, '', '-'),
(59, 59, '2023-08-08 00:00:00', 1, 9999, 11, 8, '', '-'),
(60, 60, '2023-08-08 00:00:00', 1, 9999, 12, 8, '', '-'),
(61, 61, '2023-08-08 00:00:00', 1, 9999, 13, 8, '', '-'),
(62, 62, '2023-08-08 00:00:00', 1, 9999, 14, 8, '', '-'),
(63, 63, '2023-08-08 00:00:00', 1, 9999, 15, 8, '', '-'),
(64, 64, '2023-08-08 00:00:00', 1, 9999, 17, 8, '', '-'),
(65, 65, '2023-08-08 00:00:00', 1, 9999, 18, 8, '', '-'),
(66, 66, '2023-08-08 00:00:00', 1, 9999, 22, 8, '', '-'),
(67, 67, '2023-08-08 00:00:00', 1, 9999, 23, 8, '', '-'),
(68, 68, '2023-08-08 00:00:00', 1, 9999, 24, 8, '', '-'),
(69, 69, '2023-08-08 00:00:00', 1, 9999, 25, 8, '', '-'),
(70, 70, '2023-08-08 00:00:00', 1, 9999, 26, 8, '', '-'),
(71, 71, '2023-08-08 00:00:00', 1, 9999, 27, 8, '', '-'),
(72, 72, '2023-08-08 00:00:00', 1, 9999, 28, 8, '', '-'),
(73, 73, '2023-08-08 00:00:00', 1, 9999, 29, 8, '', '-'),
(74, 74, '2023-08-08 00:00:00', 1, 9999, 30, 8, '', '-'),
(75, 75, '2023-08-08 00:00:00', 1, 9999, 37, 8, '', '-'),
(76, 76, '2023-08-08 00:00:00', 1, 9999, 41, 8, '', '-'),
(77, 77, '2023-08-08 00:00:00', 1, 9999, 45, 8, '', '-'),
(78, 78, '2023-08-08 00:00:00', 1, 9999, 46, 8, '', '-'),
(79, 79, '2023-08-08 00:00:00', 1, 9999, 47, 8, '', '-'),
(80, 80, '2023-08-08 00:00:00', 1, 9999, 48, 8, '', '-'),
(81, 81, '2023-08-08 00:00:00', 1, 9999, 49, 8, '', '-'),
(82, 82, '2023-08-08 00:00:00', 1, 9999, 50, 8, '', '-'),
(83, 83, '2023-08-08 00:00:00', 1, 9999, 51, 8, '', '-'),
(84, 84, '2023-08-08 00:00:00', 1, 9999, 52, 8, '', '-'),
(85, 85, '2023-08-08 00:00:00', 1, 9999, 53, 8, '', '-'),
(86, 86, '2023-08-08 00:00:00', 1, 9999, 55, 8, '', '-'),
(87, 87, '2023-08-08 00:00:00', 1, 9999, 57, 8, '', '-'),
(88, 88, '2023-08-08 00:00:00', 1, 9999, 58, 8, '', '-'),
(89, 89, '2023-08-08 00:00:00', 1, 9999, 59, 8, '', '-'),
(90, 90, '2023-08-08 00:00:00', 1, 9999, 60, 8, '', '-'),
(91, 91, '2023-08-08 00:00:00', 1, 9999, 61, 8, '', '-'),
(92, 92, '2023-08-08 00:00:00', 1, 9999, 67, 8, '', '-'),
(93, 93, '2023-08-08 00:00:00', 1, 9999, 68, 8, '', '-'),
(94, 94, '2023-08-08 00:00:00', 1, 9999, 69, 8, '', '-'),
(95, 95, '2023-08-08 00:00:00', 1, 9999, 70, 8, '', '-'),
(96, 96, '2023-08-08 00:00:00', 1, 9999, 71, 8, '', '-'),
(97, 97, '2023-08-08 00:00:00', 1, 9999, 72, 8, '', '-'),
(98, 98, '2023-08-08 00:00:00', 1, 9999, 73, 8, '', '-'),
(99, 99, '2023-08-08 00:00:00', 1, 9999, 74, 8, '', '-'),
(100, 100, '2023-08-08 00:00:00', 1, 9999, 75, 8, '', '-'),
(101, 101, '2023-08-08 00:00:00', 1, 9999, 76, 8, '', '-'),
(102, 102, '2023-08-08 00:00:00', 1, 9999, 77, 8, '', '-'),
(103, 103, '2023-08-08 00:00:00', 1, 9999, 41, 33, '', '-'),
(104, 104, '2023-08-08 00:00:00', 1, 9999, 69, 33, '', '-'),
(105, 105, '2023-08-08 00:00:00', 1, 9999, 70, 33, '', '-'),
(106, 106, '2023-08-08 00:00:00', 1, 9999, 71, 33, '', '-'),
(107, 107, '2023-08-08 00:00:00', 1, 9999, 75, 33, '', '-'),
(108, 108, '2023-08-08 00:00:00', 1, 9999, 76, 33, '', '-'),
(109, 109, '2023-08-08 00:00:00', 1, 9999, 77, 33, '', '-'),
(110, 110, '2023-08-08 00:00:00', 1, 9999, 1, 6, '653e773e6fe16.pdf', '-'),
(111, 111, '2023-08-08 00:00:00', 1, 9999, 5, 6, '', '-'),
(112, 112, '2023-08-08 00:00:00', 1, 9999, 6, 6, '', '-'),
(113, 113, '2023-08-08 00:00:00', 1, 9999, 7, 6, '', '-'),
(114, 114, '2023-08-08 00:00:00', 1, 9999, 32, 6, '', '-'),
(115, 115, '2023-08-08 00:00:00', 1, 9999, 33, 6, '', '-'),
(116, 116, '2023-08-08 00:00:00', 1, 9999, 34, 6, '', '-'),
(117, 117, '2023-08-08 00:00:00', 1, 9999, 35, 6, '', '-'),
(118, 118, '2023-08-08 00:00:00', 1, 9999, 36, 6, '', '-'),
(119, 119, '2023-08-08 00:00:00', 1, 9999, 44, 6, '', '-'),
(120, 120, '2023-08-08 00:00:00', 1, 9999, 2, 2, '', '-'),
(121, 121, '2023-08-08 00:00:00', 1, 9999, 3, 2, '', '-'),
(122, 122, '2023-08-08 00:00:00', 1, 9999, 4, 2, '', '-'),
(123, 123, '2023-08-08 00:00:00', 1, 9999, 8, 2, '', '-'),
(124, 124, '2023-08-08 00:00:00', 1, 9999, 9, 2, '', '-'),
(125, 125, '2023-08-08 00:00:00', 1, 9999, 31, 2, '', '-'),
(126, 126, '2023-08-08 00:00:00', 1, 9999, 42, 2, '', '-'),
(127, 127, '2023-08-08 00:00:00', 1, 9999, 43, 2, '', '-'),
(128, 128, '2023-08-08 00:00:00', 1, 9999, 63, 2, '', '-'),
(129, 129, '2023-08-08 00:00:00', 1, 9999, 64, 2, '', '-'),
(130, 130, '2023-08-08 00:00:00', 1, 9999, 65, 2, '', '-'),
(131, 131, '2023-08-08 00:00:00', 1, 9999, 66, 2, '', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRADOR', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(2, 'SERVICIOS', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(3, 'INFORMATICA', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(4, 'JURIDICO', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(5, 'FUNCIONARIO', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34'),
(6, 'CONDUCTOR', 'web', '2023-07-04 03:21:34', '2023-07-04 03:21:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `ID_SALA` int(10) UNSIGNED NOT NULL,
  `NOMBRE_SALA` varchar(128) DEFAULT NULL,
  `CAPACIDAD_PERSONAS` int(11) DEFAULT NULL,
  `ESTADO_SALA` varchar(128) DEFAULT NULL,
  `ID_CATEGORIA_SALA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`ID_SALA`, `NOMBRE_SALA`, `CAPACIDAD_PERSONAS`, `ESTADO_SALA`, `ID_CATEGORIA_SALA`) VALUES
(1, 'CARMEN PROSSER', 35, 'DISPONIBLE', 1),
(2, 'VIDEO CONFERENCIA', 25, 'DISPONIBLE', 1),
(4, 'SALA REUNION DR', 7, 'DISPONIBLE', 1),
(5, 'HALL RENTA', 35, 'DISPONIBLE', 1),
(6, 'SALA 1', 2, 'DISPONIBLE', 1),
(7, 'SALA 2', 3, 'DISPONOBLE', 1),
(8, 'EXTERNA', 30, 'DISPONIBLE', 1),
(9, 'OFICINA ADMINISTRACION - FRENTE SALA 2 2', 4, 'DISPONOBLE', 1),
(10, 'OFICINA ASISTENTE SOCIAL', 2, 'DISPONIBLE', 1),
(11, 'BODEGA HERAS', 1, 'DISPONIBLE', 2),
(12, 'BODEGA BARRIO NORTE', 1, 'DISPONIBLE', 2),
(13, 'BODEGA LOCAL', 1, 'DISPONIBLE', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GNTJx1M7KdDlyyJHIO5uYSQzhsYaWEtW2VYR56mR', 563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSjJYb1lZQzdSYUtZdEhCMFFmdFZHejFHM0ppMllYdWxXdTJGdjRvNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXBvcnRlc2hvbWUvVmVoaWN1bG9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTYzO30=', 1701979186),
('gzoQkiAZtD0LvMMMbdhUVF2UIs1YroWvyLsZs70V', 563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamJkbWJBd3RjTjlkNWtCNUVaam9QOE5hVlZwSGU2RzY4MDAwYzNMRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTYzO30=', 1701838180),
('xGqCT8xDT7yShRTmSAkyNnII8v9Ju2cWUnPMrBFZ', 563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV281SjdLVnp2Y3NwVVFUVHpTdEV3MGUwYWRUVmJ6S1FiazM3UXhFYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTYzO30=', 1701354765);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `ID_SEXO` int(10) UNSIGNED NOT NULL,
  `SEXO` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`ID_SEXO`, `SEXO`) VALUES
(1, 'MASCULINO'),
(2, 'FEMENINO'),
(99, 'PREFIERO NO DECIRLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_equipos`
--

CREATE TABLE `tipo_equipos` (
  `ID_TIPO_EQUIPOS` int(10) UNSIGNED NOT NULL,
  `TIPO_EQUIPO` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_equipos`
--

INSERT INTO `tipo_equipos` (`ID_TIPO_EQUIPOS`, `TIPO_EQUIPO`) VALUES
(1, 'NOTEBOOK'),
(2, 'DATA'),
(3, 'AMPLIFICADOR'),
(4, 'MICROFONO'),
(5, 'TELON'),
(6, 'EQUIPO DE VIDEOCONFERENCIAS'),
(7, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_material`
--

CREATE TABLE `tipo_material` (
  `ID_TIPO_MAT` int(10) UNSIGNED NOT NULL,
  `TIPO_MATERIAL` varchar(128) NOT NULL,
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_material`
--

INSERT INTO `tipo_material` (`ID_TIPO_MAT`, `TIPO_MATERIAL`, `ID_DIRECCION`, `created_at`, `updated_at`) VALUES
(1, 'ASEO', 16, NULL, NULL),
(2, 'ESCRITORIO', 16, NULL, NULL),
(3, 'COMPUTACION', 16, NULL, NULL),
(4, 'ELECTRODOMESTICOS', 16, NULL, NULL),
(5, 'ASEO', 18, NULL, NULL),
(6, 'ESCRITORIO', 18, NULL, NULL),
(7, 'COMPUTACION', 18, NULL, NULL),
(8, 'ELECTRODOMESTICOS', 18, NULL, NULL),
(9, 'ASEO', 10, NULL, NULL),
(10, 'ESCRITORIO', 10, NULL, NULL),
(11, 'COMPUTACION', 10, NULL, NULL),
(12, 'ELECTRODOMESTICOS', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_reparacion`
--

CREATE TABLE `tipo_reparacion` (
  `ID_TIPO_REP_GENERAL` int(10) UNSIGNED NOT NULL,
  `TIPO_REP` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_reparacion`
--

INSERT INTO `tipo_reparacion` (`ID_TIPO_REP_GENERAL`, `TIPO_REP`, `created_at`, `updated_at`) VALUES
(1, 'MOBILIARIO', NULL, NULL),
(2, 'INFRAESTRUCTURA', NULL, NULL),
(3, 'OTROS', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_resoluciones`
--

CREATE TABLE `tipo_resoluciones` (
  `ID_TIPO` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_resoluciones`
--

INSERT INTO `tipo_resoluciones` (`ID_TIPO`, `NOMBRE`) VALUES
(1, 'DELEGATORIA'),
(2, 'NOMBRAMIENTO'),
(3, 'AUTORIZACIÓN DE DELEGACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--

CREATE TABLE `tipo_servicio` (
  `ID_TIPO_SERVICIO` int(10) UNSIGNED NOT NULL,
  `TIPO_SERVICIO` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`ID_TIPO_SERVICIO`, `TIPO_SERVICIO`, `created_at`, `updated_at`) VALUES
(1, 'MANTENCION PREVENTIVA', NULL, NULL),
(2, 'MANTENCION CORRECTIVA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `ID_TIPO_VEH` int(10) UNSIGNED NOT NULL,
  `TIPO_VEHICULO` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`ID_TIPO_VEH`, `TIPO_VEHICULO`, `created_at`, `updated_at`) VALUES
(1, 'AUTOMOVIL', NULL, NULL),
(2, 'SUV', NULL, NULL),
(3, 'CAMIONETA', NULL, NULL),
(4, 'FURGON', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `ID_UBICACION` int(10) UNSIGNED NOT NULL,
  `UBICACION` varchar(128) DEFAULT NULL,
  `ID_DIRECCION` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`ID_UBICACION`, `UBICACION`, `ID_DIRECCION`) VALUES
(2, 'UNIDAD ALTO HOSPICIO', 2),
(5, 'UNIDAD DE CALAMA', 3),
(6, 'UNIDAD DE TOCOPILLA', 3),
(7, 'UNIDAD DE VALLENAR', 4),
(9, 'UNIDAD DE CHAÑARAL', 4),
(11, 'UNIDAD DE ILLAPEL', 5),
(12, 'UNIDAD DE OVALLE', 5),
(13, 'UNIDAD DE COQUIMBO', 5),
(14, 'UNIDAD DE SAN ANTONIO', 6),
(15, 'UNIDAD DE LA LIGUA', 6),
(16, 'UNIDAD DE LOS ANDES', 6),
(19, 'UNIDAD DE SAN FELIPE', 6),
(20, 'UNIDAD DE VIÑA DEL MAR', 6),
(21, 'UNIDAD DE QUILLOTA', 6),
(22, 'UNIDAD DE VILLA ALEMANA', 6),
(23, 'UNIDAD DE BUIN', 9),
(24, 'UNIDAD DE SAN BERNARDO', 9),
(25, 'UNIDAD DE MAIPU', 8),
(29, 'UNIDAD DE LA FLORIDA', 9),
(30, 'CENTRAL DE TIMBRAJE', 12),
(31, 'UNIDAD DE ÑUÑOA', 12),
(33, 'UNIDAD DE SAN FERNANDO', 13),
(34, 'UNIDAD DE SANTA CRUZ', 13),
(36, 'UNIDAD DE PICHILEMU', 13),
(38, 'UNIDAD DE CAUQUENES', 14),
(39, 'UNIDAD DE LINARES', 14),
(40, 'UNIDAD DE CONSTITUCION', 14),
(42, 'UNIDAD DE CURICO', 14),
(43, 'UNIDAD DE PARRAL', 14),
(45, 'UNIDAD DE SAN CARLOS', 15),
(46, 'UNIDAD DE LOS ANGELES', 16),
(48, 'UNIDAD DE LEBU', 16),
(49, 'UNIDAD DE MELIPILLA', 8),
(50, 'UNIDAD DE TALCAHUANO', 16),
(51, 'UNIDAD DE ANGOL', 17),
(53, 'UNIDAD DE VICTORIA', 17),
(54, 'UNIDAD DE VILLARRICA', 17),
(56, 'UNIDAD DE LA UNION', 18),
(57, 'UNIDAD DE LANCO', 18),
(58, 'UNIDAD DE PANGUIPULLI', 18),
(59, 'UNIDAD DE ANCUD', 19),
(61, 'UNIDAD CASTRO', 19),
(62, 'UNIDAD DE CHAITEN', 19),
(63, 'UNIDAD DE PUERTO VARAS', 19),
(64, 'UNIDAD DE OSORNO', 19),
(65, 'UNIDAD DE AYSEN', 20),
(66, 'UNIDAD DE CHILE CHICO', 20),
(69, 'UNIDAD DE PUERTO NATALES', 21),
(70, 'UNIDAD DE PORVENIR', 21),
(99, 'NO ASIGNADO', 16),
(100, 'GABINETE DIRECTOR', 16),
(101, 'GABINETE DIRECTOR', 18),
(102, 'DEPARTAMENTO DE ADMINISTRACION', 16),
(103, 'DEPARTAMENTO DE ADMINISTRACION', 18),
(104, 'DEPARTAMENTO DE FISCALIZACION', 16),
(105, 'DEPARTAMENTO DE FISCALIZACION', 18),
(106, 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 16),
(107, 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 18),
(108, 'DEPARTAMENTO DE AVALUACIONES', 16),
(109, 'DEPARTAMENTO DE AVALUACIONES', 18),
(110, 'DEPARTAMENTO DE PROCEDIMIENTOS ADMINISTRATIVOS TRIBUTARIOS', 16),
(111, 'OFICINA DE PROCEDIMIENTOS ADMINISTRATIVOS TRIBUTARIOS', 18),
(112, 'DEPARTAMENTO JURÍDICO', 16),
(113, 'DEPARTAMENTO JURÍDICO', 18),
(120, 'DEPARTAMENTO DE ADMINISTRACION', 10),
(121, 'DEPARTAMENTO DE FISCALIZACION', 10),
(122, 'DEPARTAMENTO DE AVALUACIONES', 10),
(123, 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 10),
(124, 'DEPARTAMENTO JURIDICO', 10),
(125, 'DEPARTAMENTO DE PROCEDIMIENTOS ADMINISTRATIVOS TRIBUTARIOS', 10),
(126, 'GABINETE DIRECTOR', 10),
(997, 'NO ASIGNADO', 10),
(999, 'NO ASIGNADO', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NOMBRES` varchar(255) NOT NULL,
  `APELLIDOS` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `RUT` varchar(20) NOT NULL,
  `FECHA_NAC` date NOT NULL,
  `FECHA_INGRESO` date NOT NULL,
  `FONO` varchar(255) NOT NULL,
  `ANEXO` varchar(255) NOT NULL,
  `ID_UBICACION` int(10) UNSIGNED NOT NULL,
  `ID_REGION` int(10) UNSIGNED NOT NULL,
  `ID_GRUPO` int(10) UNSIGNED NOT NULL,
  `ID_ESCALAFON` int(10) UNSIGNED NOT NULL,
  `ID_GRADO` int(10) UNSIGNED NOT NULL,
  `ID_CARGO` int(10) UNSIGNED NOT NULL,
  `ID_CALIDAD_JURIDICA` int(10) UNSIGNED NOT NULL,
  `ID_SEXO` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(563, 'USUARIO', 'DEMO', 'administrador@sia.cl', '$2y$10$2g9BGMpR36N6/htxxmAr7.NzQ1YNCOmTGv9o0zB5yeHXyc2RyBboi', NULL, NULL, NULL, '11111111-1', '2023-10-05', '2023-09-15', '123', '123', 50, 8, 99, 2, 4, 6, 1, 1, NULL, '2023-10-12 16:19:34', '2023-10-12 16:19:34'),
(564, 'USUARIO', 'DEMO', 'servicios@sia.cl', '$2y$10$h/8eN48dL99Hy1NrrKQOpe8D780MINS7oFZgZu9MV7.6E7Al8ivqS', NULL, NULL, NULL, '22222222-2', '2023-10-12', '2023-09-15', '123', '123', 50, 8, 99, 4, 12, 7, 1, 1, NULL, '2023-10-12 16:21:07', '2023-10-12 16:21:07'),
(565, 'USUARIO', 'DEMO', 'informatica@sia.cl', '$2y$10$r.VwAqeP5TerDmeK0gDtHu78WpdkdkOBC2eBz9ImDNjWHYTGc4mf2', NULL, NULL, NULL, '33333333-3', '2023-10-12', '2023-09-15', '123', '123', 50, 8, 99, 2, 15, 8, 1, 1, NULL, '2023-10-12 16:22:34', '2023-10-12 16:22:34'),
(566, 'USUARIO', 'DEMO', 'juridico@sia.cl', '$2y$10$G/h0UAAf61oIDoFSXHvkfOX2Dt11zZ9VJ7XnAa36kX1kK1wL4Lx0e', NULL, NULL, NULL, '44444444-4', '2023-10-12', '2023-09-15', '123', '123', 50, 8, 99, 4, 16, 2, 1, 1, NULL, '2023-10-12 16:24:02', '2023-10-12 16:24:02'),
(567, 'USUARIO', 'DEMO', 'funcionario@sia.cl', '$2y$10$AWl5EVhZ2lonVcJMn6fog.Jj2a6zCB5lm6ucYXIFhNZ9.5Aet3lp2', NULL, NULL, NULL, '55555555-5', '2023-10-12', '2023-09-15', '123', '123', 50, 8, 99, 9, 13, 99, 1, 1, NULL, '2023-10-12 16:24:44', '2023-10-12 16:24:44'),
(568, 'USUARIO', 'DEMO', 'funcionario2@sia.cl', '$2y$10$.gRFH9SCNcaoDJgIQxEaZeVKDhCIHjvJQzw8rO/zzDeK1h2oB/Il2', NULL, NULL, NULL, '66666666-6', '2023-10-12', '2023-09-15', '123', '123', 99, 8, 99, 4, 13, 99, 1, 1, NULL, '2023-11-04 03:30:59', '2023-11-04 03:30:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `ID_VEHICULO` int(10) UNSIGNED NOT NULL,
  `PATENTE_VEHICULO` varchar(7) NOT NULL,
  `ID_TIPO_VEH` bigint(20) UNSIGNED NOT NULL,
  `MARCA` varchar(128) DEFAULT NULL,
  `MODELO_VEHICULO` varchar(191) DEFAULT NULL,
  `ANO_VEHICULO` varchar(128) DEFAULT NULL,
  `ID_UBICACION` bigint(20) UNSIGNED NOT NULL,
  `ESTADO_VEHICULO` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`ID_VEHICULO`, `PATENTE_VEHICULO`, `ID_TIPO_VEH`, `MARCA`, `MODELO_VEHICULO`, `ANO_VEHICULO`, `ID_UBICACION`, `ESTADO_VEHICULO`, `created_at`, `updated_at`) VALUES
(1, 'AAAA-11', 2, 'MAHINDRA', 'SCORPIO', '2013', 102, 'DISPONIBLE', NULL, '2023-07-08 04:50:09'),
(2, 'BBBB-22', 2, 'TOYOTA', 'RAV 4', '2016', 46, 'DISPONIBLE', NULL, NULL),
(5, 'CCCC-33', 2, 'HYUNDAI', 'TUCSON', '2011', 48, 'DISPONIBLE', NULL, '2023-10-23 06:31:34'),
(6, 'DDDD-44', 4, 'MAHINDRA', 'GENIO', '2014', 45, 'DISPONIBLE', NULL, NULL),
(7, 'EEEE-55', 1, 'HYUNDAI', 'ELANTRA', '2011', 50, 'DISPONIBLE', NULL, NULL),
(8, 'FFFF-66', 4, 'CHEVROLET', 'D-MAX', '2015', 108, 'DISPONIBLE', NULL, '2023-07-08 04:51:00'),
(10, 'GGGG-77', 4, 'FIAT', 'DUCATO', '2013', 102, 'DISPONIBLE', NULL, '2023-07-08 04:45:28'),
(11, 'HHHH-88', 1, 'HYUNDAI', 'ELANTRA', '2011', 46, 'DISPONIBLE', NULL, NULL),
(12, 'IIII-99', 2, 'TOYOTA', 'RAV 4', '2016', 102, 'DISPONIBLE', NULL, '2023-07-08 04:52:18'),
(13, 'JJJJ-10', 2, 'TOYOTA', 'RAV 4', '2018', 102, 'DISPONIBLE', NULL, '2023-07-08 04:54:10'),
(14, 'KKKK-01', 2, 'TOYOTA', 'RAV 4', '2018', 104, 'DISPONIBLE', NULL, '2023-07-08 04:55:32'),
(15, 'LLLL-02', 2, 'TOYOTA', 'RAV 4', '2018', 104, 'DISPONIBLE', NULL, '2023-07-08 04:55:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calidad_juridica`
--
ALTER TABLE `calidad_juridica`
  ADD PRIMARY KEY (`ID_CALIDAD`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`ID_CARGO`);

--
-- Indices de la tabla `categoria_salas`
--
ALTER TABLE `categoria_salas`
  ADD PRIMARY KEY (`ID_CATEGORIA_SALA`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`ID_COMUNA`),
  ADD KEY `comunas_id_region_foreign` (`ID_REGION`);

--
-- Indices de la tabla `direcciones_regionales`
--
ALTER TABLE `direcciones_regionales`
  ADD PRIMARY KEY (`ID_DIRECCION`),
  ADD KEY `direcciones_regionales_id_region_foreign` (`ID_REGION`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`ID_EQUIPO`),
  ADD KEY `equipos_id_tipo_equipos_foreign` (`ID_TIPO_EQUIPOS`);

--
-- Indices de la tabla `escalafon`
--
ALTER TABLE `escalafon`
  ADD PRIMARY KEY (`ID_ESCALAFON`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`ID_FACULTAD`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`ID_FORMULARIO`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`ID_GRADO`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`ID_GRUPO`);

--
-- Indices de la tabla `inexistentes`
--
ALTER TABLE `inexistentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inexistentes_id_usuario_foreign` (`ID_USUARIO`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`ID_MATERIAL`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD PRIMARY KEY (`ID_POLIZA`),
  ADD KEY `polizas_id_foreign` (`ID`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID_REGION`);

--
-- Indices de la tabla `rel_fun_bodegas`
--
ALTER TABLE `rel_fun_bodegas`
  ADD PRIMARY KEY (`ID_SOL_BODEGA`);

--
-- Indices de la tabla `rel_fun_equipos`
--
ALTER TABLE `rel_fun_equipos`
  ADD PRIMARY KEY (`ID_SOL_EQUIPOS`);

--
-- Indices de la tabla `rel_fun_form`
--
ALTER TABLE `rel_fun_form`
  ADD PRIMARY KEY (`ID_SOL_FORM`);

--
-- Indices de la tabla `rel_fun_mat`
--
ALTER TABLE `rel_fun_mat`
  ADD PRIMARY KEY (`ID_SOLICITUD`);

--
-- Indices de la tabla `rel_fun_rep_general`
--
ALTER TABLE `rel_fun_rep_general`
  ADD PRIMARY KEY (`ID_REP_INM`);

--
-- Indices de la tabla `rel_fun_rep_veh`
--
ALTER TABLE `rel_fun_rep_veh`
  ADD PRIMARY KEY (`ID_SOL_REP_VEH`);

--
-- Indices de la tabla `resoluciones`
--
ALTER TABLE `resoluciones`
  ADD PRIMARY KEY (`ID_RESOLUCION`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`ID_SALA`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`ID_SEXO`);

--
-- Indices de la tabla `tipo_equipos`
--
ALTER TABLE `tipo_equipos`
  ADD PRIMARY KEY (`ID_TIPO_EQUIPOS`);

--
-- Indices de la tabla `tipo_material`
--
ALTER TABLE `tipo_material`
  ADD PRIMARY KEY (`ID_TIPO_MAT`);

--
-- Indices de la tabla `tipo_reparacion`
--
ALTER TABLE `tipo_reparacion`
  ADD PRIMARY KEY (`ID_TIPO_REP_GENERAL`);

--
-- Indices de la tabla `tipo_resoluciones`
--
ALTER TABLE `tipo_resoluciones`
  ADD PRIMARY KEY (`ID_TIPO`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`ID_TIPO_SERVICIO`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`ID_TIPO_VEH`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`ID_UBICACION`),
  ADD KEY `ubicacion_id_direccion_foreign` (`ID_DIRECCION`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_rut_unique` (`RUT`),
  ADD KEY `users_id_ubicacion_foreign` (`ID_UBICACION`),
  ADD KEY `users_id_region_foreign` (`ID_REGION`),
  ADD KEY `users_id_grupo_foreign` (`ID_GRUPO`),
  ADD KEY `users_id_escalafon_foreign` (`ID_ESCALAFON`),
  ADD KEY `users_id_grado_foreign` (`ID_GRADO`),
  ADD KEY `users_id_cargo_foreign` (`ID_CARGO`),
  ADD KEY `users_id_calidad_juridica_foreign` (`ID_CALIDAD_JURIDICA`),
  ADD KEY `users_id_sexo_foreign` (`ID_SEXO`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID_VEHICULO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `ID_CARGO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `categoria_salas`
--
ALTER TABLE `categoria_salas`
  MODIFY `ID_CATEGORIA_SALA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `ID_COMUNA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de la tabla `direcciones_regionales`
--
ALTER TABLE `direcciones_regionales`
  MODIFY `ID_DIRECCION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `ID_EQUIPO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `facultades`
--
ALTER TABLE `facultades`
  MODIFY `ID_FACULTAD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formularios`
--
ALTER TABLE `formularios`
  MODIFY `ID_FORMULARIO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `inexistentes`
--
ALTER TABLE `inexistentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `ID_MATERIAL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `polizas`
--
ALTER TABLE `polizas`
  MODIFY `ID_POLIZA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `ID_REGION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `rel_fun_bodegas`
--
ALTER TABLE `rel_fun_bodegas`
  MODIFY `ID_SOL_BODEGA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_fun_equipos`
--
ALTER TABLE `rel_fun_equipos`
  MODIFY `ID_SOL_EQUIPOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_fun_form`
--
ALTER TABLE `rel_fun_form`
  MODIFY `ID_SOL_FORM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_fun_mat`
--
ALTER TABLE `rel_fun_mat`
  MODIFY `ID_SOLICITUD` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_fun_rep_general`
--
ALTER TABLE `rel_fun_rep_general`
  MODIFY `ID_REP_INM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_fun_rep_veh`
--
ALTER TABLE `rel_fun_rep_veh`
  MODIFY `ID_SOL_REP_VEH` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resoluciones`
--
ALTER TABLE `resoluciones`
  MODIFY `ID_RESOLUCION` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `ID_SALA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_equipos`
--
ALTER TABLE `tipo_equipos`
  MODIFY `ID_TIPO_EQUIPOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipo_material`
--
ALTER TABLE `tipo_material`
  MODIFY `ID_TIPO_MAT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tipo_reparacion`
--
ALTER TABLE `tipo_reparacion`
  MODIFY `ID_TIPO_REP_GENERAL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_resoluciones`
--
ALTER TABLE `tipo_resoluciones`
  MODIFY `ID_TIPO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  MODIFY `ID_TIPO_SERVICIO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  MODIFY `ID_TIPO_VEH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID_VEHICULO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_id_region_foreign` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`);

--
-- Filtros para la tabla `direcciones_regionales`
--
ALTER TABLE `direcciones_regionales`
  ADD CONSTRAINT `direcciones_regionales_id_region_foreign` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`);

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_id_tipo_equipos_foreign` FOREIGN KEY (`ID_TIPO_EQUIPOS`) REFERENCES `tipo_equipos` (`ID_TIPO_EQUIPOS`);

--
-- Filtros para la tabla `inexistentes`
--
ALTER TABLE `inexistentes`
  ADD CONSTRAINT `inexistentes_id_usuario_foreign` FOREIGN KEY (`ID_USUARIO`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD CONSTRAINT `polizas_id_foreign` FOREIGN KEY (`ID`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD CONSTRAINT `ubicacion_id_direccion_foreign` FOREIGN KEY (`ID_DIRECCION`) REFERENCES `direcciones_regionales` (`ID_DIRECCION`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_calidad_juridica_foreign` FOREIGN KEY (`ID_CALIDAD_JURIDICA`) REFERENCES `calidad_juridica` (`ID_CALIDAD`),
  ADD CONSTRAINT `users_id_cargo_foreign` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargos` (`ID_CARGO`),
  ADD CONSTRAINT `users_id_escalafon_foreign` FOREIGN KEY (`ID_ESCALAFON`) REFERENCES `escalafon` (`ID_ESCALAFON`),
  ADD CONSTRAINT `users_id_grado_foreign` FOREIGN KEY (`ID_GRADO`) REFERENCES `grado` (`ID_GRADO`),
  ADD CONSTRAINT `users_id_grupo_foreign` FOREIGN KEY (`ID_GRUPO`) REFERENCES `grupo` (`ID_GRUPO`),
  ADD CONSTRAINT `users_id_region_foreign` FOREIGN KEY (`ID_REGION`) REFERENCES `region` (`ID_REGION`),
  ADD CONSTRAINT `users_id_sexo_foreign` FOREIGN KEY (`ID_SEXO`) REFERENCES `sexo` (`ID_SEXO`),
  ADD CONSTRAINT `users_id_ubicacion_foreign` FOREIGN KEY (`ID_UBICACION`) REFERENCES `ubicacion` (`ID_UBICACION`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
