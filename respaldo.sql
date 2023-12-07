-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2023 a las 04:13:41
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
-- Base de datos: `sia2`
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
(1, 1, 16, 'ESCOBA', 19, NULL, NULL),
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
(12, 4, 16, 'HORNO ELECTRICO', 2, NULL, NULL),
(26, 1, 16, 'TESTING MATERIAL 2', 100, '2023-08-29 20:07:25', '2023-08-29 20:07:25');

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
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 27),
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
(6, 'App\\Models\\User', 11),
(6, 'App\\Models\\User', 18),
(6, 'App\\Models\\User', 22),
(6, 'App\\Models\\User', 28),
(6, 'App\\Models\\User', 141),
(6, 'App\\Models\\User', 158),
(6, 'App\\Models\\User', 165),
(6, 'App\\Models\\User', 166),
(6, 'App\\Models\\User', 251);

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

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`ID_POLIZA`, `ID`, `FECHA_VENCIMIENTO_LICENCIA`, `NRO_POLIZA`) VALUES
(5, 186, '16/02/2021', 180504),
(6, 121, '18/12/2028', 102299),
(7, 14, '31/07/2021', 102299),
(8, 39, '13/02/2026', 146882),
(9, 190, '14/07/2021', 161561),
(10, 203, '27/11/2024', 134667),
(11, 91, '07/02/2026', 163806),
(12, 215, '18/10/2021', 150851),
(13, 169, '03/05/2023', 101701),
(14, 104, '17/05/2022', 98396),
(15, 163, '24/07/2020', 114821),
(16, 18, '13/08/2028', 173831),
(17, 146, '22/04/2021', 162488),
(18, 236, '04/09/2026', 117995),
(19, 177, '27/10/2022', 129208),
(20, 220, '22/09/2019', 89630),
(21, 72, '30/08/2022', 96522),
(22, 251, '19/07/2025', 146880),
(23, 22, '12/07/2021', 122659),
(24, 28, '12/02/2029', 163368),
(25, 259, '06/08/2019', 118462),
(26, 213, '07/10/2025', 167446),
(27, 165, '16/10/2022', 125933),
(28, 230, '16/11/2022', 157968),
(29, 97, '14/04/2026', 108267),
(30, 107, '23/06/2025', 178127),
(31, 200, '20/01/2022', 131447),
(32, 166, '06/10/2022', 117002),
(33, 47, '20/01/2024', 89628),
(34, 11, '08/07/2027', 131335),
(35, 10, '11/05/2024', 76206),
(36, 229, '03/04/2024', 147514),
(37, 43, '16/08/2022', 102293),
(38, 53, '21/04/2023', 116391),
(39, 158, '25/11/2020', 157967),
(40, 109, '08/09/2024', 99557),
(41, 174, '09/05/2019', 90114),
(42, 223, '24/09/2024', 160177),
(43, 16, '26/08/2024', 164459),
(44, 278, '12/08/2024', 141735),
(45, 234, '08/11/2022', 92810),
(46, 92, '30/03/2026', 142767),
(47, 210, '17/09/2019', 170423),
(48, 29, '06/02/2023', 173830),
(49, 198, '19/03/2023', 82718),
(50, 141, '23/03/2025', 178233);

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

--
-- Volcado de datos para la tabla `rel_fun_bodegas`
--

INSERT INTO `rel_fun_bodegas` (`ID_SOL_BODEGA`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `MOTIVO_SOL_BODEGA`, `FECHA_SOL_BODEGA`, `HORA_INICIO_SOL_BODEGA`, `HORA_TERM_SOL_BODEGA`, `FECHA_INICIO_ASIG_BODEGA`, `FECHA_TERM_ASIG_BODEGA`, `BODEGA_PEDIDA`, `ESTADO_SOL_BODEGA`, `MODIFICADO_POR_SOL_BODEGA`, `OBSERV_SOL_BODEGA`, `ID_CATEGORIA_SALA`, `created_at`, `updated_at`) VALUES
(1, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11821718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 'kakdkakd', '2023-07-19 a 2023-07-22', '12:00', NULL, NULL, NULL, 'BODEGA HERAS', 'INGRESADO', NULL, NULL, 2, '2023-07-19 21:43:04', '2023-07-19 21:43:04');

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

--
-- Volcado de datos para la tabla `rel_fun_equipos`
--

INSERT INTO `rel_fun_equipos` (`ID_SOL_EQUIPOS`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `ID_USUARIO`, `MOTIVO_SOL_EQUIPO`, `EQUIPO_SOL`, `FECHA_SOL_EQUIPO`, `HORA_INICIO_SOL_EQUIPO`, `HORA_TERM_SOL_EQUIPO`, `FECHA_INICIO_EQUIPO`, `FECHA_FIN_EQUIPO`, `ESTADO_SOL_EQUIPO`, `EQUIPO_A_ASIGNAR`, `MODIFICADO_POR_SOL_EQUIPO`, `OBSERV_SOL_EQUIPO`, `created_at`, `updated_at`) VALUES
(3, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana vega monumental', 'NOTEBOOK', '2018-09-28', '09:00', '14:00', '2018-09-26 09:00:00', '2018-09-26 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(15, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'Feria de Prácticas Instituto Profesional Virginio Gomez', 'NOTEBOOK', '2018-10-25', '09:30', '17:00', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(16, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'Feria de Prácticas Instituto Profesional Virginio Gomez', 'NOTEBOOK', '2018-10-25', '09:30', '17:00', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(17, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'Feria de Prácticas  Instituto Profesional Virginio Gomez', 'NOTEBOOK', '2018-10-25', '09:30', '17:00', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(22, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA HUALQUI', 'NOTEBOOK', '2018-10-26', '09:00', '14:30', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(23, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA HUALQUI', 'NOTEBOOK', '2018-10-26', '09:00', '14:30', '2018-10-19 09:00:00', '2018-10-19 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(30, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana santa juana', 'NOTEBOOK', '2018-11-12', '08:30', '14:30', '2018-11-07 09:00:00', '2018-11-07 09:00:00', 'ACEPTADO', '', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(31, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana lota', 'NOTEBOOK', '2018-11-21', '08:30', '14:30', '2018-11-16 09:00:00', '2018-11-16 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(36, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana tomérnse solicitan 2 equipos ', 'NOTEBOOK', '2018-12-05', '08:30', '14:30', '2018-11-28 09:00:00', '2018-11-28 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(37, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana santa juana c/ router', 'NOTEBOOK', '2018-12-11', '08:30', '14:30', '2018-12-07 09:00:00', '2018-12-07 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(38, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana tomé c/router', 'NOTEBOOK', '2018-12-14', '08:30', '14:30', '2018-12-07 09:00:00', '2018-12-07 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(43, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA HUALQUI', 'NOTEBOOK', '2019-02-01', '08:30', '14:30', '2019-01-18 09:00:00', '2019-01-18 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(46, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana copiulemu', 'NOTEBOOK', '2019-03-05', '14:00', '17:00', '2019-02-28 09:00:00', '2019-02-28 09:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(53, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Bajada - Charla de autocuidado por diagnostico efectuado a funcionarios de asistencia al contribuyente.rnSe requiere equipo Notebook, Data, Telón, pedestal  con micrófono y amplificación ', 'NOTEBOOK', '2019-05-09', '15:00', '16:30', '2019-05-08 12:00:00', '2019-05-23 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'RESERVADO', '2019-07-01 04:00:00', NULL),
(54, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Por motivos de bajada de Charla de Autocuidado reagendada para el día Jueves 16 de  Mayo, se solicita DATA, NOTEBOOK, TELON Y PEDESTAL CON MICROFONO para taller en asistencia al contribuyente. a las 15:15 Horas. ', 'NOTEBOOK', '2019-05-16', '15:00', '16:30', '2019-05-14 12:00:00', '2019-05-31 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'SE HABILITARA HALL ASISTENCIA', '2019-07-01 04:00:00', NULL),
(55, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana san pedro de la paz', 'NOTEBOOK', '2019-05-24', '08:30', '14:30', '2019-05-23 12:00:00', '2019-06-10 12:00:00', 'ACEPTADO', 'T420', 'SUSAN PARRA QUIROZ', '', '2019-07-01 04:00:00', NULL),
(57, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana chiguayante', 'NOTEBOOK', '2019-06-04', '09:00', '14:30', '2019-05-31 12:00:00', '2019-06-25 12:00:00', 'RECHAZADO', 'T420', 'SUSAN PARRA QUIROZ', 'retirarlo en informatica', '2019-07-01 04:00:00', NULL),
(58, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Solicita Notebook para realización de ceremonia de becas y premiso de bienestar 2019 a las 10:30 Horas. rn', 'NOTEBOOK', '2019-06-05', '10:30', '17:00', '2019-06-05 12:00:00', '2019-07-19 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'Equipo recepcionado por Johana Ortiz Medina', '2019-07-01 04:00:00', NULL),
(60, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA TOMÉ', 'NOTEBOOK', '2019-06-14', '09:00', '14:30', '2019-06-10 12:00:00', '2019-08-02 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'Se reserva NOTEBOOK', '2019-07-01 04:00:00', NULL),
(63, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'CHARLA A CONTRIBUYENTES', 'NOTEBOOK', '2019-06-26', '09:30', '13:30', '2019-06-25 12:00:00', '2019-08-02 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'NOTEBOOK MARCA HP', '2019-07-01 04:00:00', NULL),
(69, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana coronel', 'NOTEBOOK', '2019-07-26', '10:30', '16:00', '2019-07-19 12:00:00', '2019-08-02 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'PRESTAMO DAVID', '2019-07-01 04:00:00', NULL),
(72, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA CONCEPCIÓN- rnADEMAS SE SOLICITA TELÓN PARA PROYECTAR ', 'NOTEBOOK', '2019-08-05', '09:30', '14:00', '2019-08-02 12:00:00', '2019-08-13 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(73, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, '2 EQUIPOS PARA PLAZA CIUDADANA CONCEPCION', 'NOTEBOOK', '2019-08-05', '09:30', '14:00', '2019-08-02 12:00:00', '2019-09-23 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(74, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'PLAZA CIUDADANA CONCEPCIÓN (TRIBUNALES)rn+ INTERNET MOVIL', 'NOTEBOOK', '2019-08-08', '09:00', '13:30', '2019-08-02 12:00:00', '2019-09-30 09:00:00', 'RECHAZADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'funcionario indica que no suspende actividad - David Cabrera', '2019-07-01 04:00:00', NULL),
(76, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'taller ingreso F1816 grupo 1 asistencia', 'NOTEBOOK', '2019-08-27', '15:30', '17:00', '2019-08-13 12:00:00', '2019-08-13 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'HALL ASISTENCIArnDATArnNOTEBOOKrnTELON', '2019-07-01 04:00:00', NULL),
(82, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'plaza ciudadana lota ', 'NOTEBOOK', '2019-09-27', '11:00', '16:00', '2019-09-23 09:00:00', '2019-09-23 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'NOTEBOOK + ROUTER', '2019-07-01 04:00:00', NULL),
(86, 'CYNTHIA VANESSA ARANEDA BASTIDAS', '17207465-0', 'DEPARTAMENTO DE FISCALIZACION', 'cynthia.araneda@sii.cl', 33, 'ademas se necesita router para plaza ciudadana a realizar en la comuna de penco ', 'NOTEBOOK', '2019-10-04', '09:00', '14:00', '2019-09-30 09:00:00', '2019-09-30 09:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'reservado', '2019-07-01 04:00:00', NULL),
(94, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Estimado Luis: rnrnPara el acto ecuménico a realizarse el día de hoy en horario de 15:00 Horas, agradecería puedas disponer de Data, Telón,notebook y Micrófono para el evento.', 'NOTEBOOK', '2019-12-26', '15:00', '16:30', '2019-12-26 09:00:00', '2019-07-19 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', 'HALL DE ASISTENCIA', '2019-07-01 04:00:00', NULL),
(97, 'JOHANA ELIZABETH ORTIZ MEDINA', '15593140-K', 'DEPARTAMENTO DE ADMINISTRACION', 'johana.ortiz@sii.cl', 20, 'Charla día de la mujer 2020 en hall de depto. asistencia.rnse necesita data, telón y notebook para exposición de la monitora.rn(además de alargadores  y camera fotográfica para realización del evento)rn', 'NOTEBOOK', '2020-03-04', '15:00', '16:30', '2020-02-29 09:00:00', '2019-07-19 12:00:00', 'ACEPTADO', 'T420', 'LUIS ARSENIO VARGAS ABARCA', '', '2019-07-01 04:00:00', NULL),
(98, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11821718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 8, 'askkakds', 'AMPLIFICADOR', '2023-07-20 a 2023-07-23', '08:00', '09:00', '2023-07-20 16:00:00', '2023-07-20 18:00:00', 'INGRESADO', 'HP - NOTEBOOK\r\nS - DATA\r\nT420 - NOTEBOOK', 'CRISTIAN ALBERTO GOMEZ  CASTILLO', 'kdkkxfk', '2023-07-20 17:33:40', '2023-07-20 17:34:41');

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

--
-- Volcado de datos para la tabla `rel_fun_form`
--

INSERT INTO `rel_fun_form` (`ID_SOL_FORM`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `ID_FORMULARIO`, `FORM_SOL`, `ESTADO_SOL_FORM`, `OBSERV_SOL_FORM`, `MODIFICADO_POR_SOL_FORM`, `created_at`, `updated_at`) VALUES
(1, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11.821.718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', NULL, '- 1 unidad(es) de \"22895\" de tipo \"TIPO C', 'INGRESADO', NULL, NULL, '2023-07-25 22:10:02', '2023-07-25 22:10:02');

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

--
-- Volcado de datos para la tabla `rel_fun_mat`
--

INSERT INTO `rel_fun_mat` (`ID_SOLICITUD`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `FECHA_ATENCION`, `FECHA_RECEPCION`, `FECHA_DESPACHO`, `MATERIAL_SOL`, `OBSERVACIONES`, `ESTADO_SOL`, `MODIFICADO_POR`, `created_at`, `updated_at`) VALUES
(5, 8, 'CRISTIAN ALBERTO GOMEZ CASTILLO', '11.821.718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', '2023-10-10', NULL, '2023-10-13', '- 1 unidad(es) de \"ESCOBA\" de tipo \"ASEO\"', 'No existen observaciones por ahora', 'TERMINADO', 'CRISTIAN ALBERTO GOMEZ CASTILLO', '2023-10-10 19:39:08', '2023-10-10 19:39:41'),
(6, 14, 'ADOLFO MAURICIO MILLAN FAUNDEZ', '12.890.503-0', 'DEPARTAMENTO DE ADMINISTRACION', 'amillan@sii.cl', NULL, NULL, NULL, '- 1 unidad(es) de \"ESCOBA\" de tipo \"ASEO\"', 'No existen observaciones por ahora', 'INGRESADO', NULL, '2023-10-10 21:44:52', '2023-10-10 21:44:52');

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

--
-- Volcado de datos para la tabla `rel_fun_rep_general`
--

INSERT INTO `rel_fun_rep_general` (`ID_REP_INM`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `ID_TIPO_REP_GENERAL`, `REP_SOL`, `MODIFICADO_POR_REP_GEN`, `ESTADO_REP_INM`, `OBSERV_REP_INM`, `created_at`, `updated_at`) VALUES
(3, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Solicita cambio de Tubo Fluorescente baño damas primer piso', '', 'ACEPTADO', '', NULL, NULL),
(4, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'TUBO FLUORESCENTE EN RENTA (1)', '', 'ACEPTADO', '', NULL, NULL),
(6, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'Mueble velador cerradura no sirve, quedando cajonera con material personal sin resguardo', '', 'ACEPTADO', '', NULL, NULL),
(8, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Urinario baño primer piso hombres, esta inoperante, gotea.rnrnRP Reparado', '', 'ACEPTADO', '', NULL, NULL),
(9, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere reparacion  WC: sellado y anclaje al piso. Baño bajo escala area sala de timbraje.rnRP: Arreglado', '', 'ACEPTADO', '', NULL, NULL),
(10, 78, 'PAULINA FRANCISCA LOYOLA MARTINEZ', '12525059-9', 'DEPARTAMENTO DE FISCALIZACION', 'PAULINA.LOYOLA@SII.CL', 1, 'Por favor, solicito retirar mesita de madera con 3 ruedas, puesta frente a mi escritorio.rnLo anterior, pues:rn1.-se encuentra en mal estadorn2.-no se ocuparn3.-podría resultar dañado algún chiquitín que acompañe a su mamá al Servicio.rnGracias, desde ya.', '', 'ACEPTADO', '', NULL, NULL),
(11, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'Mueble velador cerradura no sirve, quedando cajonera con material personal sin resguardo', '', 'ACEPTADO', '', NULL, NULL),
(17, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere buscar URGENTE  expediente de Termnio de giro  11/2014 CAROLINA NELLY FRANCO ORTEGA, RUT 10.144.347-7 . Juan Carlos Torres o HernanTorres puede acompañar en esta labor.  Solicitud de conforme a correo electronico de Valeska Cartes ', '', 'ACEPTADO', '', NULL, NULL),
(20, 51, 'OSCAR G. CERDA ESPINOZA', '10001426-2', 'DEPARTAMENTO DE FISCALIZACION', 'ocerda@sii.cl', 2, 'EstimadosrnrnMediante el presente solicito que se revise el interruptor de mi oficina el cual aparentemente tiene alguna fuga de energía que la irradia al marco de la puerta', '', 'ACEPTADO', '', NULL, NULL),
(21, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 1, 'Silla Contribuyente n°3 de mi puesto, se encuentra con soporte inferior roto.rnFavor cambio a la brevedad, a fin de evitar un accidente. ', '', 'ACEPTADO', 'SE REALIZO CAMBIO DE SILLA', NULL, NULL),
(22, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Necesitamos visitar la bodega de Heras para traer expediente de herencias, en lo posible en la tarde', '', 'ACEPTADO', '', NULL, NULL),
(23, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 1, 'Revisión de equipo telefónico, puesto Hilda Sobarzo, quien indica que no recibe llamadas, ahora ya no se puede llamar.', '', 'ACEPTADO', 'Esta solicitud corresponde a personal de informática.', NULL, NULL),
(24, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 1, '2 sillas secretaría Iva Renta malas, estrellas rotas están rompiendo el piso', '', 'ACEPTADO', 'Se procede a cambio de una silla, la otra no esta siendo utilizada.', NULL, NULL),
(26, 47, 'LUIS FREDDY CARRASCO MENDOZA', '11912755-6', 'DEPARTAMENTO DE FISCALIZACION', 'LCARRASC@SII.CL', 1, 'Cajonera asignada a funcionaria Ignacia Lamig C. se encuentra trabada, por lo que no es posible abrirla.', '', 'ACEPTADO', '', NULL, NULL),
(29, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'El bombín hidráulico de mi silla de trabajo, esta malo, se baja sin mediar alguna acción. ', '', 'ACEPTADO', 'SE CAMBIA BOMBIN', NULL, NULL),
(30, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 1, 'Silla funcionario, en mal estado, se reitera que el bombín hidráulico de mi silla de trabajo, esta malo, se baja sin mediar alguna acción.rnEsto es molesto e incomodo.', '', 'ACEPTADO', '', NULL, NULL),
(35, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 1, '2 sillas secretaría Iva Renta malas, estrellas rotas están rompiendo el piso, no se repararon en requerimiento anterior', '', 'ACEPTADO', '', NULL, NULL),
(44, 42, 'XIMENA ELIZABETH BELTRAN POBLETE', '12980640-0', 'DEPARTAMENTO DE FISCALIZACION', 'xbeltran@sii.cl', 3, 'Grupo N° 5 Fiscalización remite información de antecedentes de colegas retirados, y cambiados del grupo de contribuyentes que NO DEVOLVIERON.PARA LIBERAR ESPACIO. ', '', 'ACEPTADO', '', NULL, NULL),
(48, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 3, 'Solicita visita a bodega a la brevedad posible para busqueda de documentación de grupo ', '', 'ACEPTADO', 'gestionado 28/02/19', NULL, NULL),
(49, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 2, 'Solicita revisa silla de Marcos Fonseca dado que presetan problemas, se encuentra suelta', '', 'ACEPTADO', 'gestionado Gerardo Perez', NULL, NULL),
(50, 95, 'CAROLINA XIMENA POBLETE JARA', '12973491-4', 'DEPARTAMENTO DE FISCALIZACION', 'cpoblete@sii.cl', 3, 'baño segundo piso damas, el dispensador de confor baño de al medio esta con tornillos sobresalientes lo que me produjo una herida. esta peligroso.', '', 'ACEPTADO', 'gestionado Gerardo Perez', NULL, NULL),
(51, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 3, 'VISITA BODEGA HERAS RETIRO DE DOCUMENTOS ASISTENCIA', '', 'ACEPTADO', 'GESTIONADO GERARDO PEREZ', NULL, NULL),
(52, 16, 'PABLO ALEJANDRO MORALES SEPULVEDA', '14207775-2', 'DEPARTAMENTO DE ADMINISTRACION', 'alejandro.morales@sii.cl', 3, 'INSTALAR DISPENSADOR DE NUMERO EN ENTRADA DE GRUPO CTT', '', 'ACEPTADO', 'GESTIONADO MARIO BURGOS', NULL, NULL),
(53, 42, 'XIMENA ELIZABETH BELTRAN POBLETE', '12980640-0', 'DEPARTAMENTO DE FISCALIZACION', 'xbeltran@sii.cl', 1, 'solicito llave para mueble aéreo de mi puesto de trabajo. Mueble se encontraría sin poder tener resguardo de antecedentes. Se realizó inspección previa por don Gerardo Perez.', '', 'ACEPTADO', 'SE ENTREGO 1 LLAVE A LA FUNCIONARIA. LO REALIZO GERARDO PEREZ', NULL, NULL),
(55, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 2, 'Informa parpadeo y ruido en tubo fluorescente, sobre mi escritorio.', '', 'ACEPTADO', 'GESTIONADO GUILLERMO VASQUEZ', NULL, NULL),
(61, 18, 'CALUDIA CAROLINA ONATE KOSELLY', '14062343-1', 'DEPARTAMENTO DE ADMINISTRACION', 'claudia.onate@sii.cl', 3, 'guardar regalos de bienestar, 164 toallas', '', 'ACEPTADO', 'SE SOLICITARA MANTENER LLEVAR UN REGISTRO DE CADA EGRESO MENSUAL', NULL, NULL),
(62, 50, 'MARIA JAVIERA CASANUEVA HITSCHFELD', '10753887-9', 'DEPARTAMENTO DE FISCALIZACION', 'MCASANUE@SII.CL', 2, 'faltan tubos de luz fluorescente sobre dos escritorios, 1 en cada uno. ', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'se cambiaron 02 tubos y 1 partidor. Gestionado por Mario Burgos y Gerardo Perez', NULL, NULL),
(64, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'Para retirar expedientes martes 2 de abril en la tarde...  u otro dia a acordar', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'CONDUCTOR MARIO BURGOS', NULL, NULL),
(65, 14, 'ADOLFO MAURICIO MILLAN FAUNDEZ', '12890503-0', 'DEPARTAMENTO DE ADMINISTRACION', 'amillan@sii.cl', 2, 'Informa puertas de ingreso a Grupos 5, 6 y 7 de Fiscalización se encuentran en mal estado.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE GESTIONO ARREGLO CON CONTRATO CON RENE.', NULL, NULL),
(66, 12, 'NELLY MARISELL GALVEZ QUEZADA', '12558133-1', 'DEPARTAMENTO DE ADMINISTRACION', 'NGALVEZ@SII.CL', 1, 'solicita cambio del bombín silla', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GUILLERMO VASQUEZ', NULL, NULL),
(68, 70, 'PAMELA ANDREA HIDALGO NEIRA', '12922079-1', 'DEPARTAMENTO DE FISCALIZACION', 'phidalgo@sii.cl', 2, 'Partidor sobre mi escritorio defectuoso, genera hoy ruido continuo.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(69, 93, 'CARMEN PEÑA VALDES', '13727054-4', 'DEPARTAMENTO DE FISCALIZACION', 'carmeng.pena@sii.cl', 3, 'mantención en silla de funcionario, la cual no giran correctamente las ruedas y se balancea sobre su eje.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'ENTREGADA CON MEMO N° 26', NULL, NULL),
(70, 76, 'PAOLA ADRIANA LEAL MENDOZA', '14403735-9', 'DEPARTAMENTO DE FISCALIZACION', 'paola.lealm@sii.cl', 2, 'Alumbrado en mal estado.rnSe requiere la instalación de otro tubo en cada lámpara (escritorios Margaret y Paola) y que se revise la lámpara que le da luz al escritorio de Catalina, ya que no enciende.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GERARDO PEREZ', NULL, NULL),
(71, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 3, 'SE REQUIERE COMPRA DE :rn20 BALACrn100 PARTIDORESrn01 LAVAPLATO CON PEDESTAL', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(78, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere, revisar ducto de  alcantarillado y fijación de taza del baño ubicada  bajo escala, área sala de maquinas. Ya que , salen malos olores, en forma permanente, aunque no se use el sanitario.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'EL AÑO PASADO DON MARIO BURGOS REALIZO LA FIJACIÓN DE LA TAZA, SE HABLA CON EL JEFE PARA LA VENTILACIÓN Y USO DEL BAÑO PARA EVITAR OLORES.', NULL, NULL),
(79, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Baño primer piso lado hombres, se encuentra, con  WC , filtración de agua, seria un  flexible, en mal estado. El agua se encuentra cortada y baño sin poder usar, desde hace varios días', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'REALIZADO POR GUILLERMO VASQUEZ', NULL, NULL),
(80, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'A la brevedad se requiere, visitar bodega de Heras, para búsqueda de expediente solicitados , por funcionarios y contribuyentes', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE FUE EL MIERCOLES 08 MAYO', NULL, NULL),
(83, 51, 'OSCAR G. CERDA ESPINOZA', '10001426-2', 'DEPARTAMENTO DE FISCALIZACION', 'ocerda@sii.cl', 3, 'solicita rotar computadores entre funcionarios modulo del 10 al 13 ( Yasna Riffo - John Soto), ya que ellos transitoriamente cambiaran puestos de atención de publico', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'POR LUIS VARGAS', NULL, NULL),
(84, 104, 'CESAR LEONARDO SANHUEZA BELMAR', '11899872-3', 'DEPARTAMENTO DE FISCALIZACION', 'CSANHUEZ@SII.CL', 2, 'Estimad@s, junto con saludarlos, quisiera comentarles que la 1era y 3era taza del baño de varones del segundo piso, esta con problemas de corte de agua, ya sea porque no corta el paso de agua o no cierra bien el tapón.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GUILLERMO VASQUEZ', NULL, NULL),
(90, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'Maquina timbradora nro 0135434 Jandellii, antigua  requiere mantención del sistema, esta trabada en su mecanismo de prensa.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Mantención realizada por Ariel Galvez15 de junio 2019', NULL, NULL),
(92, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 3, 'Requerimos ir a bodega hoy 15 mayo 2019, para buscar expediente. Auxiliar asignado Victor Bello', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GERARDO PEREZ', NULL, NULL),
(101, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'rodrigo.onate@sii.cl', 1, 'Solicita reparación o cambio de silla puesto que volvió a fallar pistón y estrella y a la vez tiene apolla brazo quebrado ', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Entrega con memo 34', NULL, NULL),
(102, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Baño varones primer piso con urinario tapado', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(112, 18, 'CALUDIA CAROLINA ONATE KOSELLY', '14062343-1', 'DEPARTAMENTO DE ADMINISTRACION', 'claudia.onate@sii.cl', 3, 'apoyo acto ecuménico rnse solicita podiumrnamplificación y orden de sillas', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(114, 47, 'LUIS FREDDY CARRASCO MENDOZA', '11912755-6', 'DEPARTAMENTO DE FISCALIZACION', 'LCARRASC@SII.CL', 1, 'Muebles asignados a la funcionaria Sandra Torres S. registrados en el inventario bajo los números 5011617 y 5011618 presentan problemas en las chapas de la llaves.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(116, 18, 'CALUDIA CAROLINA ONATE KOSELLY', '14062343-1', 'DEPARTAMENTO DE ADMINISTRACION', 'claudia.onate@sii.cl', 3, 'solicitud de apoyo auxiliares 08 y 11 de julio', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(122, 60, 'MARIBEL FREDES CHAVEZ', '12925775-K', 'DEPARTAMENTO DE FISCALIZACION', 'mfredes@sii.cl', 3, 'Baños de mujeres del segundo piso, se encuentran sin luz desde el viernes 12/07/2019 aprox', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'TRABAJO SE REALIZARA FIN DE SEMANA POR CORTE DE LUZ EN EL SEGUNDO PISO', NULL, NULL),
(123, 39, 'ANGELICA MARIA AVILA SALGADO', '12792116-4', 'DEPARTAMENTO DE FISCALIZACION', 'aavila@sii.cl', 2, 'Solicita reparación persiana costado Anette Miranda, y reemplazo tuvo fluorescente misma colega. A la brevedad posible. Muchas Gracias', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'REPARACIÓN DE PERSIANA Y REEMPLAZO TUVO FLUORESCENTE ARREGLADOS.', NULL, NULL),
(132, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Se requiere volver a revisar instalación de chapa de puerta, baño de mujeres, primer piso de Asistencia, la cual  no esta operando correctamente.Abre y cierra mal.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GUILLERMO VASQUEZ Y MARIO BURGOS', NULL, NULL),
(135, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', 3, 'Solicito, retirar un enchufe de teléfono que esta adherido a la corriente, está ubicado a mi espalda, no se de quien es, y no lo puedo retirar. Supongo que hay que desarmarlo.rnCreo que es peligroso.rnMuchas Gracias.rnDMM', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GUILLERMO VASQUEZ', NULL, NULL),
(136, 89, 'PATRICIO IVAN MUÑOZ VALLEJOS', '10109191-0', 'DEPARTAMENTO DE FISCALIZACION', 'pmunoz@sii.cl', 1, 'Reparación silla.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO GERARDO PEREZ', NULL, NULL),
(137, 56, 'SANDRA ESTER ESPINOZA HENRIQUEZ', '10560556-0', 'DEPARTAMENTO DE FISCALIZACION', 'seespino@sii.cl', 1, 'silla mala, no se mantiene a la altura adecuada', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GUILLERMO VASQUEZ', NULL, NULL),
(138, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 1, 'CAMBIO DE DESAGUE BAÑO DE PUBLICO, SEGUNDO PISO', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE ARREGLO EL DIA SÁBADO 24 POR GUILLERMO VASQUEZ', NULL, NULL),
(139, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'INSTALACION DE EXTRACTOR DE AIRE BAÑO MUJERES SEGUNDO PISO.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONAO POR GUILLERMO VASQUEZ EL SABADO 24 DE AGOSTO', NULL, NULL),
(141, 77, 'VERONICA ENRIQUETA LIZAMA TORRES', '13386809-7', 'DEPARTAMENTO DE FISCALIZACION', 'vlizama@sii.cl', 2, 'Favor revisar a la brevedad, luminaria en acceso a G2 y G3, que está peligrosa, dado que no está totalmente ensamblado en el cielo falso.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GUILLERMO VASQUEZ FUE A REVISAR Y HABLO DIRECTAMENTE CON VERONICA LIZAMA QUIEN HIZO LA SOLICITUD Y LE INDICO QUE SOLO TIENE UNA MININA APERTURA PERO QUE ESTA BIEN SUJETA Y QUE NO TIENE NINGUN PELIGRO, QUE NO SE PUEDE CERRAR MAS. FUNCIONARIA QUEDO CONFORME', NULL, NULL),
(146, 83, 'JUAN ENRIQUE MARTINEZ FERNANDEZ', '12553273-K', 'DEPARTAMENTO DE FISCALIZACION', 'JEMARTIN@SII.CL', 3, 'Solicito apoyo de funcionario auxiliar a efectos de cargar y descargar  cajas de documentación de caso que se encuentra en revisión por RAV.rnrnEl apoyo se solicita para el dia 4 de septiembre de 2019 disponibilidad toda la jornada.rn', '', 'RECHAZADO', 'La disponibilidad de auxiliar se tiene que canalizar con cada uno de los departamentos que corresponda.', NULL, NULL),
(147, 89, 'PATRICIO IVAN MUÑOZ VALLEJOS', '10109191-0', 'DEPARTAMENTO DE FISCALIZACION', 'pmunoz@sii.cl', 1, 'Reparación de una silla que está peligrosa con riesgo de corte para usuarios.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'SE REALIZO CAMBIO DE SILLA POR GUILLERMO VASQUEZ', NULL, NULL),
(149, 70, 'PAMELA ANDREA HIDALGO NEIRA', '12922079-1', 'DEPARTAMENTO DE FISCALIZACION', 'phidalgo@sii.cl', 1, 'Se solicita cambiar la ubicación de la bandeja de teclado, gracias.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Se fue a revisar con don Guillermo Vásquez y Luis Vargas y no se puede realizar el cambio. Situación que entendio la funcionaria.', NULL, NULL),
(152, 85, 'ALVARO RICARDO MELLA SAN JUAN', '13956693-9', 'DEPARTAMENTO DE FISCALIZACION', 'alvaro.mella@sii.cl', 3, 'Solicita 3 mesas plegables para el día 27/09/2019, a las 13:00 hrs, para actividad grupal grupos 2 y 3, Fiscalización, a petición de los funcionarios.', 'CAROLA OPAZO VENEGAS', 'ACEPTADO', '', NULL, NULL),
(153, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'Cambio de sifon para baño varones 1er piso.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'gestionado por Mario Burgos y Guillermo Vásquez, el día sábado 28 de septiembre', NULL, NULL),
(154, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'Instalar candado para resguardar computador 1er piso, de auxiliares', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'gestionado el día sábado por Guillermo Vásquez y Mario Burgos', NULL, NULL),
(155, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 2, 'Se solicita cambiar tubos fluorescentes de renta', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'El día sábado se cambiaron 05 tubos fluorescentes en Renta', NULL, NULL),
(158, 39, 'ANGELICA MARIA AVILA SALGADO', '12792116-4', 'DEPARTAMENTO DE FISCALIZACION', 'aavila@sii.cl', 3, 'Solicito la reparación de foco fluorescente ubicado entre los puestos de trabajo de Anette Miranda y Patricio Veloso, está parpadeante y molesta a los colegas que tienen sus puestos de trabajo cercano.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'Se saco el tubo fluorescentes, no se reemplazo ya que no es necesario luz en el pasillo. Gestionado por Gerardo Pérez', NULL, NULL),
(159, 71, 'WILMA TERESA HUNTER ITURRA', '10237178-K', 'DEPARTAMENTO DE FISCALIZACION', 'whunter@sii.cl', 2, 'arreglo puerta salida emergencia, segundo piso depto. fiscalización, para lado O\"higgins 717, no cierra como corresponde, queda abierta ', '', 'EN REVISION', 'PENDIENTE PRESUPUESTO DE CONTRATISTA RENE. POR ALEJANDRA MUÑOZ', NULL, NULL),
(161, 23, 'LORETO DEL PILAR PILQUIANTE TAPIA', '12699730-3', 'DEPARTAMENTO DE ADMINISTRACION', 'lpilquiante.externo@sii.cl', 2, 'Reparación  WC, en baño de primer piso,  esta generando filtración de  agua, podría ser el sello, que lo conecta al piso. ', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO EL 14/12/19 POR GUILLERMO VASQUEZ', NULL, NULL),
(165, 79, 'ANITA LUENGO MALDONADO', '10765439-9', 'DEPARTAMENTO DE FISCALIZACION', 'ALUENGO@SII.CL', 3, 'Solicito puedan ver sistema de tubo fluorescente, que esta destellando desde hace un rato', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO POR GERARDO PEREZ', NULL, NULL),
(168, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 3, '10 partidoresrn10 tubos fluorescentesrn05 ballast electrico', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', '', NULL, NULL),
(173, 66, 'JENY LISSETTE GONZALEZ CASTRO', '13449327-5', 'DEPARTAMENTO DE FISCALIZACION', 'jeny.gonzalez@sii.cl', 1, 'Debido a que la silla N°3010080225 (137155) se encuentra en mal estado y no fue posible arreglarla, favor solicito reemplazar por una nueva.rnLa silla tiene quebrado el soporte lo que significa que no puede regular su altura y se encuentra a desnivel, por lo que no permite trabajar adecuadamente.  La silla actualmente está ubicada en el escritorio de Mauricio Muñoz de la Unidad de Lebu.', '', 'RECHAZADO', 'EN ESPERA DE COMPRA POR PARTE DE SAMUEL VIZCARRArnNO HAY COMPRAS DE SILLAS PARA AÑO 2020rn', NULL, NULL),
(177, 76, 'PATRICIO IVAN MUÑOZ VALLEJOS', '14403735-9', 'DEPARTAMENTO DE FISCALIZACION', 'paola.lealm@sii.cl', 2, 'Se solicita reparación de puerta de salida de emergencia segundo piso (salida 717).', '', 'EN REVISION', 'PENDIENTE PRESUPUESTO CONTRATISTA RENE. POR ALEJANDRA MUÑOZ', NULL, NULL),
(178, 13, 'DAMARIS VIRGINIA MEDINA MORAGA', '12925740-7', 'DEPARTAMENTO DE ADMINISTRACION', 'dmedina@sii.cl', 3, 'Revisión del interruptor luz, oficina coordinadores.', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ACEPTADO', 'GESTIONADO EMPRESA CONSTRUCTORA LICITACION', NULL, NULL),
(185, 64, 'DIEGO GARCIA SANDOVAL', '11606090-6', 'DEPARTAMENTO DE FISCALIZACION', 'DGARCIA@SII.CL', 2, 'Se solicita reparar la luminaria del sector gabinete depto. fiscalización. Toda vez, que con la falta de luz natural por las ventanas, se hace necesario, para la salud de los funcionarios, mejorar los 5 tubos fluorescentes con que cuenta el sector.', 'DAMARIS VIRGINIA MEDINA MORAGA', 'ACEPTADO', 'Se cambiaron 3 tubos fluorescentes,  2 equipo estan malos, quedará pendiente de cambio según indicaciones Jefatura.', NULL, NULL),
(191, 85, 'ALVARO RICARDO MELLA SAN JUAN', '13956693-9', 'DEPARTAMENTO DE FISCALIZACION', 'alvaro.mella@sii.cl', 1, 'Se solicita 2 mesas plegables para reunión que se realizara en Grupos 2 y 3 de Fiscalización entre las 13:15 hrs hasta las 15:15 hrs. del día viernes 31/01/2020', '', '', '', NULL, NULL);

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

--
-- Volcado de datos para la tabla `rel_fun_rep_veh`
--

INSERT INTO `rel_fun_rep_veh` (`ID_SOL_REP_VEH`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `PATENTE_VEHICULO`, `ID_TIPO_SERVICIO`, `DETALLE_REPARACION_REP_VEH`, `FECHA_INICIO_REP_VEH`, `FECHA_TERMINO_REP_VEH`, `ESTADO_SOL_REP_VEH`, `MODIFICADO_POR_REP_VEH`, `OBSERV_REP_VEH`, `created_at`, `updated_at`) VALUES
(24, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJSF-27', 1, 'Vehiculo no enciende motor, al parecer tiene problemas de alternador y corte eléctrico, según informe de Unidad.rnSe solicita grua para traslado al taller.', NULL, NULL, 'EN REVISION', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'ok', '2018-10-09 06:00:00', '2023-07-26 03:01:50'),
(25, 185, 'CAROLINA EUGENIA CASTRO NIZZA', '12047573-8', 'UNIDAD DE LOS ANGELES', 'cecastro@sii.cl', 'CWYF-10', 2, 'Compra de 2 neumáticos para el Elantra asignado a Unidad Los Angeles de acuerdo a correo a Adolfo del 20/06/2019. Incluir rotación de neumáticos y alineación.', '2019-07-29 00:00:00', '2019-07-29 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'SE COMPRARON LOS NEUMATICOS, FALTAN INSTALARLOS', '2019-06-20 08:00:00', '2019-07-29 08:00:00'),
(26, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GVDY-20', 2, 'Se solicita una cotización por arreglo del pink up de la camioneta de avaluaciones para el lunes 08 de octubre, a las 09:00 hrs.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2018-10-04 06:00:00', '2018-11-09 06:00:00'),
(29, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'CWYF-26', 1, 'SOLICITA HORA INGRESO A TALLER POR MANTENCION 260.000 KMrnPARA EL LUNES 05 DE NOVIEMBRE', '2018-11-06 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2018-10-29 06:00:00', '2018-11-09 06:00:00'),
(30, 139, 'HUGO EDUARDO BARRA LEMUS', '12525636-8', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'hugo.barra@sii.cl', 'CWYF-26', 1, 'Udec Sala Asignatura, Cumplimiemto Tributario Basico', '2018-11-05 00:00:00', '0000-00-00 00:00:00', 'RECHAZADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'Petición no correspnde a tipo de requerimiento.', '2018-10-31 06:00:00', '2018-11-05 06:00:00'),
(31, 247, 'PAULINA ANDREA PRADENA GARDRAT', '12918071-4', 'UNIDAD DE TALCAHUANO', 'ppradena@sii.cl', 'CWYD-87', 1, 'Solicita mantención de los 150.000 mas cambio de aceite.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'MANTENCIÓN PREVENTIVA REALIZADA EL DÍA 23-11-2018', '2018-11-13 06:00:00', '2019-03-22 06:00:00'),
(32, 247, 'PAULINA ANDREA PRADENA GARDRAT', '12918071-4', 'UNIDAD DE TALCAHUANO', 'ppradena@sii.cl', 'CWYD-87', 2, '- Cambio de amortiguadores.rn- Revisión de alza vidrio copiloto.rn- Cambio portafiltro.rn- Reposición filtro polen.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'VEHICULO ASISTE A MANTENCIÓN PREVENTIVA LE 23-11-2018.rnLA CUAL NO OBSERVO ACCIONES CORRECTIVAS MENCIONADAS EN REQUERIMIENTO.', '2018-11-13 06:00:00', '2019-03-22 06:00:00'),
(33, 175, 'JUAN ALARCON CONTRERAS', '9685432-3', 'UNIDAD DE LOS ANGELES', 'JALARCON@SII.CL', 'GBTL-10', 1, 'Mantención 90.000 Km.', '2018-12-12 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '03/12 INGRESO A TALLER', '2018-11-28 06:00:00', '2019-03-22 06:00:00'),
(36, 185, 'CAROLINA EUGENIA CASTRO NIZZA', '12047573-8', 'UNIDAD DE LOS ANGELES', 'cecastro@sii.cl', 'CWVP-47', 2, 'Compra de nueva batería vehículo TUCSON de la Unidad de Los Angeles', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2019-02-11 06:00:00', '2019-03-22 06:00:00'),
(37, 247, 'PAULINA ANDREA PRADENA GARDRAT', '12918071-4', 'UNIDAD DE TALCAHUANO', 'ppradena@sii.cl', 'CWYF-10', 2, 'Reporto falla de reparación efectuada con anterioridad respecto a cinturón de seguridad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', 'EN REPARACION EN TALLER', '2019-02-25 06:00:00', '2019-03-22 06:00:00'),
(40, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWVP-47', 1, 'CAMBIO DE ACEITE PARA VEHICULO INDICADO, DIA 19/03/2019', '2019-03-19 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2019-03-18 06:00:00', '2019-03-22 06:00:00'),
(41, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWVP-47', 1, 'CAMBIO DE ACEITE PARA EL DIA 21/03/2019', '2019-03-22 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'DAMARIS VIRGINIA MEDINA MORAGA', '', '2019-03-20 06:00:00', '2019-03-22 06:00:00'),
(42, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'HSHV-15', 1, 'MANTENCION PARA EL DIA LUNES 25/03/2019', '2019-03-27 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'se realizo cambio de 4 neumaticos', '2019-03-21 06:00:00', '2019-03-26 06:00:00'),
(43, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'HSHV-15', 1, 'REVISION DE LOS 100.000 KL.', '2019-03-27 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'cambio de 4 neumaticos', '2019-03-26 06:00:00', '2019-03-26 06:00:00'),
(44, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'KDVD-46', 1, 'PREVENTIVA 40.000 KM', '2019-04-01 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-03-28 06:00:00', '2019-03-28 06:00:00'),
(45, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJSF-27', 2, 'AUTOMOVIL EN PANNE', '2019-03-28 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-03-28 06:00:00', '2019-03-28 06:00:00'),
(47, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GVDY-20', 1, 'MANTENCION 130.000 KM.', '2019-04-05 00:00:00', '0000-00-00 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'CHOFER ALEX GUERRA', '2019-04-04 06:00:00', '2019-04-04 06:00:00'),
(48, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'HSHV-23', 1, 'MANTENCION DE LOS 110.000 KM', '2019-04-17 00:00:00', '2019-04-17 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-04-16 08:00:00', '2019-04-16 08:00:00'),
(49, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWYF-10', 1, 'solicita hora, para mantención de 190000Km.  el día Lunes 29-4-2019, móvil CWYF-10', '2019-04-29 00:00:00', '2019-04-29 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-04-25 08:00:00', '2019-04-25 08:00:00'),
(50, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJGK-74', 2, 'revision de las pastillas', '2019-04-26 00:00:00', '2019-04-26 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-04-25 08:00:00', '2019-04-25 08:00:00'),
(51, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJSF-27', 1, 'MANTENCION PREVENTIVA 180.000 KM', '2019-05-13 00:00:00', '2019-05-13 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-05-13 08:00:00', '2019-05-13 08:00:00'),
(52, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GBTL-10', 1, 'PREVENTIVA 100.000 KM', '2019-05-14 00:00:00', '2019-05-14 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-05-13 08:00:00', '2019-05-13 08:00:00'),
(53, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'FJGK-74', 2, 'revision filtracion de agua', '2019-05-16 00:00:00', '2019-05-16 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', '', '2019-05-16 08:00:00', '2019-05-16 08:00:00'),
(54, 92, 'RODRIGO ALEJANDRO ONATE IRRIBARRA', '14209647-1', 'DEPARTAMENTO DE FISCALIZACION', 'RODRIGO.ONATE@SII.CL', 'KDVD-46', 2, 'Frenos delanteros emiten sonido muy fuerte cono si balatas estuviesen totalmente gastadas y solo estuviese frenando directamente contra el disco de freno, es el mismo problema que tuvo el KDVD-44 ', '2019-07-10 00:00:00', '2019-07-10 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'SE LLEVO A MANTENCION Y SE REVISO NO ENCONTRANDO BUENO LOS FRENOS', '2019-06-07 08:00:00', '2019-07-10 08:00:00'),
(55, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'HSHV-15', 2, 'Solicita cambio de 4 neumáticos de vehículo Tucson patente CWVP- 47, por desgaste uso', '2019-07-29 00:00:00', '2019-07-29 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'SE CIERRA , SE COMPRARON LOS NEUMATICOS, SOLO FALTA INSTALARLOS.', '2019-07-10 08:00:00', '2019-07-29 08:00:00'),
(56, 202, 'MARIA CATALINA PINCHEIRA VALDEBENITO', '8630320-5', 'UNIDAD DE LOS ANGELES', 'MPINCHEI@SII.CL', 'CWYF-10', 2, 'Batería del vehículo se encuentra muerta; no fue posible su carga.', '2019-09-02 00:00:00', '2019-09-02 00:00:00', 'ACEPTADO', 'SAMUEL EDGARDO VIZCARRA ALVEAR', 'SE REALIZO PROCESO DE COMPRA, SE ESPERA QUE PARA EL DÍA 02 DE SEPTIEMBRE A MAS TARDAR LLEGUE LA BATERIA.', '2019-08-12 08:00:00', '2019-08-22 08:00:00'),
(57, 150, 'RODRIGO FONTANILLA ORTEGA', '12699730-2', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'RFONTANI@SII.CL', 'FJGK-74', 2, 'Escala para acceder al furgón, que es utilizado, por los funcionarios y contribuyentes, se encuentra nuevamente trabada. Una solución alternativa seria construir  una escala de madera de dos peldaños o comprar una metálica , pero que no este incorporada bajo el furgón. Ya que al parecer, siempre sufre daños.', '2019-09-07 00:00:00', '2019-09-07 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'MARIO REPARO LA ESCALERA, PERO IGUAL QUEDA APRETADA, EN EL CASO QUE NO SE PUEDA ABRIR SE PINTO UNA BANCA FACILITADA POR ASISTENCIA  Y QUE QUEDARA EN EL FURGON.', '2019-08-20 08:00:00', '2019-09-09 06:00:00'),
(58, 150, 'RODRIGO FONTANILLA ORTEGA', '12699730-2', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'RFONTANI@SII.CL', 'FJGK-74', 2, 'Estimados, maquina timbradora, instalada en el furgón,  presenta guía de cuño, suelta.  Además pisadera del furgón de entrada a contribuyentes se encuentra  trabada, lo cual se constate en terreno en revisión al furgón. Interior del furgón esta con manchas y rayas propias del uso , cuando este es utilizado para trasladar muebles y otros materiales.', '2019-09-22 00:00:00', '2019-09-22 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'GESTIONADO POR ARIEL GALVEZ, SE CAMBIO EL ENGRANAJE', '2019-09-11 06:00:00', '2019-09-23 06:00:00'),
(59, 150, 'RODRIGO FONTANILLA ORTEGA', '12699730-2', 'DEPARTAMENTO DE ASISTENCIA AL CONTRIBUYENTE', 'RFONTANI@SII.CL', 'FJSF-27', 2, 'Cierre centralizado, esta operando en forma errónea, se abre y cierra en forma automática sin  la intervención del conductor. Lo cual genera incertidumbre en la manipulación del sistema y seguridad del vehículo.', '2019-09-25 00:00:00', '2019-09-25 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'REPUESTO SE  SOLICITO A TALLER, SE IMPORTA. UNA VEZ QUE LLEGUE SE INSTALA.', '2019-09-11 06:00:00', '2019-09-25 06:00:00'),
(60, 19, 'CAROLA OPAZO VENEGAS', '14242941-1', 'DEPARTAMENTO DE ADMINISTRACION', 'carola.opazo@sii.cl', 'GVDY-20', 2, 'Se solicita compra bateria para la camioneta de Avaluaciones, Marca Chevrolet, D-Max II, rn20 HR 80 AHrnCCA 565 Arn95D31(JIS)', '2019-12-09 00:00:00', '2019-12-09 00:00:00', 'ACEPTADO', 'CAROLA OPAZO VENEGAS', 'COMPRA GESTIONADA POR SAMUEL VIZCARRA', '2019-10-15 06:00:00', '2019-12-09 06:00:00');

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

--
-- Volcado de datos para la tabla `rel_fun_salas`
--

INSERT INTO `rel_fun_salas` (`ID_SOL_SALA`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `EQUIPO_SALA`, `MOTIVO_SOL_SALA`, `CANT_PERSONAS_SOL_SALAS`, `FECHA_SOL_SALA`, `FECHA_INICIO_ASIG_SALA`, `FECHA_TERM_ASIG_SALA`, `HORA_SOL_SALA`, `HORA_TERM_SOL_SALA`, `SALA_PEDIDA`, `SALA_A_ASIGNAR`, `ESTADO_SOL_SALA`, `MODIFICADO_POR_SOL_SALA`, `OBSERV_SOL_SALA`, `ID_CATEGORIA_SALA`, `ID_TIPO_EQUIPOS`, `created_at`, `updated_at`) VALUES
(1, 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11821718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 'EQUIPO DE VIDEOCONFERENCIAS, DATA, AMPLIFICADOR', 'asdadsdasda', 1, '2023-07-17 a 2023-07-23', '2023-07-01 16:00:00', '2023-07-07 16:00:00', '12:00', '12:00', NULL, 'VIDEO CONFERENCIA', 'ACEPTADO', 'SUSAN PARRA  QUIROZ', 'ENTIENDO', 1, 1, '2023-07-18 02:59:07', '2023-07-18 03:25:09'),
(2, 17, 'ALEJANDRA IVONNE MUNOZ  INZUNZA', '15.614.670-6', 'DEPARTAMENTO DE ADMINISTRACION', 'alejandra.munoz@sii.cl', 'DATA, AMPLIFICADOR', 'adasda', 1, '2023-07-17 a 2023-07-29', '2023-07-18 16:00:00', '2023-07-19 16:00:00', '12:00', '12:00', NULL, 'HALL RENTA', 'ACEPTADO', 'SUSAN PARRA  QUIROZ', 'sadasd', 1, 1, '2023-07-18 03:35:14', '2023-07-18 03:35:54');

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

--
-- Volcado de datos para la tabla `rel_fun_veh`
--

INSERT INTO `rel_fun_veh` (`ID_SOL_VEH`, `PATENTE_VEHICULO`, `ID_USUARIO`, `NOMBRE_SOLICITANTE`, `RUT`, `DEPTO`, `EMAIL`, `MOTIVO_SOL_VEH`, `CONDUCTOR`, `OCUPANTE_1`, `OCUPANTE_2`, `OCUPANTE_3`, `OCUPANTE_4`, `OCUPANTE_5`, `OCUPANTE_6`, `ORIGEN`, `DESTINO`, `N_ORDEN_TRABAJO`, `FIRMA_CONDUCTOR`, `FIRMA_JEFE_ADMINISTRACION`, `FIRMA_ADMINISTRADOR`, `KMS_INICIAL`, `KMS_FINAL`, `KMS_RECORRIDOS`, `HORA_SALIDA`, `HORA_LLEGADA`, `HORAS_TOTALES`, `NIVEL_TANQUE`, `N_BITACORA`, `ABS_BENCINA`, `FECHA_SOL_VEH`, `FECHA_SALIDA`, `FECHA_LLEGADA`, `FECHA_LLEGADA_CONDUCTOR`, `NOMBRE_OCUPANTES`, `ESTADO_SOL_VEH`, `MODIFICADO_POR_SOL_VEH`, `OBSERV_SOL_VEH`, `ID_TIPO_VEH`, `created_at`, `updated_at`) VALUES
(1, 'CWYF-10', 8, 'CRISTIAN ALBERTO GOMEZ  CASTILLO', '11.821.718-7', 'GABINETE DIRECTOR', 'cagomez@sii.cl', 'asdadasd', '7', '7', NULL, NULL, NULL, NULL, NULL, '154', '175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12:00', '12:00', NULL, NULL, NULL, NULL, '2023-07-25 a 2023-07-30', '2023-07-25 16:00:00', '2023-07-28 16:00:00', NULL, 'MARCELO CASTRO BUSTOS', 'POR AUTORIZAR', 'FELIPE MATIAS MONTALVAN ESCOBEDO', 'OKKKK', 1, '2023-07-25 22:34:32', '2023-07-26 03:20:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_mat_mov`
--

CREATE TABLE `rel_mat_mov` (
  `ID_MOVIMIENTO` int(10) UNSIGNED NOT NULL,
  `ID_MATERIAL` bigint(20) UNSIGNED NOT NULL,
  `ID_MODIFICANTE` bigint(20) UNSIGNED NOT NULL,
  `TIPO_MOVIMIENTO` varchar(10) NOT NULL,
  `STOCK_PREVIO` int(11) NOT NULL,
  `STOCK_NUEVO` int(11) NOT NULL,
  `FECHA_PROGRAMADA` timestamp NULL DEFAULT NULL,
  `DETALLE_MOVIMIENTO` text NOT NULL DEFAULT 'SIN DESCRIPCION',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rel_mat_mov`
--

INSERT INTO `rel_mat_mov` (`ID_MOVIMIENTO`, `ID_MATERIAL`, `ID_MODIFICANTE`, `TIPO_MOVIMIENTO`, `STOCK_PREVIO`, `STOCK_NUEVO`, `FECHA_PROGRAMADA`, `DETALLE_MOVIMIENTO`, `created_at`, `updated_at`) VALUES
(1, 26, 8, 'INGRESO', 0, 100, '2023-08-29 20:07:25', 'Si', '2023-08-29 20:07:25', '2023-08-29 20:07:25'),
(2, 1, 8, 'SOLICITUD', 20, 19, NULL, 'AUTORIZADO POR SOLICITUD DE MATERIAL', '2023-10-10 19:39:41', '2023-10-10 19:39:41'),
(3, 2, 8, 'SOLICITUD', 50, 50, NULL, 'AUTORIZADO POR SOLICITUD DE MATERIAL', '2023-10-10 19:39:41', '2023-10-10 19:39:41'),
(4, 5, 8, 'SOLICITUD', 85, 85, NULL, 'AUTORIZADO POR SOLICITUD DE MATERIAL', '2023-10-10 19:39:41', '2023-10-10 19:39:41'),
(5, 26, 8, 'SOLICITUD', 100, 100, NULL, 'AUTORIZADO POR SOLICITUD DE MATERIAL', '2023-10-10 19:39:41', '2023-10-10 19:39:41'),
(6, 7, 8, 'SOLICITUD', 6, 6, NULL, 'AUTORIZADO POR SOLICITUD DE MATERIAL', '2023-10-10 19:39:41', '2023-10-10 19:39:41');

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
(1, 1, '2023-08-08 00:00:00', 1, 9999, 16, 1, NULL, '-'),
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
(110, 110, '2023-08-08 00:00:00', 1, 9999, 1, 6, '', '-'),
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
('897maQKyYOpup9pgLtbjbwI3rOC7mzVWj2ce7TEV', 8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0o2ZlBuY0Q5ckxqVWJkem93YjJGM0FXdXN2TFhIaWxmMTZHRHlFaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mdW5jaW9uYXJpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O30=', 1695999546),
('G7yXwmlEeETdXDNl82FQwmummBY272KsaNOggTpW', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWEzRXRvemdzQ0hvWlRMTWxUUUFnN1FrMTl6NkdvNmdkU2pwNUJ6RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9', 1696966869),
('Gj2OkP5u8uTpFCkquV5jehtBrrAvWbeV0bIhRf8G', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWJ0SkF2cHM5MjE3QnJpbmppUkhhSUZUT1F3Y2dtVFA3YVRXQkhNOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mdW5jaW9uYXJpb3MiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNTt9', 1696617911),
('kaLCRqiyBpd7HWjVuEqz8Q0hQzTeZJ2EXEf9utoo', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFY1bHhIYnRzOThVdzJKVEE3TENEdk1uTWJQYWx1UzRJWUFmUVhiUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly9sb2NhbGhvc3QvU0lBMl9TSUkvcHVibGljL2luZGV4LnBocC9zb2xtYXRlcmlhbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0O30=', 1696974296),
('tZriOUFdCyxMV7gbViV1cvz4HBs8ocm5PNqJhVYi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUhaWW9rU0x1NkF5M2hCc0NIYzJhU25NcVZyWFRmV1VtWnJjTUpvTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1697151451),
('zh5XKsEtweYBZd9FAJ4u32N9V2LYhpKzVyMgwkzC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXNBZ3JkenRONlBEUnhDcXhKc2xobmVnb2liTVdqcmRkRDNFSndIayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvU0lBMl9TSUkvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1696974260);

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
(7, 'MARCELO', 'CASTRO BUSTOS', 'mdcastro@sii.cl', '$2y$10$9bqQ9hIjCN4UyIxCQ5S6eOj9iSqm2NCC8l3vmfgQxnaE65ikuMB5K', 'NULL', 'NULL', NULL, '9298983-6', '1965-11-03', '1995-05-15', '41-3115206', '5206', 100, 8, 99, 4, 2, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(8, 'CRISTIAN ALBERTO', 'GOMEZ CASTILLO', 'cagomez@sii.cl', '$2y$10$8Ft1.XS/6yYfO6xU1TnNS.aGGg0feR6xMpcDRcYO3jbe4DGb0BErG', 'NULL', 'NULL', NULL, '11821718-7', '1971-05-24', '1999-02-01', '41-3115102', '5102', 100, 8, 99, 5, 1, 1, 1, 1, 'ACfe953aY1UJG7CDle3sx7fN2kUynl87ZHEYA8hpmw1U0PM0xPGkDs7iG162', NULL, '2023-07-26 03:19:17'),
(9, 'LILIAN', 'RAMIS SOTOMAYOR', 'lramis@sii.cl', '$2y$10$CT2Z/ehdqiJngSs0VAPvjOVruSRfOSdsa06pyOWf37kAXce2sXv26', 'NULL', 'NULL', NULL, '9072801-6', '1964-04-19', '2000-10-01', '41-3115102', '5102', 100, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(10, 'MARIO ALEJANDRO', 'RUIZ PAREDES', 'mruiz@sii.cl', '$2y$10$7oNvw50wBxytWkeezR67A.rk56s.8T29ZmzpddXsNV3qIPk/uFO4.', 'NULL', 'NULL', NULL, '6046398-0', '1953-05-11', '1979-06-01', '41-3115138', '5138', 100, 8, 99, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(11, 'MARIO CESAR', 'BURGOS VALDEBENITO', 'mario.burgos@sii.cl', '$2y$10$135Qi/rG5csyqXiz7pPnsODmWrc2t9fP4Kaaxw/4Bz1OK2tsPx92y', 'NULL', 'NULL', NULL, '8671538-4', '1958-07-08', '2010-05-24', '41-3115243', '5243', 102, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(12, 'NELLY MARISELL', 'GALVEZ QUEZADA', 'ngalvez@sii.cl', '$2y$10$fF3Ml6xnfymgzAIPinMYnOCiZkM57vk/v1gOUcy3SgpCX79EVdiUO', 'NULL', 'NULL', NULL, '12558133-1', '1974-04-05', '2000-02-01', '41-3115114', '5114', 102, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(13, 'DAMARIS VIRGINIA', 'MEDINA MORAGA', 'dmedina@sii.cl', '$2y$10$ociPjALgD4mfyyjvNW/vs.utC71con74viCrB3EISiKMiNhcDYI4W', 'NULL', 'NULL', NULL, '12925740-7', '1975-08-17', '2000-08-07', '41-3115245', '5245', 102, 8, 99, 4, 5, 99, 1, 2, 'NULL', NULL, '2023-09-29 14:51:28'),
(14, 'ADOLFO MAURICIO', 'MILLAN FAUNDEZ', 'amillan@sii.cl', '$2y$10$2uunF3zDflI.w3Drd6xVf.iSA7DA7EMLkp5DwRca2bR.okxKKXbMm', 'NULL', 'NULL', NULL, '12890503-0', '1975-07-31', '2001-01-31', '41-3115115', '5115', 102, 8, 99, 5, 2, 7, 1, 1, 'FY45AhIJDJn8nKlWarEy8lcIU0Q5QmNlJLl6FezzgA4VmxHZEE8ONMAkaG3b', NULL, '2023-07-26 03:19:17'),
(15, 'FELIPE MATIAS', 'MONTALVAN ESCOBEDO', 'felipe.montalvan@sii.cl', '$2y$10$MnNtJM/I6w/I.5G6LQ4MUufqdwPZZjQSmUbwKCFtC5KmnhjWMPY4O', 'NULL', 'NULL', NULL, '16709848-7', '1987-06-20', '2017-07-03', '41-3115265', '5265', 120, 7, 99, 4, 9, 99, 2, 1, 'JUBAGGLExWUk1htzf0wJHRwHGIDyfsSecifyHa7P10xVRGvojWyZ7za0xpS5', NULL, '2023-10-06 18:36:09'),
(16, 'PABLO ALEJANDRO', 'MORALES SEPULVEDA', 'alejandro.morales@sii.cl', '$2y$10$S/52wj.vuHzwts01ZhYjQunoLiagy0gMRBbycMS/ktkMrmjGSdXi.', 'NULL', 'NULL', NULL, '14207775-2', '1981-08-26', '2010-03-17', '41-3115238', '5238', 102, 8, 99, 3, 10, 99, 1, 1, 'NULL', NULL, '2023-09-29 14:51:59'),
(17, 'ALEJANDRA IVONNE', 'MUNOZ INZUNZA', 'alejandra.munoz@sii.cl', '$2y$10$WLndgHJ4GR4rq/8Nxs2OOO38oT/SFt08zOXTQl//Nh4vusoMqXfrW', 'NULL', 'NULL', NULL, '15614670-6', '1983-11-15', '2015-07-01', '41-3115229', '5229', 102, 8, 99, 2, 13, 99, 1, 2, 'cp4jieH1SwAkDz9SYJZ6R8S83QG04OVKkc8NgZUVZ7tLHfdfhyYQcj43U2WJ', NULL, '2023-07-26 03:19:17'),
(18, 'CLAUDIA CAROLINA', 'ONATE KOSELLY', 'claudia.onate@sii.cl', '$2y$10$aNw3ayLVLr1pGDvprPp9yehwXp9SVeuyj1qIKmu5weRscQT/dJiVK', 'NULL', 'NULL', NULL, '14062343-1', '1981-08-13', '2015-04-29', '41-3115107', '5107', 102, 8, 99, 4, 9, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(19, 'CAROLA', 'OPAZO VENEGAS', 'carola.opazo@sii.cl', '$2y$10$a66Mp.Y/95NjtqRGgfOl2Ogbv6gY3AQ1Ne7i5C/15V1QIyThNPKnm', 'NULL', 'NULL', NULL, '14242941-1', '1974-05-30', '2004-02-01', '41-3115154', '5154', 102, 8, 99, 1, 11, 99, 1, 2, 'bpxUB4XBb7zZXmxjUbNdHcHw9hEi5imDESP4e4SwIkoCVFvZTZ8ZGCFKLOuZ', NULL, '2023-07-14 14:39:29'),
(20, 'JOHANA ELIZABETH', 'ORTIZ MEDINA', 'johana.ortiz@sii.cl', '$2y$10$329oh01ySPpjCo.BAM3Mp.8jNakX4Rk.6Ben2./qfXoich2dITax6', 'NULL', 'NULL', NULL, '15593140-K', '1984-01-06', '2015-07-01', '41-3115112', '5112', 102, 8, 99, 2, 12, 99, 1, 2, 'GHlUymBiJhGYUQMYTZc0ltBm0ZtJQowuKuXlVXioZfDlkw2qPEvyh2L0rx5S', NULL, '2023-08-29 19:47:31'),
(21, 'SUSAN', 'PARRA QUIROZ', 'sparra@sii.cl', '$2y$10$ZCGD/edXSXVmzsS4PC.hB.N0BJ7mMTGb4tQUTxKTgGn3QMb.ZQxWe', 'NULL', 'NULL', NULL, '10273761-K', '1966-03-14', '1994-12-01', '41-3115111', '5111', 102, 8, 99, 7, 9, 99, 1, 2, 'COJopx2h6H8qcbYAGGRA0f1JAfVXCR9KySBtNqZBxiruVLZbPubCkxZQDacN', NULL, '2023-07-26 03:19:17'),
(22, 'GERARDO ANTONIO', 'PEREZ GOMEZ', 'gerardo.perez@sii.cl', '$2y$10$XLW8PZY4TyuAFUdgqKCCMeUmfSNfE6MT0B2QpnVcHrAnFlA.ZOq7e', 'NULL', 'NULL', NULL, '8816522-5', '1959-07-22', '2009-07-22', '41-3115154', '5154', 102, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(23, 'LORETO DEL PILAR', 'PILQUIANTE TAPIA', 'lpilquiante.externo@sii.cl', '$2y$10$OCIQLjpaj4cgyq0/dIuz7eCgWtXFda/r.1eefqq3p.cmisrpQIa1S', 'NULL', 'NULL', NULL, '12699069-3', '1974-03-21', '2023-01-23', '41-3115107', '5107', 102, 8, 99, 4, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(24, 'JOCELYN SOLEDAD', 'QUEZADA DIAZ', 'jocelyn.quezada@sii.cl', '$2y$10$xeXIvAsmLIUvKYozq/SskuQqUWYw2o4zoOG//VWZLClkOU1SgK8Xi', 'NULL', 'NULL', NULL, '16766406-7', '1987-12-24', '2018-01-15', '41-3115269', '5269', 102, 8, 99, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(25, 'HERNAN ENRIQUE', 'RUIZ OJEDA', 'hernan.ruiz@sii.cl', '$2y$10$wz.SSVL5JA369RzFgk8lW./DlBrBDypnbs0j5JX8kGYGqQUj/iB.K', 'NULL', 'NULL', NULL, '10014048-9', '1966-12-23', '2008-03-17', '41-3115110', '5110', 102, 8, 99, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(26, 'FABIOLA', 'VALLADARES SAN MARTIN', 'fvalladares@sii.cl', '$2y$10$Grta1mAjc35xcoeZj5RRweSyFDpKlH8Yz3h79NWn2D6O0CsYLT3JG', 'NULL', 'NULL', NULL, '10717868-6', '1968-08-14', '2000-02-01', '41-3115108', '5108', 102, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(27, 'LUIS ARSENIO', 'VARGAS ABARCA', 'lvargas@sii.cl', '$2y$10$nwZMeyV4w8xhUAMafbbzR.9ET8ycotUwD93Mh6vPDgXxBUArBHjdK', 'NULL', 'NULL', NULL, '9448182-1', '1964-02-02', '1984-09-24', '41-3115109', '5109', 102, 8, 99, 7, 9, 99, 1, 1, 'VTlH9n6Ksu1f1gXgcrXSbBjNUho8cJFtmpjpFXpdyuQMVxcKBZcwzDtenZ7I', NULL, '2023-07-26 03:19:17'),
(28, 'GUILLERMO ANTONIO', 'VASQUEZ MORAGA', 'guillermo.vasquez@sii.cl', '$2y$10$JE2oePE1Wu5sLtAy0eNX1.nbKEq7TGb.km360zDu3FZNBQq3P84AO', 'NULL', 'NULL', NULL, '11984721-4', '1972-02-12', '2016-02-15', '41-3115154', '5154', 102, 8, 99, 6, 15, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(29, 'SAMUEL EDGARDO', 'VIZCARRA ALVEAR', 'samuel.vizcarra@sii.cl', '$2y$10$BXK7K0Q3vjzGEgpdLNCLu.2hXPpc/8q7D1qI0.rgcl5yXy0n/xBcW', 'NULL', 'NULL', NULL, '18067380-6', '1992-02-06', '2015-07-01', '41-3115106', '5106', 102, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(30, 'CLAUDIA POLETTE', 'AGUAYO ALARCON', 'claudia.aguayo@sii.cl', '$2y$10$Q8Qn2QnhvvsxfJ8eRw1NReQEfDPePrvJUUFx0LyJOy8l3AcnDbr/6', 'NULL', 'NULL', NULL, '13313639-8', '1977-11-21', '2003-02-10', '41-3115232', '5232', 104, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(31, 'MONICA ROXANA', 'ALBORNOZ BARRA', 'malbornoz@sii.cl', '$2y$10$ls79wTnZ/yjzgZrqY.hsyOnX4XF1.GTAU3BAdb3pSQyeDgj8.r8C.', 'NULL', 'NULL', NULL, '9776081-0', '1969-01-18', '1997-09-22', '41-3115233', '5233', 104, 8, 3, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(32, 'ROSA ESTER', 'ALDANA FUENTES', 'raldana@sii.cl', '$2y$10$mrr2tUKbNWAdfFEB2CZ8VOeov4rYLpO6EC0glU72A2uAsksMvCiGq', 'NULL', 'NULL', NULL, '9699199-1', '1964-11-18', '1997-06-01', '41-3115156', '5156', 104, 8, 3, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(33, 'CYNTHIA VANESSA', 'ARANEDA BASTIDAS', 'cynthia.araneda@sii.cl', '$2y$10$htB7PIEbwRycpAwJI0enFOTSXk8xUrmEfGCO0W42bMIaijJRQofPi', 'NULL', 'NULL', NULL, '17207777-3', '1989-05-17', '2015-11-19', '41-3115137', '5137', 104, 8, 5, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(34, 'JORGE ARTURO', 'ARANEDA SALINAS', 'jaaraned@sii.cl', '$2y$10$tr7ddt/.1519QDrxbBWvEuD5JWEuTIHxuYeJwuNFgAYaMg1729NGS', 'NULL', 'NULL', NULL, '7633838-8', '1958-07-28', '1992-09-21', '41-3115280', '5280', 104, 8, 14, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(35, 'MARCELO ALEJANDRO', 'ARANEDA STENGER', 'marcelo.araneda@sii.cl', '$2y$10$RqA6hdP6Npyx16yWR1RQD.o/LyVUhFAFjcxHvYV5xXj4PvAtieFbi', 'NULL', 'NULL', NULL, '12796557-9', '1975-11-04', '2017-09-29', '41-3115135', '5135', 104, 8, 2, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(36, 'BERTA ELIZABETH', 'ARIAS NUÑEZ', 'barias@sii.cl', '$2y$10$A5ItIYfpn1G9XbZfGWTjhugveu9bPRGasu.K9AiEySRUQ8OBCOq22', 'NULL', 'NULL', NULL, '12698071-K', '1974-11-30', '1998-03-01', '41-3115177', '5177', 104, 8, 6, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(37, 'GUILLERMO ANDRES', 'ARNTZ SANTA MARIA', 'garntz@sii.cl', '$2y$10$lQ16tsvuonkccaH0PWIY8up7vJXSqZIl/chiykedbXzObk2fYXQ5S', 'NULL', 'NULL', NULL, '13117755-0', '1976-03-05', '2002-01-09', '41-3115187', '5187', 104, 8, 7, 3, 7, 21, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(38, 'PAULINA', 'ARRIAGADA ARANGUIZ', 'paulina.arriagada@sii.cl', '$2y$10$ouPeQ1ZPvQ6r4RXLgMt7VOCRUf0JmLs7MvBXasTRpuVOQxI0zvE8W', 'NULL', 'NULL', NULL, '10049362-4', '1975-06-22', '2005-09-01', '41-3115264', '5264', 104, 8, 14, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(39, 'ANGELICA MARIA', 'AVILA SALGADO', 'aavila@sii.cl', '$2y$10$QAujmsHN.z5cBvVnhRMUPuAuBTpQfi0buHC6wIJ2L8025jAmrhVeC', 'NULL', 'NULL', NULL, '12792116-4', '1975-02-13', '2000-01-01', '41-3115180', '5180', 104, 8, 14, 3, 7, 18, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(40, 'DANIEL ALEJANDRO', 'BARRA CAUCOTA', 'daniel.barra@sii.cl', '$2y$10$WcMQOTpg3f5XM.1WcK02TeZzN4HSfVsrX.NjGfCndcQaR9Wl7LfpK', 'NULL', 'NULL', NULL, '15672027-5', '1984-04-19', '2012-06-14', '41-3115129', '5129', 104, 8, 2, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(41, 'CLAUDIA MARIBEL', 'BELLO ALBARRAN', 'cbello@sii.cl', '$2y$10$K1NO3xBDaTDnuuDcSO/eJux8iKYwllzQKomX2quPXOlaLbOvzjSvm', 'NULL', 'NULL', NULL, '12733529-K', '1975-02-07', '2001-02-12', '41-3115232', '5232', 104, 8, 1, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(42, 'XIMENA ELIZABETH', 'BELTRAN POBLETE', 'xbeltran@sii.cl', '$2y$10$YfjHy8aGAtrLjCBcg7AZt.GSl/5snSRp4zRgZ6Z/OEAUx.dI31XBe', 'NULL', 'NULL', NULL, '12980640-0', '1976-02-10', '1998-09-21', '41-3115186', '5186', 104, 8, 5, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(43, 'MAURICIO REINALDO', 'BREBI SAN MARTIN', 'mauricio.brebi@sii.cl', '$2y$10$brQ6omNcjvoOh9nN2qSFKOt1FGTzn5NajPFMQz8X0CrjjidzN5GRi', 'NULL', 'NULL', NULL, '9276188-6', '1965-08-16', '2003-10-01', '41-3115180', '5180', 104, 8, 14, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(44, 'MOISES ENRIQUE', 'CABRERA ALBORNOZ', 'moises.cabrera@sii.cl', '$2y$10$TFfH/xo3d2s2upqF4BKK9.j0rCtabWZRBjUhwUOyCUPCz.AZY.hCS', 'NULL', 'NULL', NULL, '16347947-8', '1986-08-25', '2011-06-22', '41-3115181', '5181', 104, 8, 5, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(45, 'XIMENA DEL', 'CANTERO FUENTEALBA', 'xcantero@sii.cl', '$2y$10$D/C9IUAa1UBQw0P5pdIjnOBi6GvCnrHal0g.hbpLGqc2sA3BNfwe6', 'NULL', 'NULL', NULL, '10545277-2', '1966-01-19', '1994-02-01', '41-3115144', '5144', 104, 8, 14, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(46, 'RICARDO JAVIER', 'CARO SANTIBANEZ', 'rcaro@sii.cl', '$2y$10$.2uYVFBosC975Cb37oQ10O5xSVqlSOLXE5Mbb6/jPtwwWL3Avigb.', 'NULL', 'NULL', NULL, '8993092-8', '1960-07-25', '1993-08-02', '41-3115151', '5151', 104, 8, 3, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(47, 'LUIS FREDDY', 'CARRASCO MENDOZA', 'lcarrasc@sii.cl', '$2y$10$OGNJSFHpRwDrsZFG.8IfzuooUfm9flJ66Jta2U83jVGQIJNlhjQz.', 'NULL', 'NULL', NULL, '11912755-6', '1972-01-20', '1999-02-01', '41-3115170', '5170', 104, 8, 6, 3, 5, 20, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(48, 'MARGARET', 'CARRASCO MENDOZA', 'mlcarras@sii.cl', '$2y$10$7eHTF.k0AblafQhcSU1ZSe/B0nP2BmwGYRMMMXVIIGT09j/SkP0lO', 'NULL', 'NULL', NULL, '12977573-4', '1976-01-15', '1999-02-01', '41-3115266', '5266', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(49, 'VALESKA DANIELA', 'CARTES ESTAY', 'valeska.cartes@sii.cl', '$2y$10$q74KnDYU8Jaaxk8uphaEhu1GTHaENwcTvPRQfTJXH8EvT3QwgOCSa', 'NULL', 'NULL', NULL, '15615590-K', '1984-02-14', '2011-06-22', '41-3115162', '5162', 104, 8, 4, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(50, 'MARIA JAVIERA', 'CASANUEVA HITSCHFELD', 'mcasanue@sii.cl', '$2y$10$WtXaC2nnqs9yrjO0pZ6atut7xaofeyjhyIziR9z560sSLGkhWAL.S', 'NULL', 'NULL', NULL, '10753887-9', '1971-11-20', '1998-03-01', '41-3115165', '5165', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(51, 'OSCAR G.', 'CERDA ESPINOZA', 'ocerda@sii.cl', '$2y$10$wjlb/X65GFlYQ/gO61aZUuooqCEn7ymbYEf7ptunn.jxL23kVp.ii', 'NULL', 'NULL', NULL, '10001426-2', '1966-05-31', '1995-05-15', '41-3115157', '5157', 104, 8, 1, 3, 4, 22, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(52, 'ELOISA MARIA CECILIA', 'CIFUENTES PEÑA', 'ccifuent@sii.cl', '$2y$10$YohYlbJiGwoQiDj3hgaxluJG523cubAYOAk766FmuSypArRooMHva', 'NULL', 'NULL', NULL, '5807103-K', '1954-04-06', '1976-04-01', '41-3115133', '5133', 104, 8, 6, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(53, 'JOSE MAURICIO', 'CISTERNA DIAZ', 'jose.cisterna@sii.cl', '$2y$10$yFtHmEARsv.4jMZuQKvJ8OkRgC4df4YVnYS8ZSNuV4s2bl95aw.0.', 'NULL', 'NULL', NULL, '12035424-8', '1971-04-21', '2008-02-04', '41-3115113', '5113', 104, 8, 14, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(54, 'RODRIGO ALEJANDRO', 'CONTRERAS RIQUELME', 'rodrigo.contreras@sii.cl', '$2y$10$vVgbKhBka9RBwjg6frjNsOV2cWLcfwV1K10lkNAAO1lJ0ZPboAUO6', 'NULL', 'NULL', NULL, '16514680-8', '1987-05-04', '2016-07-28', '41-3115161', '5161', 104, 8, 5, 3, 10, 19, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(55, 'PAMELA ALEJANDRA', 'CUBILLOS CUBILLOS', 'pcubillos@sii.cl', '$2y$10$kg61bUd0SZ7b.vCAOcoE/OhO.PLmWsJ6VmxPlHLO.Tcy6Z/yFtjHi', 'NULL', 'NULL', NULL, '12785331-2', '1975-07-22', '2001-01-31', '41-3115179', '5179', 104, 8, 5, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(56, 'SANDRA ESTER', 'ESPINOZA HENRIQUEZ', 'seespino@sii.cl', '$2y$10$2wSx891sh183faxE3ht3W.wFcI1KuQY3N0sC.agBjRm.Jo4pEiBzq', 'NULL', 'NULL', NULL, '10560556-0', '1969-10-16', '1998-03-01', '41-3115128', '5128', 104, 8, 1, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(57, 'MARIA PAZ', 'FARIAS ZUNIGA', 'maria.farias@sii.cl', '$2y$10$XygSl4POM.gEuEfnPQn/B.go0.zWmgiot8gf7/3.AAHeNKydtya4O', 'NULL', 'NULL', NULL, '17955413-5', '1991-05-31', '2015-05-18', '41-3115279', '5279', 104, 8, 14, 3, 10, 99, 1, 2, 'o3rwWmxgoJC890LVw2dldSjlJpCZl8M3ISXvssdfDfdVmwSpReBHA27MJwlP', NULL, '2023-07-26 03:19:17'),
(58, 'MARJORIE ISABEL', 'FONSECA ARIAS', 'mfonseca@sii.cl', '$2y$10$1xfj5rK8PSk6pOSzDEqnO.VOGU.6HGz62wD76xsHv6ErWdCCdLhwm', 'NULL', 'NULL', NULL, '10062259-9', '1967-02-20', '1995-03-20', '41-3115130', '5130', 104, 8, 14, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(59, 'MARCOS ANTONIO', 'FONSECA TRONCOSO', 'mafonseca@sii.cl', '$2y$10$OsawATScxeNntkr2zytf/ep5YjeRnJvDrSrgHRscPXnpzjO3I5kY2', 'NULL', 'NULL', NULL, '10724001-2', '1971-03-16', '2002-01-14', '41-3115164', '5164', 104, 8, 4, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(60, 'MARIBEL', 'FREDES CHAVEZ', 'mfredes@sii.cl', '$2y$10$z2ImitKWI36h86ppOmY6HOe1wp39su7XLTw7vbtkCvlEEpBsjEAiG', 'NULL', 'NULL', NULL, '12925775-K', '1975-08-20', '1999-02-01', '41-3115184', '5184', 104, 8, 7, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(61, 'PAMELA ANDREA', 'FUENTES VILLALOBOS', 'pafuentes@sii.cl', '$2y$10$0uCf2LFmuPJ8m3i4AhDwfOZr2SugaRRgiJvBtBIl820GgQwT5WNkW', 'NULL', 'NULL', NULL, '12697746-8', '1974-10-18', '2001-01-31', '41-3115176', '5176', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(62, 'CARLA ANDREA', 'GARCIA CABRERA', 'carla.garcia@sii.cl', '$2y$10$jiyvMdCPzxet/lRfVqff0OP7qis6ScIoH3Xqp9dAnnjj8mVaCCYGG', 'NULL', 'NULL', NULL, '15172976-2', '1982-03-01', '2015-11-19', '41-3115239', '5239', 104, 8, 4, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(63, 'MARIELLA', 'GARCIA LOBOS', 'mariella.garcia@sii.cl', '$2y$10$BzHk5LyYuZenOGqjhtU7curjgujeIxktVPN.mrLdCv2OSddc4b6cO', 'NULL', 'NULL', NULL, '13137563-8', '1977-06-05', '2003-12-01', '41-3115239', '5239', 104, 8, 4, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(64, 'DIEGO', 'GARCIA SANDOVAL', 'dgarcia@sii.cl', '$2y$10$/MDjTheHDA8olu7v2iAWVOWrbUU9nNzbhajUYQdrbt6fij3/7uyjK', 'NULL', 'NULL', NULL, '11606090-6', '1969-08-15', '1994-12-05', '41-3115168', '5168', 104, 8, 4, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(65, 'ELENA VERONICA', 'GATICA MUÑOZ', 'egatica@sii.cl', '$2y$10$.VDTJQwecivyVe6lNowaM.Qd5.HwO6BZE/BDvZ/JebV0NXXMiHahu', 'NULL', 'NULL', NULL, '8363302-6', '1960-01-24', '1992-02-17', '41-3115168', '5168', 104, 8, 4, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(66, 'JENY LISSETTE', 'GONZALEZ CASTRO', 'jeny.gonzalez@sii.cl', '$2y$10$iuZwrTm8FZN2Q4jZCr8ckusuaV6EKgIO1aUtYylOSaqsdwbP.mXZG', 'NULL', 'NULL', NULL, '13449327-5', '1978-10-15', '2008-11-01', '41-3115143', '5143', 104, 8, 6, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(67, 'YESSENIA CAROLINA', 'HENRIQUEZ UTRERAS', 'yessenia.henriquez@sii.cl', '$2y$10$Ly6h18bCjmJys4T/qGU.suyADEZJHDkOBfPGL/G5Ip4MOkR48HVrm', 'NULL', 'NULL', NULL, '18069634-2', '1992-09-07', '2016-07-28', '41-3115136', '5136', 104, 8, 3, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(68, 'DOMENICA DEL CARMEN', 'HERNANDEZ ARANEDA', 'domenica.hernandez@sii.cl', '$2y$10$KdVVnoGxycLNZnmWsckGJe2kiXxm6p2ciCDEAKjPa2WNsDeQy5NzS', 'NULL', 'NULL', NULL, '15194843-K', '1983-08-07', '2010-05-10', '41-3115242', '5242', 104, 8, 1, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(69, 'HERNAN SEGUNDO', 'HERRERA SANZANA', 'hherrera@sii.cl', '$2y$10$snjLSwYN6cgzFqgXDw1C4eIXjL/WUiZkFOgDMBKL8SUPnj2/DR/TO', 'NULL', 'NULL', NULL, '7632505-7', '1960-12-14', '1992-02-17', '41-3115148', '5148', 104, 8, 7, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(70, 'PAMELA ANDREA', 'HIDALGO NEIRA', 'phidalgo@sii.cl', '$2y$10$6TtrpZ8fOhnuf3Y4nBWr9OdLCCJlfVLYDavbm/0Tets5ANlqLctyG', 'NULL', 'NULL', NULL, '12922079-1', '1975-09-01', '1998-09-21', '41-3115183', '5183', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(71, 'WILMA TERESA', 'HUNTER ITURRA', 'whunter@sii.cl', '$2y$10$hQLRrFOVptdB7zdJWCFJW.GkQwuge55FkloNVYdGpTh3/bUl4Q9qq', 'NULL', 'NULL', NULL, '10237178-K', '1967-01-10', '1995-05-15', '41-3115160', '5160', 104, 8, 5, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(72, 'ENZO LINCOYAN', 'IGAYMAN SEPULVEDA', 'eigayman@sii.cl', '$2y$10$yy0dAcpw72Js8o8HG1pHpOnS4IBtTzc7Q5wTy4CWDjg3ZWCrLkCRG', 'NULL', 'NULL', NULL, '6819662-0', '1952-08-30', '1992-02-17', '41-3115142', '5142', 104, 8, 2, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(73, 'MAURICIO A.', 'ILLANES MARTINEZ', 'millanes@sii.cl', '$2y$10$.1wgpcX27Fp/uZEqkwzew.7J.lv4JxLHrlE6hu0dCgwZDAghjOp/m', 'NULL', 'NULL', NULL, '10589415-5', '1967-08-23', '1995-05-15', '41-3115163', '5163', 104, 8, 3, 3, 6, 24, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(74, 'LUIS', 'JARA AGUAYO', 'lrjara@sii.cl', '$2y$10$O6hgf9uMfCiG0xGp210YFOYXIhDNTLcc1ys0RQrZshMo.i/ls152S', 'NULL', 'NULL', NULL, '9118968-2', '1963-12-01', '1997-09-22', '41-3115152', '5152', 104, 8, 6, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(75, 'MARCIA ELIZABETH', 'LABRIN VERGARA', 'marcia.labrin@sii.cl', '$2y$10$.uh1daeTOhuIkhgZ508kFOwzzHlWkbVBZeRlab7TdJp6h4xQO2yzi', 'NULL', 'NULL', NULL, '13625283-6', '1979-10-29', '2011-06-22', '41-3115162', '5162', 104, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(76, 'PAOLA ADRIANA', 'LEAL MENDOZA', 'paola.lealm@sii.cl', '$2y$10$E94TpiwfvaY4LbcFNxoiQe6/aAEYxrMDoVQTLJ1pCFCcsdUhRRiHG', 'NULL', 'NULL', NULL, '14403735-9', '1971-06-15', '1999-02-01', '41-3115190', '5190', 104, 8, 7, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(77, 'VERONICA ENRIQUETA', 'LIZAMA TORRES', 'vlizama@sii.cl', '$2y$10$XyEll//zObBlMstACM/lt.PKzgiJWh6KxiTqz7Degw8ZapaqhqjXi', 'NULL', 'NULL', NULL, '13386809-7', '1978-06-07', '2002-01-09', '41-3115234', '5234', 104, 8, 2, 3, 7, 23, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(78, 'PAULINA FRANCISCA', 'LOYOLA MARTINEZ', 'paulina.loyola@sii.cl', '$2y$10$bsBw0dFtRJ1aD6zjp89TXevc8IlPKxwNlu5kfe1PRrfSEVcRxO.26', 'NULL', 'NULL', NULL, '12525059-9', '1973-09-07', '1992-11-05', '41-3115173', '5173', 104, 8, 2, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(79, 'ANITA', 'LUENGO MALDONADO', 'aluengo@sii.cl', '$2y$10$2R76b58q1DX47GHajCfza.bwmhvluvZATRoXya6S6NVq2PAGIhiy.', 'NULL', 'NULL', NULL, '10765439-9', '1971-01-02', '1998-09-21', '41-3115166', '5166', 104, 8, 7, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(80, 'DARGLI VALESKA', 'MANRIQUEZ TORRES', 'dargli.manriquez@sii.cl', '$2y$10$gPVRmWcRUcc3EMSQTF2HQ.4xm3tYPCYlu8GSPhBgQvTiX.9apEWaS', 'NULL', 'NULL', NULL, '17641364-6', '1991-01-09', '2015-11-19', '41-3115172', '5172', 104, 8, 6, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(81, 'GLADYS ANGELICA', 'MARDONES SALAMANCA', 'gmardone@sii.cl', '$2y$10$AdL0HhleIG9J785AC1EV2e0TpZoBXFqBkxzE3KUcIt0Zvc8n4lEP6', 'NULL', 'NULL', NULL, '9520117-2', '1962-11-28', '1993-08-01', '41-3115155', '5155', 104, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(82, 'PAULA CRISTINA INES', 'MARISIO SUTTER', 'pmarisio@sii.cl', '$2y$10$WsIlE.XoWWVU9pPJ1k3SRePUd4ZAigqQLNvDxdq7s.3XiN1owdUF2', 'NULL', 'NULL', NULL, '8934418-2', '1976-01-26', '2001-01-31', '41-3115219', '5219', 104, 8, 2, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(83, 'JUAN ENRIQUE', 'MARTINEZ FERNANDEZ', 'jemartin@sii.cl', '$2y$10$NYw9B/5KcYQutcY3v7VLVOJgmsCRUrWpU4zXybyx431d8kWfd5WMW', 'NULL', 'NULL', NULL, '12553273-K', '1974-10-10', '1997-06-01', '41-3115175', '5175', 104, 8, 5, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(84, 'BORIS DAMIAN', 'MEDINA MEDEL', 'boris.medina@sii.cl', '$2y$10$aYb5z23r7DxdlrpyvwhVpuoQd7e1uPpmxom.VH2LwG.hmIci.X9te', 'NULL', 'NULL', NULL, '16916608-0', '1988-08-11', '2016-11-23', '41-3115194', '5194', 104, 8, 3, 1, 14, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(85, 'ALVARO RICARDO', 'MELLA SAN JUAN', 'alvaro.mella@sii.cl', '$2y$10$3dl23ulGYGitUBTvSJmB3eHDBeArU6cbD5wKIzNaXswT8gzdM9hki', 'NULL', 'NULL', NULL, '13956693-9', '1980-07-03', '2007-10-03', '41-3115235', '5235', 104, 8, 6, 3, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(86, 'ANETTE PAMELA', 'MIRANDA VILLEGAS', 'amiranda@sii.cl', '$2y$10$4js0xwsdbXBm8Lky/g04mex0LCzZ6DjrQJsfELdBpD/MxNF0.mZqK', 'NULL', 'NULL', NULL, '7247449-K', '1961-06-12', '1981-11-01', '41-3115263', '5263', 104, 8, 14, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(87, 'MARIA GABRIELA', 'MORALES BETANCOUR', 'mgmorale@sii.cl', '$2y$10$GuSZSDVa.R34wRjrFyT6..qzeP4CW/OmsJLi8y1JybZPG1BJv5r52', 'NULL', 'NULL', NULL, '12301984-9', '1972-07-18', '2000-01-01', '41-3115237', '5237', 104, 8, 3, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(88, 'MANUEL EDGARDO', 'MURILLO JARA', 'mmurillo@sii.cl', '$2y$10$GKwblZp99dCXhcu5YEFxgeu7SwoK.RggnlIIcHNNDsTt5USakqVUW', 'NULL', 'NULL', NULL, '6254063-K', '1955-08-21', '1980-02-25', '41-3115140', '5140', 104, 8, 5, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(89, 'PATRICIO IVAN', 'MUÑOZ VALLEJOS', 'pmunoz@sii.cl', '$2y$10$3tRI9HYKSGCBVTLkiBXpzeYZWalG3jBTYF6ZuklIQBYSv84agBMHG', 'NULL', 'NULL', NULL, '10109191-0', '1966-04-10', '1992-02-17', '41-3115159', '5159', 104, 8, 5, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(90, 'MARIOLY CAROLINA', 'NOVOA LAGOS', 'marioly.novoa@sii.cl', '$2y$10$g4d4UxT5ZpNPUfBpu/aOqO48XDalc3QDx9FtTHB.elNsfgUd//Vz2', 'NULL', 'NULL', NULL, '16774235-1', '1988-04-09', '2015-05-18', '41-3115270', '5270', 104, 8, 2, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(91, 'CARLOS ALBERTO', 'OCARES MATURANA', 'cocares@sii.cl', '$2y$10$ZvnNVyyKDXSzLEHbtP8jReqDguEioztYjvrUCRWFr9pHHlORNewzW', 'NULL', 'NULL', NULL, '8545158-8', '1976-02-07', '2001-02-12', '41-3115150', '5150', 104, 8, 99, 5, 2, 3, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(92, 'RODRIGO ALEJANDRO', 'ONATE IRRIBARRA', 'rodrigo.onate@sii.cl', '$2y$10$jGx.Irbe1I/AjbEdYYh7n.Hd5qXI.8JEgu7R3z9cPZq/PXqLIO/B6', 'NULL', 'NULL', NULL, '14209647-1', '1981-03-30', '2010-05-11', '41-3115158', '5158', 104, 8, 1, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(93, 'CARMEN', 'PEÑA VALDES', 'carmeng.pena@sii.cl', '$2y$10$Uifz2SzMPqGdH87XnZMcVuTQz3PiHRSnp1XeT7Pfi5mQayn.BNnvC', 'NULL', 'NULL', NULL, '13727054-4', '1979-11-26', '2004-10-04', '41-3115240', '5240', 104, 8, 99, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(94, 'NELSON EDUARDO', 'PINTO SEPULVEDA', 'npinto@sii.cl', '$2y$10$j1KFM9kDxk2pl1oaOXu1yOMscEXmCiTaKfyGP/7xWmP2g0tZFSIoG', 'NULL', 'NULL', NULL, '14273510-5', '1974-11-06', '1994-03-01', '41-3115208', '5208', 104, 8, 99, 1, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(95, 'CAROLINA XIMENA', 'POBLETE JARA', 'cpoblete@sii.cl', '$2y$10$IsIpiSxgJFQbonzP87lxxuSpK2G.aG1N6Cxxpa5S4t82jWw3vaoy.', 'NULL', 'NULL', NULL, '12973491-4', '1976-05-26', '1998-09-21', '41-3115185', '5185', 104, 8, 6, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(96, 'MANUEL ALEJANDRO', 'QUEZADA DIAZ', 'manuel.quezada@sii.cl', '$2y$10$qqwcUK/dW4TFrxfxMDPhPejB2EfMfO1Hpw5d199v5pollffcF.7qa', 'NULL', 'NULL', NULL, '16154996-7', '1986-05-20', '2008-11-01', '41-3115227', '5227', 104, 8, 3, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(97, 'JOSE', 'REYES CAMPOS', 'jose.reyes@sii.cl', '$2y$10$yFf.jC8so/5ZcQHhxSaYqON.tO3CNtiIAK2L5t5i60fVWdxmf04hq', 'NULL', 'NULL', NULL, '12917590-7', '1975-04-14', '2005-09-01', '41-3115180', '5180', 104, 8, 14, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(98, 'SORAYA EDITH', 'RIFFO ALARCON', 'sriffo@sii.cl', '$2y$10$ykV82DlWPwU0hxm4bRAfXeAlOJWCmoBxIQbVm6.ws3NEbdYA32zUi', 'NULL', 'NULL', NULL, '12698303-4', '1974-01-01', '1999-02-01', '41-3115178', '5178', 104, 8, 5, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(99, 'YASNA CARINA', 'RIFFO MOLINA', 'yasna.riffo@sii.cl', '$2y$10$BHUk88IqSR.HUF08fU4VduHDLZ7yO77/6kF4rStV6FDbP63YOe0hC', 'NULL', 'NULL', NULL, '17199321-0', '1989-04-15', '2015-05-14', '41-3115242', '5242', 104, 8, 1, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(100, 'MARIBEL LETICIA', 'RIVAS CEA', 'mrivas@sii.cl', '$2y$10$5KV16uKJ/j/I0HPtAbCYz.atHCcdKmhEzZNAsxx64qcsJYO73vsXO', 'NULL', 'NULL', NULL, '12324491-5', '1972-12-21', '2002-01-14', '41-3115258', '5258', 104, 8, 3, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(101, 'CRISTIAN OMAR', 'RODRIGUEZ CASANOVA', 'corodrig@sii.cl', '$2y$10$QA7Tonw1jP7i8qpJ5Hl4S.QJMRlQwX42c34Krw5DQg1DwkbOKkxia', 'NULL', 'NULL', NULL, '11352687-4', '1968-12-21', '2000-01-01', '41-3115167', '5167', 104, 8, 2, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(102, 'HORACIO JAVIER', 'SAEZ RUIZ', 'hsaez@sii.cl', '$2y$10$z18b6owUyiHCy8HilsRX0ehUy.OYJXtQsBm5NM57xCxcc43wbsvvG', 'NULL', 'NULL', NULL, '7243227-4', '1956-12-07', '1992-02-17', '41-3115145', '5145', 104, 8, 3, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(103, 'ESTEBAN JOSE', 'SAN MARTIN ZAPATA', 'esteban.sanmartin@sii.cl', '$2y$10$I519m7eyH/aD7prCKH4J/u5Se1Q/pENNSLhs9HGQuOKtFoWoDPrfy', 'NULL', 'NULL', NULL, '15491947-3', '1983-01-03', '2007-04-01', '41-3115158', '5158', 104, 8, 4, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(104, 'CESAR LEONARDO', 'SANHUEZA BELMAR', 'csanhuez@sii.cl', '$2y$10$SPbzf91Im2REZPcgUY97XO/ZsBMDKR8PgxRezE0dXDS3eY0GWOIJG', 'NULL', 'NULL', NULL, '11899872-3', '1971-05-17', '1998-09-21', '41-3115182', '5182', 104, 8, 99, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(105, 'GERARDO ANDRES', 'SILVA PEDREROS', 'gerardo.silva@sii.cl', '$2y$10$kfmiMnolLfyXaFpCsWyCJu8yi./ESx1ZUcyWBsA6cP8G8Bj24lYvG', 'NULL', 'NULL', NULL, '13796613-1', '1974-09-05', '2012-06-14', '41-3115164', '5164', 104, 8, 4, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(106, 'HILDA DEL PILAR', 'SOBARZO POBLETE', 'hsobarzo@sii.cl', '$2y$10$dNjCVK8sG2C0urTolsLpkuXlH4lgdd/8kuS0TkSbHFJloHW0J7LY2', 'NULL', 'NULL', NULL, '7343326-6', '1954-06-16', '1978-12-18', '41-3115146', '5146', 104, 8, 2, 3, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(107, 'JOHN', 'SOTO GACITUA', 'jesoto@sii.cl', '$2y$10$GBs188IWbwIBD7ei3S2QZez7/LEEJzooSs9HcVQ3x2LCcUAYOGghy', 'NULL', 'NULL', NULL, '10400709-0', '1968-06-23', '1997-09-22', '41-3115128', '5128', 104, 8, 1, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(108, 'CATALINA ALEJANDRA', 'TARA BURGOS', 'catalina.tara@sii.cl', '$2y$10$Sbyea50zVhUQwd2F2Xc41uesK53Br5TGu4wLHvYqi9MygtfpZskJ2', 'NULL', 'NULL', NULL, '17346569-6', '1990-03-21', '2015-05-14', '41-3115241', '5241', 104, 8, 6, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(109, 'MAURICIO MARCELO', 'TOLEDO GUTIERREZ', 'mtoledo@sii.cl', '$2y$10$X9pCSf7iTw3/cftgbHYVmO0xFtGMfupyVMiPqtdC4CHmZnyOj1q3C', 'NULL', 'NULL', NULL, '12208021-8', '1972-09-08', '2002-01-09', '41-3115189', '5189', 104, 8, 4, 3, 8, 25, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(110, 'SANDRA', 'TORRES SILVESTRE', 'sltorres@sii.cl', '$2y$10$27hFsnQjgBXYFTW0yXAW5evBELiMDkbp4VdY536ta6IXSt6PS9b7i', 'NULL', 'NULL', NULL, '12525587-6', '1973-11-23', '1998-03-01', '41-3115174', '5174', 104, 8, 2, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(111, 'XIMENA ANDREA', 'VALENZUELA HERRERA', 'ximena.valenzuela@sii.cl', '$2y$10$58UP/jZy1fCatztRpxdW2uopuYwvliiIoHkHMlu.Abka/1znlskS6', 'NULL', 'NULL', NULL, '16140126-9', '1986-03-22', '2017-09-29', '41-3115134', '5134', 104, 8, 6, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(112, 'MARCELO', 'VARGAS JARA', 'mavargaj@sii.cl', '$2y$10$FWuEekpz06sfKyy0uVWxhu4n0Zokb1d0k4U0nxqy08gQPQICw0bdW', 'NULL', 'NULL', NULL, '10699096-4', '1968-02-23', '1994-12-05', '41-3115203', '5203', 104, 8, 5, 3, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(113, 'BERNARDA DE LOURDES', 'VEGA MELLADO', 'bvega@sii.cl', '$2y$10$oWjL.NQqzpuluQ6p1UdUA.XOeNMUxDFKyv85UvESETc9zmHh.rGhi', 'NULL', 'NULL', NULL, '11677742-8', '1970-08-15', '2001-01-31', '41-3115169', '5169', 104, 8, 6, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(114, 'PATRICIO ALBERTO', 'VELOSO AGUILERA', 'patricio.veloso@sii.cl', '$2y$10$JRUtO5VNGq/v0oNWRgfgh.C9iVgwQT.l2NgNdi3oNjyIRQnqvteSC', 'NULL', 'NULL', NULL, '11984574-2', '1972-01-23', '2008-03-17', '41-3115243', '5243', 104, 8, 14, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(115, 'BASTIAN DANILO', 'BANDA JIRON', 'bastian.banda@sii.cl', '$2y$10$Z4k06bJGJd1CBIwNJAf/8.Wsof15XtjTlxoeS26THGZwLCe.UQ8tW', 'NULL', 'NULL', NULL, '16222910-9', '1985-05-25', '2016-03-07', '41-3115274', '5274', 108, 8, 9, 8, 14, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(116, 'MARIA', 'CONTRERAS GODOY', 'maria.contreras@sii.cl', '$2y$10$UBiTn4qNqrZO6jYGlIuYYehFikcAtknbYg6N3elcoT1moIkgZ7Qgy', 'NULL', 'NULL', NULL, '7994434-3', '1958-11-04', '2003-11-15', '41-3115119', '5119', 108, 8, 8, 8, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(117, 'RICARDO DEL CARMEN', 'CORDOVA ARELLANO', 'rcordova@sii.cl', '$2y$10$B00m/o/Q/ze9ffaAKXyJ1uPE/Udz6aK4TJwfYoKmKm/xWbUeB6iei', 'NULL', 'NULL', NULL, '8485512-K', '1958-08-30', '1987-03-23', '41-3115121', '5121', 108, 8, 9, 8, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(118, 'DAYANA', 'CUERVO BECERRA', 'dcuervo@sii.cl', '$2y$10$zpM5hUpUYuADKAKVnCNX3.nl4Dt2ANBb9ijpOtuabgeW3DWL2LMcC', 'NULL', 'NULL', NULL, '11809336-4', '1971-08-15', '1997-04-03', '41-3115117', '5117', 108, 8, 9, 9, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(119, 'ALEJANDRA BETSABE', 'FAUNDEZ CONTRERAS', 'alejandra.faundez@sii.cl', '$2y$10$VRsx6snZ9zxvEF1n1WWOwOeEYuFLJfVECqEnK/EEHz/W6PfKTAlnO', 'NULL', 'NULL', NULL, '13306211-4', '1977-04-05', '2009-05-01', '41-3115124', '5124', 108, 8, 8, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(120, 'VERONICA ISABEL', 'FIGUEROA MELLA', 'veronica.figueroa@sii.cl', '$2y$10$9XeZjsUaDKxSOFadTFIxXOuybv/lf6lAOFhw4QKB04L238b10lH4W', 'NULL', 'NULL', NULL, '12527004-2', '1973-02-15', '2008-02-04', '41-3115123', '5123', 108, 8, 99, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(121, 'ALEX', 'GUERRA DIAZ', 'alex.guerra@sii.cl', '$2y$10$.OR3FOt1upBnARkPQFthBuGRGJJITjNyok2q3LStaoCIeTTJnAEIW', 'NULL', 'NULL', NULL, '11313778-9', '1967-12-28', '2003-11-18', '41-3115262', '5262', 108, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(122, 'ANDREA PAMELA', 'JEREZ GALVEZ', 'andrea.jerez@sii.cl', '$2y$10$bbsi3mfEmhNjFAPplcz7r.bSvmJgpX2Pw/m.Oif/QlPYD3xFRDRz2', 'NULL', 'NULL', NULL, '13958163-6', '1980-06-10', '2016-12-19', '41-3115147', '5147', 108, 8, 8, 9, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(123, 'KARLA ANDREA', 'LEYTON CASTRO', 'karla.leyton@sii.cl', '$2y$10$qNjltdH0FSFJJK2JsWd.Lue8.UftlC69Qm1g22s7X6rl.pOQ6c3fq', 'NULL', 'NULL', NULL, '13723720-2', '1979-09-07', '2011-01-10', '41-3115260', '5260', 108, 8, 9, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(124, 'GABRIELA ESTEFANIA', 'LUNA CABRERA', 'gabriela.luna@sii.cl', '$2y$10$lUPo1tF2Fh59sBpGi58f8OT29bbKHbedRaBT3E4fLRmAl3u13wrdy', 'NULL', 'NULL', NULL, '18068063-2', '1991-11-14', '2018-01-15', '41-3115126', '5126', 108, 8, 99, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(125, 'JAIME', 'MANRIQUEZ CABRERA', 'jemanriq@sii.cl', '$2y$10$r2pRRL3sZYPY7tRL6MDA6uoEvLaLozuD0Xb7F6UWiFWGplLhnuvxq', 'NULL', 'NULL', NULL, '7911398-0', '1957-07-23', '1993-09-01', '41-3115118', '5118', 108, 8, 8, 9, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(126, 'CLAUDIA ANDREA', 'MENDOZA ALARCON', 'claudia.mendoza@sii.cl', '$2y$10$iTcyVFe6U.CCpivlS5un7ejKZliUpdkgxAkLgG9iMaQ1083B1ByQC', 'NULL', 'NULL', NULL, '13309202-1', '1977-05-31', '2015-08-17', '41-3115261', '5261', 108, 8, 9, 8, 14, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(127, 'CATALINA ELFRIDA', 'MUNOZ MONTERO', 'catalina.munoz@sii.cl', '$2y$10$UwoiLOFXIVm.nELH68iS8eZUZ9FBcWpyDpjyQ61xZX5FpRrAee3EG', 'NULL', 'NULL', NULL, '14333639-5', '1977-09-28', '2009-05-01', '41-3115127', '5127', 108, 8, 9, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(128, 'PAMELA CRISTINA', 'MUNOZ ULLOA', 'pamela.munoz@sii.cl', '$2y$10$AJ7Sv6mEoM8z6rbwp2YNVuoDQ3Qv1mNR2Mq3mCmVaafWOyS.WXpY6', 'NULL', 'NULL', NULL, '12159437-4', '1975-04-22', '2015-07-20', '41-3115126', '5126', 108, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(129, 'DARLING NICOLE', 'NUNEZ MOLINA', 'darling.nunez@sii.cl', '$2y$10$n3quQ.AN3khiYJzxF6d.FOXYGi150yaDRt7/Gcdq0s2MW.o6dVcm2', 'NULL', 'NULL', NULL, '17000358-6', '1987-08-09', '2019-03-18', '41-3115126', '5126', 108, 8, 99, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(130, 'ANTONIO OSVALDO', 'PADILLA DIAZ', 'apadilla@sii.cl', '$2y$10$2G4fSZA0tvwql1XXKF5cAOEs9Zlhije8jglmV4.nCL7/BGsfEC2se', 'NULL', 'NULL', NULL, '14300561-5', '1975-11-07', '2000-08-10', '41-3115147', '5147', 108, 8, 8, 8, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(131, 'RENE EDISON', 'PARRA GONZALEZ', 'reparra@sii.cl', '$2y$10$O4sWKtfu/Mey4FLjpcsBje/gJ8Rhy3UKT1gu6HoN5ZqYK2CafbQiC', 'NULL', 'NULL', NULL, '6788407-8', '1955-09-06', '1992-01-01', '41-3115116', '5116', 108, 8, 9, 9, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(132, 'VERONICA CECILIA', 'SANDOVAL ROMERO', 'vcsandov@sii.cl', '$2y$10$3RUWGuQRWg86IsYoI6oW9u1hJSctiKOw1mZE1qONNe2wxevShhRhK', 'NULL', 'NULL', NULL, '10087047-9', '1965-11-23', '1999-12-01', '41-3115122', '5122', 108, 8, 9, 9, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(133, 'PEDRO ANDRES', 'TOLEDO SAN MARTIN', 'pedro.toledo@sii.cl', '$2y$10$HWdpFOo1J.z2KVCdDdmGfO9uqv2WZ3QIP7MqYAhy6jsFPJ5Femh52', 'NULL', 'NULL', NULL, '15613374-4', '1983-08-04', '2011-11-17', '41-3115230', '5230', 108, 8, 8, 9, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(134, 'LOREN ANDREA CAROLINA', 'UGALDE JAQUE', 'loren.ugalde@sii.cl', '$2y$10$MKeYZpkTRmEEEQ.XtbM.y.JRgfgNwxTILJVasdAployQzZa3Bvoda', 'NULL', 'NULL', NULL, '13507336-9', '1978-07-22', '2010-06-15', '41-3115125', '5125', 108, 8, 99, 5, 2, 5, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(135, 'PAULINA ANDREA', 'VACCARO BUSTOS', 'paulina.vaccaro@sii.cl', '$2y$10$88yHhVw4eKhDPMMJepWB3e6lj.sFxUff.DQnDaB9y8VUeE.JY08Aq', 'NULL', 'NULL', NULL, '9487814-4', '1966-06-11', '2007-06-15', '41-3115231', '5231', 108, 8, 8, 9, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(136, 'LUCIANA ALEJANDRA', 'ZUNIGA MANCILLA', 'luciana.zuniga@sii.cl', '$2y$10$JG/JmQG0DrQUrDS79ufERuk6tR52e188FUYse9SF7ExA58CFGnvn6', 'NULL', 'NULL', NULL, '16140610-4', '1986-05-24', '2021-03-08', '99-99', '99', 108, 8, 9, 9, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(137, 'PAMELA', 'ARAVENA PINO', 'plaraven@sii.cl', '$2y$10$g/ZUCV4jIq35c4qYq0qvl.Hrzvwu0jU7MoNniXi44PLpTaBgqD9ca', 'NULL', 'NULL', NULL, '14436764-2', '1972-09-16', '1999-02-01', '41-3115275', '5275', 106, 8, 99, 5, 2, 4, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(138, 'ADDIS PATRICIA', 'BAEZA VALENZUELA', 'abaeza@sii.cl', '$2y$10$lQrzIdjLHshL8IzRQMGeNuTyTdaf/fU0qL/dIqkn2EHTnYpIuNNaG', 'NULL', 'NULL', NULL, '8148501-1', '1957-02-23', '1977-12-14', '41-3115217', '5217', 106, 8, 99, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-09-29 14:45:20'),
(139, 'HUGO EDUARDO', 'BARRA LEMUS', 'hugo.barra@sii.cl', '$2y$10$4El/Wh1nc01t2hH3yJgad.9rA9I/bL9OlLGWdax8pzAAh9J1XqQQm', 'NULL', 'NULL', NULL, '12525636-8', '1973-06-30', '2007-04-01', '41-3115278', '5278', 106, 8, 11, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(140, 'CAROLINA VICTORIA', 'BARRA VERGARA', 'carolina.barra@sii.cl', '$2y$10$WBmCgIdIy4N..SQyMIEbqu46povvyvDcOf7rppC4VTS1s4s9kAyTq', 'NULL', 'NULL', NULL, '15206874-3', '1982-10-03', '2017-09-29', '41-3115131', '5131', 106, 8, 12, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(141, 'VICTOR MANUEL', 'BELLO SANHUEZA', 'victor.bello@sii.cl', '$2y$10$8YqX5W.FoQDZ.g0izCM9buqpQ42nW9NG20ogEIMaTwEr//a9xXb2e', 'NULL', 'NULL', NULL, '14471263-3', '1980-03-23', '2018-08-20', '41-3115214', '5214', 106, 8, 11, 6, 16, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(142, 'PATRICIO EDGARDO', 'BILBAO ESPARZA', 'pbilbao@sii.cl', '$2y$10$6t73m3yOohX9pORwHgL37OU9BAC9.Rud4YI.ALGzcc9NqxkceCdyO', 'NULL', 'NULL', NULL, '9347922-K', '1964-03-17', '1988-11-15', '41-3115277', '5277', 106, 8, 11, 2, 11, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(143, 'EDITA ANGELICA', 'BUSTOS BASTIAS', 'ebustos@sii.cl', '$2y$10$SQ3p63d2aFSsfQfTfFLNQOKUPpLC7N6l8u0cEnG7X2MOhl.SvJJOW', 'NULL', 'NULL', NULL, '10087210-2', '1965-07-08', '1986-09-01', '41-3115222', '5222', 106, 8, 11, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(144, 'MARIELA HAYDEE', 'BUSTOS BASTIAS', 'mariela.bustos@sii.cl', '$2y$10$ce1FolLaMRYIQnbdMwF8C.pFAT4FMtbbyYT4SEyoQAxBvBNafGma6', 'NULL', 'NULL', NULL, '10094021-3', '1970-03-19', '2015-07-01', '41-3115215', '5215', 106, 8, 12, 1, 14, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(145, 'ARTURO ENRIQUE', 'BUSTOS MARTINEZ', 'arturo.bustos@sii.cl', '$2y$10$8xmGdsAtjTp4gCA5tv8QruzyBnXLFZAx52zMfBljxVvbGt0ktJi56', 'NULL', 'NULL', NULL, '14022844-3', '1981-09-01', '2017-09-29', '41-3115132', '5132', 106, 8, 12, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(146, 'DAVID ESTEBAN', 'CABRERA GOMEZ', 'david.cabrera@sii.cl', '$2y$10$UirVKfWBZfb2vq1I4LSIc.Z0mWktxtIL2WgV.xsnKl0yPDNyEGq7e', 'NULL', 'NULL', NULL, '17207465-0', '1989-04-22', '2016-02-01', '41-3115139', '5139', 106, 8, 10, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(147, 'PATRICIO MARCELO', 'CHAVEZ SAAVEDRA', 'patricio.chavez@sii.cl', '$2y$10$xuFCTqgTuUO6aEb5Z0KZSeHQ6p5OCN7DozrzmecelCCM5DBiID5B6', 'NULL', 'NULL', NULL, '12796681-8', '1971-03-18', '2015-10-01', '41-3115218', '5218', 106, 8, 10, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(148, 'MIRIAM CAROLINA', 'CID GONZALEZ', 'mcid@sii.cl', '$2y$10$Klx4sZKgcIfQRuSadXiwHe3Qcm7YJdOYJ..sC4CUMu5TaJrAkbd6W', 'NULL', 'NULL', NULL, '8609784-2', '1972-05-11', '1997-06-01', '41-3115223', '5223', 106, 8, 99, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(149, 'JORGE LUIS', 'FLORES MUNOZ', 'jorge.flores@sii.cl', '$2y$10$dA2uR0XWIC22lKXFf.hPh.ZLR7xb80J7rfettoYULvfcJcen1sZIy', 'NULL', 'NULL', NULL, '15180291-5', '1981-12-31', '2006-03-01', '41-3115257', '5257', 106, 8, 12, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(150, 'RODRIGO', 'FONTANILLA ORTEGA', 'rfontani@sii.cl', '$2y$10$.ajhg54HH2xaZtUMjCL4FOvJGBGO7V6rUVMOIlJV7FKSlOxYxK1xq', 'NULL', 'NULL', NULL, '12699730-2', '1974-05-27', '2000-01-01', '41-3115224', '5224', 106, 8, 11, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(151, 'JAHAZIEL HERNAN', 'GODOY ROCA', 'jahaziel.godoy@sii.cl', '$2y$10$AYqCmb1VllBFCwUGUwlgIux3gYTIh6T6Kz6sYR.4P47L.G/wm/3Li', 'NULL', 'NULL', NULL, '18418272-6', '1993-10-13', '2018-05-02', '41-3115221', '5221', 106, 8, 10, 2, 15, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(152, 'IGNACIA DANIELLA', 'LAMIG CARRION', 'ignacia.lamig@sii.cl', '$2y$10$ZQAHhlWHxO5JSt2NwHK8H.8euUsDgrz9k.bWWPNJkRc6aKn.KkxTu', 'NULL', 'NULL', NULL, '17616651-7', '1991-08-28', '2016-07-26', '41-3115171', '5171', 106, 8, 12, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(153, 'NATALIA DE LOS ANGELES', 'MENDEZ RAMIREZ', 'natalia.mendez@sii.cl', '$2y$10$P8JDjurhTkc8SieXRbBYFOSwp61mdM41BXngxZcl/faFwhotk7fvq', 'NULL', 'NULL', NULL, '13796046-K', '1980-04-09', '2007-09-26', '41-3115226', '5226', 106, 8, 10, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(154, 'MARCELO', 'MUÑOZ ESCOBAR', 'marcelo.munoz@sii.cl', '$2y$10$gjr10e7u3MzLpM1QUTU6feCBLVLz/TCroPjXvRPpOiswID5Fs7N5S', 'NULL', 'NULL', NULL, '7129275-4', '1959-07-15', '2002-06-01', '41-3115220', '5220', 106, 8, 11, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(155, 'RAFAEL', 'OLGUIN ELGUETA', 'rafael.olguin@sii.cl', '$2y$10$vzXTDpedX6I5Qd4v8XLjf.QM7F/rOIrHM6bYrXAxWZFHyoqMq4gA2', 'NULL', 'NULL', NULL, '12291721-5', '1972-04-26', '2005-03-17', '41-3115215', '5215', 106, 8, 12, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(156, 'LUCILA ESTEPHANIA', 'PEREZ LARA', 'lucila.perez@sii.cl', '$2y$10$UQ6cnmU0aNxO7DIg1TI/dueIwGsR3HtUBP8TAA.NciUcsTgr84/ZK', 'NULL', 'NULL', NULL, '16941924-8', '1988-12-26', '2016-07-28', '41-3115225', '5225', 106, 8, 12, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(157, 'MONICA ALEJANDRA', 'PINTO TORRES', 'mopinto@sii.cl', '$2y$10$O6yMql5LhrF9JkTESLtzWur6QY0W9tdYx0M8wJRkggyGzMu3jv7PK', 'NULL', 'NULL', NULL, '13312173-0', '1977-11-24', '2001-04-24', '41-3115259', '5259', 106, 8, 12, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(158, 'MAURICIO ALEJANDRO', 'RIQUELME MUNOZ', 'mauricio.riquelme@sii.cl', '$2y$10$TSlV8sL.w.7VlvL6i02j8O1j3QD8w1BedhxNtZkQHfi48VPdoveaa', 'NULL', 'NULL', NULL, '13625887-7', '1979-11-25', '2015-03-01', '41-3115214', '5214', 106, 8, 11, 6, 15, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(159, 'FABIOLA ISABEL', 'RUIZ CAAMANO', 'fabiola.ruiz@sii.cl', '$2y$10$bgdttO9Xsk6opFK.CChBkO2N5PE4JaiBasTsqxR2P6CWehfxEtz4i', 'NULL', 'NULL', NULL, '15170897-8', '1982-12-09', '2010-10-05', '41-3115273', '5273', 106, 8, 12, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(160, 'MIRIAM DE LAS NIEVES', 'SANHUEZA PEREIRA', 'msanhueza@sii.cl', '$2y$10$rR7ZqyDrWRRsJHfJ5jYMc.eimtgGnAP8Fcb9Bh4Y9exynP2ytslEe', 'NULL', 'NULL', NULL, '5905670-0', '1951-03-30', '1995-07-01', '41-3115222', '5222', 106, 8, 11, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(161, 'CAMILA FRANCISCA', 'SEPULVEDA VALENZUELA', 'camila.sepulveda@sii.cl', '$2y$10$13TbSw3uGWo7kAVLc7JV4esDohW9tCKhGD7P5di1ME.NzKd90MrYO', 'NULL', 'NULL', NULL, '17221489-4', '1989-04-16', '2015-11-19', '41-3115249', '5249', 106, 8, 12, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(162, 'ENOC ABIATAR', 'SILVA GARRIDO', 'enoc.silva@sii.cl', '$2y$10$4Zfj3jnypn7xzEJ1otSj5u1KLGXRRJwySk1BBufqSwIrdHV6Re82e', 'NULL', 'NULL', NULL, '16404710-5', '1986-08-27', '2016-07-28', '41-3115250', '5250', 106, 8, 12, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(163, 'CESAR', 'SOZA GONZALEZ', 'cesar.soza@sii.cl', '$2y$10$Vf1hYNwH5yhZpCj0aKPAA.qQKHqTmqCoUD5pho5aZTVc4fadyw56u', 'NULL', 'NULL', NULL, '13102644-7', '1976-07-24', '2004-02-01', '41-3115139', '5139', 106, 8, 10, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(164, 'PAOLA', 'TOLEDO JARA', 'paola.toledo@sii.cl', '$2y$10$Z3TyoTCjU3c6qKSjMvbZWO45ozsTDg4V5t3pdYZoTmxKc9AMLILeC', 'NULL', 'NULL', NULL, '10755305-3', '1971-12-15', '2004-02-01', '41-3115220', '5220', 106, 8, 10, 1, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(165, 'HERNAN ALEXIS', 'TORRES LAVADO', 'hernan.torres@sii.cl', '$2y$10$SKbpDZd2rAdHy46jpm8GWOI02jnmFL9nvoxtxPhGw.4HNtesPLtdy', 'NULL', 'NULL', NULL, '9656586-0', '1964-10-16', '2009-12-14', '41-3115214', '5214', 106, 8, 11, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(166, 'JUAN CARLOS', 'TORRES SEPULVEDA', 'juan.torres@sii.cl', '$2y$10$rU/1hJcoI4m/WvohW4c1puwzr8VlZcg0V6QR4Fufa6uqpBrpbucmi', 'NULL', 'NULL', NULL, '10132172-K', '1964-10-06', '2008-08-01', '41-3115214', '5214', 106, 8, 11, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(167, 'ROMINA ISABEL', 'VALENZUELA PINTO', 'romina.valenzuela@sii.cl', '$2y$10$cNmN.ct5rG0u.DLyxSv4G.7Rs/nCUM5E0XUxPngg7ghsXiqCGZYXy', 'NULL', 'NULL', NULL, '10717940-2', '1970-05-21', '2010-09-01', '41-3115214', '5214', 106, 8, 10, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(168, 'MARCELO ALEJANDRO', 'VALENZUELA REBOLLEDO', 'marcelo.valenzuela@sii.cl', '$2y$10$24ZTz0dP6NPDcysANXOmNut0RIc7VjWcO5O2FcPPiPzUXXS61E8w2', 'NULL', 'NULL', NULL, '15627279-5', '1982-07-06', '2014-04-22', '41-3115139', '5139', 106, 8, 10, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(169, 'CARLOS', 'VILLABLANCA CRUCES', 'carlos.villablanca@sii.cl', '$2y$10$nPKKgktYn1MiOpNJbBnoQudAvyoFImof1l.5egjrXTvqvr3bM89JS', 'NULL', 'NULL', NULL, '13955532-5', '1980-05-03', '2004-03-29', '41-3115214', '5214', 106, 8, 11, 2, 11, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(170, 'MARGARITA', 'VILLARROEL FERRADA', 'mrvillar@sii.cl', '$2y$10$.For1dxNG4J.PW4oeQ29oOmOF7MTz0z1a82uauyReQRDBfP3c0w8O', 'NULL', 'NULL', NULL, '6593433-7', '1955-03-09', '1980-02-18', '41-3115216', '5216', 106, 8, 10, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(171, 'ROGER EDUARDO', 'VIVALLO BASCUR', 'roger.vivallo@sii.cl', '$2y$10$M7MdBMZFzgpw4fRtJ7K2n.wsvFxvst7pDIWVaKtOyW/USOEr.zVPS', 'NULL', 'NULL', NULL, '15810884-4', '1984-05-16', '2017-09-29', '41-3115188', '5188', 106, 8, 12, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(172, 'YANET DEL CARMEN', 'YEVENES NAVARRETE', 'yanet.yevenes@sii.cl', '$2y$10$f8NmVrZU.lA7WnIREhhVeecgh56GWGFLT4/HG8Y8CyXTf51m1zV4u', 'NULL', 'NULL', NULL, '12376068-9', '1973-01-22', '2015-07-01', '41-3115214', '5214', 106, 8, 11, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(173, 'CAROLINA ESTER', 'ZAMBRA MUNOZ', 'carolina.zambra@sii.cl', '$2y$10$D.xhs7gLV.cI6kQh8PKBmOQRIwJagtuuqzDWnCFabHpB0hcKiyUpy', 'NULL', 'NULL', NULL, '13956085-K', '1980-07-22', '2018-05-25', '41-3115221', '5221', 106, 8, 10, 2, 15, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(174, 'PABLO', 'AGUILERA CORRAL', 'pablo.aguilera@sii.cl', '$2y$10$ojiNBsFm9tyDa2hZuLTWjesuQYlQxXLKSeA8z4TITK48vNldJbkO2', 'NULL', 'NULL', NULL, '12725659-4', '1975-05-09', '2000-05-22', '43-2458519', '8519', 46, 8, 13, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(175, 'JUAN', 'ALARCON CONTRERAS', 'jalarcon@sii.cl', '$2y$10$GeX2neU8HjoBlbncR7fscenj1KZCIWfSOjc5TWtBr/UPWugp.qPFK', 'NULL', 'NULL', NULL, '9685432-3', '1967-03-13', '1999-02-01', '43-2458531', '8531', 46, 8, 99, 5, 4, 9, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(176, 'MARIA EUGENIA', 'ALMONACID HUAQUIN', 'malmonacid@sii.cl', '$2y$10$oZ1xIG.75wYIePd4R5DLD.LYl/XlGrfXHuljZiwK.teyrP0Oqt1XC', 'NULL', 'NULL', NULL, '7871779-3', '1960-03-25', '1985-12-01', '43-2458505', '8505', 46, 8, 15, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(177, 'EDUARDO', 'ANABALON SEPULVEDA', 'eanabalo@sii.cl', '$2y$10$QDbFzwxP82fFZblsqqAgie8n2e0wJ92Kpct1tiTHdntSBKSbtsLrG', 'NULL', 'NULL', NULL, '11795841-8', '1971-10-27', '1992-04-01', '43-2458532', '8532', 46, 8, 1, 1, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(178, 'ERIKA TATIANA', 'BADILLA COFRE', 'ebadilla@sii.cl', '$2y$10$0p57mt8r.EZDpy4fveGyk.obYY9ByuFPNIt1U4CrFsZ2M3zOe9sLa', 'NULL', 'NULL', NULL, '10804211-7', '1968-02-04', '2000-01-01', '43-2458527', '8527', 46, 8, 1, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(179, 'MIGUEL ANGEL', 'BALLESTEROS BURGOS', 'mballest@sii.cl', '$2y$10$.v7qXBcdjZQ/Pt3y3IvIUO0uxHVSBpOxWgtmJOXi57t/GZx9DSspq', 'NULL', 'NULL', NULL, '10156166-6', '1964-12-13', '1993-10-01', '43-2458514', '8514', 46, 8, 1, 1, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(180, 'PAMELA CRISTINA', 'BUSTAMANTE PAVEZ', 'pbustamante@sii.cl', '$2y$10$4xmbUaNqmQXhyErvg.2GsutCIGli9McdnqvLov3pyV3d8lJuSfWkq', 'NULL', 'NULL', NULL, '12118529-6', '1974-07-08', '2002-01-09', '43-2458524', '8524', 46, 8, 2, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(181, 'VICTORIA', 'CAMPOS GATICA', 'vcampos@sii.cl', '$2y$10$u2SJSe9j6mjaXumXQAoINOyAzp5K4pdhOgroLf.I1WvaQVxsU6itW', 'NULL', 'NULL', NULL, '11777945-9', '1971-11-17', '2001-09-04', '43-2458542', '8542', 46, 8, 2, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(182, 'KAREN SAYME', 'CANDIA MARTINEZ', 'karen.candia@sii.cl', '$2y$10$VNRqp1AudfHO.Wp2c1Y8z.9KW3Pwvd0b9Ggu6WtF8aG0ZFiOM33Ze', 'NULL', 'NULL', NULL, '13843506-7', '1980-04-03', '2011-01-10', '43-2458530', '8530', 46, 8, 1, 2, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(183, 'HERTA DEL CARMEN', 'CARRASCO QUEZADA', 'hcarrasc@sii.cl', '$2y$10$FinJauJWkBwKQwetKomdxe2uNWkY0nh/4ygqO8voWYezEmEED8RL.', 'NULL', 'NULL', NULL, '8074287-8', '1957-10-13', '1990-01-01', '43-2458521', '8521', 46, 8, 2, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(184, 'SANDRA AURORA', 'CARRILLO RIOS', 'scarrill@sii.cl', '$2y$10$kcYKS7RV1v9cHfSyCarzQ.WdBOTf5w1iaNSAsGuafnr5aAWms4D7W', 'NULL', 'NULL', NULL, '12394693-6', '1973-09-16', '1998-09-21', '43-2458543', '8543', 46, 8, 2, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17');
INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(185, 'CAROLINA EUGENIA', 'CASTRO NIZZA', 'cecastro@sii.cl', '$2y$10$alGPwrfQxvsaa6e5P/nEiORHUuQSsqLjImswoQM8PMSEK2dHEXUla', 'NULL', 'NULL', NULL, '12047573-8', '1974-01-22', '2002-01-16', '43-2458516', '8516', 46, 8, 2, 3, 7, 29, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(186, 'ALEJANDRO ESTEBAN', 'ESCOBAR VIAL', 'alejandro.escobar@sii.cl', '$2y$10$3C6TtvfxqnGbRRSU509PGuCc1sh/VvVnZHctpWBJD3QmhQkDvOv2K', 'NULL', 'NULL', NULL, '17590998-2', '1990-02-16', '2018-09-05', '43-2458501', '8501', 46, 8, 13, 2, 15, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(187, 'CLAUDIA PILAR', 'FIGUEROA RODRIGUEZ', 'claudia.figueroar@sii.cl', '$2y$10$5XM67bNop1qacHKTv6YznumzYZ/YNgDXaZyNzyzmamPI8wvUqzCRq', 'NULL', 'NULL', NULL, '15207426-3', '1982-11-11', '2010-10-05', '43-2458558', '8558', 46, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(188, 'RICARDO FABIAN', 'FLORES JOFRE', 'ricardo.flores@sii.cl', '$2y$10$lIutXbpWczeoBFYLchyrZO/v0ZkexjcrVRrSW7jMy7iAaWKd8S6.K', 'NULL', 'NULL', NULL, '12964207-6', '1976-12-19', '2018-01-02', '43-2458507', '8507', 46, 8, 15, 9, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(189, 'CAROLINA ANDREA', 'FLORES SOTO', 'carolina.floress@sii.cl', '$2y$10$oLXwJAqk1SFR3.ksulC5l.kfAbyX6x2/1qJ3ZIgUfMNZhqV/Fghnq', 'NULL', 'NULL', NULL, '14349089-0', '1976-11-09', '2015-07-06', '43-2458541', '8541', 46, 8, 13, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(190, 'ARIEL ENRIQUE', 'GALVEZ QUEZADA', 'ariel.galvez@sii.cl', '$2y$10$sOHXeveQ1iO/fYC42AwgaexY14iezevX6UwL23vt1V8wQ6x..eN9q', 'NULL', 'NULL', NULL, '11962546-7', '1972-07-14', '2015-08-27', '43-2458513', '8513', 46, 8, 13, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(191, 'XIMENA ANDREA', 'GALVEZ REYES', 'xgalvez@sii.cl', '$2y$10$oSFM2B3NWHDoaK44PhfB4.YzYaN5wjI8kdhgphf702CecjE6cNZV2', 'NULL', 'NULL', NULL, '14410207-K', '1975-02-15', '2001-01-31', '43-2458522', '8522', 46, 8, 13, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(192, 'VERONICA ANDREA', 'GONZALEZ CARCAMO', 'vgonzalez@sii.cl', '$2y$10$unvx2F9/kdg9hydfTffrl.r55bSEJHQydopy2WZpiDm1gMiyZvAKi', 'NULL', 'NULL', NULL, '13067318-K', '1976-07-08', '2001-09-04', '43-2458524', '8524', 46, 8, 2, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(193, 'TAMARA FERNANDA', 'GONZALEZ CARDENAS', 'tamara.gonzalez.c@sii.cl', '$2y$10$BIJKvTx44IkCFN7FswQpnOYemyDPpdrhI7WHNy87HUoZEYYLDuJYe', 'NULL', 'NULL', NULL, '19600052-6', '1997-05-21', '2018-01-02', '43-2458541', '8541', 46, 8, 13, 1, 14, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(194, 'ALFREDO ANTONIO', 'GUTIERREZ RAMIREZ', 'agutierrez@sii.cl', '$2y$10$qgkbWt8aOy1n.3IRm3KX9eeb4jmss.g5czrjpwwMk2rBfbBgMMFXC', 'NULL', 'NULL', NULL, '14459360-K', '1974-10-26', '2001-01-31', '43-2458540', '8540', 46, 8, 1, 3, 7, 28, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(195, 'VICTOR OMAR', 'HENRIQUEZ TOLEDO', 'vohenriq@sii.cl', '$2y$10$fq7hp4LhdPve/YU3FhVGFOi4lkOuPv9H9RYRBE.gYqZ4iUE8UpfWW', 'NULL', 'NULL', NULL, '6041439-4', '1951-04-03', '1978-07-04', '43-2458502', '8502', 46, 8, 1, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(196, 'ROSA MARIA DE LOS ANGELES', 'MONDACA GONZALEZ', 'rosa.mondaca@sii.cl', '$2y$10$MXVPfuQitMJaVTgpBhKTf.lRckZcDp/rhB.rIpUFjeVFkcyW5LaaO', 'NULL', 'NULL', NULL, '16319256-K', '1986-01-04', '2017-09-29', '43-2458539', '8539', 46, 8, 2, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(197, 'OSCAR ADOLFO', 'NOVOA PINO', 'oscar.novoa@sii.cl', '$2y$10$To0u0lfbn9WjJ8LH4DbpOuQdKSeFeDi30IaxyrvAM8eyTTzinpG7O', 'NULL', 'NULL', NULL, '15629103-K', '1983-11-30', '2008-11-01', '43-2458512', '8512', 46, 8, 2, 3, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(198, 'SERGIO', 'ORTIZ VALENZUELA', 'sortiz@sii.cl', '$2y$10$ku3apwwgrwU3U9I3VK0Kl.CDN62YFT597zLcKEykGyQNEnca/2cnW', 'NULL', 'NULL', NULL, '12326602-1', '1973-03-19', '1994-10-03', '43-2458519', '8519', 46, 8, 13, 1, 11, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(199, 'HECTOR ALEJANDRO', 'PARDO CANO', 'hector.pardo@sii.cl', '$2y$10$fJsDlAePxWKRxCYiT2hJR.bm2Ob2fV1Ud.SV9amaTCzms7/deYw0C', 'NULL', 'NULL', NULL, '12749041-4', '1975-11-20', '2006-03-01', '43-2458537', '8537', 46, 8, 2, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(200, 'JORGE ANDRES', 'PEREZ OLIVEROS', 'jorge.perez@sii.cl', '$2y$10$.OqEHhZMAAxR/3e4hMWzquu/kkXI9/9nVpDBn8bVizu0uSdcsx3J6', 'NULL', 'NULL', NULL, '16763214-9', '1988-12-17', '2009-12-21', '43-2458503', '8503', 46, 8, 15, 9, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(201, 'BERTA', 'PINCHEIRA VALDEBENITO', 'bpinchei@sii.cl', '$2y$10$uaVFLWZn6JS1ZSxSVfx4VuQ2UnyXh.wh9mT0zr5KYLw1uUXiunnBq', 'NULL', 'NULL', NULL, '8527041-9', '1958-07-03', '1990-01-01', '43-2458553', '8553', 46, 8, 15, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(202, 'MARIA CATALINA', 'PINCHEIRA VALDEBENITO', 'mpinchei@sii.cl', '$2y$10$zfkGUvDNRXLXQeCfD1q.qe5k.n/c07/GjwbdaLzCxFOshS4TQDJlG', 'NULL', 'NULL', NULL, '8630320-5', '1959-11-25', '1994-11-01', '43-2458511', '8511', 46, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(203, 'ARTURO LAURENCE', 'PINCHEIRA VIDAL', 'arturo.pincheira@sii.cl', '$2y$10$JkvOyfHlfJAKVXLqd40P4urnjougflOhsmWYycOKL/YpDjTKsKg/.', 'NULL', 'NULL', NULL, '12004765-5', '1970-11-27', '2015-07-06', '43-2458525', '8525', 46, 8, 15, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(204, 'MIRTHA PILAR', 'PINO CASTILLO', 'mirtha.pino@sii.cl', '$2y$10$rlZq64nuVt6.3199SSlo/uOsbMkglNeLirLcQz1n502.oNbh4.07.', 'NULL', 'NULL', NULL, '14351295-9', '1979-10-12', '2011-12-01', '43-2458555', '8555', 46, 8, 15, 9, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(205, 'RODRIGO ALEJANDRO', 'PLAZA MONTANO', 'rodrigo.plaza@sii.cl', '$2y$10$ERrys8PfM5JA46ooaP12AORHQfDGhUa6.SpIWUoA9d8d3o0mKZ6HS', 'NULL', 'NULL', NULL, '12489544-8', '1973-01-09', '2007-06-13', '43-2458534', '8534', 46, 8, 15, 9, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(206, 'VALESKA ELISA', 'PUENTES VENEGAS', 'valeska.puentes@sii.cl', '$2y$10$3L429B3DNoAY4lkrBqRwseckagpYnSRlY7ppcfwtXLIOzQFtAjfH6', 'NULL', 'NULL', NULL, '16061844-2', '1985-05-15', '2017-01-09', '2-23954747', '4747', 46, 8, 99, 4, 7, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(207, 'EDUVIGES DEL CARMEN', 'QUILODRAN PINEDA', 'equilodr@sii.cl', '$2y$10$M2rlkpSyrVPHnkEfH6bL7eRTGV0laQ1rCoHnpQpV3fM32CEje5y3y', 'NULL', 'NULL', NULL, '8721613-6', '1963-01-29', '1987-07-01', '43-2458552', '8552', 46, 8, 1, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(208, 'ANA', 'RIVAS IRAIRA', 'ana.rivas@sii.cl', '$2y$10$2JHqjnnCacN2NgVvVfeKw.kk.o4xqYLfbmw9LF2wK9kN56DSgHakC', 'NULL', 'NULL', NULL, '14300578-K', '1975-11-09', '2003-12-01', '43-2458529', '8529', 46, 8, 13, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(209, 'DARIO ESTEBAN', 'RODRIGUEZ CERDA', 'drodrigu@sii.cl', '$2y$10$knF/rilPXFeiFaKX9EFjdeKw/a.o6BPW8/1VYjmR6e1CdAbPIrvSO', 'NULL', 'NULL', NULL, '12557343-6', '1974-01-02', '1999-02-01', '43-2458518', '8518', 46, 8, 1, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(210, 'ROGELIO ABDOLINO', 'SAAVEDRA NAVARRETE', 'rsaavedr@sii.cl', '$2y$10$Zfc5PU4cPNmCd2OugP7mcemUpl3iIi0ilY8kejUb4/mC7DNwBZ/gS', 'NULL', 'NULL', NULL, '7963061-6', '1957-09-17', '1987-07-01', '43-2458535', '8535', 46, 8, 99, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(211, 'ABBY VALEXA', 'SAN MARTIN JARA', 'abby.sanmartin@sii.cl', '$2y$10$RqHvkufz9RToUmo6Ke/QteEhA0eKhUgH8.sH4pK3YqKQMjCiAUBVC', 'NULL', 'NULL', NULL, '16201778-0', '1985-12-05', '2010-01-04', '43-2458551', '8551', 46, 8, 13, 3, 10, 99, 1, 2, 'vPE32nYTsSIV6Qii9Mi6FHYn7O6f6E021BTUK8sGvmtOtp0TKHykHzTp2Ct0', NULL, '2023-07-26 03:19:17'),
(212, 'JOSE IVAN', 'SAN MARTIN MOLINA', 'jsanmart@sii.cl', '$2y$10$FU/jyAct5.bFz7kNSEztaeE58C37fHlt/2XkYR7BDCvZCCr9noBdm', 'NULL', 'NULL', NULL, '6998295-6', '1952-09-19', '1980-02-18', '43-2458504', '8504', 46, 8, 1, 3, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(213, 'HANSEL ANDRES', 'SCHLIEBENER VERA', 'hansel.schliebener@sii.cl', '$2y$10$5PRkrYkFjhWCQ1VfA3UYDe06nnUHlwHVIprZiVEF4e91kJJxXTYvq', 'NULL', 'NULL', NULL, '15212603-4', '1982-10-07', '2015-08-31', '43-2458556', '8556', 46, 8, 15, 9, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(214, 'TREDY LETICIA', 'TORRES ESCOBAR', 'tredy.torres@sii.cl', '$2y$10$jW1LnDBlkhOyiiE5yZY5wOC3R1Y1AtWqLQCyPRg.yxnQk2nzHgIAC', 'NULL', 'NULL', NULL, '16673724-9', '1987-03-18', '2018-01-02', '43-2458557', '8557', 46, 8, 15, 9, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(215, 'CARLOS ALBERTO', 'TRANAMIL CASTRO', 'carlos.tranamil@sii.cl', '$2y$10$JX4eLi8yhsML9uO6elmMoeNVWFtWv84aTostB925lXYz247KbQld6', 'NULL', 'NULL', NULL, '12537803-K', '1968-10-18', '2013-08-05', '43-2458513', '8513', 46, 8, 13, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(216, 'EVELYN PRISCILLA', 'TRONCOSO GONZALEZ', 'evelyn.troncoso@sii.cl', '$2y$10$yiUH3nrsASdD92iExckgBuxHjPw4LorfjDn.U6Rigd1WkbIosEbPq', 'NULL', 'NULL', NULL, '17211742-2', '1989-05-18', '2008-11-24', '43-2458539', '8539', 46, 8, 2, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(217, 'LUIS OSVALDO DEL CAR', 'VALDERRAMA CONTRERAS', 'lvalderrama@sii.cl', '$2y$10$q2U2GILeV.gyyr1c6SyfrO0RdGuHOoYR9Adnka8t94YA/f7cfL64q', 'NULL', 'NULL', NULL, '9307811-K', '1964-04-14', '1995-01-01', '43-2458525', '8525', 46, 8, 15, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(218, 'FELIPE ANTONIO', 'VALDES VELASQUEZ', 'fvaldes@sii.cl', '$2y$10$nS7txSE4Xt.UzFBGaovCNeK0mCzS7B5x.Nup1Pr6Zi8w/nABt2Qey', 'NULL', 'NULL', NULL, '10741793-1', '1968-09-28', '2002-01-21', '43-2458554', '8554', 46, 8, 13, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(219, 'JIMENA LORETO', 'VENEGAS DIAZ', 'jimena.venegas@sii.cl', '$2y$10$.nRk.FpHlkzxAljOeQORheHiMywqMPLp8zXt1v5yCj0OKzjMTS/oC', 'NULL', 'NULL', NULL, '15207767-K', '1983-01-29', '2012-06-14', '43-2458537', '8537', 46, 8, 2, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(220, 'EDUARDO', 'CONCHA PEÑA', 'eaconcha@sii.cl', '$2y$10$KI783Hnz2So2n3eSOYIEnOjpnqvZDzHdGXNl2/Wircl82AXbfq2H2', 'NULL', 'NULL', NULL, '11684760-4', '1970-09-22', '1999-02-01', '41-3115254', '5254', 48, 8, 99, 5, 6, 10, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(221, 'SONIA ELIZABETH', 'LOBOS PEDRERO', 'sonia.lobos@sii.cl', '$2y$10$862e8jdkNhjTIvSsNnZ4tOKiQHzlmZXLo6McVchOHdbYmyC1HoAFe', 'NULL', 'NULL', NULL, '11156995-9', '1967-10-15', '2007-10-01', '41-3115252', '5252', 48, 8, 99, 1, 12, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(222, 'SONIA VIVIANA', 'MEDINA HERRERA', 'smedina@sii.cl', '$2y$10$oO76y0/t87K4kndDyPTMu.nyYBRtA1sx5B0ooqnasBgiwmFQfPRFG', 'NULL', 'NULL', NULL, '8857881-3', '1960-12-03', '1992-09-01', '41-3115251', '5251', 48, 8, 99, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(223, 'PABLO GABRIEL', 'MELLADO MONSALVEZ', 'pablo.mellado@sii.cl', '$2y$10$khB3ZgmNv30AWVqUDq9Z4.LuPigorboRXys5Sq6ywrKUPVWhL2ry6', 'NULL', 'NULL', NULL, '18543175-4', '1993-09-24', '2015-09-21', '41-3115255', '5255', 48, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(224, 'MAURICIO ANDRES', 'MUNOZ MUNOZ', 'mauricio.munoz@sii.cl', '$2y$10$eoA07TEHs5V6N4fg5LPcBemQFkDxB0fZV6xyX4uT3Gu0FfkbMO1hu', 'NULL', 'NULL', NULL, '17913082-3', '1992-03-06', '2019-02-01', '41-3115255', '5255', 48, 8, 99, 6, 16, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(225, 'RICARDO JOSE', 'SANDOVAL AVELLO', 'rsandoval.externo@sii.cl', '$2y$10$WTHu3XpxwkO67RrzpJRHUultyCRVQipbNfw0SCGUGQW/duIifZ9Am', 'NULL', 'NULL', NULL, '13844642-5', '1980-09-11', '2019-10-28', '41-3115214', '5214', 48, 8, 99, 2, 15, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(226, 'SUSANA', 'TORRES HERRERA', 'storres@sii.cl', '$2y$10$7reR4scCe5CSfyTPMXtI5Oh5xzVav44F4Vm0pdbxtdlNgSnNn.Spy', 'NULL', 'NULL', NULL, '11778927-6', '1971-03-28', '1997-06-01', '41-3115253', '5253', 48, 8, 99, 3, 6, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(227, 'MAGDALENA DEL CARMEN', 'URIBE MEDINA', 'mcuribe@sii.cl', '$2y$10$ZnDAZ2mOotoXqz/TGOGmJO34eQ/.f/F.nsaAHX628twJyPAoG4.aG', 'NULL', 'NULL', NULL, '13803252-3', '1980-02-21', '2000-02-01', '41-3115251', '5251', 48, 8, 99, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(228, 'MARIA LUISA', 'ANTINAO CURILAF', 'mantinao@sii.cl', '$2y$10$l7lWZd2RxiD7Mt08PYx.z.HFPRDWLEJ1RA41vLBvH7VTrLeelBwCu', 'NULL', 'NULL', NULL, '9343627-K', '1959-02-14', '1994-11-01', '41-2566640', '6640', 50, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(229, 'MAURICIO', 'AQUEVEQUE BAÑADOS', 'mdaqueve@sii.cl', '$2y$10$9ziioCdfVjiSgIKQCOSzpuFmcxXMEeH5rwWzm.Pl8QunVZ0WtoWnO', 'NULL', 'NULL', NULL, '12696401-3', '1974-04-03', '2000-01-01', '41-2566642', '6642', 50, 8, 1, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(230, 'JOHN ANTONIO', 'CHACANO REVECO', 'john.chacano@sii.cl', '$2y$10$eMTOzsAQk2cm0Ss0x/BFcemtroHNNVXFQCGan7eHmik9AMy9/4576', 'NULL', 'NULL', NULL, '15954824-4', '1984-11-16', '2015-03-01', '41-2566648', '6648', 50, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(231, 'VIVIANA A.', 'CONEJEROS ANATIVIA', 'vconejer@sii.cl', '$2y$10$eHRK1WyRU0D82fzD9jItoeL0MBKMbb92kXY9kEErkLtHR2z9hYhrS', 'NULL', 'NULL', NULL, '10049386-1', '1971-06-30', '1993-01-01', '41-2566638', '6638', 50, 8, 99, 2, 11, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(232, 'FABIAN ERNESTO', 'DIAZ CAMPOS', 'fediaz@sii.cl', '$2y$10$vU7Rp8hK/ru7fYOpX0225O/m8yByoPDlzJFl7RjeGV5pufSDhcL3a', 'NULL', 'NULL', NULL, '9165698-1', '1974-12-18', '2002-01-09', '41-2566639', '6639', 50, 8, 99, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(233, 'CARLOS ENRIQUE', 'DIAZ LAGOS', 'cediaz@sii.cl', '$2y$10$wchn5ITQQtQodJvj6LQyJOgVy5Re.po8VfMcHzUCeC8oxYoaST7By', 'NULL', 'NULL', NULL, '11583707-9', '1970-06-10', '2002-01-14', '41-2566636', '6636', 50, 8, 1, 3, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(234, 'RODRIGO', 'FERNANDEZ RAMOS', 'rfernand@sii.cl', '$2y$10$UDa/S9tdUZIXvlopo0c2..a6cwQO07nV0PjQfo1AQgLWdOyjRA.vu', 'NULL', 'NULL', NULL, '12304135-6', '1972-11-08', '1998-09-21', '41-2566605', '6605', 50, 8, 99, 4, 4, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(235, 'CYNTHIA EDITH', 'FUENTEALBA RODRIGUEZ', 'cynthia.fuentealba@sii.cl', '$2y$10$re8ivnEwCP1OiA6p4l8vE.9bw0wVEsguai0JipuRlZeo4MQhZjNA2', 'NULL', 'NULL', NULL, '15928293-7', '1984-09-27', '2016-07-28', '41-2566634', '6634', 50, 8, 1, 3, 10, 99, 2, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(236, 'DAVID BERNARDO', 'GALLARDO PAREDES', 'david.gallardo@sii.cl', '$2y$10$wVDGXkHmhQ9axBZ0Tg90dOaApehZmdSIKRnQ7.OofIZ9QaPoNAMo.', 'NULL', 'NULL', NULL, '14044127-9', '1981-02-19', '2008-08-04', '41-2566635', '6635', 50, 8, 1, 2, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(237, 'EDUARDO CARLO', 'GALLEGOS MIGUEL', 'eduardo.gallegos@sii.cl', '$2y$10$vCkBVLE2y4Kga4kq.KfRV.VmGbPoNkIOrYHjvAYjVbe2OSPXtkt3u', 'NULL', 'NULL', NULL, '13306162-2', '1977-03-11', '2018-04-23', '41-2566646', '6646', 50, 8, 99, 9, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(238, 'VICTOR HUGO', 'GOMEZ CONTRERAS', 'victor.gomez@sii.cl', '$2y$10$m.WWzB8O4TT7tK5DX1jj1uss32Ggx2XlfkgBqW5CZvfrAz2fF.y8i', 'NULL', 'NULL', NULL, '13237482-1', '1977-03-25', '2009-03-01', '41-2566643', '6643', 50, 8, 1, 3, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(239, 'INGRID VALESKA', 'GOMEZ CRUZ', 'ingrid.gomez@sii.cl', '$2y$10$fmeCA/SEmXiwO11iypb/ZOE1tz1L.eTjuFlMI5BWP82d0ceAXKbge', 'NULL', 'NULL', NULL, '16490128-9', '1986-12-15', '2015-05-18', '41-2566634', '6634', 50, 8, 1, 3, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(240, 'DANIELA', 'GUAJARDO ACUNA', 'daniela.guajardo@sii.cl', '$2y$10$Z2WZUV0gMa80qVyjHQ2TiutCC29PgY9R5W2QM4tZwZQOzuuX3Q9ii', 'NULL', 'NULL', NULL, '10588145-2', '1978-01-18', '2003-12-01', '41-2566637', '6637', 50, 8, 1, 3, 8, 30, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(241, 'ROBERTO PATRICIO', 'LAGOS REYES', 'rlagos@sii.cl', '$2y$10$8nviPuo5Y.u4qWiEOnsgSu2dNPcSB0D92Bv/rz5nSS.lR5PdwaYVq', 'NULL', 'NULL', NULL, '8312999-9', '1957-12-09', '1987-03-01', '41-2566633', '6633', 50, 8, 99, 9, 5, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(242, 'OSCAR ABRAHAM', 'MARDONES VASQUEZ', 'oscar.mardones@sii.cl', '$2y$10$/G.PybowCspb35cOO08Mc.CHJQ4DzEje9o/cObh4VyYwhRobKLEf6', 'NULL', 'NULL', NULL, '12975116-9', '1976-11-19', '2017-09-27', '41-2566647', '6647', 50, 8, 99, 3, 10, 99, 2, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(243, 'MARIA VERONICA', 'MELLA SANHUEZA', 'maria.mella@sii.cl', '$2y$10$qjb4k6ClEjYS06WoQLix9.LXAijPVpIW4MkFqG.H/hQ2KBYvOV6sS', 'NULL', 'NULL', NULL, '10341439-3', '1966-01-13', '2015-01-05', '41-2566645', '6645', 50, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(244, 'SANTIAGO ENRIQUE', 'MELLADO VARELA', 'santiago.mellado@sii.cl', '$2y$10$l6.XvF.vVzQQ1qKMyYlev.nxHkeSf5pXlsGT32JqpjztDPdV72EHy', 'NULL', 'NULL', NULL, '10058728-9', '1966-07-05', '2008-02-04', '41-2566645', '6645', 50, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(245, 'VIVIANA ANDREA', 'MONROY VALDERRAMA', 'viviana.monroy@sii.cl', '$2y$10$jMb4yLHt8G338G7AZQbMvuQkX4HSfJ/V64mIIt8k0aogVBRij2r5m', 'NULL', 'NULL', NULL, '13107757-2', '1976-11-21', '2014-12-01', '41-2566645', '6645', 50, 8, 99, 2, 13, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(246, 'ROBERT FRANCIS', 'PARRA DOSQUE', 'robert.parra@sii.cl', '$2y$10$BMhgiw4XU4HnsnsrPlN2yOgt3usFNuUIFGM0H7TKE6P3aK6Vp9MLy', 'NULL', 'NULL', NULL, '12002693-3', '1972-05-10', '2007-09-26', '41-2566641', '6641', 50, 8, 1, 3, 8, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(247, 'PAULINA ANDREA', 'PRADENA GARDRAT', 'ppradena@sii.cl', '$2y$10$DGgoPEupSHYEIwrtDW8Ayu.k5/UZF5Qed0w14sDIE0aYfo.Bafuwa', 'NULL', 'NULL', NULL, '12918071-4', '1975-06-29', '2001-02-12', '41-2566636', '6636', 50, 8, 99, 5, 5, 8, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(248, 'GIPPSI NICOLE', 'PUENTES SANDOVAL', 'gippsi.puentes@sii.cl', '$2y$10$NoAZdOcPtyPjq2lbNyQJgesUjZfyJKmIMoEFrSY1AN5EoDjNm2yAC', 'NULL', 'NULL', NULL, '16767899-8', '1988-01-20', '2014-01-15', '41-2566649', '99', 50, 8, 1, 3, 9, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(249, 'HUGO EDUARDO', 'RIVERA MUÑOZ', 'herivera@sii.cl', '$2y$10$gBwOG6V5jLLVUgS64uaN.uCyw/NwUNM317XR7DNEE29yciGHcTObq', 'NULL', 'NULL', NULL, '10021693-0', '1966-12-28', '1994-10-17', '41-2566640', '6640', 50, 8, 99, 1, 9, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(250, 'ROBERTO', 'ROJAS RETAMAL', 'roberto.rojas@sii.cl', '$2y$10$wu0wmJm8BSi/w3/Qzrx3suRb8Z31Vyr5xfcwUf46UB1w5zois0Dwa', 'NULL', 'NULL', NULL, '12319242-7', '1973-07-04', '2002-08-01', '41-2566606', '6606', 50, 8, 99, 4, 3, 99, 1, 1, 'NULL', NULL, '2023-08-11 02:44:50'),
(251, 'FREDDY HERNAN', 'SALDIAS CERDA', 'freddy.saldias@sii.cl', '$2y$10$EGOp7ZUbCq2.yPn7hOmDkOA6KbVZdGjEGTF1t1z4O0JWG/1T0D8zW', 'NULL', 'NULL', NULL, '9028254-9', '1963-07-19', '2014-01-01', '41-2566648', '6648', 50, 8, 99, 6, 14, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(252, 'RAUL', 'SANZANA ZAMBRANO', 'rsanzana@sii.cl', '$2y$10$IfA27vET0eE9Gg8T5BgT.Ot7ZVYo65Gb1aYHUciIxGdu6cd5MwAHa', 'NULL', 'NULL', NULL, '11237865-0', '1968-02-21', '1994-11-01', '41-2566646', '6646', 50, 8, 99, 8, 10, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(253, 'CARLOS ALBERTO', 'ALBORNOZ MONTES', 'carlos.albornoz@sii.cl', '$2y$10$y4ciU2.X9AVycSgXUpr9gephfNP5nJ0QyALlwAkV1.pdDGpirYTmS', 'NULL', 'NULL', NULL, '14533047-5', '1976-08-21', '2015-02-24', '41-3115246', '5246', 112, 8, 99, 4, 7, 99, 1, 1, 'NULL', NULL, '2023-08-11 02:40:42'),
(254, 'EDUARDO ANDRES', 'BARAHONA LOPEZ', 'eduardo.barahona@sii.cl', '$2y$10$ARFkDJGS9.YUopX2C7Q15Orz5OWBWr9pseBSW7bE2h/hktgzEcZ/S', 'NULL', 'NULL', NULL, '15184436-7', '1983-01-07', '2015-09-21', '41-3115247', '5247', 112, 8, 99, 4, 7, 99, 2, 1, 'NULL', NULL, '2023-08-11 02:41:13'),
(255, 'HAYDEE DEL CARMEN', 'BURGOS RIQUELME', 'haydee.burgos@sii.cl', '$2y$10$DpzTWMwdzcimp5kXeR3Dv.07wA2mZgr6FJZisSmrDvGyQqB0BeRiS', 'NULL', 'NULL', NULL, '7147360-0', '1956-06-03', '1976-11-01', '41-3115200', '5200', 112, 8, 99, 1, 9, 99, 1, 2, 'NULL', NULL, '2023-08-11 02:39:55'),
(256, 'FELIPE RODRIGO', 'CERDA RODRIGUEZ', 'felipe.cerda@sii.cl', '$2y$10$iNszypJEQGPXz87iAd64J.r9wyqesmpGJLDxwDAOHkk/Jpq393sO2', 'NULL', 'NULL', NULL, '15179648-6', '1983-04-25', '2012-05-04', '41-3115212', '5212', 112, 8, 99, 4, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(257, 'JOSE MIGUEL', 'CONTRERAS ARELLANO', 'jcontrer@sii.cl', '$2y$10$KQexTzUQT38xCQm8NQOSS.RFWvPjIxrjYga0zVtuyiqfiFWM/.Xjm', 'NULL', 'NULL', NULL, '7726051-K', '1955-10-20', '1983-10-10', '41-3115149', '5149', 112, 8, 99, 3, 4, 99, 1, 1, 'NULL', NULL, '2023-08-11 02:41:40'),
(258, 'JOSE MANUEL', 'CORVALAN DURAN', 'jose.corvalan@sii.cl', '$2y$10$elHrlqz8w5YM2r4lCMCZKeAzJfDirASGaRMSr/ub5QDAOzvv0NwDa', 'NULL', 'NULL', NULL, '15475732-5', '1983-01-02', '2015-09-21', '41-3115248', '5248', 112, 8, 99, 5, 2, 2, 1, 1, 'NULL', NULL, '2023-08-11 02:39:33'),
(259, 'GUSTAVO ALEXIS', 'GUTIERREZ GONZALEZ', 'gustavo.gutierrez@sii.cl', '$2y$10$gu/v92SaON0wl79kyJz9Vuxq/kXqJI6k.WVivKBx2aIiP5RPl5ckG', 'NULL', 'NULL', NULL, '13104050-4', '1976-08-06', '2008-05-19', '41-3115207', '5207', 112, 8, 99, 4, 5, 99, 1, 1, 'XrLaBWsTc13vrgbXBgDRPsEYTMJcFW3Jhe715cFSg55HHG5cT684lHnE4Cs5', NULL, '2023-08-11 02:42:47'),
(260, 'LORENA EDITH', 'MUÑOZ HERNANDEZ', 'lorena.munozh@sii.cl', '$2y$10$LEPBoQqlzevlC0EHyP5wIecanZ9J.qCyKDvNhTTRtz1XLEyTwvT2q', 'NULL', 'NULL', NULL, '15905952-9', '1984-10-16', '2011-04-01', '41-3115213', '5213', 112, 8, 99, 4, 6, 99, 1, 2, 'NULL', NULL, '2023-08-11 02:43:09'),
(261, 'MARY PILAR ALEJANDRA', 'PINTO JAEN', 'mary.pinto@sii.cl', '$2y$10$qzZPgPWltrXD6uLHuy7gfuGkKD8nVqpYD2QYFAbncjbYNoLJQQLIq', 'NULL', 'NULL', NULL, '13507921-9', '1978-10-23', '2011-04-01', '41-3115272', '5272', 112, 8, 99, 4, 6, 99, 1, 2, 'NULL', NULL, '2023-08-11 02:43:28'),
(262, 'FERNANDO IGNACIO', 'RAMOS ASENJO', 'fernando.ramos@sii.cl', '$2y$10$LCzGK5sxB8C/GkMTd.Se..iMnp0vkTrXmZCARzYciRtQcyi2YDAXC', 'NULL', 'NULL', NULL, '13725177-9', '1979-09-27', '2009-12-14', '41-3115210', '5210', 112, 8, 99, 4, 5, 99, 1, 1, 'NULL', NULL, '2023-08-11 02:43:46'),
(263, 'LILIANA ISABEL', 'RIQUELME TOLEDO', 'liliana.riquelme@sii.cl', '$2y$10$N58TxLO6LXS5LnlbIAlRSeEVmTqIQnc3e9A5FDBbV.WqJ7bdy2o2O', 'NULL', 'NULL', NULL, '13311976-0', '1977-10-09', '2006-02-15', '41-3115209', '5209', 112, 8, 99, 4, 4, 99, 1, 2, 'NULL', NULL, '2023-08-11 02:44:08'),
(264, 'GASTON ALEXIS', 'RIVERA ESPINOZA', 'grivera@sii.cl', '$2y$10$CB7gti3agp5v7Guvq.leouKXZOEuKNs3ocKB3A9lrEFqCUQyRV6q6', 'NULL', 'NULL', NULL, '9179342-3', '1963-04-06', '2001-06-18', '41-3115201', '5201', 112, 8, 99, 4, 4, 99, 1, 1, 'NULL', NULL, '2023-08-11 02:44:26'),
(265, 'ISABEL', 'SEPULVEDA BELLO', 'isabel.sepulveda@sii.cl', '$2y$10$5Z14elaQGO2cAk1PVA39/uRekXsTv6AIpF1pfd3aMfWnby3MbsmFa', 'NULL', 'NULL', NULL, '11899585-6', '1971-02-08', '2005-04-15', '41-3115204', '5204', 112, 8, 99, 4, 5, 99, 1, 2, 'NULL', NULL, '2023-08-11 02:46:01'),
(266, 'CAMILA ANDREA', 'SEPULVEDA IRARRAZABAL', 'camila.sepulvedai@sii.cl', '$2y$10$RFf3VoP1pl8UNhAXP9Y.auBxh1RGO9p7r7CVD6RD.pvECYe9DFJeG', 'NULL', 'NULL', NULL, '17613348-1', '1990-12-11', '2022-09-01', '41-3115276', '5276', 112, 8, 99, 4, 7, 99, 2, 2, 'NULL', NULL, '2023-08-11 02:46:21'),
(267, 'PRISCILA ANDREA', 'VILLOUTA PEREZ', 'priscila.villouta@sii.cl', '$2y$10$JAbAh5uMaV/mEoAn0Hd1muWk9yOVJZmk4VvA5SSvl62FanEDHw1/6', 'NULL', 'NULL', NULL, '14607641-6', '1978-05-12', '2009-06-12', '41-3115211', '5211', 112, 8, 99, 4, 5, 99, 1, 2, 'NULL', NULL, '2023-08-11 02:46:38'),
(268, 'JESSICA MERCEDES', 'ANDRADE CARES', 'jandrade@sii.cl', '$2y$10$Eg6XLsVtDJXCnGnAskogGebqa14YEUxt.wXGjzpObHWtnp4MV5qci', 'NULL', 'NULL', NULL, '14516011-1', '1974-12-21', '2001-09-04', '41-3115191', '5191', 110, 8, 99, 3, 7, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(269, 'PAULA', 'ARANCIBIA PARODI', 'paaranci@sii.cl', '$2y$10$4kSGzl0q65B.L.HqzVXmcOB.Q1gS28F1nFgnFOmSjLOHhQFkwAULe', 'NULL', 'NULL', NULL, '11624870-0', '1970-01-28', '1999-09-09', '41-3115199', '5199', 110, 8, 99, 4, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(270, 'NANCY PATRICIA', 'ARRIAGADA CHAVARRIA', 'narriaga@sii.cl', '$2y$10$nPv63HfKGvp5s0jBSO5hy.Z5LM1cs4UGLp20eBq0MxFRytl43yq1u', 'NULL', 'NULL', NULL, '9221066-9', '1962-07-30', '1992-02-17', '41-3115153', '5153', 110, 8, 99, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(271, 'CRISTINA', 'BENAVENTE GUTIERREZ', 'cbenaven@sii.cl', '$2y$10$PgP.pS2Dp7IWi/BflqgQ.ui4v/GUkTVVZgFFET6Bp0Y0WW4jfMxu.', 'NULL', 'NULL', NULL, '7886117-7', '1955-02-20', '1995-01-01', '41-3115193', '5193', 110, 8, 99, 1, 10, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(272, 'SANDRA', 'BRAVO LOPEZ', 'sbravo@sii.cl', '$2y$10$/P6ZUPWjQFTTceeoFg3Br.HCfvVdZzK3l/Qf3i5C3TZUaAnC8q4P2', 'NULL', 'NULL', NULL, '8465530-9', '1968-03-31', '1993-07-12', '41-3115196', '5196', 110, 8, 99, 5, 2, 6, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(273, 'RODRIGO ARISTIDES', 'CABRERA MIRALLES', 'rodrigo.cabrera@sii.cl', '$2y$10$hcqFJkADl31rEe705GKKoeL62Qfqwo0FNOA2OTiOyZOPW.EGxWk4e', 'NULL', 'NULL', NULL, '15180524-8', '1982-02-03', '2006-03-20', '41-3115218', '5218', 110, 8, 99, 1, 12, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(274, 'MONICA SILVIA', 'LABRIN GODOY', 'mlabrin@sii.cl', '$2y$10$lAqFBKzc.QwovOZ4giM7vu9nnGK1ZzH9I.jHE83yxxRokt6cwyvzK', 'NULL', 'NULL', NULL, '9128583-5', '1961-02-08', '1985-06-17', '41-3115197', '5197', 110, 8, 99, 3, 4, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(275, 'PAULINA BEATRIZ', 'MELLADO LARA', 'pmellado@sii.cl', '$2y$10$y1q1sxo98BmC0lzryn7rreBwRl5d92yhVdmgWc.aNRrr2ICwxP6JC', 'NULL', 'NULL', NULL, '10964679-2', '1972-09-03', '2001-02-12', '41-3115244', '5244', 110, 8, 99, 3, 8, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(276, 'CARLOS EDUARDO', 'QUEZADA CRUZ', 'carlos.quezada@sii.cl', '$2y$10$UCY3E5/vgvfvajklo4ajveSd8gj7zJnuq6bBPspTUHu0XdxBH93du', 'NULL', 'NULL', NULL, '16138761-4', '1985-05-17', '2015-02-16', '41-3115192', '5192', 110, 8, 99, 4, 7, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(277, 'OLGA OLIMPIA', 'RODRIGUEZ RAMIREZ', 'orodrigu@sii.cl', '$2y$10$YvWXA/7WVY9aQsmyCvHaYekWxDuSeD.1yzgqM8Qa/N9THnRpwUyHq', 'NULL', 'NULL', NULL, '9264286-0', '1964-07-23', '1992-02-17', '41-3115198', '5198', 110, 8, 99, 3, 5, 99, 1, 2, 'NULL', NULL, '2023-07-26 03:19:17'),
(278, 'RICARDO FELIPE', 'ROJAS GARRIDO', 'ricardo.rojas@sii.cl', '$2y$10$4Z1JNDiSqjbqeGNPkwAIUO9xWoq.fURqW5dj8B44gK/Wx0dFZKNB2', 'NULL', 'NULL', NULL, '17496959-0', '1990-08-12', '2009-03-18', '41-3115268', '5268', 110, 8, 99, 2, 13, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(279, 'ANDRES EDUARDO', 'TRABAZO BURNAS', 'andres.trabazo@sii.cl', '$2y$10$zvPvuMooYAQnLeKSb.CDwecuHUOArCy.Er0hEIKsnEekChQCmtUc2', 'NULL', 'NULL', NULL, '10273836-5', '1978-09-06', '2012-05-02', '41-3115202', '5202', 110, 8, 99, 4, 6, 99, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(280, 'HUGO', 'BRITO MELGAREJO', 'hugo.brito@sii.cl', '$2y$10$6KCkXWvNeIboIVGB728JSeRLji4lHfj9b6MRlo1nKuICeg7Gl1Bq2', 'NULL', 'NULL', NULL, '13311693-1', '1977-07-28', '2003-12-01', '63-2362201', '2201', 101, 13, 99, 5, 12, 39, 1, 1, 'NULL', NULL, '2023-07-26 03:19:17'),
(281, 'MARCIA JEANNETT', 'MUÑOZ MANSILLA', 'mjmunoz@sii.cl', '$2y$10$AeNcSlBt5WlERsg5R9LmUu/KUKwVSp0xbwY969qqhXnAnfhzaKEMK', 'NULL', 'NULL', NULL, '8699117-9', '1963-12-25', '1992-02-17', '63-2362250', '2250', 101, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(282, 'MIRTA YANETTE', 'PARDO ROSAS', 'mpardo@sii.cl', '$2y$10$rDijlanrWofArI2hy2ipQOmSTZZkmVzAfIy.yosdDUUdK8oGWcl4O', 'NULL', 'NULL', NULL, '10132484-2', '1965-01-02', '1991-04-15', '63-2362211', '2211', 101, 13, 99, 2, 11, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(283, 'GABRIELA PAZ', 'ARANEDA REAL', 'gabriela.araneda@sii.cl', '$2y$10$DbdMwNZsiz/ee.hzL54f5erHhvvUwuM7TuXmOB8vrk75i4x4KiRvG', 'NULL', 'NULL', NULL, '14152331-7', '1981-08-10', '2018-05-02', '63-2362208', '2208', 103, 13, 99, 4, 9, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(284, 'JUAN ESTEBAN', 'AVILA MORAGA', 'juan.avila@sii.cl', '$2y$10$omZ5ltlrTtCdoDGnajM56ei3G4ITX13M9WDdjqGSBu5mukanIWcem', 'NULL', 'NULL', NULL, '11426220-K', '1969-08-31', '2018-08-27', '63-2362235', '2235', 103, 13, 99, 6, 16, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(285, 'RICHARD ANDRES', 'BELMAR MALDONADO', 'rbelmar@sii.cl', '$2y$10$BvDijQTA9vp8uL/hlCzuie2nrE0koqkHqSxCoRztZJgXGzOlDjaLO', 'NULL', 'NULL', NULL, '11324248-5', '1968-09-03', '1990-01-02', '63-2362218', '2218', 103, 13, 99, 1, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(286, 'MARIA PAZ ELIANA', 'GAJARDO ALADRO', 'maria.gajardo@sii.cl', '$2y$10$UUbA68BTI7c3KulDnTeOjuerh6OaO864KeGiHSeg6auVawHvHecca', 'NULL', 'NULL', NULL, '11558655-6', '1970-05-17', '2015-04-16', '63-2362243', '2243', 103, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(287, 'SYLVIA PAOLA', 'JEREZ ALARCON', 'pjerez@sii.cl', '$2y$10$MzlhJknZF4t4vK/1B56UuehSr/4pDaGvlRMJMlXfErZp9hKc3Gi6O', 'NULL', 'NULL', NULL, '11426529-2', '1969-11-10', '1994-12-01', '63-2362220', '2220', 103, 13, 99, 7, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(288, 'LORENA PAZ', 'MEDINA MARTINEZ', 'lpmedina@sii.cl', '$2y$10$8PCY9gC7kxV549yJnsuywOwRlnbnlz4.X6K6Qpa2xS3kBa2nqwHGa', 'NULL', 'NULL', NULL, '11532898-0', '1970-12-02', '2001-01-31', '63-2362202', '2202', 103, 13, 99, 5, 3, 45, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(289, 'MIRIAM DEL CARMEN', 'OJEDA PERALTA', 'mojeda@sii.cl', '$2y$10$spau4T1dfIjAOlI2lKHXPej0RKO23zLOBPmb9du3iO6x0LyEBSMba', 'NULL', 'NULL', NULL, '9174698-0', '1962-09-29', '1984-01-01', '63-2362208', '2208', 103, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(290, 'LORENA DEL CARMEN', 'OLIVERA URIBE', 'lorena.olivera@sii.cl', '$2y$10$PsakV19/VP75jkD5y/tmBuGUlMD7p7Ij.61a1VeQNOQOwFkCO1F2u', 'NULL', 'NULL', NULL, '14495374-6', '1976-12-01', '2018-11-05', '63-2362219', '2219', 103, 13, 99, 4, 9, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(291, 'DIEGO FERNANDO', 'PALMA JARAMILLO', 'diego.palma@sii.cl', '$2y$10$R13KmuhUpiRFAOnfwam3He21EQv1DIJTujb3t/VthdedhMjkcc9jq', 'NULL', 'NULL', NULL, '18174240-2', '1994-01-15', '2015-02-02', '63-2362221', '2221', 103, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(292, 'PABLO ISAAC', 'PENA CASTILLO', 'pablo.pena@sii.cl', '$2y$10$.8moGPcZhjDxOuB5VRQFgedJt.Ne1vferr1eQWSJkTnfcibdwu1xu', 'NULL', 'NULL', NULL, '18133010-4', '1992-04-14', '2020-02-03', '63-2362235', '2235', 103, 13, 99, 6, 16, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(293, 'VICTOR EDUARDO', 'ALARCON OSSES', 'valarcon@sii.cl', '$2y$10$.gyWXA.o5d708aoeIAmC0umHrJBlMF.DaF4ylqjORG8SsnYho3qVS', 'NULL', 'NULL', NULL, '8970096-5', '1966-12-07', '1993-08-02', '63-2362262', '2262', 105, 13, 99, 3, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(294, 'DEBORA NOEMI', 'ARIAS SANTIS', 'debora.arias@sii.cl', '$2y$10$UsGWqROOuZS3plAQ0LIbOOP1q/d38/k/m5N5l0VsBqBxZAhITLqq2', 'NULL', 'NULL', NULL, '13709810-5', '1979-02-28', '2011-06-22', '63-2362267', '2267', 105, 13, 99, 3, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(295, 'IRVING LEANDRO', 'BAHAMONDES LILLO', 'ibahamon@sii.cl', '$2y$10$zyCCrlbzxCDXNyxEh3iGNuwcfAUGZ7bAZm5kwu2PojJmnLYY9AQAi', 'NULL', 'NULL', NULL, '10509406-K', '1968-01-30', '1998-09-21', '63-2362205', '2205', 105, 13, 99, 5, 3, 41, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(296, 'EDGARDO JOB', 'BREVIS GATICA', 'ebrevis@sii.cl', '$2y$10$U9tF6STufxE3B5ejn.k1rOl.2bV.RF4QXNKNrAEKQlbVJ52/pKaim', 'NULL', 'NULL', NULL, '10899012-0', '1967-08-31', '1992-04-01', '63-2362233', '2233', 105, 13, 99, 3, 7, 991, 1, 1, 'mmdUtDbk3TvHPJ5mNoxiQQTbBAlEKr55PH6Nu9whUHcRrt2TM5Ac0hzbAFtY', NULL, '2023-08-08 18:56:53'),
(297, 'MARIA JOSE', 'CARRILLO VASQUEZ', 'maria.carrillo@sii.cl', '$2y$10$8vNmS9Edywb8KledRWwMzO7MPeiWZZP4N4vRT37sOER49VVbsYxha', 'NULL', 'NULL', NULL, '9702176-7', '1975-08-12', '2007-09-26', '63-2362237', '2237', 105, 13, 99, 3, 8, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(298, 'FREDY ALEJANDRO', 'DELGADO AEDO', 'fdelgado@sii.cl', '$2y$10$ZvrkJDlbMbiADn8trXxcQuFtYKSGIKHKnFt.4zaWd2Hnf3GlhODUe', 'NULL', 'NULL', NULL, '9195631-4', '1968-12-21', '1988-09-26', '63-2362268', '2268', 105, 13, 99, 1, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(299, 'SANDRA YOLANDA', 'DIAZ FERNANDEZ', 'sydiaz@sii.cl', '$2y$10$60mEkVtYW9rbVlwKVA7P.u99Fi871J74/JFfCn9CHlgtX0CeepG0a', 'NULL', 'NULL', NULL, '8505594-1', '1973-03-05', '1993-07-12', '63-2362215', '2215', 105, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(300, 'ALDO DAVID', 'FLORES CARCAMO', 'aflores@sii.cl', '$2y$10$nOhy4RyjLhmvPJ.7ZbunIu0Tvpsh.fNbAKesxuLvWRiuR.udEflym', 'NULL', 'NULL', NULL, '7944027-2', '1960-06-17', '1989-07-17', '63-2362251', '2251', 105, 13, 99, 4, 4, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(301, 'TATIANA MABEL', 'GONZALEZ BELMAR', 'tatiana.gonzalez@sii.cl', '$2y$10$xM5xEMXnK4KJ6St1GvXv0uxAp66NRqc7Ldvowygh6nczNu.IGP1.W', 'NULL', 'NULL', NULL, '14037989-1', '1981-05-01', '2017-09-29', '63-2362278', '2278', 105, 13, 99, 3, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(302, 'VIVIANA ANDREA', 'GONZALEZ VASQUEZ', 'vagonzalez@sii.cl', '$2y$10$ANNadHan6P9KSB2A5ts6HOjPzgoW1F8rImYRJwDK0MTDpRjRVrqhq', 'NULL', 'NULL', NULL, '13319578-5', '1977-07-27', '2002-01-21', '63-2362234', '2234', 105, 13, 99, 3, 7, 51, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(303, 'SANDRO MAURICIO', 'KETTERER BLU', 'skettere@sii.cl', '$2y$10$RuGKQR9aC5gjIXgHZXOAv.ilvv1kgsVnVNzAJ886nfD/tvf/4V7pa', 'NULL', 'NULL', NULL, '10246069-3', '1968-03-14', '1993-01-19', '63-2362281', '2281', 105, 13, 99, 1, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(304, 'LETICIA VALESKA', 'LEFNO MANQUEL', 'leticia.lefno@sii.cl', '$2y$10$jg6a..hbIhez7.scY6.FjOL9cItFGLpkV08cor8kPFHK07SMWV4s.', 'NULL', 'NULL', NULL, '18522243-8', '1993-08-05', '2017-09-29', '63-2362270', '2270', 105, 13, 99, 3, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(305, 'SABINA', 'LIGNAI ANTIMILLA', 'llignai@sii.cl', '$2y$10$ncdZooMRIqyOg4OwUy0b3OxMLyTzWcQAYuw8SIy3.bUx.9fFWrIey', 'NULL', 'NULL', NULL, '8940849-0', '1958-11-02', '2001-01-03', '63-2362238', '2238', 105, 13, 99, 2, 13, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(306, 'MIGUEL ANDRES', 'LIZAMA ROJAS', 'mlizama@sii.cl', '$2y$10$JTzAIyzbNqRBcbIFuU6yk.2t3Y0jihCVEARxShPcxa6NnaS2WXn4y', 'NULL', 'NULL', NULL, '12748117-2', '1975-05-19', '2000-01-01', '63-2362261', '2261', 105, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(307, 'FERNANDO SEGUNDO', 'MATAMALA ÑANCO', 'fmatamal@sii.cl', '$2y$10$tauDGqsusDiS8KshAKVq7u5zoKQPc3KMgRdYvUgT9tl8desTNjMb.', 'NULL', 'NULL', NULL, '9080730-7', '1962-09-29', '1992-02-17', '63-2362212', '2212', 105, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(308, 'PATRICIA YANET', 'MILLAPAN ERICES', 'pmillapa@sii.cl', '$2y$10$B1Wubap8t855bTUDQt5Jl.ITN2U5JQQDM0GObk3rS6pApcbhqX7FW', 'NULL', 'NULL', NULL, '10625909-7', '1970-03-02', '1999-02-01', '63-2362253', '2253', 105, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(309, 'EDGARDO ANDRES', 'MUNOZ BETANCOURT', 'edgardo.munoz@sii.cl', '$2y$10$6xTS7wKpwUKGVsYHJYJ0u.7SRBccO8wE68jGCYCPlMGHlWf0p.LxC', 'NULL', 'NULL', NULL, '15931533-9', '1986-03-20', '2017-09-29', '63-3951859', '1859', 105, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(310, 'YOBELY WELQUIZ', 'PATIÑO ABURTO', 'ypatino@sii.cl', '$2y$10$qwajUPj1BflU8Az.wgTQJ.5FbAPGbc2fukdrQDfrQaMo7h1LXNHhC', 'NULL', 'NULL', NULL, '7963557-K', '1960-09-06', '1981-11-01', '63-2362240', '2240', 105, 13, 99, 1, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(311, 'ROXANA GABRIELA', 'PEREZ GAJARDO', 'roxana.perez@sii.cl', '$2y$10$Fzr26YCqX6AQcvLXMoPUT.2P33M1lwnIxp1eqb1RQ1K4Fnn8gCkFq', 'NULL', 'NULL', NULL, '17641622-K', '1991-03-18', '2015-11-19', '63-2362276', '2276', 105, 13, 99, 3, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(312, 'ALVARO', 'PEÑA DURAN', 'agpena@sii.cl', '$2y$10$Vqq8uhOhTd4yGIBsBsQfjeDhWEBWFGyADG0uTwDu35EBWSpMoWaVu', 'NULL', 'NULL', NULL, '11499493-6', '1969-01-08', '1994-12-05', '63-2362266', '2266', 105, 13, 99, 3, 5, 50, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(313, 'ALBAN', 'PLUMER BODIN', 'alban.plumer@sii.cl', '$2y$10$aQnfyRE0neljoyCX6UbMau.ewKLhal5U3tJ76O5SDIFORXBLXa7Vi', 'NULL', 'NULL', NULL, '10087771-6', '1964-06-11', '2000-01-01', '63-2362236', '2236', 105, 13, 99, 3, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(314, 'MAURICIO ALEJANDRO', 'REY GALLEGOS', 'mauricio.rey@sii.cl', '$2y$10$6ftjGmBeeM7Mu1kewklqzuvFQEIFwTXZ8HyjzzqkK3CeEnRehAw2C', 'NULL', 'NULL', NULL, '13320983-2', '1977-11-07', '2005-11-09', '63-2362240', '2240', 105, 13, 99, 4, 8, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(315, 'PATRICIA PILAR', 'REYES FLORES', 'preyes@sii.cl', '$2y$10$iAQvDx87fR9FrvH8.DCe8uP.6eI0j9Vh2jblFkEBDQ5UgEV5Fr0ee', 'NULL', 'NULL', NULL, '8697663-3', '1963-04-01', '1984-02-01', '63-2362269', '2269', 105, 13, 99, 1, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(316, 'DANIEL ABRAHAM', 'SAEZ FLORES', 'daniel.saez@sii.cl', '$2y$10$YEGkcdsaYR7h0Owgy4mkL.pnC8Ipp8Um86RFirlduAvfygfVm7Pa6', 'NULL', 'NULL', NULL, '16040716-6', '1985-01-21', '2010-04-26', '63-2362279', '2279', 105, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(317, 'VERONICA CECILIA', 'SALDIVIA RIVERA', 'vsaldivi@sii.cl', '$2y$10$tVQcv6wmSERdNckdV9dapuXXrOneMiVNeiHv5tR8N3IMWQM1XaEuu', 'NULL', 'NULL', NULL, '9716037-6', '1965-03-05', '1991-05-13', '63-2362282', '2282', 105, 13, 99, 1, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(318, 'OCTAVIO RAUL', 'SEPULVEDA BECKER', 'osepulve@sii.cl', '$2y$10$0Y6sRu.qlqK8WKoXu2EclO/rPfz.5M.Kv8s5gn1KmrOJDx.vRFq3W', 'NULL', 'NULL', NULL, '6417809-1', '1950-11-21', '1978-07-04', '63-2362249', '2249', 105, 13, 99, 3, 4, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(319, 'RAUL ALEJANDRO', 'SILVA MARDONES', 'raul.silva@sii.cl', '$2y$10$7W286FqzLTa9bUc2/.DRbONiGZELumIobrjqxZbFFH1cLfSsMfCHq', 'NULL', 'NULL', NULL, '15212477-5', '1982-07-19', '2012-06-14', '63-2362238', '2238', 105, 13, 99, 3, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(320, 'MARIBEL MASSIEL', 'SILVA VENEGAS', 'mmsilva@sii.cl', '$2y$10$JgzKL2qnw7/1xhHJrWV.ROyoTEtCpbPnP.z8H8KLpGI.uUXN.W.s.', 'NULL', 'NULL', NULL, '12147286-4', '1968-04-26', '1993-12-16', '63-2362280', '2280', 105, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(321, 'FRANCISCA CRISTINA', 'SOTO VASQUEZ', 'francisca.soto@sii.cl', '$2y$10$2F78GvaV1haA/Fl3dEVqX.HMm0gQ72ZC5IrJat955vAkpTqog/9Oe', 'NULL', 'NULL', NULL, '10662839-4', '1976-05-25', '2003-01-15', '63-2362254', '2254', 105, 13, 99, 3, 7, 46, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(322, 'MOISES NOLBERTO', 'VASQUEZ SOLIS', 'moises.vasquez@sii.cl', '$2y$10$4AR9btRrshum9Tfef4TyPOKdXJIXr2I.qtyhMY5XaCr2eMoAgI636', 'NULL', 'NULL', NULL, '14411985-1', '1979-08-19', '2012-06-14', '63-2362245', '2245', 105, 13, 99, 3, 9, 49, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(323, 'NELSON SABINO', 'VELASQUEZ PADGET', 'nvelasqu@sii.cl', '$2y$10$0fUSLTiBUHZB35hp0uJzKed73A0lhuHKiP15XSBWDLl7daj.K7cVC', 'NULL', 'NULL', NULL, '8573011-8', '1964-02-08', '1999-02-01', '63-2362255', '2255', 105, 13, 99, 3, 7, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(324, 'DAMARIS PAMELA', 'VERA ROTHEN', 'damaris.vera@sii.cl', '$2y$10$REhuisfEReesQ8d9kctkGeS8eNVB0QEI/7ahLhGkW9707UCT5IrIy', 'NULL', 'NULL', NULL, '17200949-2', '1989-06-22', '2015-11-17', '63-2362256', '2256', 105, 13, 99, 3, 10, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(325, 'MONICA ALEJANDRA', 'VERGARA IBAÑEZ', 'mvergara@sii.cl', '$2y$10$dwrtQGNPMfpA23aWf6MvoOXiQXmAtJWbmBkjiMGaHonocYM598sHC', 'NULL', 'NULL', NULL, '12747858-9', '1975-03-22', '2000-01-01', '63-2362247', '2247', 105, 13, 99, 3, 7, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(326, 'YINA ESTER', 'BARBET CARDENAS', 'ybarbet@sii.cl', '$2y$10$/xgzgLNndYtsiRGMp8wnN.nugco.GNfUR5vAoWaQq1Fkk4rehCbYy', 'NULL', 'NULL', NULL, '7657467-7', '1958-03-25', '1995-11-01', '63-2362214', '2214', 108, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(327, 'NELSON ELIAS', 'CABRERA CUBILLOS', 'nelson.cabrera@sii.cl', '$2y$10$yA93wX/SXJGgPqtnre.gQOy5N/vJY1hSoFHm/lOj.AQcn0iuGOaRq', 'NULL', 'NULL', NULL, '14204881-7', '1981-03-31', '2009-05-04', '63-2362204', '2204', 109, 13, 99, 5, 3, 43, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(328, 'SEBASTIAN MARCELO', 'CARDENAS ZAMBRANO', 'sebastian.cardenas@sii.cl', '$2y$10$6GenPMcpnU01uiA6jVCM8uDpX8ECZbNaqn8FO9Q803jughfkxenEa', 'NULL', 'NULL', NULL, '15294828-K', '1983-01-02', '2015-08-31', '63-2362231', '2231', 109, 13, 99, 9, 10, 47, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(329, 'MARIA MARCIA', 'CASTILLO MONJES', 'mmcastil@sii.cl', '$2y$10$4OZL0okhTLB8RgmDoV7ZceN9aD/NczrkJ8blWmB3pEbrc.TXcHk7G', 'NULL', 'NULL', NULL, '8060602-8', '1959-03-07', '1987-03-16', '63-2362226', '2226', 109, 13, 99, 9, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(330, 'ENRIQUE ALFONSO', 'CAYUÑIR CAÑULEF', 'enrique.cayunir@sii.cl', '$2y$10$5Htv8LEcgxNhbyBJAA4W4O6HUhgHuIJDSQjO8Vud2CgN1rurfZZ.y', 'NULL', 'NULL', NULL, '6468511-2', '1953-07-31', '1984-01-24', '63-2362275', '2275', 109, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(331, 'RAMIRO ENRIQUE', 'CIFUENTES ALVARADO', 'rcifuentes@sii.cl', '$2y$10$XG5.i2BODo3QYheLRVIuleDztOhgGeGAWv9YVL4konL5tkOomavPC', 'NULL', 'NULL', NULL, '8628642-4', '1968-06-13', '2009-05-18', '63-2362229', '2229', 109, 13, 99, 9, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(332, 'GISSELLE', 'LEAL ROSAS', 'gleal@sii.cl', '$2y$10$fcImyOChsDmeO.e5Tn92A.lTxM3/bd.EVKqsKzwzFjfz7wvGQlF32', 'NULL', 'NULL', NULL, '9779739-0', '1965-11-20', '1997-04-01', '63-2362232', '2232', 109, 13, 99, 9, 7, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(333, 'VERONICA LAURA', 'MARTINEZ SILVA', 'veronica.martinez@sii.cl', '$2y$10$xR7KLJWfYdLyn2yI5k8KVuOWCYPtug9i0CAHVnUxJgoGivVhwIFkO', 'NULL', 'NULL', NULL, '11846607-1', '1971-09-20', '2008-08-18', '63-2362225', '2225', 109, 13, 99, 9, 9, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(334, 'MARION PALOMA', 'MUNOZ MUNOZ', 'marion.munoz@sii.cl', '$2y$10$lHABM6ZQ2UQ7C9gCxFa4Ye5hjFR0Y/SWkctm8h3sNQjTugYjLcu9.', 'NULL', 'NULL', NULL, '16998196-5', '1988-09-24', '2021-09-20', '63-2362227', '2227', 109, 13, 99, 9, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(335, 'CAMILA DANAE', 'REYES CASANOVA', 'camila.reyes.c@sii.cl', '$2y$10$qSBOpYoWH7XarqoBzNUe5.lIEg2SLLqf/bkS1cUDrI.wn.Rkwxbw2', 'NULL', 'NULL', NULL, '17511502-1', '1989-11-24', '2018-10-01', '63-2362258', '2258', 109, 13, 99, 9, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(336, 'LUIS ENRIQUE', 'ROSALES GONZALEZ', 'luis.rosales@sii.cl', '$2y$10$gps6J7yg15BH3Jv62G8JrO/z2Td9bzYsYkkMVI5IJhBVzPZawRoZa', 'NULL', 'NULL', NULL, '10061955-5', '1970-08-04', '2009-05-04', '63-2362228', '2228', 109, 13, 99, 9, 9, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(337, 'JAIME ENRIQUE', 'SANCHEZ RIQUELME', 'jesanchez@sii.cl', '$2y$10$D7/YU3FlJf0jv0R6fuvEReWULQt4LuCRiP0jGh7p/3QPjHRVhf90S', 'NULL', 'NULL', NULL, '9183202-K', '1962-08-10', '2004-01-01', '63-2362230', '2230', 109, 13, 99, 1, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(338, 'VICTOR HUGO', 'SILVA MANRIQUEZ', 'vsilva@sii.cl', '$2y$10$r39DKoKnj8tBZAiK5JEN.ucHlECFUCx1tuECb2SAc3S.DhP2voHim', 'NULL', 'NULL', NULL, '7776233-7', '1957-04-12', '1983-10-01', '63-2362227', '2227', 109, 13, 99, 9, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(339, 'HERNAN RODRIGO', 'TAPIA HERRERA', 'hrtapia@sii.cl', '$2y$10$rl2thNlv/SiTjwARmKbgMOAvv0.t4WtfuxCVfisfHUt.mDuJjPp7q', 'NULL', 'NULL', NULL, '9333782-4', '1962-09-15', '1982-11-04', '63-3953389', '3389', 109, 13, 99, 2, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(340, 'MARISOL AURORA', 'ALVARADO LORCA', 'malvarad@sii.cl', '$2y$10$eu7INga43QH.keCqzidEuOZM.bDXF6aZde1pEU2NQ8kyUCuRnydQW', 'NULL', 'NULL', NULL, '8971285-8', '1961-06-19', '1992-04-20', '63-2362217', '2217', 107, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(341, 'NATALIA ANDREA', 'ANDRADE PRADENAS', 'nandrade.externo@sii.cl', '$2y$10$DirGfGEkjm/IDSl57r04XuK0KxHy3JHB7kNNcSALO/hKcgwQgyFd6', 'NULL', 'NULL', NULL, '16563954-5', '1987-04-26', '2022-12-26', '99', '99', 107, 13, 99, 2, 13, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(342, 'CRISTOBAL DANIEL', 'BARRUETO PEREDO', 'cristobal.barrueto@sii.cl', '$2y$10$uA9luyPYPolCTON9B16WhuKDNjppxYNHZgnwE.JFOtFbpJrOybhUq', 'NULL', 'NULL', NULL, '15331681-3', '1982-09-20', '2016-07-28', '63-2362263', '2263', 107, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(343, 'CAROLINA DEL CARMEN', 'CERDA DONOSO', 'ccerda@sii.cl', '$2y$10$aaRmL5xg92fzLMMMxifK9.wA6yjz0PgaNnatiGN1VS8dWNAf4dyfi', 'NULL', 'NULL', NULL, '13476076-1', '1978-01-25', '2002-01-16', '2-23953881', '3881', 107, 13, 99, 5, 3, 42, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(344, 'MARIA ALEJANDRA', 'CORDOVA SOTO', 'mcordova@sii.cl', '$2y$10$BmN7VSzxV/QuJmZxoMU2I.g3d0vIKAvKPSAwQ8MscA/plI8KMNema', 'NULL', 'NULL', NULL, '14330214-8', '1977-08-12', '2002-01-16', '63-2362239', '2239', 107, 13, 99, 3, 7, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(345, 'LORENA ARLET', 'ERRIBARREN DIOCARES', 'lorena.erribarren@sii.cl', '$2y$10$SWBZBn9A8Csr4AL.HFfThOKTaCQF2tJQqbGRFKLXOwEaQPbYwhOIG', 'NULL', 'NULL', NULL, '18174583-5', '1994-06-30', '2015-04-16', '63-2362277', '2277', 107, 13, 99, 2, 12, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(346, 'SANDRA MARISOL', 'GODOY PINCHEIRA', 'sgodoy@sii.cl', '$2y$10$PodiCWwzWHXKy6cG/aI0yuJcK3OrzaMrVuVz2v52dJdLFo2k2cOz6', 'NULL', 'NULL', NULL, '11591175-9', '1970-08-02', '1993-03-15', '63-2362264', '2264', 107, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(347, 'IHOVANKA GUISELA ESTHER', 'JARA CORONADO', 'ihovanka.jara@sii.cl', '$2y$10$crCJHDfTZaUmGzUnRA1.oeT1WtFGH2oLtpdQX4vN1Bj.Z4U5hSJ/C', 'NULL', 'NULL', NULL, '18590652-3', '1993-11-22', '2019-03-18', '63-2362285', '2285', 107, 13, 99, 2, 15, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(348, 'IVETTE ARACELLY', 'LOPEZ VALENZUELA', 'ilopez@sii.cl', '$2y$10$l.KSa173FH4DuJGYgTtt9O9zEDh/kSP1zA0MJLZS.Upupf/qBuUQ.', 'NULL', 'NULL', NULL, '12431766-5', '1973-07-06', '2001-09-04', '63-2362210', '2210', 107, 13, 99, 3, 8, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(349, 'JUAN HUMBERTO', 'NAVARRETE JARA', 'jhnavarr@sii.cl', '$2y$10$WvH8o/RsZXuvp53tG5BuxepF1cIpK//KhDfuqxYT3hdnssG.0igXe', 'NULL', 'NULL', NULL, '6824038-7', '1953-10-20', '1974-05-01', '63-2362265', '2265', 107, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(350, 'MARCO ANTONIO', 'QUINTEROS MAYORGA', 'marco.quinteros@sii.cl', '$2y$10$6/yM9uYZJOV94DRD/8zLbemmvGVu0n1eVhrgt/uTDHiQ1FAI9Guwa', 'NULL', 'NULL', NULL, '10186047-7', '1967-02-08', '2007-07-01', '2-23951859', '1859', 107, 13, 99, 6, 14, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(351, 'FABIO CLISTENES', 'SAEZ GARCIA', 'fsaez@sii.cl', '$2y$10$.Et2e6AVqlAegiGd6p8sNOt9D1o90y0sKDTFx92jZgi9K/9iRaHrW', 'NULL', 'NULL', NULL, '9015082-0', '1960-05-24', '1994-11-01', '63-2362264', '2264', 107, 13, 99, 1, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(352, 'JUAN CARLOS', 'SANCHEZ RIQUELME', 'jcsanche@sii.cl', '$2y$10$cxHjRw3pKlc7nt0AsGea.uaUESSnhqnuNaKBzV4CiFYpPSKVzbAsS', 'NULL', 'NULL', NULL, '9016440-6', '1961-01-10', '1986-07-01', '63-2362264', '2264', 107, 13, 99, 2, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(353, 'MAURICIO EGON', 'VASQUEZ GOMEZ', 'mvasquez@sii.cl', '$2y$10$FS1UyUWx77ztKqCJ7M0rsel1jpJpLfJabalmKYdCHsNLbjonJhUFK', 'NULL', 'NULL', NULL, '9517516-3', '1962-06-10', '1995-02-01', '63-2362264', '2264', 107, 13, 99, 7, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(354, 'PATRICIA SOLEDAD', 'VELASQUEZ ALVARADO', 'pvelasquez@sii.cl', '$2y$10$oqi2DnoQBcFCcN3CvIJRSOMgvSoZWnWLuJf2wGUL1LTJlChKehGJ.', 'NULL', 'NULL', NULL, '7581534-4', '1961-03-21', '1985-12-01', '63-3951943', '1943', 107, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(355, 'CLAUDIA ROSA', 'VERA SEPULVEDA', 'crvera@sii.cl', '$2y$10$9.hCR45CRe3R1Mn.79j0eerBqqtmr9bMD1B5PEqkVa.tKFGSfHxGu', 'NULL', 'NULL', NULL, '12389472-3', '1973-01-26', '1999-02-01', '63-2362246', '2246', 107, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(356, 'VICTOR', 'AEDO COFRE', 'victor.aedo@sii.cl', '$2y$10$mXqzsCoXj67QuvsSGZXwV.ikqDETdXMmM5lu3gAkfTDV18Dhneyvy', 'NULL', 'NULL', NULL, '11919500-4', '1972-01-06', '2004-07-19', '63-2357854', '7854', 56, 13, 99, 2, 13, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(357, 'DAVID IVAN', 'AGUILAR AGUILAR', 'david.aguilar@sii.cl', '$2y$10$6g.onceiPMAYBrBe8KYsD.i715PVj8sK4QNKnZyw11YTE4rmQsPra', 'NULL', 'NULL', NULL, '16583516-6', '1986-11-28', '2016-07-28', '63-2458946', '8946', 56, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(358, 'ERNESTO ALEJANDRO', 'CARCAMO NAVARRETE', 'ernesto.carcamo@sii.cl', '$2y$10$x0eY82c2xxYYmegR0/mls.Gak6a3/8S2huObukobHGJz0PwSgsUCm', 'NULL', 'NULL', NULL, '15264560-0', '1984-03-02', '2010-05-01', '63-2458949', '8949', 56, 13, 99, 2, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(359, 'CAROL MALLULY', 'MONTECINOS CADAGAN', 'carol.montecinos@sii.cl', '$2y$10$t3yCLacKj8e79fYkq7T9L.rPulywzdtRcCm3XV988em2UfZnIIpwy', 'NULL', 'NULL', NULL, '15269369-9', '1982-07-15', '2010-10-05', '63-2458947', '8947', 56, 13, 99, 5, 6, 35, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(360, 'CAMILA DENIS', 'RAMIREZ BARRIGA', 'camila.ramirez@sii.cl', '$2y$10$dNSb1KAsoALxzrfmO8FaO.7UFJCWsiFAOQwz8pGqftr/jDUdbuogm', 'NULL', 'NULL', NULL, '19270094-9', '1996-08-13', '2019-03-18', '63-2458949', '8949', 56, 13, 99, 2, 15, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(361, 'ANICETO ENRIQUE', 'ROLDAN BUSTOS', 'aroldan@sii.cl', '$2y$10$w1G3zRle6Rz9uLAvMMHw3eeiSoUlSgtKxFWdmmgsMEQj1P8zLTCHC', 'NULL', 'NULL', NULL, '9028813-K', '1962-07-25', '2000-01-01', '63-2944452', '4452', 56, 13, 99, 3, 7, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(362, 'PATRICIA', 'SALGADO GUARDA', 'patricia.salgado@sii.cl', '$2y$10$N0CT3o5zNdNE67gcDjKHsu5N8gycpF9TvYadMPRntjKFCFLNMzTRG', 'NULL', 'NULL', NULL, '10306798-7', '1967-10-30', '2004-01-01', '63-2458945', '8945', 56, 13, 99, 1, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18');
INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(363, 'SARA BETZABE', 'GONZALEZ MUNOZ', 'sara.gonzalez@sii.cl', '$2y$10$zhP.LZP/pvcNOdktsrTzUOp7ETsXwf0NteXHO5BF5iMlkaeCB064m', 'NULL', 'NULL', NULL, '12080386-7', '1973-05-17', '2015-11-19', '2-29035893', '5893', 57, 13, 99, 3, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(364, 'CAROLINA ANDREA', 'NAVARRO VASQUEZ', 'carolina.navarro@sii.cl', '$2y$10$wULOm/P/LHMcrcp0PiWwYuKQnfLS0L27JYvTy0GhddJ7f0uVTMD76', 'NULL', 'NULL', NULL, '15883761-7', '1984-09-30', '2015-01-05', '63-2362210', '2210', 57, 13, 99, 5, 7, 36, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(365, 'RUPERTO ALFONSO', 'TRONCOSO CALFANTE', 'ruperto.troncoso@sii.cl', '$2y$10$uhIbNyxKdscGi2hgjouh.uhMdY.OQdvn0cptUO79HuelPI75AnVSm', 'NULL', 'NULL', NULL, '7994046-1', '1957-11-18', '1992-04-01', '63-2362275', '2275', 57, 13, 99, 2, 11, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(366, 'MARTA VERONICA', 'CORTES SAN MARTIN', 'marta.cortes@sii.cl', '$2y$10$MLn71la1yX1IV8FLdkVJZu01vcLw2kqEyyTKA90l/6Wd/MpfTHKP6', 'NULL', 'NULL', NULL, '10762698-0', '1966-09-09', '1993-01-18', '63-2362213', '2213', 113, 13, 99, 2, 11, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(367, 'MONICA', 'LOPEZ CARMONA', 'monica.lopez@sii.cl', '$2y$10$ZrjamzX19o5QvmhFvrQRU..wYSfxd7aEtk2ISb/jPb32TacG8ewFC', 'NULL', 'NULL', NULL, '10900620-3', '1968-05-04', '2003-12-01', '63-2362222', '2222', 113, 13, 99, 4, 3, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(368, 'RODRIGO', 'PELUCHONNEAU ALLIENDE', 'rodrigo.peluchonneau@sii.cl', '$2y$10$imO3Dza8s5TfvgJgIFzo3O2N4j12WBMDnGmRrVfYP.WsJfHcQy/0a', 'NULL', 'NULL', NULL, '12263034-K', '1972-01-24', '2003-11-10', '63-2362224', '2224', 113, 13, 99, 4, 6, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(369, 'SEBASTIAN MARTIN', 'SALINERO MONTECINOS', 'sebastian.salinero@sii.cl', '$2y$10$Pz7z4s9amGnYcCIgxxxuNeaQLIavc9eTnm.leDN8Qh34Yc3zXvqJa', 'NULL', 'NULL', NULL, '16522092-7', '1986-11-11', '2015-09-21', '63-2362223', '2223', 113, 13, 99, 4, 7, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(370, 'HANS SIDNEY', 'SCHUDECK PONCE', 'hans.schudeck@sii.cl', '$2y$10$gjXQONo6GDoYpwt5bf5V0ek/bwH5pMfDQTzP23ZrqUGfEOdHIf5M.', 'NULL', 'NULL', NULL, '11845372-7', '1971-07-14', '2007-05-01', '63-2362203', '2203', 113, 13, 99, 5, 3, 40, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(371, 'FRANCISCO JAVIER', 'CASTRO RIQUELME', 'francisco.castror@sii.cl', '$2y$10$4hrMqeQ5tTVK4uV04Dd0GefyO93DJHEihqhE7JyMquAeV761chmCi', 'NULL', 'NULL', NULL, '17843157-9', '1991-04-29', '2017-09-29', '63-2362274', '2274', 58, 13, 99, 3, 10, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(372, 'ROBERTO OSVALDO', 'ESPINOZA CALDERON', 'roberto.espinoza@sii.cl', '$2y$10$pexu3vFsgz610NndLVKQKu5bM4aAJ84M46fos9MDHNtblvoSDy5TS', 'NULL', 'NULL', NULL, '10665478-6', '1979-10-09', '2008-12-01', '63-2362286', '2286', 58, 13, 99, 1, 12, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(373, 'RUBEN ARMANDO', 'FLANDEZ MUNOZ', 'ruben.flandez@sii.cl', '$2y$10$mv/ji8.eg6cHdP24WGUZ3uU6Ss0yU9Cerg44F1CQ/HexiNTgQe9Mi', 'NULL', 'NULL', NULL, '15234534-8', '1982-04-13', '2016-07-18', '63-2362273', '2273', 58, 13, 99, 2, 15, 991, 2, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(374, 'CAROL TAMARA', 'LAGOS CASTILLO', 'carol.lagos@sii.cl', '$2y$10$xKsY7.mn9Mx3vXbA7GwKNeOiifDzcVVaXJr3a68u/uylxl64oBsjy', 'NULL', 'NULL', NULL, '17289264-7', '1987-08-11', '2018-07-17', '63-2362273', '2273', 58, 13, 99, 1, 14, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(375, 'IVAN ANDREI', 'OTEIZA ONATE', 'ivan.oteiza@sii.cl', '$2y$10$ot9brqF8X/mY7T2cav0oLemPJxPsnzYhN5RxVfIdJceUtjNV1EOVa', 'NULL', 'NULL', NULL, '16839460-8', '1988-03-18', '2011-06-22', '63-2362271', '2271', 58, 13, 99, 5, 7, 37, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(376, 'ELADIO FERNANDO', 'OVALLE CARDENAS', 'eladio.ovalle@sii.cl', '$2y$10$Ky31.8hEAWHc17.JxBCZDuz6EQWM7vok/F91mmBWbzQJJoM60dqt2', 'NULL', 'NULL', NULL, '16870822-K', '1988-01-15', '2015-08-31', '63-2362259', '2259', 58, 13, 99, 9, 10, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(377, 'DANAE BELERMA', 'VILLANUEVA VILLANUEVA', 'danae.villanueva@sii.cl', '$2y$10$Jt3DSragcsAYyPYPxlkcZe1NJ2Nc3nzG2UUnAS9YLT8HH3EMTkoSi', 'NULL', 'NULL', NULL, '16871552-8', '1988-05-27', '2021-03-08', '63-2362287', '2287', 58, 13, 99, 9, 10, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(378, 'JIMENA', 'CASTILLO BASCUÑAN', 'jcastill@sii.cl', '$2y$10$d/fiThQRiVfXyubW7PJ7supOhulgc3SAvQoj.Y9eoWRgEgHzPohLu', 'NULL', 'NULL', NULL, '12558858-1', '1974-08-07', '1999-02-01', '63-2362216', '2216', 111, 13, 99, 4, 3, 991, 2, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(379, 'GONZALO', 'GALVEZ PARRA', 'gonzalo.galvez@sii.cl', '$2y$10$7GeVeHo32TrLpgbyhmBdpOUr25Hvg0d1XAuGFnpLvIl67ZMJ0MrPW', 'NULL', 'NULL', NULL, '11895972-8', '1971-03-18', '2001-05-07', '63-2362206', '2206', 111, 13, 99, 4, 3, 48, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(380, 'MARIO HERNAN', 'LOPEZ CARES', 'mario.lopez@sii.cl', '$2y$10$mpnT/lLunEZIK0yD31q76u7hgGc8ynMtYm0iBx21q81hQwd/IiSrW', 'NULL', 'NULL', NULL, '8914762-K', '1963-10-01', '1992-02-17', '63-2362209', '2209', 111, 13, 99, 3, 6, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(381, 'FRANCISCO ANIBAL', 'LUENGO CIFUENTES', 'fluengo@sii.cl', '$2y$10$NzztAaiF.5L1aSeVsb303uVRuwZNOHcAxQ0zPWE9ld4Wwg6QJmssm', 'NULL', 'NULL', NULL, '7558451-2', '1958-04-11', '1983-10-10', '63-2362248', '2248', 111, 13, 99, 3, 5, 991, 1, 1, 'NULL', NULL, '2023-07-26 03:19:18'),
(382, 'SONIA', 'ROJAS MORENO', 'sonia.rojas@sii.cl', '$2y$10$Vs26e4rfzJmAvfjnpf1eZOGKBTVo.uliPCrWtRRPDLh8wFc66NC3G', 'NULL', 'NULL', NULL, '10044599-9', '1970-06-20', '1997-06-01', '63-2362257', '2257', 111, 13, 99, 3, 5, 991, 1, 2, 'NULL', NULL, '2023-07-26 03:19:18'),
(383, 'LORETO DANIELA', 'ALVAREZ  LUPPICHINI', 'loreto.alvarez@sii.cl', '$2y$10$o5t/qpS37kx5/cz/zDU/lOOt9azGF/P19lom2a/4vkxfxcqBwpbxC', '', '', '0000-00-00 00:00:00', '16100530-4', '1985-12-26', '2016-10-28', '25818677', '8677', 126, 7, 99, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(384, 'ROBERTO ANTONIO', 'IBAÑEZ  ROJAS', 'roberto.ibanez@sii.cl', '$2y$10$zFkPz606TeSsuMRoC3xQnuYTT7U8WE9nRYFPiowwlzGiF3cuReyLm', '', '', '0000-00-00 00:00:00', '13686921-3', '1979-04-24', '2008-11-01', '25818681', '8681', 126, 7, 99, 4, 4, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(385, 'VANIA', 'UARAC  SENN', 'vuarac@sii.cl', '$2y$10$1qWGR9DULtwUj4wMHjZP3eK3K5nluBXr3WRuC7L25MJ.ZJNMDikMC', '', '', '0000-00-00 00:00:00', '9360648-5', '1964-01-08', '1989-07-17', '25818682', '8682', 126, 7, 99, 5, 1, 1, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(386, 'CRISTIAN', 'BARRERA  DIAZ', 'cbarrera@sii.cl', '$2y$10$MkmeKJUgE0JwGfbg7MFpQeE61PbyUxvmbTIEsdtLr3sEpvjpkY57G', '', '', '0000-00-00 00:00:00', '12245686-2', '1972-07-22', '1997-09-09', '25818619', '8619', 120, 7, 99, 5, 2, 5, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(387, 'DANIEL GUILLERMO', 'COFRE  ARENAS', 'daniel.cofre@sii.cl', '$2y$10$zl3lj/lYGrnQb4ENS82lwOVceOr2Dw3xmYuw93jckYzZl3LFawxG2', '', '', '0000-00-00 00:00:00', '10634036-6', '1968-04-16', '2017-10-23', '25818747', '8747', 120, 7, 99, 6, 16, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(388, 'FRANCISCO SEBASTIAN', 'CORTES  GONZALEZ', 'francisco.cortes@sii.cl', '$2y$10$BAMSMrqwnblPDSW/.kUnG.F7pZkRB4rvu7ewSGHJClcYV0EuTLc/e', '', '', '0000-00-00 00:00:00', '15342281-8', '1983-10-06', '2011-05-02', '25818705', '8705', 120, 7, 99, 4, 8, 999, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(389, 'CLAUDIO ANDRES', 'GONZALEZ  GONZALEZ', 'claudio.gonzalez@sii.cl', '$2y$10$D1kEgBvedgUUAnivmlxUged.sjshyHrafWenyreq2YQUV7BOJE4p2', '', '', '0000-00-00 00:00:00', '10375792-4', '1969-12-31', '2005-12-01', '25818781', '8781', 120, 7, 99, 4, 4, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(390, 'MARITZA DEL PILAR', 'GUTIERREZ  AGUIRRE', 'maritza.gutierrez@sii.cl', '$2y$10$r9qNelwxo3vTWvpYsWBVCe8asd4gIn10AIS/WQaFoBwYy/err7Zvy', '', '', '0000-00-00 00:00:00', '12103821-8', '1968-11-29', '2014-02-24', '25818693', '8693', 103, 7, 99, 4, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 'ANA KAREN', 'HUENUMAN  HERNANDEZ', 'ana.huenuman@sii.cl', '$2y$10$sPryjdjubt0nCFNzYUv6DOPbAB/ZExf9xZvdG3uHv9/dWEDLP6Y6C', '', '', '0000-00-00 00:00:00', '17778450-8', '1990-12-31', '2016-12-12', '25818783', '8783', 103, 7, 99, 4, 9, 99, 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 'VICTOR HUGO', 'JARA  ARRIAGADA', 'victor.jara@sii.cl', '$2y$10$jgAmg2qAtB.3eG6OQ.QX0.6wWXBfGEoljUYKyhYH7jSLiA7Nid1.e', '', '', '0000-00-00 00:00:00', '7985850-1', '1960-05-22', '2016-02-15', '25818697', '8697', 103, 7, 99, 6, 14, 99, 1, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 'VICTORIA SOLANGE DE LOURDES', 'RIOS  BAETTIG', 'victoria.rios@sii.cl', '$2y$10$/xQ5sW0e4VNzmpY7Ow0yz.7dcZcPhT3eLT.tIZRPlQl2eBs5gSU1a', '', '', '0000-00-00 00:00:00', '12188960-9', '1972-07-09', '2017-10-23', '25818711', '8711', 103, 7, 99, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 'ALEJANDRO FAUSTINO', 'VALDEBENITO  RUIZ', 'afvaldebenito@sii.cl', '$2y$10$3LEtYXDBP9Km.xVy4IbJleFefl4jBI4czVMbvttYpl7H6phHVkb22', '', '', '0000-00-00 00:00:00', '10497866-5', '1969-04-10', '2001-08-23', '25818746', '8746', 103, 7, 99, 7, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 'VICTOR ANDRES', 'ZUNIGA  MORALES', 'victor.zuniga@sii.cl', '$2y$10$xX5fyYdGbeHFTFirwKwzR.o9cSEgLf7XwuPhhUZ4ROZFVgBQ.XAJe', '', '', '0000-00-00 00:00:00', '15458452-8', '1982-09-02', '2007-07-17', '0', '0', 103, 7, 99, 6, 14, 99, 1, 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 'ERIKA NELLY', 'ACEVAL  GUZMAN', 'erika.aceval@sii.cl', '$2y$10$jxN69frLP.hp0wev9wtB3uaPMiK8rt0QcT5.YDaSmVvcN6n3aMukm', '', '', '0000-00-00 00:00:00', '9471554-7', '1963-05-07', '2014-02-10', '25818709', '8709', 121, 7, 4, 2, 13, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(397, 'MARIA CECILIA', 'ALARCON  ALARCON', 'maria.alarcon@sii.cl', '$2y$10$2E8NuR9MU6G0thLsMz.97uXzih8tjaaSWjfxUMA7hsNhTbz/W1AD.', '', '', '0000-00-00 00:00:00', '13279844-3', '1977-09-10', '2008-11-01', '25818779', '8779', 121, 7, 5, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(398, 'MARITZA SUSANA', 'ALDAY  MIRANDA', 'maritza.alday@sii.cl', '$2y$10$qVoDsoVFmzOao/Xb51Z44.Xgut2YIkHtg69d.PziW8vb3Rb95scYq', '', '', '0000-00-00 00:00:00', '8090948-9', '1959-08-11', '1990-12-01', '25818737', '8737', 121, 7, 14, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(399, 'ARMANDO LANDER', 'ALIAGA  GONZALEZ', 'armando.aliaga@sii.cl', '$2y$10$m14KzYoZgi7qc9tD1yuLHu7Q.6QsN1zmSYVSZbGaYglxV2FDMwi1a', '', '', '0000-00-00 00:00:00', '15360079-1', '1983-11-27', '2015-11-19', '25818694', '8694', 121, 7, 2, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(400, 'BRISA ESMERALDA', 'AMPUERO  SAEZ', 'bampuero@sii.cl', '$2y$10$icuqTPHTUeAI5MEuxFgZFOugSv8JPQMYZR67Anv0UWclEkQDss5zS', '', '', '0000-00-00 00:00:00', '7983215-4', '1962-05-20', '1992-02-17', '25818654', '8654', 121, 7, 4, 3, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(401, 'MARIA', 'ANDRADES  CAROCA', 'mandrade@sii.cl', '$2y$10$iy18294p8wtqP6UTyPKR0ebeElO6oaadJ2V81bW6sy47m9pfvYmW.', '', '', '0000-00-00 00:00:00', '10629990-8', '1967-12-16', '1995-01-01', '25818653', '8653', 121, 7, 99, 2, 11, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(402, 'RODRIGO ANDRES', 'ARAOS  CARVACHO', 'rodrigo.araos@sii.cl', '$2y$10$pzOGeaZ5ycaqDh40Zh9Kwe3XhhBJhPxessUql3iePiUxWuHANQvCu', '', '', '0000-00-00 00:00:00', '13257128-7', '1977-09-19', '2011-06-22', '25818615', '8615', 121, 7, 6, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(403, 'ELIZABETH DEL CARMEN', 'ARAYA  ENERO', 'elizabeth.araya@sii.cl', '$2y$10$sahM/eHNyFj1xKJyJGkMFOko2LLTAPBXeDjFa.DxfuHcL3lWuVlsy', '', '', '0000-00-00 00:00:00', '16411977-7', '1986-11-10', '2012-06-14', '25818616', '8616', 121, 7, 3, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(404, 'NATALIA ELIZABETH', 'ASTUDILLO  GUERRA', 'natalia.astudillo@sii.cl', '$2y$10$ZSyAOkHbXg57zKrsFrtNx.jR8gvXHRoRxbH4kBDv1SJ1mPbtvDWPO', '', '', '0000-00-00 00:00:00', '17414863-5', '1989-12-24', '2015-11-17', '25818760', '8760', 121, 7, 7, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(405, 'LORETO DE LOS ANGELE', 'BIELANCIC  QUEZADA', 'lbielancic@sii.cl', '$2y$10$enC2dAHnAvYga5sB0IvKYe19UFzOImk354VH3ROiqyRnF5jozSa1C', '', '', '0000-00-00 00:00:00', '12964755-8', '1976-12-05', '2002-01-23', '25818721', '8721', 121, 7, 99, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(406, 'MARITZA BEATRIZ', 'BUCAREY  RIOS', 'maritza.bucarey@sii.cl', '$2y$10$5ThIoUqUyrlZGIJV2s19ruq6du3FJmKxzThklWFMiwIhjAEolAHPu', '', '', '0000-00-00 00:00:00', '17372061-0', '1986-06-12', '2014-05-02', '25818745', '8745', 121, 7, 5, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(407, 'ESTEBAN LEANDRO', 'CACERES  PARDO', 'esteban.caceres@sii.cl', '$2y$10$ziVmeaMATcL2cWATPg.swuoHKnS9ObRnb754Lu1VX0Vmv0.gFY8JG', '', '', '0000-00-00 00:00:00', '18151904-5', '1992-07-02', '2011-08-09', '25818776', '8776', 121, 7, 7, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(408, 'CARLOS ANDRES', 'CALDERON  TAMAYO', 'carlos.calderont@sii.cl', '$2y$10$oROm37GQlEOQunc7CWVY..Ys1gpZDRkKyZQYMD/o/lxnxnrcWYcSy', '', '', '0000-00-00 00:00:00', '16114904-7', '1985-04-04', '2010-10-05', '25818689', '8689', 121, 7, 7, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(409, 'CHRISTIAN MAURO', 'CALZADILLA  BRIONES', 'christian.calzadilla@sii.cl', '$2y$10$J9eL7LefmYsXPHzUKyH1oeoracCbymaOLe/Y6ihQY09xyFFLFsREW', '', '', '0000-00-00 00:00:00', '9869891-4', '1972-03-03', '2011-06-20', '25818740', '8740', 121, 7, 7, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(410, 'CAROL STEPHANIE', 'CANCINO  LUENGO', 'carol.cancino@sii.cl', '$2y$10$yaJ/EfRygGYPPm60m7DURu3UT9b7UaoPMFO8boJAm6Setl8b0C1mW', '', '', '0000-00-00 00:00:00', '16512921-0', '1986-09-22', '2015-11-17', '25818768', '8768', 121, 7, 2, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(411, 'CRISTIAN ANDRES', 'CANCINO  SILVA', 'cristian.cancino@sii.cl', '$2y$10$Kkcj6/LYCsTEAYL.EGjPDeZaGPnPGKktOdIU4xBIF.JqQr42d2Hkm', '', '', '0000-00-00 00:00:00', '14342147-3', '1977-08-13', '2011-06-22', '25818669', '8669', 121, 7, 5, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(412, 'ALEJANDRA FIORENCIA', 'CARO  SOTO', 'alejandra.caro@sii.cl', '$2y$10$QgjVM0OofGVKxDYLC15SL.xRKw8lvX2mQ17XAum3sFI/XhzbRR4Wq', '', '', '0000-00-00 00:00:00', '17341706-3', '1990-03-20', '2016-11-23', '25818668', '8668', 121, 7, 14, 1, 14, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(413, 'NICOLE', 'CASSON  MARQUEZ', 'ncasson@sii.cl', '$2y$10$jfBmly6uHyIhtwvbP.FvFOhRCieLjE1l8el.C8Z7A7WArS2WGllZq', '', '', '0000-00-00 00:00:00', '12882939-3', '1975-05-15', '1999-02-01', '25818630', '8630', 121, 7, 7, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(414, 'GONZALO ANDRES', 'CASTILLO  MARDONES', 'gonzalo.castillo.m@sii.cl', '$2y$10$NBiGUMmHOlXHV3Zo7smVrOqwipAEQoFoFdgXDIZ8/TDg1q3sB6j5C', '', '', '0000-00-00 00:00:00', '15448590-2', '1983-06-26', '2015-11-17', '25818755', '8755', 121, 7, 2, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(415, 'ANDREA CECILIA', 'CASTRO  HERNANDEZ', 'andrea.castro@sii.cl', '$2y$10$MyqVyBIFwwob5LaPtaBzouCQcF2yEWku4Kycae1iY6jO/6PjBVHie', '', '', '0000-00-00 00:00:00', '13899472-4', '1980-08-29', '2015-11-19', '25818758', '8758', 121, 7, 4, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(416, 'MARIELA ALEJANDRA', 'CASTRO  HERRERA', 'mariela.castro@sii.cl', '$2y$10$.BDj6QUtlu3k30WmOOct3OnjxUOmHCWAfU4QGUlY1UAczDbF3412y', '', '', '0000-00-00 00:00:00', '15776878-6', '1984-06-17', '2015-05-18', '25818611', '8611', 121, 7, 2, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(417, 'ESTEFANIA ANDREA', 'CHAMORRO  DUENAS', 'estefania.chamorro@sii.cl', '$2y$10$22s9HySxpvZHN6ZlD997u.hb4.MaIUBlCGTStzcDwzIQre1jr31hi', '', '', '0000-00-00 00:00:00', '16665412-2', '1987-07-20', '2015-11-19', '25818692', '8692', 121, 7, 6, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(418, 'FABIAN EDUARDO', 'CHAPILLA  CORTES', 'fabian.chapilla@sii.cl', '$2y$10$16gHb7H6dOxmZn3PMh..guAoaU64EcxpsZYufNeZaC9mwUE/UwSge', '', '', '0000-00-00 00:00:00', '17713913-0', '1991-06-14', '2015-11-19', '25818780', '8780', 121, 7, 4, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(419, 'ERWIN MANUEL', 'COLOMA  LUENGO', 'erwin.coloma@sii.cl', '$2y$10$YqzPOiKRWIBsU3HbKgTAfO.i0IENSOF1X7Tq3aroyfbk3.Jp.avSu', '', '', '0000-00-00 00:00:00', '15848669-5', '1984-03-16', '2015-11-17', '25818722', '8722', 121, 7, 1, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(420, 'EDGARDO ANTONIO', 'CONA  DINAMARCA', 'edgardo.cona@sii.cl', '$2y$10$CEPhw6Tt.bdF/l5AEVvqi.PA59a57dXuw1kLwmwAY5qK49NUCM4pq', '', '', '0000-00-00 00:00:00', '12462403-7', '1973-10-06', '1993-03-22', '25818726', '8726', 121, 7, 3, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(421, 'ROSA ANGELICA', 'CORDOVA  MOYA', 'racordov@sii.cl', '$2y$10$X.OVRkpzOzyyHUThrkGPB.ECgIqnnJgEryXOd4zvmf39uCmvqL0xC', '', '', '0000-00-00 00:00:00', '12904059-9', '1975-03-04', '2000-01-01', '25818629', '8629', 121, 7, 3, 1, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(422, 'RICARDO FELIPE', 'CORVALAN  DIAZ', 'ricardo.corvalan@sii.cl', '$2y$10$rGjZdG.bvIWObjHHEs7HeeTx.5IJQ5pnLOjxuozwKeFvGr2T7ySVS', '', '', '0000-00-00 00:00:00', '14599489-6', '1979-04-09', '2007-10-03', '25818646', '8646', 121, 7, 99, 3, 8, 5, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(423, 'JESSICA DE LOURDES', 'DIAZ  CARVAJAL', 'jessica.diaz@sii.cl', '$2y$10$3hx2k0NfwIzxvyriH3qx3Ov1As2mcFWNni2IjkrqJiWhcpuuPeyCi', '', '', '0000-00-00 00:00:00', '12268672-8', '1972-04-15', '2011-06-22', '25818635', '8635', 121, 7, 7, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(424, 'MARIA', 'DIAZ  RAMIREZ', 'maria.diaz@sii.cl', '$2y$10$4.AAG25eQjSr8zPxmxAtfOPUwUn.GnsQxHP3mrYKvcpR7AMCDGdkO', '', '', '0000-00-00 00:00:00', '12353708-4', '1968-08-19', '2003-10-06', '25818678', '8678', 121, 7, 14, 2, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(425, 'PABLO ANDRES', 'DONOSO  DIAZ', 'pablo.donoso@sii.cl', '$2y$10$1Hh7LWYzUBfzhPCff4z5lOqDRvHMEQLiJWn.rZAVNuLky0N.IlK12', '', '', '0000-00-00 00:00:00', '16880194-7', '1987-11-10', '2009-07-20', '25818657', '8657', 121, 7, 1, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(426, 'DANILO ALEXANDER', 'DOTTE  RAMIREZ', 'danilo.dotte@sii.cl', '$2y$10$VC3PMCuSxGSoA/TjvcEd/.WE1yojDe5weSedw03caxYXnQd3Zn2Hu', '', '', '0000-00-00 00:00:00', '16040713-1', '1985-02-04', '2005-11-24', '25818691', '8691', 121, 7, 14, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(427, 'TAMARA ELIZABETH', 'ESPEJO  LEPPE', 'tamara.espejo@sii.cl', '$2y$10$rLPd7TiN2U55nI0vRGNxPORzHylf29P.LdThxqSJJRCOF/nh1AqTq', '', '', '0000-00-00 00:00:00', '19342370-1', '1996-04-23', '2018-07-17', '25818688', '8688', 121, 7, 14, 1, 14, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(428, 'ANGELICA EDELMIRA', 'FARIAS  ARCE', 'angelica.farias@sii.cl', '$2y$10$ns0ICjOiTWdB09sfjchV9OijVKTLqPXHU35brRuUBYoWd5NI0Liqm', '', '', '0000-00-00 00:00:00', '12086562-5', '1972-12-31', '2013-03-05', '25818717', '8717', 121, 7, 99, 2, 11, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(429, 'ELIZABETH JANETH', 'FERNANDEZ  SILVA', 'elizabeth.fernandez@sii.cl', '$2y$10$sNEvgbjs3amAzsDL4JmpzuRbdlPs5VdONodDnvc3Isr/z4.F6idZS', '', '', '0000-00-00 00:00:00', '15117682-8', '1982-05-13', '2012-06-12', '25818642', '8642', 121, 7, 4, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(430, 'DANIELA ANDREA', 'FUENTES  NAVARRO', 'daniela.fuentes@sii.cl', '$2y$10$RKh/9Exwx/fTpMBSTQX/Sukkn23YOpIaoO4bHFA0SrOGmA5gtRCPG', '', '', '0000-00-00 00:00:00', '16641257-9', '1987-04-11', '2015-05-18', '25818671', '8671', 121, 7, 7, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(431, 'NATHALYE RUTH', 'GALVEZ  FLORES', 'nathalye.galvez@sii.cl', '$2y$10$DV2kXE/5YRJVHe73zIvFreSLqb.u7qoXUMqcBPlK8cSQOQRMGn56e', '', '', '0000-00-00 00:00:00', '14492165-8', '1977-01-09', '2011-06-20', '25818648', '8648', 121, 7, 1, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(432, 'ALEXIS ANDRES', 'GARRIDO  BUSTAMANTE', 'alexis.garrido@sii.cl', '$2y$10$tf3c0bu7xB6F3cXLsLPU7eS4QIJ1l2.cphpq5QKvwJARUBAR.E53S', '', '', '0000-00-00 00:00:00', '13596662-2', '1979-02-22', '2011-06-22', '25818607', '8607', 121, 7, 6, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(433, 'KATHERINE BEATRIZ', 'GONZALEZ  MORENO', 'katherine.gonzalez@sii.cl', '$2y$10$MbJ8BYMbcZZQcYsLnbMd6.YRAesh4dR5KO9xOb5dy5/9PqGlhmIhq', '', '', '0000-00-00 00:00:00', '15737640-3', '1983-10-25', '2010-10-05', '25818734', '8734', 121, 7, 2, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(434, 'RICARDO ANDRES', 'GONZALEZ  SALADO', 'ricardo.gonzalez@sii.cl', '$2y$10$VyTdVGQDLUnz.e7TnkPVguRcb1Ku0d9q81WiJo2SnCMSnRK50JBxK', '', '', '0000-00-00 00:00:00', '16103787-7', '1985-06-09', '2011-06-22', '25818628', '8628', 121, 7, 6, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(435, 'TAMARA MACARENA', 'GONZALEZ  YANEZ', 'tamara.gonzalez@sii.cl', '$2y$10$3qUTFboJWbKIuhaa4sjbOejHhMQyfvVhEe0XdSl9tSxB3WBCtkXL.', '', '', '0000-00-00 00:00:00', '16743069-4', '1987-10-02', '2016-07-28', '25818663', '8663', 121, 7, 2, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(436, 'MARCO ANTONIO', 'GUTIERREZ  MERINO', 'marco.gutierrez@sii.cl', '$2y$10$.nP2nELTHUY0IKE5XDLs6Ox8twRDJkX6pMmMuM9BPxI.1uNE7RN9i', '', '', '0000-00-00 00:00:00', '18831728-6', '1994-07-31', '2018-07-17', '25818771', '8771', 121, 7, 14, 1, 14, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(437, 'PAULINA ALEJANDRA', 'HENRIQUEZ  ORTIZ', 'paulina.henriquez@sii.cl', '$2y$10$z4e7gHN5JHR8Odm38BZSU.PhkVg31KbQt7vrBzrdYllCCLo2lpcDq', '', '', '0000-00-00 00:00:00', '12878890-5', '1975-11-04', '2007-10-01', '25818650', '8650', 121, 7, 1, 2, 11, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(438, 'CARLOS', 'HIDALGO  VERGARA', 'carlos.hidalgo@sii.cl', '$2y$10$6ZU8Do/X9oOoraVDYadb9uOtcxsOsxZ/RITWCVz26nqStriCYfpge', '', '', '0000-00-00 00:00:00', '9966703-6', '1966-08-27', '1996-10-21', '25818741', '8741', 121, 7, 14, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(439, 'PAULINA ALEJANDRA', 'JARA  CHAVEZ', 'paulina.jara@sii.cl', '$2y$10$aOrtWG7K3BHpjnxfxuMoEOAlu6uLWA75RvACAILnlS4h51ajvsGq6', '', '', '0000-00-00 00:00:00', '15808345-0', '1984-04-06', '2018-05-02', '25818686', '8686', 121, 7, 2, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(440, 'MATILDE SUSANA', 'JARA  PEÑA', 'mjara@sii.cl', '$2y$10$4HhMdGPGuwM29II6eD9rce8rN9/hFPf4YGlsSo0n3Xp6IH6DaoU7u', '', '', '0000-00-00 00:00:00', '10243789-6', '1969-09-29', '1998-03-01', '25818676', '8676', 121, 7, 6, 3, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(441, 'VIVIANA PAOLA', 'LEON  CABRERA', 'viviana.leon@sii.cl', '$2y$10$7T8HfV8LHJqt2R3f4u3Io.BNV6lNllSL6Gbz.2irLPW4v8.OE9vQe', '', '', '0000-00-00 00:00:00', '12487236-7', '1973-05-23', '2010-10-05', '25818727', '8727', 121, 7, 4, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(442, 'MARCELA', 'LLANCAPAN  MALIQUEO', 'mllancap@sii.cl', '$2y$10$8MkjqqBwSs.6TZspqLoxleqy2K27oR71VhZiA6Iwjo3Jw9u6HDQtO', '', '', '0000-00-00 00:00:00', '10669603-9', '1966-10-03', '1997-06-01', '25818626', '8626', 121, 7, 3, 3, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(443, 'CAROLINA MAGDALENA', 'MARTINEZ  PEREZ', 'carolina.martinez@sii.cl', '$2y$10$kmK.0CEq8DEgrk6ru66dQe8MumTBnz7bBsKFXJAaeVnZNBMM6iHNy', '', '', '0000-00-00 00:00:00', '16945321-7', '1988-08-20', '2015-11-19', '25818761', '8761', 121, 7, 7, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(444, 'ALICIA VALESKA', 'MERINO  GARCIA', 'amerino@sii.cl', '$2y$10$S8jNe.mNRuYq3AG5FwvfVO0e2QGis7NgiyFudF18IBziOupm//Qhm', '', '', '0000-00-00 00:00:00', '12111661-8', '1971-11-16', '1998-09-21', '25818674', '8674', 121, 7, 5, 3, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(445, 'NICOL AURORA', 'MOLINA  PARDO', 'nicol.molina@sii.cl', '$2y$10$FkK7SmS2OiAVMBXaaKKyi.bOz4mEhsFThqiPJAH1JJp60SqGcYcXi', '', '', '0000-00-00 00:00:00', '16637022-1', '1987-03-13', '2005-11-02', '25818743', '8743', 121, 7, 14, 1, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(446, 'YESSICA ALEJANDRA', 'MORALES  CARRASCO', 'yessica.morales@sii.cl', '$2y$10$vhmCnGlSOTkeJ.jbP4MuZeGJO1vuKE4j1z3Y4lg6.gjavt5W5zpP6', '', '', '0000-00-00 00:00:00', '13383624-1', '1978-12-15', '2007-09-26', '25818729', '8729', 121, 7, 5, 3, 8, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(447, 'MAURICIO', 'MORALES  URRUTIA', 'mauricio.morales@sii.cl', '$2y$10$FqwL7qfWpOBPlkn4y2krmeTdk9iq9COrcjSxlYLLuACn9jTlSuSfy', '', '', '0000-00-00 00:00:00', '12880633-4', '1975-04-04', '2004-02-11', '25818753', '8753', 121, 7, 2, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(448, 'JUAN FRANCISCO', 'MORENO  MARTINEZ', 'juan.moreno@sii.cl', '$2y$10$rWE8JW/cXP5FInOlP9bRZeKeiJ92AS0iNnzs6wRDEiEiCwKjlb9kG', '', '', '0000-00-00 00:00:00', '17072318-K', '1989-01-18', '2016-07-28', '25818762', '8762', 121, 7, 6, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(449, 'CONSTANZA ANDREA', 'MORENO  MELLA', 'cmoreno@sii.cl', '$2y$10$ivJDECNY/SatfCkBTgMXxOicAfvyCcUctth9dbM6LG.uYGoAVPRN2', '', '', '0000-00-00 00:00:00', '12584187-2', '1974-03-27', '1999-02-01', '25818605', '8605', 121, 7, 3, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(450, 'RODRIGO', 'MUÑOZ  RUSQUE', 'rodrigo.munozr@sii.cl', '$2y$10$K9JTDJZeH/JNXDPwDxK/1exCP.pmACJkZVl3ehuVZcgDNZgHSllOq', '', '', '0000-00-00 00:00:00', '10800980-2', '1976-02-25', '2003-12-01', '25818702', '8702', 121, 7, 99, 3, 8, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(451, 'CHRISTIAN RENE', 'NORAMBUENA  VARELA', 'christian.norambuena@sii.cl', '$2y$10$N4n.djDkAp84pQqz.f7uRuMen3qm77kFXW8N5wDzORHNwqB63jZAO', '', '', '0000-00-00 00:00:00', '15373767-3', '1982-08-03', '2011-06-22', '25818634', '8634', 121, 7, 5, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(452, 'MARIA ALEJANDRA', 'NOZIGLIA  REYES', 'maria.noziglia@sii.cl', '$2y$10$sg6GX49CT5QgQXXdKQH4O.PSaTUUxhYp8F7q2WOyT4XwhFn0fUh7O', '', '', '0000-00-00 00:00:00', '16091650-8', '1985-04-20', '2012-06-14', '25818672', '8672', 121, 7, 5, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(453, 'STEFANIA PAZ', 'OBREQUE  CARRASCO', 'stefania.obreque@sii.cl', '$2y$10$Uk2p7VcGvSmZ3bG1zGUW7.rgvgKF84AGuoRtvUdv0IO2fm4L2vE/e', '', '', '0000-00-00 00:00:00', '17957011-4', '1991-04-13', '2016-07-28', '25818766', '8766', 121, 7, 4, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(454, 'CAROLINA ANDREA', 'OLAVE  QUIDEL', 'carolina.olave@sii.cl', '$2y$10$MShytxXk/jLX14b6y85GB.vxsLiqlqw6ua2QrY4vslyOrz/UPpbBO', '', '', '0000-00-00 00:00:00', '17002770-1', '1988-01-20', '2011-03-29', '25818660', '8660', 121, 7, 6, 2, 13, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(455, 'CARLA IVONNE', 'OLIVARES  ARENAS', 'carla.olivares@sii.cl', '$2y$10$FlyDORJNCqGX/Z/xK5yPWeVSt2vuyNr4ZnCe6yHU1vGNTH1cbwyX.', '', '', '0000-00-00 00:00:00', '12056674-1', '1981-08-24', '2012-06-14', '25818725', '8725', 121, 7, 1, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(456, 'FLAVIA RAQUEL', 'ORTIZ  QUEZADA', 'fortiz@sii.cl', '$2y$10$Go29LDpVZlIzkuA/QZf4tO5hj.T4mdRK6nEXwxC6ELOIB.8ZeWaN6', '', '', '0000-00-00 00:00:00', '6021433-6', '1952-03-08', '1973-03-01', '25818656', '8656', 121, 7, 99, 4, 5, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(457, 'LIDIA', 'OSORIO  DE LA JARA', 'lidia.osorio@sii.cl', '$2y$10$nm8IETQjo7nW2Vhf.DhsI.QmsyIC4HEqRHtpTCjWC6lQ7M5MKvv5C', '', '', '0000-00-00 00:00:00', '8697797-4', '1973-02-11', '1998-09-21', '25818606', '8606', 121, 7, 3, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(458, 'SUNEM MAGNOLIA', 'PADILLA  MUNOZ', 'sunem.padilla@sii.cl', '$2y$10$RW28gZTQ0qMjBWkPbvHe3OsJuJVeqOWLPKTK5JQ6NGEEvcNlHCqVm', '', '', '0000-00-00 00:00:00', '18209718-7', '1992-03-10', '2015-11-19', '25818767', '8767', 121, 7, 6, 3, 10, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(459, 'CRISTIAN OSVALDO', 'PALMA  RAMIREZ', 'cpalma@sii.cl', '$2y$10$IwCNVLZ9bBzsVueGAoXFmuQwDJEZAaxjF1l/tqbGzXG0IR0M2Emg.', '', '', '0000-00-00 00:00:00', '12288209-8', '1972-09-08', '2000-02-01', '25818647', '8647', 121, 7, 1, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(460, 'JUAN CARLOS', 'PARDO  VERGARA', 'juan.pardo@sii.cl', '$2y$10$9OlzUjjfUaWjiwVMEjUtWO.kFh5Ze9UiDCjG3K44DEV8d5w7ahQj6', '', '', '0000-00-00 00:00:00', '15415241-5', '1982-10-01', '2007-09-26', '25818652', '8652', 121, 7, 6, 3, 8, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(461, 'EDUARDO FABIO', 'PINTO  LOPEZ', 'epinto@sii.cl', '$2y$10$4l1Hcj3LZkYccfh9gwJMaeiXDg9zdBm3VSZkCoMdkKUhG/2DZLf.i', '', '', '0000-00-00 00:00:00', '12174896-7', '1972-09-02', '2002-01-21', '25818631', '8631', 121, 7, 99, 3, 7, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(462, 'PATRICIO ANDRES', 'POBLETE  COFRE', 'patricio.poblete@sii.cl', '$2y$10$tl/esT4iZu9FQM7BvutiE.6B.BGlB/E6ql9QYR2AGde4gs5Vo3q2S', '', '', '0000-00-00 00:00:00', '17603334-7', '1991-02-14', '2015-05-14', '25818730', '8730', 121, 7, 4, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(463, 'RICARDO ANTONIO', 'QUINTANAR  SANTIBANEZ', 'ricardo.quintanar@sii.cl', '$2y$10$gS4WRYMei943RhfHLMCEuOgP9ro3pwNHJp95ywWiNy4wT.H6nbZVO', '', '', '0000-00-00 00:00:00', '10193028-9', '1965-11-02', '2006-05-02', '25818658', '8658', 121, 7, 14, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(464, 'ROMINA SOLEDAD', 'RAVANAL  ORTEGA', 'rravanal@sii.cl', '$2y$10$yyba2k4hCjW80T9jvX9vt.KWIo0coOKlH/95CynWi1BW1WAuO0UDO', '', '', '0000-00-00 00:00:00', '12696846-9', '1974-06-09', '2001-02-12', '25818651', '8651', 121, 7, 6, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(465, 'PAULA ANDREA', 'REYES  MENESES', 'paulaa.reyes@sii.cl', '$2y$10$3mlWXZhjSR4JI0m5yqfGp.vpEC2wI1R6u8LNgJ8/G/F6/k6RbyRPa', '', '', '0000-00-00 00:00:00', '13863325-K', '1980-06-05', '2008-11-01', '25818618', '8618', 121, 7, 5, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(466, 'CAMILA MICAELA', 'REYES  RIVAS', 'camila.reyes@sii.cl', '$2y$10$kDdQ8PEEY5s1AfFOw0v5SetR5roEJMwEq4EydPbOYXLHvCRkYE7Ye', '', '', '0000-00-00 00:00:00', '17544285-5', '1990-02-16', '2018-05-02', '25818770', '8770', 121, 7, 14, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(467, 'ADOLFO HERNAN', 'ROJAS  YANEZ', 'adolfo.rojas@sii.cl', '$2y$10$Qk5UFHiWPMCELIETJqBCCe5twf6piiBwpp1YPNLGbJzoxaaeM3JxG', '', '', '0000-00-00 00:00:00', '10336213-K', '1967-11-09', '2007-10-03', '25818666', '8666', 121, 7, 7, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(468, 'LISSETTE ALEJANDRA', 'RUBILAR  GUERRA', 'lrubilar@sii.cl', '$2y$10$pIUQ5g3ct0kS5s24hz4HeOF9oEIFQcxOxu.FVkJjvLNxj9j4RJM6u', '', '', '0000-00-00 00:00:00', '14113882-0', '1978-10-17', '2003-01-15', '25818751', '8751', 121, 7, 4, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(469, 'NICOLE ESTEPHANY', 'SANCHEZ  DIAZ', 'nicole.sanchez@sii.cl', '$2y$10$u/Rt9USs7yNyoKHljEP.HuLnnqe5pZ8aizadc2hxIEWzyhtjoWhEa', '', '', '0000-00-00 00:00:00', '17775797-7', '1990-09-03', '2014-01-15', '25818723', '8723', 121, 7, 4, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(470, 'MELISSA CONSTANZA', 'SEPULVEDA  CACERES', 'melissa.sepulveda@sii.cl', '$2y$10$UOCZw4unG1OBnHKQMzVeO.9/NTZIyfhPiNmlLEPr77tGStGBwOduq', '', '', '0000-00-00 00:00:00', '17265529-7', '1989-04-26', '2020-01-29', '25818622', '8622', 121, 7, 3, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(471, 'CRISTIAN GONZALO', 'SERRANO  CONTRERAS', 'cristian.serrano@sii.cl', '$2y$10$NzaLGFJKe8DahisALQD2auY7ZSC5kFIPwKMW9gu8FrRzj3VJwYTY.', '', '', '0000-00-00 00:00:00', '12658644-2', '1974-11-25', '2008-11-01', '25818736', '8736', 121, 7, 1, 3, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(472, 'XIMENA VALERIA', 'SILVA  GONZALEZ', 'xsilva@sii.cl', '$2y$10$zQDoFQ4RjcDcVbh0M901/eyZDLGuxdXvKApxVwFLXEtALd8Blaiha', '', '', '0000-00-00 00:00:00', '9014458-8', '1971-04-08', '2001-01-31', '25818739', '8739', 121, 7, 3, 3, 8, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(473, 'CARLA ANGELICA', 'SOBARZO  OSSES', 'carla.sobarzo@sii.cl', '$2y$10$rBVY0qrKnUqqYSexckQBR..VjCEdFhRHkpXJHtBeP84LwyKfaCqk6', '', '', '0000-00-00 00:00:00', '15228740-2', '1982-02-19', '2015-11-19', '25818773', '8773', 121, 7, 3, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(474, 'DANY MATIAS', 'SOTO  MORALES', 'dany.soto@sii.cl', '$2y$10$V/SDBsjWuLJa.2F.GhNqIuKNNBi.p.jauuxW1IoLSCPzNww2iIQoe', '', '', '0000-00-00 00:00:00', '18028821-K', '1992-10-14', '2015-11-19', '25818706', '8706', 121, 7, 1, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(475, 'ERIC LEONARDO', 'TOBAR  LIZANA', 'eric.tobar@sii.cl', '$2y$10$lmGL43K9hci20J3GvW1wGu2ldb96AsrhSJRgCZCpcTnXoS16YxYbS', '', '', '0000-00-00 00:00:00', '17249659-8', '1989-05-06', '2015-05-18', '25818735', '8735', 121, 7, 6, 3, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(476, 'ULISES', 'UBEDA  POBLETE', 'ulises.ubeda@sii.cl', '$2y$10$xm.1VmvI.fVVlLp82rqYp.nfIMEENzTq8hu8DQUnXAhcvmcwf6o2a', '', '', '0000-00-00 00:00:00', '12479221-5', '1973-01-17', '1997-09-03', '25818701', '8701', 121, 7, 14, 2, 13, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(477, 'GUSTAVO ADOLFO', 'VILAZA  SEGOVIA', 'gustavo.vilaza@sii.cl', '$2y$10$3HL/n3sSTZh5Qxd9UY6BJOvxhaarPkgQgnnQVmHDO.B/G0ljjuH9W', '', '', '0000-00-00 00:00:00', '17340987-7', '1990-05-04', '2015-11-19', '25818756', '8756', 121, 7, 1, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(478, 'PAOLA ALEJANDRA', 'VILLALON  SAAVEDRA', 'pvillalo@sii.cl', '$2y$10$ScWtaeOmYNQwB5pAnNOjr.kK6HCk0h4oYHW9flLUnsiTa4fHl7Jf2', '', '', '0000-00-00 00:00:00', '12696983-K', '1974-06-29', '1998-09-21', '25818604', '8604', 121, 7, 2, 3, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(479, 'ALEJANDRO ALEXI', 'ZAMORA  PIZARRO', 'alejandro.zamora@sii.cl', '$2y$10$zsi4UPEa4ufjiXBv2PeAhOOYf/mSIlZSX/vOUpPR7PExYaQwz9pOm', '', '', '0000-00-00 00:00:00', '14583398-1', '1980-01-27', '2007-09-26', '25818732', '8732', 121, 7, 5, 3, 8, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(480, 'CARMEN ROSA', 'ALCATRUZ  RIQUELME', 'carmen.alcatruz@sii.cl', '$2y$10$1Pkuhj8CKtj8qYCm5Z275ehtB11TvrGdbaLJrYUqrsS6m0nBv.YKC', '', '', '0000-00-00 00:00:00', '12267123-2', '1972-02-04', '2007-06-14', '25818613', '8613', 122, 7, 8, 9, 8, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(481, 'ARMAND PIERO', 'ARNECHINO  JORY', 'armand.arnechino@sii.cl', '$2y$10$mpXikTaNQLCzPBxFEZAoDuWe9vf0S8xfRcUf2fP8HY/Bb16STCHY6', '', '', '0000-00-00 00:00:00', '11266135-2', '1968-10-13', '2009-03-18', '25818645', '8645', 122, 7, 99, 2, 11, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(482, 'PAMELA', 'CUEVAS  ALVARADO', 'pcuevas@sii.cl', '$2y$10$q9Dw8CkMc4LjX00rWWe7LOYVmLl/bUd83jYXpRn36HsXAAMOCW6X6', '', '', '0000-00-00 00:00:00', '10895195-8', '1972-12-18', '1997-11-17', '25818621', '8621', 122, 7, 99, 5, 2, 5, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(483, 'ROMINA ELIZABETH', 'FIGUEROA  RODRIGUEZ', 'romina.figueroa@sii.cl', '$2y$10$H1BCU2lhind9EYunpN15xu32CT/7qL4uEQueEjNxNwaSr22m4j03K', '', '', '0000-00-00 00:00:00', '17268100-K', '1989-08-24', '2021-09-20', '25818644', '8644', 122, 7, 8, 9, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(484, 'DANIELA ANDREA', 'GATICA  GATICA', 'daniela.gatica@sii.cl', '$2y$10$zhC5lnM3pDsIFv5D.4T78e.m.Lj5dBPEpMn/xSqxAxiAGDsL3/rse', '', '', '0000-00-00 00:00:00', '16015195-1', '1985-02-08', '2012-03-01', '25818603', '8603', 122, 7, 8, 9, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(485, 'VICTOR MANUEL', 'GRANDON  CERDA', 'vgrandon@sii.cl', '$2y$10$dSHOo/FnX.LwOIaUSn6BZ.udWj1PF0wLjN1MFeAhP9fsRE13HPUwy', '', '', '0000-00-00 00:00:00', '8174281-2', '1962-01-17', '1988-06-01', '25818687', '8687', 122, 7, 99, 9, 6, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(486, 'ANGELICA DEL PILAR', 'INOSTROZA  IBANEZ', 'angelica.inostroza@sii.cl', '$2y$10$E6qmpFljN4i4b.Ef3xVjKuMeT0DBfgq22A4b3TzY64J.urXgQK8Tu', '', '', '0000-00-00 00:00:00', '11054135-K', '1966-02-01', '2006-04-01', '25818610', '8610', 122, 7, 99, 2, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(487, 'GISELA ANDREA', 'JARA  SALAZAR', 'gisela.jara@sii.cl', '$2y$10$PfI/m/lkIrziaESvu0neZ.rdX7.vxxkeBZKNeW/Zy7QhalUmq1OWG', '', '', '0000-00-00 00:00:00', '15889508-0', '1984-08-11', '2017-08-21', '25818764', '8764', 122, 7, 8, 9, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(488, 'ROXANA ANDREA', 'LARA  JORQUERA', 'roxana.lara@sii.cl', '$2y$10$CHKcw3IXn9snHGQU0y1qXOHWri6ywDfrceWLKvO7qtU0IBNdMxcTW', '', '', '0000-00-00 00:00:00', '13922099-4', '1980-03-24', '2022-04-04', '25818625', '8625', 122, 7, 8, 9, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(489, 'PAULINA ALEJANDRA', 'LOPEZ  GODOY', 'paulina.lopez@sii.cl', '$2y$10$WLzIA6nf80wx5ZItfvaYPO7WyVG2ipdL6c1A5H.U7HZQJqdodbkeC', '', '', '0000-00-00 00:00:00', '15020004-0', '1982-07-27', '2021-03-08', '25818784', '8784', 122, 7, 8, 9, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(490, 'ALEX MARCELO', 'MEDINA  ROCHA', 'alex.medina@sii.cl', '$2y$10$nsiLzmSB8KRLlEy/g0aYmeFZYz/9pnVe60c76ooI26QLjqcdwT5LO', '', '', '0000-00-00 00:00:00', '14333610-7', '1977-09-12', '2012-03-05', '25818757', '8757', 122, 7, 8, 9, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(491, 'PABLO ENRIQUE', 'MUNOZ  TORRES', 'pablo.munozt@sii.cl', '$2y$10$cUqiU8v.TwcFkVViR3D1qeqEuxk8Vp.q7bRNJEsQVodevnGWfABNK', '', '', '0000-00-00 00:00:00', '16071634-7', '1985-09-15', '2021-03-08', '25818612', '8612', 122, 7, 8, 9, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(492, 'CLAUDIA JIMENA', 'ORTIZ  SERRANO', 'claudia.ortiz.s@sii.cl', '$2y$10$BmXZzWl/bZRZijbM78TaF.K.onWA5NlmYllL8E5uTyUd3MybWpKfi', '', '', '0000-00-00 00:00:00', '12468632-6', '1973-08-07', '2017-09-25', '25818683', '8683', 122, 7, 99, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(493, 'ROSA ELENA', 'PAREDES  RAMOS', 'rparedes@sii.cl', '$2y$10$b8AHjKPG3oT5UsZQXTZ9m./1lxNxhNnb9Soy9WIYGBEySlS6E7TaK', '', '', '0000-00-00 00:00:00', '7610932-K', '1956-05-17', '1996-12-01', '25818664', '8664', 122, 7, 99, 9, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(494, 'GUILLERMO PATRICIO', 'PLATA  CISTERNAS', 'gplata@sii.cl', '$2y$10$nz/ctzpnkUFue8yARIUD.ew7K4kw8Pv7D3RptzsSrPZHsy3QAxaeC', '', '', '0000-00-00 00:00:00', '6642953-9', '1952-09-28', '1983-10-01', '25818625', '8625', 122, 7, 99, 9, 5, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(495, 'CLAUDIO ANDRES', 'RIVEROS  MOLINA', 'claudio.riveros@sii.cl', '$2y$10$wk0.VWioA08Ujf7BD5dLdOm5hjKJu/XC09bTwwgFOs3Hw7NYTemJK', '', '', '0000-00-00 00:00:00', '10319088-6', '1977-10-31', '2015-06-01', '25818785', '8785', 122, 7, 99, 9, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(496, 'CLAUDIO ANDRES', 'VALLETTE  GORDON', 'claudio.vallette@sii.cl', '$2y$10$Qde3asHzm4svWSpeMlCUGuj7nLgd8bBXvUWnxzJrBxG1jCgqgPIHK', '', '', '0000-00-00 00:00:00', '13901806-0', '1980-03-02', '2018-04-02', '25818696', '8696', 122, 7, 99, 9, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(497, 'MIGUEL', 'VENTURA  RUBIO', 'miguel.ventura@sii.cl', '$2y$10$mEpMH1CErCB1J5oJWOIZBO70XhQNEmHBXZ0g.GahJ.Bh9iKlvjqti', '', '', '0000-00-00 00:00:00', '13095382-4', '1976-11-27', '2009-01-12', '25818643', '8643', 122, 7, 99, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(498, 'PATRICIA', 'ACUÑA  BARRUETO', 'patricia.acuna@sii.cl', '$2y$10$F.dqARpTv9nlW/.Tfpbue.LlfhKGCHglnEjONaCnsi.T0C7.mtKuu', '', '', '0000-00-00 00:00:00', '12251626-1', '1972-09-24', '2002-10-11', '25818623', '8623', 123, 7, 99, 2, 11, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(499, 'ELIAS ISRAEL', 'ALARCON  VERDEJO', 'ealarcon@sii.cl', '$2y$10$hiZH9qRRffvnh/RTb7JCfu31V.p2m/ZgawgWf8EIQMKu2CLK.3yYG', '', '', '0000-00-00 00:00:00', '8339197-9', '1961-03-23', '1987-10-01', '25818738', '8738', 123, 7, 10, 1, 10, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(500, 'JULIO CESAR', 'ALCAINO  SALAZAR', 'julio.alcaino@sii.cl', '$2y$10$pobSo0vaxECxuulmSg9iF.WHbiD354RG2E2TPLlurh76DCw2zzIwe', '', '', '0000-00-00 00:00:00', '12580075-0', '1974-07-15', '2018-08-27', '25818661', '8661', 123, 7, 12, 6, 16, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(501, 'OLGA KARINA', 'ARROS  CRISOSTO', 'olga.arros@sii.cl', '$2y$10$QzorGWdjz6RkDvNzh7VPL.aChBTnrqYxDkoIOeEf39.fq33BPb2.2', '', '', '0000-00-00 00:00:00', '12305361-3', '1972-07-17', '2008-11-01', '25818748', '8748', 123, 7, 12, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(502, 'JOHANNA MACARENA', 'BARRIOS  ZUNIGA', 'johanna.barrios@sii.cl', '$2y$10$z1A6UTOCXVoWqL.NNNNzxOcfmIW2Om3V6lpAC8OnbAT3LHoG5sjZG', '', '', '0000-00-00 00:00:00', '16921386-0', '1988-05-09', '2017-05-02', '25818769', '8769', 123, 7, 11, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(503, 'DAVID SAUL', 'BARROS  GODOY', 'david.barros@sii.cl', '$2y$10$QEfJFWGT5SiJOdw3dQjxMOX.gwL2tUr/5VlVIIkM23yEGNexC5S/u', '', '', '0000-00-00 00:00:00', '15770644-6', '1984-02-26', '2019-10-07', '0', '0', 123, 7, 10, 6, 16, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(504, 'MARCELA ALEJANDRA', 'CACERES  PARDO', 'marcela.caceres@sii.cl', '$2y$10$AUG8JjEADw7ANqRqATrLvespIa0iwXKFDciCpYDhOVppOr4CjfYK6', '', '', '0000-00-00 00:00:00', '16372116-3', '1986-02-05', '2016-05-02', '25818673', '8673', 123, 7, 12, 1, 14, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(505, 'ALEJANDRO ANTONIO', 'CANTO  NAREA', 'acanto@sii.cl', '$2y$10$tkVKQ0JNUEbiTovFdBjmHO/oOmKdsfS8.II9heVC876eKvGX/C6iK', '', '', '0000-00-00 00:00:00', '13049648-2', '1976-01-30', '1999-11-01', '25818649', '8649', 123, 7, 10, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(506, 'MANUEL', 'DIAZ  RAMIREZ', 'mfdiaz@sii.cl', '$2y$10$FRBSxN0EzWmDxGzK19K2kOAfDxdA8SSn8z8W4tMenGyggsLosb9FS', '', '', '0000-00-00 00:00:00', '7018885-6', '1956-05-10', '2000-01-01', '25818661', '8661', 123, 7, 12, 2, 11, 999, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(507, 'IVAN ALBERTO', 'DONOSO  RIVEROS', 'ivan.donoso@sii.cl', '$2y$10$CCCMFx1BQ0vkleejknJ7ve3a.qGp0.G/qEAZxYo6T6rR0tJbsTJaa', '', '', '0000-00-00 00:00:00', '10719738-9', '1968-12-30', '2008-09-22', '25818636', '8636', 123, 7, 11, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(508, 'NICOL ANDREA', 'FLORES  NEUMANN', 'nicol.flores@sii.cl', '$2y$10$iF.JAcOiX9XMehH2dy5jDO2zBRGPV.y5wf7daKFmOaa./QQzqQxO6', '', '', '0000-00-00 00:00:00', '17295748-K', '1990-04-06', '2020-01-29', '25818708', '8708', 123, 7, 11, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(509, 'ROMINA WALLY', 'GARRIDO  ARENAS', 'romina.garrido@sii.cl', '$2y$10$zLrPQloojUjv5x2dFjj9IuGRUKjcj4SeWLdAkHeN0aK1XTI58u0We', '', '', '0000-00-00 00:00:00', '8459435-0', '1970-08-30', '2015-01-05', '25818627', '8627', 123, 7, 12, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(510, 'LEOPOLDO', 'GONZALEZ  BARRERA', 'legonzal@sii.cl', '$2y$10$ck3mDUQogZqi5htKsMwwmOvUJYgVLKMCVLFJiEgL.fIA5FUJsAWzG', '', '', '0000-00-00 00:00:00', '6713818-K', '1952-05-28', '2000-01-01', '25818728', '8728', 123, 7, 11, 1, 9, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(511, 'MYRIAM ELIZABETH', 'HERNANDEZ  PEÑA', 'mhernand@sii.cl', '$2y$10$qRoVeUjm2lRMNZhrfpD/Kuz1rRtHhcvAvmyVppHjBjohS5L1qKl1a', '', '', '0000-00-00 00:00:00', '9153374-K', '1963-10-23', '1984-11-06', '25818639', '8639', 123, 7, 10, 1, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(512, 'PAMELA MARISOL', 'HERRERA  PLAZA', 'pamela.herrera@sii.cl', '$2y$10$jlb5YbmVI81KQ.vD7XH6FeC.5..Thp4HJ03kiNt5uJ/mMeG2j19uy', '', '', '0000-00-00 00:00:00', '11628489-8', '1970-05-16', '1995-01-01', '25818744', '8744', 123, 7, 10, 2, 11, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(513, 'SOLEDAD ALEJANDRA', 'HUAIQUIL  ELLADO', 'soledad.huaiquil@sii.cl', '$2y$10$PVG//JjKvn4UgWyE0MHuuuqQy1hvyd92JgSCwE9kZf6bNpX6lBUY2', '', '', '0000-00-00 00:00:00', '13630392-9', '1978-12-03', '2008-11-01', '25818662', '8662', 123, 7, 11, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(514, 'LUISA SILVIA', 'JORQUERA  CABELLO', 'ljorquera@sii.cl', '$2y$10$KKXiHgoJJ.gvskYvZTUzyOdDiwbeiRjQLYmyYaxFB2PC6nExym3Si', '', '', '0000-00-00 00:00:00', '10523179-2', '1969-01-31', '2002-01-21', '25818715', '8715', 123, 7, 99, 5, 2, 5, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(515, 'CRISTIAN ENRIQUE', 'LAZO  PEREZ', 'cristian.lazo@sii.cl', '$2y$10$5fdPPNHiK8f07ih/gCX7V.sBaEycQLLI5FPte/RZlQCQSG60XM8VC', '', '', '0000-00-00 00:00:00', '14154762-3', '1981-07-03', '2017-09-29', '25818713', '8713', 123, 7, 11, 3, 10, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(516, 'EDUARDO FERNANDO', 'LEIVA  VENEGAS', 'eduardo.leivav@sii.cl', '$2y$10$B.VovBO.26ydqxFGFrzww.BM0JLimu2bV4K4FFnaR059MYs1VmmsK', '', '', '0000-00-00 00:00:00', '10349739-6', '1975-07-30', '2012-03-05', '25818775', '8775', 123, 7, 11, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(517, 'IVONNE ANDREA', 'LILLO  SALINAS', 'ivonne.lillo@sii.cl', '$2y$10$U53.WkDdaK4JjCLxIeN89eaBMNVg4Uw9tW9IP77DG23r9RqbtdET2', '', '', '0000-00-00 00:00:00', '15779626-7', '1985-03-14', '2009-09-01', '25818763', '8763', 123, 7, 12, 2, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(518, 'FRANCISCO', 'MARIPANGUI  VELIZ', 'francisco.maripangui@sii.cl', '$2y$10$bqgWpHPb6wgTywa5xxz2yelLig.ecMjgS5GfSxEi0acRhJZmY.FjW', '', '', '0000-00-00 00:00:00', '13546256-K', '1976-07-10', '2004-01-16', '25818759', '8759', 123, 7, 10, 2, 13, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(519, 'GLORIA NOEMI', 'MAUREIRA  PINO', 'gloria.maureira@sii.cl', '$2y$10$PYaZDBAeMxMdF4d1gCFPr.z7fCy58c8V0WX.A.KyhLKfVwDkfuV86', '', '', '0000-00-00 00:00:00', '15161755-7', '1982-02-01', '2008-11-01', '25818718', '8718', 123, 7, 10, 3, 9, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(520, 'MACARENA MABEL', 'NAVARRETE  URRUTIA', 'macarena.navarrete@sii.cl', '$2y$10$QPwm6LndQ/dQE9pdSHTWZ.T/zdxjKiKWEzTQyY6nKo5lNv8PgSwkm', '', '', '0000-00-00 00:00:00', '16600001-7', '1987-07-24', '2020-01-29', '25818720', '8720', 123, 7, 99, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(521, 'EILEEN KAREN', 'ORELLANA  PENA', 'eileen.orellana@sii.cl', '$2y$10$1hYWDkBU3/oNX/v2RJ1gx.sL6Y3IbdxE7VWmcBhkPnRm422IpO0nG', '', '', '0000-00-00 00:00:00', '12889499-3', '1975-06-05', '2015-11-19', '25818765', '8765', 123, 7, 11, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(522, 'ROMINA DEL PILAR', 'OROSTICA  HERNANDEZ', 'romina.orostica@sii.cl', '$2y$10$PQwfzckoJVqI02EswU1NU.g4LMnMrt6ARrmKg126y1Z04zdv0dZT6', '', '', '0000-00-00 00:00:00', '14045709-4', '1981-10-19', '2016-10-07', '25818659', '8659', 123, 7, 11, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(523, 'MAURICIO', 'OSORIO  VIDELA', 'mauricio.osorio@sii.cl', '$2y$10$.Nfb2NUZlFsovwhF2HL2Juvz.YkeNpfWh7I5jFJeFLDdijk91gK0u', '', '', '0000-00-00 00:00:00', '11947591-0', '1969-11-14', '2001-01-01', '25818685', '8685', 123, 7, 10, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(524, 'PAOLA ADRIANA', 'PACHECO  BAYLEY', 'ppacheco@sii.cl', '$2y$10$XxolqKyg2sGncG0LvhNiDeWCDqGDjOLSQs3Te.K8YiGjgF.QymQyq', '', '', '0000-00-00 00:00:00', '11848722-2', '1969-07-17', '1993-05-01', '25818707', '8707', 123, 7, 11, 1, 11, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(525, 'YAMILET JOHANNA', 'PAINEN  CANIUNIR', 'yamilet.painen@sii.cl', '$2y$10$47LB8xk5i0.13xcziuqcAueJRIjW9moDUtsS/6Z6ILSk2UXiNVdIO', '', '', '0000-00-00 00:00:00', '12648477-1', '1973-12-21', '2007-07-10', '25818640', '8640', 123, 7, 10, 1, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(526, 'MARIA GRACIELA', 'REYES  MUNOZ', 'maria.graciela.reyes@sii.cl', '$2y$10$Rtczgy7J8inz1KXkvw3XxuwDHovsHV8pBVD1a0a5868q.HRqa0PbG', '', '', '0000-00-00 00:00:00', '16426667-2', '1986-05-19', '2016-07-26', '25818778', '8778', 123, 7, 10, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(527, 'ANDREA DEL CARMEN', 'ROJAS  ALVAREZ', 'andrea.rojas@sii.cl', '$2y$10$QweMi75FPZY8xGSr3qvf6.NB8IkPzRa0auudYmmi1/Bjs/kuwIXaa', '', '', '0000-00-00 00:00:00', '13232877-3', '1977-05-11', '2018-05-07', '25818637', '8637', 123, 7, 11, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(528, 'SONIA', 'ROJAS  CARRASCO', 'sarojas@sii.cl', '$2y$10$i9nFhZrTb.COxwdZUjmCROfY0SOcu3OcaX/0HJAI19cEgu.H0V4hy', '', '', '0000-00-00 00:00:00', '12892770-0', '1975-10-16', '2000-01-01', '25818749', '8749', 123, 7, 11, 2, 11, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38');
INSERT INTO `users` (`id`, `NOMBRES`, `APELLIDOS`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `RUT`, `FECHA_NAC`, `FECHA_INGRESO`, `FONO`, `ANEXO`, `ID_UBICACION`, `ID_REGION`, `ID_GRUPO`, `ID_ESCALAFON`, `ID_GRADO`, `ID_CARGO`, `ID_CALIDAD_JURIDICA`, `ID_SEXO`, `remember_token`, `created_at`, `updated_at`) VALUES
(529, 'CAROLINA ALEJANDRA', 'ROJAS  MEDINA', 'carolina.rojas.m@sii.cl', '$2y$10$.pwBvUSPgwju8orcVVYjcehAadh7xJa2EwDpzyEeKcC5z0a7wQ416', '', '', '0000-00-00 00:00:00', '13451093-5', '1978-04-16', '2017-05-02', '25818777', '8777', 123, 7, 99, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(530, 'RYNALDO ALEXIS', 'ROJAS  SANCHEZ', 'rynaldo.rojas@sii.cl', '$2y$10$ygT5zLZbI.J/ww3N5SzF6uSAF3V5RA5lrlY6rA9272Ef57PWJq2bC', '', '', '0000-00-00 00:00:00', '17511141-7', '1990-08-02', '2016-07-25', '25818609', '8609', 123, 7, 12, 2, 15, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(531, 'JESSICA VALERIA', 'SEGUIN  CABRERA', 'jessica.seguin@sii.cl', '$2y$10$VP4ljGz4pXbaJUly7dG6Nua2eCdm7cSviSlfvFK27d.Rf.JLC4Zvy', '', '', '0000-00-00 00:00:00', '11857990-9', '1971-08-16', '2009-05-18', '25818731', '8731', 123, 7, 10, 1, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(532, 'JOSE MAURICIO', 'URRUTIA  LAURIE', 'jurrutia@sii.cl', '$2y$10$GrxqlOGau1dux.qi1WKx0u7tbseKQHUHfBUqmHTjIccrQt6nnnNjm', '', '', '0000-00-00 00:00:00', '12192501-K', '1971-10-21', '2000-05-08', '25818601', '8601', 123, 7, 12, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(533, 'MARCELO OCTAVIO', 'VASQUEZ  VASQUEZ', 'marcelo.vasquez@sii.cl', '$2y$10$mbwdUlgogZkzYYbMS/5U.elB1ov98UPMJBYRnGbWeQDX.ipIil9Xq', '', '', '0000-00-00 00:00:00', '13756619-2', '1980-05-18', '2018-08-27', '25818624', '8624', 123, 7, 99, 2, 15, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(534, 'MANUEL JESUS', 'VENEGAS  QUEZADA', 'manuel.venegas@sii.cl', '$2y$10$.ZfkolQIqAFmF/8UOylyqOIhJROJw37jN99NaZ3X1PV.qPXT1TOmG', '', '', '0000-00-00 00:00:00', '8347818-7', '1958-09-14', '1999-09-13', '25818747', '8747', 123, 7, 12, 2, 12, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(535, 'FRANCISCO', 'VILLARROEL  MUÑOZ', 'fvillarroel@sii.cl', '$2y$10$zId82K9F89E2LyL0YJroa.UWZjhHyM/dFA9s8PzMfcLBmAyS.sO0.', '', '', '0000-00-00 00:00:00', '11645183-2', '1970-06-11', '1998-11-01', '25818750', '8750', 123, 7, 10, 2, 13, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(536, 'SERGIO MANUEL', 'ZUNIGA  GARCIA', 'sergio.zuniga@sii.cl', '$2y$10$skO2e7MyBMIIBfipZLkxxOatXXfi4iaOec3hCxnNhcdciPLvNqSK.', '', '', '0000-00-00 00:00:00', '7127629-5', '1955-06-09', '2006-06-27', '25818747', '8747', 123, 7, 11, 6, 14, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(537, 'SORAYA CAROLINA', 'CASTILLO  GUTIERREZ', 'soraya.castillo@sii.cl', '$2y$10$LfWKoMLiwS.uzJQh6lGCc.iMBEBJ1fl6futuYJDV8xKcqfpZWGOsu', '', '', '0000-00-00 00:00:00', '16162288-5', '1985-03-09', '2022-04-11', '25818782', '8782', 124, 7, 99, 4, 7, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(538, 'JORGE IVAN', 'CHACON  CANALES', 'jchacon@sii.cl', '$2y$10$5ofHqrzZJWECq8yrUVU6MOYKhx.DAQcnMOuBbzIU/LV8b6dNvW5Du', '', '', '0000-00-00 00:00:00', '10965784-0', '1969-06-19', '1998-03-01', '25818675', '8675', 124, 7, 99, 3, 6, 99, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(539, 'PAMELA PAZ', 'CONTRERAS  GILBERTO', 'pamela.contreras@sii.cl', '$2y$10$btEWpRIbJ53MD2s44DIBiOKhtTnIgthts/7PGWhB8AneSkndTifdG', '', '', '0000-00-00 00:00:00', '15899240-K', '1984-04-25', '2017-05-02', '25818670', '8670', 124, 7, 99, 2, 15, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(540, 'SUSANA PAZ', 'DIAZ  BARROS', 'susana.diaz@sii.cl', '$2y$10$mjwcbyNA2fyRHAaQmc7/ZutbhGDBd3sn.9sGPI3SEDAIQVmD0F0Zq', '', '', '0000-00-00 00:00:00', '15325158-4', '1979-09-15', '2012-05-02', '25818714', '8714', 124, 7, 99, 4, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(541, 'CAMILO FRANCISCO', 'ESCOBAR  SALINAS', 'camilo.escobar@sii.cl', '$2y$10$/MlJNkngdC1ysuxqAwoJd..2zIRJYA/ywi0Iv/vjFNGpFFDYnsvSC', '', '', '0000-00-00 00:00:00', '17704440-7', '1991-09-17', '2022-04-11', '25818786', '8786', 124, 7, 99, 4, 7, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(542, 'NATALY DANIELA', 'HERNANDEZ  MELLADO', 'nataly.hernandez@sii.cl', '$2y$10$EWOJhzWpXpWvf5gfqmWwouaIJRRm5Jr2XOP34stV6pfbUTtUZAgC6', '', '', '0000-00-00 00:00:00', '15925211-6', '1984-10-29', '2015-10-19', '25818700', '8700', 124, 7, 99, 4, 7, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(543, 'PAULINA', 'MARCHANT  BURMEISTER', 'paulina.marchant@sii.cl', '$2y$10$hLWICwJ928xX14ENWUjJhO2wHqGlHmZsYHk3DRIk3nhwMl552BJLa', '', '', '0000-00-00 00:00:00', '11633674-K', '1970-05-30', '2003-11-17', '25818695', '8695', 124, 7, 99, 4, 4, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(544, 'JORGE IGNACIO', 'MISLEH  BOTTO', 'jmisleh.externo@sii.cl', '$2y$10$iGel2KAoDrQ9KClk9yJH.O4HrZl7u64DMIJelUS2OTyy5VknLVjD6', '', '', '0000-00-00 00:00:00', '18635670-5', '1993-09-21', '2023-04-24', '0', '0', 124, 7, 99, 4, 8, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(545, 'IGNACIO MARTIN', 'PLAZA  CISTERNAS', 'ignacio.plaza@sii.cl', '$2y$10$wOskxCVyEwWX5hfkmJhImul7bmFfp7BikfRDsoazzKvC7FmJIb87K', '', '', '0000-00-00 00:00:00', '18455780-0', '1993-04-06', '2022-09-01', '25818602', '8602', 124, 7, 99, 4, 7, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(546, 'CARLOS IVAN', 'SANDOVAL  GONZALEZ', 'carlos.sandoval@sii.cl', '$2y$10$yRnvGibCRryUE.8vbTbRLujJqhwSXq83YFqatUlDdVlCj6KJuJcA2', '', '', '0000-00-00 00:00:00', '16909250-8', '1988-06-17', '2015-10-26', '25818712', '8712', 124, 7, 99, 4, 7, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(547, 'MARIO GUILLERMO DE JESUS', 'SWITT  RIVEROS', 'mario.switt@sii.cl', '$2y$10$V5POH9igvieLxYGV4dpA4eOuNaP7sUyg71GQ32NNxa/4aFhQ9dXnG', '', '', '0000-00-00 00:00:00', '18119658-0', '1992-05-12', '2022-04-01', '25818787', '8787', 124, 7, 99, 4, 7, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(548, 'EUGENIO', 'WARNIER  READI', 'eugenio.warnier@sii.cl', '$2y$10$pMk2Iu5MMUGD.Q21w81q1uCeLmkRyY4Ivtnn3ph6z/ovIjq2F6.oe', '', '', '0000-00-00 00:00:00', '13832159-2', '1980-10-30', '2011-04-04', '25818747', '8747', 124, 7, 99, 5, 2, 5, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(549, 'RAIMUNDO JOSE', 'YANINE  MONTANER', 'raimundo.yanine@sii.cl', '$2y$10$cnwPNM6uiX4xhdHHM3ZDGOWfO2uz2csmuA0z2XzQeR7L7OXm0v4wi', '', '', '0000-00-00 00:00:00', '16794411-6', '1987-12-12', '2022-09-01', '25818710', '8710', 124, 7, 99, 4, 7, 99, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(550, 'SOLEDAD ELENA', 'ALDANA  CORDOVA', 'soledad.aldana@sii.cl', '$2y$10$qTKF2kTV9jiZ8ayTIaiwJuLdEXy46YyjfH4Z1yVj1Sn782VDiubjK', '', '', '0000-00-00 00:00:00', '12890725-4', '1975-08-11', '2011-02-14', '25818633', '8633', 125, 7, 99, 2, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(551, 'JAVIERA FRANCISCA', 'CABEZAS  ITURRA', 'javiera.cabezas@sii.cl', '$2y$10$OnFntjIS6/8jiQl3dWJJneeWfVHdgApkT2zWAh434K3Wsx/b02G1a', '', '', '0000-00-00 00:00:00', '18622819-7', '1995-04-21', '2022-09-01', '25818733', '8733', 125, 7, 99, 4, 7, 999, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(552, 'MARIA CRISTINA', 'CAMUS  ARANDA', 'mcamus@sii.cl', '$2y$10$E8Ldk/wvHhK6/i.c0BQw3.RM17BLDxKsn5X3prQxLjWOGKp07/k5C', '', '', '0000-00-00 00:00:00', '7104982-5', '1953-11-14', '1976-01-12', '25818614', '8614', 125, 7, 99, 3, 6, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(553, 'CRISTOPHER', 'MONSALVES  ZAMUDIO', 'cristopher.monsalves@sii.cl', '$2y$10$0nZcSNtWrhw9fSSu.ZBcr.tPvUaL4Lhgn5Kzq7qFlAoIh3J8Br9DG', '', '', '0000-00-00 00:00:00', '15342909-K', '1983-11-27', '2015-10-26', '25818704', '8704', 125, 7, 99, 4, 7, 999, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(554, 'IGNACIO GENARO ALEJANDRO', 'PINO  MORA', 'ignacio.pino@sii.cl', '$2y$10$8L.qu2Nnbj1tBP1YxwPes.1bl1ajPwxN0EyHM5wo5TJqpN1OgPotW', '', '', '0000-00-00 00:00:00', '16586651-7', '1987-11-19', '2017-02-27', '25818699', '8699', 125, 7, 99, 4, 7, 999, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(555, 'SUSANA', 'PULGAR  GUAJARDO', 'spulgar@sii.cl', '$2y$10$.kLMmW2jVg9WODEBk7KSzePZyqGzDMsxg4OrBJUuASVbdKW13KdhS', '', '', '0000-00-00 00:00:00', '8513029-3', '1958-12-28', '1994-12-05', '25818698', '8698', 125, 7, 99, 3, 6, 999, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(556, 'JUAN ANDREI', 'ROJAS  VILLAR', 'juan.rojas@sii.cl', '$2y$10$aeOfAmtYTIwOeMgahRoEze16oHMu5xHQhOjc1bWRyuR5i3swgA9GC', '', '', '0000-00-00 00:00:00', '12637825-4', '1974-10-16', '2012-01-02', '25818754', '8754', 125, 7, 99, 2, 11, 999, 2, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(557, 'PAULA CAROLINA', 'VELIZ  PAIVA', 'paula.veliz@sii.cl', '$2y$10$Dm2uMSyq2r3gyNEz26WBGeXI9b/PjaR7ZZ0q.hd3QLzVmnqW4bCla', '', '', '0000-00-00 00:00:00', '13756121-2', '1980-02-19', '2015-02-09', '25818632', '8632', 125, 7, 99, 5, 2, 5, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(558, 'PABLO EDUARDO', 'VIDELA  FUENTES', 'pablo.videla@sii.cl', '$2y$10$1Htm68xsuVVjiLXBvUHcCO9qhTkF70J/BQ1jVblQ86IZldoflK9f2', '', '', '0000-00-00 00:00:00', '15550664-4', '1985-06-03', '2014-02-27', '25818608', '8608', 125, 7, 99, 4, 7, 999, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(559, 'PATRICIA DEL CARMEN', 'VILLANUEVA  VERGARA', 'patricia.villanueva@sii.cl', '$2y$10$D3Wanf0YDYMZlOLd2vx4hOx8abtthLEc0rB3AybFl0UN.Ta6Ko2Be', '', '', '0000-00-00 00:00:00', '7573472-7', '1954-10-10', '2013-08-14', '25818716', '8716', 125, 7, 99, 2, 12, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(560, 'PABLO TEODORO', 'VILLARROEL  DE LA HOZ', 'ptvillarroel@sii.cl', '$2y$10$2mxRUWG6XnTNtuIMK0sioOjyeS2hMFu8tB.RXCX1vmtatQpCdl4mK', '', '', '0000-00-00 00:00:00', '12879558-8', '1971-07-18', '2001-02-12', '25818641', '8641', 125, 7, 99, 3, 7, 999, 1, 1, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(561, 'PAMELA CAROLINA', 'VILLARROEL  VALDIVIA', 'pvillarroel@sii.cl', '$2y$10$4tqsRpUGif2hb4d3VB4TJ.GKSTFOqXi3US/ktAidWTpIX7N2sA5xO', '', '', '0000-00-00 00:00:00', '10475962-9', '1966-05-02', '2001-02-12', '25818690', '8690', 125, 7, 99, 3, 7, 99, 1, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:27:38'),
(562, 'NATALIA NICOLE', 'AHUMADA  PIZARRO', 'Natalia.ahumada@sii.cl', '$2y$10$e.7ljHno1sK1gxQgyqeRNOZagYE8MUZlq2NZvk2ezCVz7NGQqIBsS', '', '', '0000-00-00 00:00:00', '15105695-4', '1985-11-22', '2016-07-28', '25818719', '8719', 121, 7, 99, 3, 10, 99, 2, 2, '', '0000-00-00 00:00:00', '2023-10-06 18:41:50');

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
(1, 'FJSF-27', 2, 'MAHINDRA', 'SCORPIO', '2013', 102, 'DISPONIBLE', NULL, '2023-07-08 00:50:09'),
(2, 'HSHV-15', 2, 'TOYOTA', 'RAV 4', '2016', 46, 'DISPONIBLE', NULL, NULL),
(5, 'CWVK-30', 2, 'HYUNDAI', 'TUCSON', '2011', 48, 'DISPONIBLE', NULL, NULL),
(6, 'GBTL-10', 4, 'MAHINDRA', 'GENIO', '2014', 45, 'DISPONIBLE', NULL, NULL),
(7, 'CWYD-87', 1, 'HYUNDAI', 'ELANTRA', '2011', 50, 'DISPONIBLE', NULL, NULL),
(8, 'GVDY-20', 4, 'CHEVROLET', 'D-MAX', '2015', 108, 'DISPONIBLE', NULL, '2023-07-08 00:51:00'),
(9, 'LZFF-48', 2, 'HYUNDAI', 'TUCSON', '2020', 106, 'DISPONIBLE', NULL, '2023-07-08 00:55:55'),
(10, 'FJGK-74', 4, 'FIAT', 'DUCATO', '2013', 102, 'DISPONIBLE', NULL, '2023-07-08 00:45:28'),
(11, 'CWYF-10', 1, 'HYUNDAI', 'ELANTRA', '2011', 46, 'DISPONIBLE', NULL, NULL),
(12, 'HSHV-23', 2, 'TOYOTA', 'RAV 4', '2016', 102, 'DISPONIBLE', NULL, '2023-07-08 00:52:18'),
(13, 'KDVD-24', 2, 'TOYOTA', 'RAV 4', '2018', 102, 'DISPONIBLE', NULL, '2023-07-08 00:54:10'),
(14, 'KDVD-46', 2, 'TOYOTA', 'RAV 4', '2018', 104, 'DISPONIBLE', NULL, '2023-07-08 00:55:32'),
(15, 'KDVD-44', 2, 'TOYOTA', 'RAV 4', '2018', 104, 'DISPONIBLE', NULL, '2023-07-08 00:55:11');

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
-- Indices de la tabla `rel_fun_salas`
--
ALTER TABLE `rel_fun_salas`
  ADD PRIMARY KEY (`ID_SOL_SALA`);

--
-- Indices de la tabla `rel_fun_veh`
--
ALTER TABLE `rel_fun_veh`
  ADD PRIMARY KEY (`ID_SOL_VEH`);

--
-- Indices de la tabla `rel_mat_mov`
--
ALTER TABLE `rel_mat_mov`
  ADD PRIMARY KEY (`ID_MOVIMIENTO`);

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
  MODIFY `ID_MATERIAL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `ID_SOL_BODEGA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rel_fun_equipos`
--
ALTER TABLE `rel_fun_equipos`
  MODIFY `ID_SOL_EQUIPOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `rel_fun_form`
--
ALTER TABLE `rel_fun_form`
  MODIFY `ID_SOL_FORM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rel_fun_mat`
--
ALTER TABLE `rel_fun_mat`
  MODIFY `ID_SOLICITUD` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rel_fun_rep_general`
--
ALTER TABLE `rel_fun_rep_general`
  MODIFY `ID_REP_INM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `rel_fun_rep_veh`
--
ALTER TABLE `rel_fun_rep_veh`
  MODIFY `ID_SOL_REP_VEH` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `rel_fun_salas`
--
ALTER TABLE `rel_fun_salas`
  MODIFY `ID_SOL_SALA` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rel_fun_veh`
--
ALTER TABLE `rel_fun_veh`
  MODIFY `ID_SOL_VEH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rel_mat_mov`
--
ALTER TABLE `rel_mat_mov`
  MODIFY `ID_MOVIMIENTO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

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
