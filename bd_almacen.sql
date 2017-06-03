-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2017 a las 02:03:13
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_almacen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_almacen`
--

CREATE TABLE `alm_almacen` (
  `alm_id` int(11) NOT NULL COMMENT 'identificador del almancen',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `alm_nom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre del almacen',
  `alm_dire` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'direccion del almacen',
  `alm_freg` date DEFAULT NULL COMMENT 'fecha de registro del almancen',
  `alm_est` tinyint(1) DEFAULT NULL COMMENT 'estado del almacen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla almacen';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_categoria`
--

CREATE TABLE `alm_categoria` (
  `cate_id` int(11) NOT NULL COMMENT 'identificador de la categoria',
  `cate_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de la categoria',
  `cate_freg` date DEFAULT NULL COMMENT 'fecha del registro de la categoria',
  `cate_est` tinyint(1) DEFAULT NULL COMMENT 'estado de la categoria activo''1'', desactivo''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla categoria';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_controlingreso`
--

CREATE TABLE `alm_controlingreso` (
  `ctin_id` int(11) NOT NULL COMMENT 'indetificador del control de ingreso ',
  `prod_id` int(11) DEFAULT NULL COMMENT 'identificador de producto',
  `nti_id` int(11) DEFAULT NULL COMMENT 'identificador nota de ingreso',
  `ctin_cip` int(11) DEFAULT NULL COMMENT 'cantidad de ingreso de producto',
  `ctin_cpp` int(11) DEFAULT NULL COMMENT 'cantidad pendiente de producto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de control de ingreso';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_controlsalida`
--

CREATE TABLE `alm_controlsalida` (
  `ctsd_id` int(11) NOT NULL COMMENT 'control de salida de producto',
  `nts_id` int(11) DEFAULT NULL COMMENT 'identificador nota de producto',
  `prod_id` int(11) DEFAULT NULL COMMENT 'identificador de producto',
  `ctsd_csp` int(11) DEFAULT NULL COMMENT 'cantidad de salida de productos',
  `ctsd_cpp` int(11) DEFAULT NULL COMMENT 'cantidad pendiente de productos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='control de salida de productos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_dato_persona`
--

CREATE TABLE `alm_dato_persona` (
  `dtpe_id` int(11) NOT NULL COMMENT 'identificador del detalle',
  `perso_id` int(11) DEFAULT NULL COMMENT 'identificador de la persona',
  `tpdt_id` int(11) DEFAULT NULL COMMENT 'identificador del tipo de dato',
  `dtpe_desc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de dato en detalle',
  `dtpe_est` tinyint(1) DEFAULT NULL COMMENT 'estado '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='detalle del tipo de dato y la persona';

--
-- Volcado de datos para la tabla `alm_dato_persona`
--

INSERT INTO `alm_dato_persona` (`dtpe_id`, `perso_id`, `tpdt_id`, `dtpe_desc`, `dtpe_est`) VALUES
(1, 1, 1, '46864566', 1),
(2, 1, 5, 'El Carmen Mz. 25 Lt. 8', 1),
(3, 1, 6, '944940055', 1),
(4, 2, 1, '43458671', 1),
(5, 2, 5, 'julio', 1),
(6, 2, 6, '975118172', 1),
(7, 3, 1, '45201241', 1),
(8, 3, 5, 'china', 1),
(9, 3, 6, '968863541', 1),
(10, 4, 1, '41024587', 1),
(11, 4, 5, 'renso', 1),
(12, 4, 6, '971755797', 1),
(13, 5, 1, '60804925', 1),
(14, 5, 5, 'El Pacífico- Nuevo Chimbote  Mz. I2 Lt. 37', 1),
(15, 5, 6, '971755750', 1),
(16, 6, 1, '58902204', 1),
(17, 6, 5, 'California- Nuevo Chimbote Mz. E Lt. 7', 1),
(18, 6, 6, '945751292', 1),
(19, 7, 1, '58410067', 1),
(20, 7, 5, 'Avenida Enrique Meiggs, 280 Miramar Bajo', 1),
(21, 7, 6, '936277740', 1),
(22, 8, 1, '32133789', 1),
(23, 8, 5, 'Pasaje Cajamarca Mz. 20 Lt. 1 - AA. HH Miraflores', 1),
(24, 8, 6, '981509018', 1),
(25, 9, 1, '45136594', 1),
(26, 9, 5, 'Avenida Enrique Meiggs, 292 - Miramar Bajo', 1),
(27, 9, 6, '942948191', 1),
(28, 10, 1, '71285480', 1),
(29, 10, 5, 'Avenida Aviación, 301 - Miramar Bajo', 1),
(30, 10, 6, '970912858', 1),
(31, 11, 1, '51539341', 1),
(32, 11, 5, 'Jr. Ica 588', 1),
(33, 11, 6, '902475305', 1),
(34, 12, 1, '55671671', 1),
(35, 12, 5, 'Av. Francisco Bolognesi 320', 1),
(36, 12, 6, '985718976', 1),
(37, 13, 1, '56326630', 1),
(38, 13, 5, 'Av Enrique Meiggs Nro 275 Ur Miramar Bajo ', 1),
(39, 13, 6, '928615672', 1),
(40, 14, 1, '64272014', 1),
(41, 14, 5, 'Av. Buenos Aries 712 Mza. S lt. 29 ', 1),
(42, 14, 6, '944066594', 1),
(43, 15, 1, '48828404', 1),
(44, 15, 5, 'Mz L Lt 16 Ah El acero ', 1),
(45, 15, 6, '960812032', 1),
(46, 16, 1, '25078775', 1),
(47, 16, 5, 'Av Jose Pardo Nro 990 Pj Miramar Bajo ', 1),
(48, 16, 6, '940131781', 1),
(49, 17, 1, '77328478', 1),
(50, 17, 5, 'Mz D Lt 24 Ah Miramar Alto ', 1),
(51, 17, 6, '943123833', 1),
(52, 18, 1, '68130630', 1),
(53, 18, 5, 'Jirón Espinar, 405 ', 1),
(54, 18, 6, '945916317', 1),
(55, 19, 1, '39283153', 1),
(56, 19, 5, 'Jr Elias Aguirre Nro 181', 1),
(57, 19, 6, '943010187', 1),
(58, 20, 1, '81098572', 1),
(59, 20, 5, 'Jirón Espinar , 511', 1),
(60, 20, 6, '928963513', 1),
(61, 21, 1, '79021196', 1),
(62, 21, 5, 'Jirón Enrique Palacios, 466', 1),
(63, 21, 6, '946265903', 1),
(64, 22, 1, '48270930', 1),
(65, 22, 5, 'Jr Ladislao Espinar Nro 301', 1),
(66, 22, 6, '943462976', 1),
(67, 23, 1, '48113532', 1),
(68, 23, 5, 'Los Cedros, 500 - Urb. La Caleta', 1),
(69, 23, 6, '946671501', 1),
(70, 24, 1, '76231936', 1),
(71, 24, 5, 'Jirón Leoncio Prado, 766 ', 1),
(72, 24, 6, '941866628', 1),
(73, 25, 1, '81665906', 1),
(74, 25, 5, 'Alfonso Ugarte 561', 1),
(75, 25, 6, '943530404', 1),
(76, 26, 1, '46681605', 1),
(77, 26, 5, 'Avenida Enrique Meiggs, 210', 1),
(78, 26, 6, '905683223', 1),
(79, 27, 1, '63684597', 1),
(80, 27, 5, 'Jirón Ladislao Espinar, 709', 1),
(81, 27, 6, '915743206', 1),
(82, 28, 1, '44659585', 1),
(83, 28, 5, 'Jr Leoncio Prado Nro 770', 1),
(84, 28, 6, '943216048', 1),
(85, 29, 1, '46436026', 1),
(86, 29, 5, 'Av. Buenos Aries 710 Mza. S lt. 17', 1),
(87, 29, 6, '996165212', 1),
(88, 30, 1, '83184977', 1),
(89, 30, 5, 'Av. Buenos Aries 712 Mza. S lt. 17', 1),
(90, 30, 6, '976748526', 1),
(91, 31, 1, '57285758', 1),
(92, 31, 5, 'Av. Buenos Aries 711 Mza. S lt. 10', 1),
(93, 31, 6, '930970940', 1),
(94, 32, 1, '52654869', 1),
(95, 32, 5, 'Av. Buenos Aries 710 Mza. S lt. 14', 1),
(96, 32, 6, '971474288', 1),
(97, 33, 1, '33633226', 1),
(98, 33, 5, 'Av. Buenos Aries 712 Mza. S lt. 18', 1),
(99, 33, 6, '930465844', 1),
(100, 34, 1, '39706405', 1),
(101, 34, 5, 'Jr Elias Aguirre Nro 210', 1),
(102, 34, 6, '957099188', 1),
(103, 35, 1, '34275427', 1),
(104, 35, 5, 'Jr Elias Aguirre Nro 150', 1),
(105, 35, 6, '962133807', 1),
(106, 36, 1, '13434055', 1),
(107, 36, 5, 'Jr Elias Aguirre Nro 171', 1),
(108, 36, 6, '908828534', 1),
(109, 37, 1, '70796590', 1),
(110, 37, 5, 'Jr Elias Aguirre Nro 160', 1),
(111, 37, 6, '909727442', 1),
(112, 38, 1, '78564539', 1),
(113, 38, 5, 'Jirón Leoncio Prado, 520 ', 1),
(114, 38, 6, '902935472', 1),
(115, 39, 1, '38181210', 1),
(116, 39, 5, 'Jirón Leoncio Prado, 566 ', 1),
(117, 39, 6, '968143474', 1),
(118, 40, 1, '82435553', 1),
(119, 40, 5, 'Jirón Leoncio Prado, 740', 1),
(120, 40, 6, '927677227', 1),
(121, 41, 1, '75988694', 1),
(122, 41, 5, 'Jirón Leoncio Prado, 766 ', 1),
(123, 41, 6, '990427348', 1),
(124, 42, 1, '96225478', 1),
(125, 42, 5, 'Jirón Leoncio Prado, 750 ', 1),
(126, 42, 6, '977764863', 1),
(127, 43, 1, '42308077', 1),
(128, 43, 5, 'Av. Buenos Aries 712 Mza. S lt. 29 ', 1),
(129, 43, 6, '934456681', 1),
(130, 44, 1, '48407482', 1),
(131, 44, 5, 'Av. Buenos Aries 712 Mza. S lt. 29 ', 1),
(132, 44, 6, '922640324', 1),
(133, 45, 1, '55515727', 1),
(134, 45, 5, 'Av. Buenos Aries 322 Mza. S lt. 50', 1),
(135, 45, 6, '978848676', 1),
(136, 46, 1, '49034330', 1),
(137, 46, 5, 'Av. Buenos Aries 6802 Mza. S lt. 29 ', 1),
(138, 46, 6, '950550092', 1),
(139, 47, 1, '83135700', 1),
(140, 47, 5, 'Av. Buenos Aries 720 Mza. S lt. 35', 1),
(141, 47, 6, '934709871', 1),
(142, 48, 1, '91943616', 1),
(143, 48, 5, 'Av. Buenos Aries 530 Mza. S lt. 17', 1),
(144, 48, 6, '976649124', 1),
(145, 49, 1, '17112140', 1),
(146, 49, 5, 'Av. Buenos Aries 512 Mza. S lt. 15 ', 1),
(147, 49, 6, '922812921', 1),
(148, 50, 1, '96974053', 1),
(149, 50, 5, 'Av. Buenos Aries 620 Mza. S lt. 20', 1),
(150, 50, 6, '969428595', 1),
(151, 51, 1, '48746527', 1),
(152, 51, 5, 'Avenida Enrique Meiggs, 302 - Miramar Bajo', 1),
(153, 51, 6, '970732068', 1),
(154, 52, 1, '42996257', 1),
(155, 52, 5, 'Avenida Enrique Meiggs, 292 - Miramar Bajo', 1),
(156, 52, 6, '984551316', 1),
(157, 53, 1, '23243864', 1),
(158, 53, 5, 'Avenida Enrique Meiggs, 292 - Miramar Bajo', 1),
(159, 53, 6, '957968320', 1),
(160, 54, 1, '48839442', 1),
(161, 54, 5, 'Avenida Enrique Meiggs, 192 - Miramar Bajo', 1),
(162, 54, 6, '957008753', 1),
(163, 55, 1, '43243864', 1),
(164, 55, 5, 'Avenida Enrique Meiggs, 252 - Miramar Bajo', 1),
(165, 55, 6, '958970431', 1),
(166, 56, 1, '66481837', 1),
(167, 56, 5, 'Avenida Enrique Meiggs, 291 - Miramar Bajo', 1),
(168, 56, 6, '963692862', 1),
(169, 57, 1, '68455807', 1),
(170, 57, 5, 'Avenida Enrique Meiggs, 295 - Miramar Bajo', 1),
(171, 57, 6, '921692541', 1),
(172, 58, 1, '44655639', 1),
(173, 58, 5, 'Avenida Enrique Meiggs, 092 - Miramar Bajo', 1),
(174, 58, 6, '975669073', 1),
(175, 59, 1, '70618410', 1),
(176, 59, 5, 'Jr Elias Aguirre Nro 100', 1),
(177, 59, 6, '902706813', 1),
(178, 60, 1, '15378938', 1),
(179, 60, 5, 'Jr Elias Aguirre Nro 095', 1),
(180, 60, 6, '995705034', 1),
(181, 61, 1, '95546709', 1),
(182, 61, 5, 'Jr Elias Aguirre Nro 175', 1),
(183, 61, 6, '957154900', 1),
(184, 62, 1, '43607613', 1),
(185, 62, 5, 'Jr Elias Aguirre Nro 162', 1),
(186, 62, 6, '976803257', 1),
(187, 63, 1, '17926898', 1),
(188, 63, 5, 'Jr Elias Aguirre Nro 192', 1),
(189, 63, 6, '943563190', 1),
(190, 64, 1, '57419247', 1),
(191, 64, 5, 'Jr Elias Aguirre Nro 182', 1),
(192, 64, 6, '963520037', 1),
(193, 65, 1, '86005939', 1),
(194, 65, 5, 'Jr Elias Aguirre Nro 157', 1),
(195, 65, 6, '919810883', 1),
(196, 66, 1, '38464171', 1),
(197, 66, 5, 'Jr Elias Aguirre Nro 350', 1),
(198, 66, 6, '990363921', 1),
(199, 67, 1, '27784309', 1),
(200, 67, 5, 'Jr Elias Aguirre Nro 302', 1),
(201, 67, 6, '993899334', 1),
(202, 68, 1, '49865683', 1),
(203, 68, 5, 'Jr Elias Aguirre Nro 215', 1),
(204, 68, 6, '913197181', 1),
(205, 69, 1, '83623628', 1),
(206, 69, 5, 'Jr Elias Aguirre Nro 220', 1),
(207, 69, 6, '984487153', 1),
(208, 70, 1, '62626019', 1),
(209, 70, 5, 'Jr Elias Aguirre Nro 150', 1),
(210, 70, 6, '950545307', 1),
(211, 71, 1, '63119106', 1),
(212, 71, 5, 'Jirón José Olaya, 550', 1),
(213, 71, 6, '983657101', 1),
(214, 72, 1, '40052697', 1),
(215, 72, 5, 'Jirón José Olaya, 250', 1),
(216, 72, 6, '923129614', 1),
(217, 73, 1, '99156391', 1),
(218, 73, 5, 'Jirón José Olaya, 557', 1),
(219, 73, 6, '916415497', 1),
(220, 74, 1, '87651895', 1),
(221, 74, 5, 'Jirón José Olaya, 581', 1),
(222, 74, 6, '916557589', 1),
(223, 75, 1, '28801643', 1),
(224, 75, 5, 'Jirón José Olaya, 591 ', 1),
(225, 75, 6, '940626118', 1),
(226, 76, 1, '70242541', 1),
(227, 76, 5, 'Jirón José Olaya, 950', 1),
(228, 76, 6, '926839373', 1),
(229, 77, 1, '35058562', 1),
(230, 77, 5, 'Jirón José Olaya, 157', 1),
(231, 77, 6, '979481380', 1),
(232, 78, 1, '69116009', 1),
(233, 78, 5, 'Jirón José Olaya, 250', 1),
(234, 78, 6, '916303865', 1),
(235, 79, 1, '84700800', 1),
(236, 79, 5, 'Jirón José Olaya, 520', 1),
(237, 79, 6, '963285771', 1),
(238, 80, 1, '28602578', 1),
(239, 80, 5, 'Jirón José Olaya, 521', 1),
(240, 80, 6, '948785614', 1),
(241, 81, 1, '67558100', 1),
(242, 81, 5, 'Jr Moquegua Nro 310 Pj Florida Baja ', 1),
(243, 81, 6, '993205960', 1),
(244, 82, 1, '76681430', 1),
(245, 82, 5, 'Jr Moquegua Nro 280 Pj Florida Baja ', 1),
(246, 82, 6, '940598110', 1),
(247, 83, 1, '66293067', 1),
(248, 83, 5, 'Jr Moquegua Nro 270 Pj Florida Baja ', 1),
(249, 83, 6, '958165052', 1),
(250, 84, 1, '41443759', 1),
(251, 84, 5, 'Jr Moquegua Nro 2300 Pj Florida Baja ', 1),
(252, 84, 6, '992323260', 1),
(253, 85, 1, '75307493', 1),
(254, 85, 5, 'Jr Moquegua Nro 250 Pj Florida Baja ', 1),
(255, 85, 6, '928985328', 1),
(256, 86, 1, '60598683', 1),
(257, 86, 5, 'Jr Moquegua Nro 240 Pj Florida Baja ', 1),
(258, 86, 6, '980066725', 1),
(259, 87, 1, '56285061', 1),
(260, 87, 5, 'Jr Moquegua Nro 230 Pj Florida Baja ', 1),
(261, 87, 6, '964316916', 1),
(262, 88, 1, '75388730', 1),
(263, 88, 5, 'Jr Moquegua Nro 225 Pj Florida Baja ', 1),
(264, 88, 6, '957298697', 1),
(265, 89, 1, '81786440', 1),
(266, 89, 5, 'Jr Moquegua Nro 215 Pj Florida Baja ', 1),
(267, 89, 6, '911428635', 1),
(268, 90, 1, '92635507', 1),
(269, 90, 5, 'Jr Moquegua Nro 220 Pj Florida Baja ', 1),
(270, 90, 6, '989317153', 1),
(271, 91, 1, '52499735', 1),
(272, 91, 5, 'Urb. Los Pinos, Mz. 0-Lt. 10', 1),
(273, 91, 6, '947921620', 1),
(274, 92, 1, '30429577', 1),
(275, 92, 5, 'Urb. Los Pinos, 2-8 ', 1),
(276, 92, 6, '998978969', 1),
(277, 93, 1, '54495711', 1),
(278, 93, 5, 'Urb. Los Pinos, Mz. 3- Lt. 5', 1),
(279, 93, 6, '948109298', 1),
(280, 94, 1, '94147943', 1),
(281, 94, 5, 'Urb. Los Pinos, Mz. 5- Lt. 8 ', 1),
(282, 94, 6, '931527898', 1),
(283, 95, 1, '98932382', 1),
(284, 95, 5, 'Urb. Los Pinos, Mz. 15 - Lt. 8 ', 1),
(285, 95, 6, '974105525', 1),
(286, 96, 1, '45531050', 1),
(287, 96, 5, 'Urb. Los Pinos, Mz. 6- Lt. 9', 1),
(288, 96, 6, '933905776', 1),
(289, 97, 1, '50426060', 1),
(290, 97, 5, 'Urb. Los Pinos, Mz. 5- Lt. 15', 1),
(291, 97, 6, '969502407', 1),
(292, 98, 1, '55753597', 1),
(293, 98, 5, 'Urb. Los Pinos, Mz. 5- Lt. 25', 1),
(294, 98, 6, '937537984', 1),
(295, 99, 1, '45387065', 1),
(296, 99, 5, 'Urb. Los Pinos, Mz. 5- Lt. 7', 1),
(297, 99, 6, '980514738', 1),
(298, 100, 1, '54628560', 1),
(299, 100, 5, 'Urb. Los Pinos, Mz. 10- Lt. 8 ', 1),
(300, 100, 6, '958701776', 1),
(301, 101, 1, '54941766', 1),
(302, 101, 5, 'Jirón Moquegua, 510', 1),
(303, 101, 6, '917746124', 1),
(304, 102, 1, '26037485', 1),
(305, 102, 5, 'Jirón Moquegua, 485', 1),
(306, 102, 6, '947283170', 1),
(307, 103, 1, '59194546', 1),
(308, 103, 5, 'Jirón Moquegua, 415', 1),
(309, 103, 6, '922794249', 1),
(310, 104, 1, '38414521', 1),
(311, 104, 5, 'Jirón Moquegua, 470', 1),
(312, 104, 6, '995170663', 1),
(313, 105, 1, '59194547', 1),
(314, 105, 5, 'Jirón Moquegua, 452', 1),
(315, 105, 6, '995530707', 1),
(316, 106, 1, '37826577', 1),
(317, 106, 5, 'Jirón Moquegua, 440', 1),
(318, 106, 6, '920718540', 1),
(319, 107, 1, '33264283', 1),
(320, 107, 5, 'Jirón Moquegua, 360', 1),
(321, 107, 6, '913064893', 1),
(322, 108, 1, '51264283', 1),
(323, 108, 5, 'Jirón Moquegua, 310 ', 1),
(324, 108, 6, '905142813', 1),
(325, 109, 1, '41264283', 1),
(326, 109, 5, 'Jirón Moquegua, 320', 1),
(327, 109, 6, '947325969', 1),
(328, 110, 1, '42264283', 1),
(329, 110, 5, 'Jirón Moquegua, 450 ', 1),
(330, 110, 6, '976218279', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_detalmacen`
--

CREATE TABLE `alm_detalmacen` (
  `dtal_id` int(11) NOT NULL COMMENT 'identificador detalle del almacen',
  `alm_id` int(11) DEFAULT NULL COMMENT 'identificador del almacen',
  `prod_id` int(11) DEFAULT NULL COMMENT 'identificador de prodocto',
  `prod_cant` int(11) DEFAULT NULL COMMENT 'cantidad del producto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla detalle del almacen';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_detnotaingreso`
--

CREATE TABLE `alm_detnotaingreso` (
  `dnti_id` int(11) NOT NULL COMMENT 'identificador de detalle de nota de ingresos',
  `prod_id` int(11) DEFAULT NULL COMMENT 'identificador del producto',
  `nti_id` int(11) DEFAULT NULL COMMENT 'identificador nota de ingreso',
  `krx_id` int(11) DEFAULT NULL COMMENT 'identificador kardex',
  `dnti_cant` int(11) DEFAULT NULL COMMENT 'cantidad',
  `dtni_obs` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'observaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='detalle de la nota de ingreso';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_detnotasalida`
--

CREATE TABLE `alm_detnotasalida` (
  `dnts_id` int(11) NOT NULL COMMENT 'identificador del detalle de nota de salida',
  `nts_id` int(11) DEFAULT NULL COMMENT 'identificador nota de salida ',
  `prod_id` int(11) DEFAULT NULL COMMENT 'identificador producto',
  `krx_id` int(11) DEFAULT NULL COMMENT 'identificador kardex',
  `dtns_cant` int(11) DEFAULT NULL COMMENT 'cantidad de productos',
  `dtns_obs` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'observacioness'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla detalle nota de slaida';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_detpresentacion`
--

CREATE TABLE `alm_detpresentacion` (
  `dtpre_id` int(11) NOT NULL COMMENT 'identificador del detalle presentacion',
  `prod_id` int(11) DEFAULT NULL COMMENT 'identificador del producto',
  `pres_id` int(11) DEFAULT NULL COMMENT 'identificador de la presentacion',
  `Concentracion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'concentracion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='detalle de la presentacion y el producto';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_empleado`
--

CREATE TABLE `alm_empleado` (
  `empl_id` int(11) NOT NULL COMMENT 'identificador del empleado',
  `perso_id` int(11) DEFAULT NULL COMMENT 'identificador de la persona',
  `empl_freg` date DEFAULT NULL COMMENT 'fecha de registro del empleado',
  `empl_est` tinyint(1) DEFAULT NULL COMMENT 'estado del empleado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='entididad del empleado';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_inventario`
--

CREATE TABLE `alm_inventario` (
  `inv_id` int(11) NOT NULL COMMENT 'identificador del inventario',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `alm_id` int(11) DEFAULT NULL COMMENT 'identificador del almacen',
  `tpin_id` int(11) DEFAULT NULL COMMENT 'identificador tipo de almacen',
  `inv_num` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de inventario',
  `inv_stock` int(11) DEFAULT NULL COMMENT 'stock del inventario',
  `inv_freg` date DEFAULT NULL COMMENT 'fecha de registro ',
  `inv_fmod` date DEFAULT NULL COMMENT 'fecha de modificacion',
  `inv_est` tinyint(1) DEFAULT NULL COMMENT 'estado del invetario activar ''1'' , desactivado ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla del inventario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_kardex`
--

CREATE TABLE `alm_kardex` (
  `krx_id` int(11) NOT NULL COMMENT 'identificador del kardex',
  `inv_id` int(11) DEFAULT NULL COMMENT 'identificador inventario',
  `krx_num` int(11) DEFAULT NULL COMMENT 'numero del kardex',
  `krx_stini` int(11) DEFAULT NULL COMMENT 'stock inicial',
  `krx_stact` int(11) DEFAULT NULL COMMENT 'stock actual',
  `krxobs` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'observaciones ',
  `krx_freg` date DEFAULT NULL COMMENT 'fecha de registro del kardex',
  `krx_est` tinyint(1) DEFAULT NULL COMMENT 'estado activo ''1'' desactivado ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla kardex';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_lote`
--

CREATE TABLE `alm_lote` (
  `lote_id` int(11) NOT NULL COMMENT 'identificador de lote',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `lote_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del lote',
  `lote_freg` date DEFAULT NULL COMMENT 'fecha del registro del lote',
  `lote_est` tinyint(1) DEFAULT NULL COMMENT 'estado del lote'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla del lote del producto';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_marca`
--

CREATE TABLE `alm_marca` (
  `marca_id` int(11) NOT NULL COMMENT 'identificador de la marca',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `marca_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de la marca',
  `marca_freg` date DEFAULT NULL COMMENT 'fecha registro de la marca',
  `marca_est` tinyint(1) DEFAULT NULL COMMENT 'estado de la marca'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de la marca';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_notaingreso`
--

CREATE TABLE `alm_notaingreso` (
  `nti_id` int(11) NOT NULL COMMENT 'identificador de nota de ingreso',
  `tpni_id` int(11) DEFAULT NULL COMMENT 'identificador de tipo nota de ingrso',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador de usuario',
  `ord_id` int(11) DEFAULT NULL COMMENT 'identificador de la orden',
  `tpdi_id` int(11) DEFAULT NULL COMMENT 'identificador de tipo documento ingreso',
  `nti_num` int(11) DEFAULT NULL COMMENT 'numero de nota de ingreso',
  `nti_mtig` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'metodo de ingreso',
  `nti_can` int(11) DEFAULT NULL COMMENT 'descripcion de la cantidad producto',
  `nti_pretotal` decimal(10,2) DEFAULT NULL COMMENT 'precio total de productos',
  `nti_freg` date DEFAULT NULL COMMENT 'fecha de registro de la nota de ingreso',
  `nti_fnti` date DEFAULT NULL COMMENT 'fecha de la nota de ingreso',
  `nti_obs` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'observaciones de ingreso',
  `nti_est` tinyint(1) DEFAULT NULL COMMENT 'estado activo ''1'' , desacivado ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de nota de ingreso';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_notasalida`
--

CREATE TABLE `alm_notasalida` (
  `nts_id` int(11) NOT NULL COMMENT 'identificador de la nota de salida',
  `tipnts_id` int(11) DEFAULT NULL COMMENT 'identificador de tipo nota de salida',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificadion del usuario',
  `prio_id` int(11) DEFAULT NULL COMMENT 'identificador prioridad de la nota de salida',
  `sold_id` int(11) DEFAULT NULL COMMENT 'identificador de solicitud de la nota de salida',
  `nts_num` int(11) DEFAULT NULL COMMENT 'numero de la nota de salida',
  `nts_mten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'metodo de entrega del producto',
  `nts_cant` int(11) DEFAULT NULL COMMENT 'cantidad de productos',
  `nts_freg` date DEFAULT NULL COMMENT 'fecha registro de la nota de salida',
  `nts_fnt` date DEFAULT NULL COMMENT 'fecha de nota de salida',
  `nts_obs` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'observacion de la nota de salida',
  `nts_est` tinyint(1) DEFAULT NULL COMMENT 'estado de la nota de salida'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de la nota de salida';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_persona`
--

CREATE TABLE `alm_persona` (
  `perso_id` int(11) NOT NULL COMMENT 'identificador de la persona',
  `perso_nom` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de la persona',
  `perso_app` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'apellido paterno de la persona',
  `perso_apm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'apellido materno de la persona',
  `perso_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email de la persona',
  `perso_sexo` enum('M','F') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'sexo de la persona Masculino "M", Feminino "F"',
  `perso_fena` date DEFAULT NULL COMMENT 'fecha de nacimiento de la persona',
  `perso_freg` date DEFAULT NULL COMMENT 'fecha del registro de la persona',
  `perso_est` tinyint(1) DEFAULT NULL COMMENT 'estado de la persona'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Entidad persona';

--
-- Volcado de datos para la tabla `alm_persona`
--

INSERT INTO `alm_persona` (`perso_id`, `perso_nom`, `perso_app`, `perso_apm`, `perso_email`, `perso_sexo`, `perso_fena`, `perso_freg`, `perso_est`) VALUES
(1, 'Daniel', 'Narvaez', 'Castillo', 'daniel121_2003@hotmail.com', 'M', '1992-02-26', '2017-05-25', 1),
(2, 'Julio', 'Corpus', 'Mechato', 'doombakuryo@gmail.com', 'M', '1993-12-09', '2017-05-25', 1),
(3, 'Jhoana', 'Liñam', 'Del Castillo', 'jhoanalinandelcastillo@gmail.com', 'F', '1991-06-20', '2017-05-25', 1),
(4, 'Renzo', 'Rojas', 'Arroll', 'zenky_24@hotmail.com', 'M', '1993-10-01', '2017-05-25', 1),
(5, 'David', 'Acevedo', 'Jhong', 'Forgoin1940@hotmail.com', 'M', '1990-02-02', '2017-05-25', 1),
(6, 'Miguel', 'Agurto', 'Rondoy', 'MiA_6R_2017@gmail.com', 'M', '1991-04-03', '2017-05-25', 1),
(7, 'Christian', 'Alcalá', 'Negrón', 'Ch_A6N_2017@gmail.com', 'M', '1992-02-04', '2017-05-25', 1),
(8, 'Raul', 'Almora', 'Hernandez', 'Ra_A6H_2017@gmail.com', 'M', '1989-02-05', '2017-05-25', 1),
(9, 'Maria', 'Alosilla', 'Velazco', 'Ma_A6V_2017@gmail.com', 'F', '1989-03-06', '2017-05-25', 1),
(10, 'Victor', 'Alva', 'Campos', 'Vi_A6C_2017@gmail.com', 'M', '1990-02-07', '2017-05-25', 1),
(11, 'Javier', 'Arevalo', 'Lopez', 'Ja_A6L_2017@gmail.com', 'M', '1990-05-08', '2017-05-25', 1),
(12, 'Rosario', 'Arias', 'Hernandez', 'Ro_A6H_2017@gmail.com', 'F', '1991-02-09', '2017-05-25', 1),
(13, 'Efraín', 'Arroyo', 'Ramírez', 'Ef_A6R_2017@gmail.com', 'M', '1992-02-10', '2017-05-25', 1),
(14, 'Marco', 'Alocen', 'Barrera', 'Ma_A6B_2017@gmail.com', 'M', '1989-01-11', '2017-05-25', 1),
(15, 'Cesar', 'Baiocchi', 'Ureta', 'Ce_B6U_2017@gmail.com', 'M', '1993-02-12', '2017-05-25', 1),
(16, 'Isela', 'Baylón', 'Rojas', 'Is_B6R_2017@gmail.com', 'F', '1987-03-13', '2017-05-25', 1),
(17, 'Leoncia', 'Bedoya', 'Castillo', 'Le_B6C_2017@gmail.com', 'F', '1988-01-14', '2017-05-25', 1),
(18, 'Luz', 'Bedregal', 'Canales', 'Lu_B6C_2017@gmail.com', 'F', '1985-05-15', '2017-05-25', 1),
(19, 'Ramiro', 'Bejar', 'Torres', 'Ra_B6T_2017@gmail.com', 'M', '1986-02-16', '2017-05-25', 1),
(20, 'Javier', 'Benavides', 'Espejo', 'Ja_B6E_2017@gmail.com', 'M', '1987-03-17', '2017-05-25', 1),
(21, 'Nelson', 'Boza', 'Solis', 'Ne_B6S_2017@gmail.com', 'M', '1989-04-18', '2017-05-25', 1),
(22, 'Cielito', 'Calle', 'Betancourt', 'Ci_C6B_2017@gmail.com', 'M', '1990-05-19', '2017-05-25', 1),
(23, 'Isabel', 'Caraza', 'Villegas', 'Is_C6V_2017@gmail.com', 'F', '1992-05-20', '2017-05-25', 1),
(24, 'Gizella', 'Carrera', 'Abanto', 'Gi_C6A_2017@gmail.com', 'F', '1993-05-21', '2017-05-25', 1),
(25, 'Estalins', 'Carrillo', 'Segura', 'Es_C6S_2017@gmail.com', 'M', '1989-01-22', '2017-05-25', 1),
(26, 'Jorge', 'Carrión', 'Neira', 'Jo_C6N_2017@gmail.com', 'M', '1990-05-23', '2017-05-25', 1),
(27, 'Guillermo', 'Casapia', 'Valdivia', 'Gu_C6V_2017@gmail.com', 'M', '1992-05-24', '2017-05-25', 1),
(28, 'Zarita', 'Chancos', 'Mendoza', 'Za_C6M_2017@gmail.com', 'F', '1993-05-25', '2017-05-25', 1),
(29, 'Carlos', 'Chirinos', 'Lacotera', 'Ca_C6L_2017@gmail.com', 'M', '1995-05-26', '2017-05-25', 1),
(30, 'Doris', 'Cores', 'Moreno', 'Do_C6M_2017@gmail.com', 'F', '1975-05-27', '2017-05-25', 1),
(31, 'Maribel', 'Cortez', 'Lozano', 'Ma_C6L_2017@gmail.com', 'F', '1976-05-28', '2017-05-25', 1),
(32, 'Angel', 'Crispin', 'Quispe', 'An_C6Q_2017@gmail.com', 'M', '1982-05-29', '2017-05-25', 1),
(33, 'Conterno', 'De', 'Loayza', 'Co_D6L_2017@gmail.com', 'M', '1985-05-30', '2017-05-25', 1),
(34, 'Ana', 'Diaz', 'Salinas', 'An_D6S_2017@gmail.com', 'F', '1986-05-31', '2017-05-25', 1),
(35, 'Antonio', 'Dueñas', 'Aristisabal', 'An_D6A_2017@gmail.com', 'M', '1985-06-01', '2017-05-25', 1),
(36, 'Yuliana', 'Espinoza', 'Arana', 'Yu_E6A_2017@gmail.com', 'F', '1984-06-02', '2017-05-25', 1),
(37, 'Carlos', 'Fernandez', 'Guzman', 'Ca_F6G_2017@gmail.com', 'M', '1983-06-03', '2017-05-25', 1),
(38, 'Esther', 'Fernandez', 'Matta', 'Es_F6M_2017@gmail.com', 'F', '1982-06-04', '2017-05-25', 1),
(39, 'Olga', 'Ferro', 'Salas', 'Ol_F6S_2017@gmail.com', 'F', '1981-06-05', '2017-05-25', 1),
(40, 'Edwin', 'Flores', 'Romero', 'Ed_F6R_2017@gmail.com', 'M', '1980-06-06', '2017-05-25', 1),
(41, 'Roberto', 'Gamarra', 'Astete', 'Ro_G6A_2017@gmail.com', 'M', '1979-06-07', '2017-05-25', 1),
(42, 'Gloria', 'Gamio', 'Lozano', 'Gl_G6L_2017@gmail.com', 'F', '1978-06-08', '2017-05-25', 1),
(43, 'Miriam', 'García', 'Peralta', 'Mi_G6P_2017@gmail.com', 'F', '1975-06-09', '2017-05-25', 1),
(44, 'Valle', 'Gonzales', 'Del', 'Va_G6D_2017@gmail.com', 'M', '1970-06-10', '2017-05-25', 1),
(45, 'Marlene', 'Gonzales', 'Huilca', 'Ma_G6H_2017@gmail.com', 'F', '1985-12-11', '2017-05-25', 1),
(46, 'Elsa', 'Gonzales', 'Medina', 'El_G6M_2017@gmail.com', 'F', '1988-10-12', '2017-05-25', 1),
(47, 'Javier', 'Gutierrez', 'Velez', 'Ja_G6V_2017@gmail.com', 'M', '1984-12-13', '2017-05-25', 1),
(48, 'Elena', 'Guzman', 'Chinag', 'El_G6C_2017@gmail.com', 'F', '1983-11-14', '2017-05-25', 1),
(49, 'Clara', 'Guzman', 'Quispe', 'Cl_G6Q_2017@gmail.com', 'F', '1982-06-15', '2017-05-25', 1),
(50, 'Milagros', 'Herrera', 'Carbajal', 'Mi_H6C_2017@gmail.com', 'F', '1992-11-16', '2017-05-25', 1),
(51, 'Guillermo', 'Horruitiner', 'Martinez', 'Gu_H6M_2017@gmail.com', 'M', '1991-06-17', '2017-05-25', 1),
(52, 'Lourdes', 'Huamani', 'Flores', 'Lo_H6F_2017@gmail.com', 'F', '1990-06-18', '2017-05-25', 1),
(53, 'Luis', 'Huapaya', 'Raygada', 'Lu_H6R_2017@gmail.com', 'M', '1989-12-19', '2017-05-25', 1),
(54, 'Marcos', 'Huarcaya', 'Quispe', 'Ma_H6Q_2017@gmail.com', 'M', '1983-11-20', '2017-05-25', 1),
(55, 'Walter', 'Huaytan', 'Sauñe', 'Wa_H6S_2017@gmail.com', 'M', '1984-06-21', '2017-05-25', 1),
(56, 'Fabian', 'La', 'Rosa', 'Fa_L6R_2017@gmail.com', 'M', '1985-06-22', '2017-05-25', 1),
(57, 'Pedro', 'Landa', 'Ginocchio', 'Pe_L6G_2017@gmail.com', 'M', '1986-06-23', '2017-05-25', 1),
(58, 'Roberto', 'Llaja', 'Tafur', 'Ro_L6T_2017@gmail.com', 'M', '1987-11-24', '2017-05-25', 1),
(59, 'Orfelina', 'Llenpen', 'Nuñez', 'Or_L6N_2017@gmail.com', 'F', '1988-11-25', '2017-05-25', 1),
(60, 'Hector', 'Lujan', 'Venegas', 'He_L6V_2017@gmail.com', 'M', '1990-11-26', '2017-05-25', 1),
(61, 'Yen', 'Maguiña', 'San', 'Ye_M6S_2017@gmail.com', 'M', '1989-06-27', '2017-05-25', 1),
(62, 'Cosme', 'Maldonado', 'Quispe', 'Co_M6Q_2017@gmail.com', 'M', '1987-11-28', '2017-05-25', 1),
(63, 'Sandra', 'Maldonado', 'Tinco', 'Sa_M6T_2017@gmail.com', 'F', '1986-12-29', '2017-05-25', 1),
(64, 'Jenny', 'Mallqui', 'Celestino', 'Je_M6C_2017@gmail.com', 'F', '1985-06-30', '2017-05-25', 1),
(65, 'Santiago', 'Mamani', 'Uchasara', 'Sa_M6U_2017@gmail.com', 'M', '1989-07-01', '2017-05-25', 1),
(66, 'Magda', 'Maravi', 'Navarro', 'Ma_M6N_2017@gmail.com', 'F', '1988-05-02', '2017-05-25', 1),
(67, 'Martin', 'Martinez', 'Marquez', 'Ma_M6M_2017@gmail.com', 'M', '1990-04-03', '2017-05-25', 1),
(68, 'Oscar', 'Medina', 'Zuta', 'Os_M6Z_2017@gmail.com', 'M', '1991-04-04', '2017-05-25', 1),
(69, 'Carlos', 'Melgarejo', 'Vibes', 'Ca_M6V_2017@gmail.com', 'M', '1992-03-05', '2017-05-25', 1),
(70, 'Elizabeth', 'Miguel', 'Holgado', 'El_M6H_2017@gmail.com', 'F', '1993-02-06', '2017-05-25', 1),
(71, 'Manuel', 'Mori', 'Ramirez', 'Ma_M6R_2017@gmail.com', 'M', '1994-05-07', '2017-05-25', 1),
(72, 'Carlos', 'Nuñez', 'Huayanay', 'Ca_N6H_2017@gmail.com', 'M', '1985-07-06', '2017-05-25', 1),
(73, 'Olga', 'Ore', 'Reyes', 'Ol_O6R_2017@gmail.com', 'F', '1986-07-07', '2017-05-25', 1),
(74, 'Josue', 'Orrillo', 'Ortiz', 'Jo_O6O_2017@gmail.com', 'M', '1987-07-08', '2017-05-25', 1),
(75, 'Carmen', 'Pardave', 'Camacho', 'Ca_P6C_2017@gmail.com', 'F', '1990-07-10', '2017-05-25', 1),
(76, 'Santiago', 'Paredes', 'Jaramillo', 'Sa_P6J_2017@gmail.com', 'M', '1991-07-11', '2017-05-25', 1),
(77, 'Arturo', 'Pastor', 'Porras', 'Ar_P6P_2017@gmail.com', 'M', '1992-07-12', '2017-05-25', 1),
(78, 'Enrique', 'Pinedo', 'Nuñez', 'En_P6N_2017@gmail.com', 'M', '1980-07-13', '2017-05-25', 1),
(79, 'Sonia', 'Prada', 'Vilchez', 'So_P6V_2017@gmail.com', 'F', '1991-07-14', '2017-05-25', 1),
(80, 'Gerardo', 'Riega', 'Calle', 'Ge_R6C_2017@gmail.com', 'M', '1992-07-15', '2017-05-25', 1),
(81, 'Freddy', 'Rios', 'Lima', 'Fr_R6L_2017@gmail.com', 'M', '1989-07-16', '2017-05-25', 1),
(82, 'Teresa', 'Rios', 'Lima', 'Te_R6L_2017@gmail.com', 'F', '1993-07-17', '2017-05-25', 1),
(83, 'Juan', 'Riquelme', 'Miranda', 'Ju_R6M_2017@gmail.com', 'M', '1995-07-18', '2017-05-25', 1),
(84, 'Georgina', 'Roa', 'Yanac', 'Ge_R6Y_2017@gmail.com', 'F', '1994-07-19', '2017-05-25', 1),
(85, 'Rosa', 'Robles', 'Valverde', 'Ro_R6V_2017@gmail.com', 'F', '1995-07-20', '2017-05-25', 1),
(86, 'Rosa', 'Rodriguez', 'Farias', 'Ro_R6F_2017@gmail.com', 'F', '1993-08-21', '2017-05-25', 1),
(87, 'Maria', 'Rojas', 'Valdivia', 'Ma_R6V_2017@gmail.com', 'F', '1992-08-22', '2017-05-25', 1),
(88, 'Augusto', 'Romero', 'Gomez', 'Au_R6G_2017@gmail.com', 'M', '1991-08-23', '2017-05-25', 1),
(89, 'Carina', 'Rosales', 'Flores', 'Ca_R6F_2017@gmail.com', 'F', '1993-08-24', '2017-05-25', 1),
(90, 'Carlos', 'Rosas', 'Bonifaz', 'Ca_R6B_2017@gmail.com', 'M', '1995-08-25', '2017-05-25', 1),
(91, 'Angel', 'Ruiz', 'Castilla', 'An_R6C_2017@gmail.com', 'M', '1993-08-26', '2017-05-25', 1),
(92, 'Pino', 'Salcedo', 'Del', 'Pi_S6D_2017@gmail.com', 'M', '1992-08-27', '2017-05-25', 1),
(93, 'Violeta', 'Salinas', 'Puccio', 'Vi_S6P_2017@gmail.com', 'F', '1991-08-28', '2017-05-25', 1),
(94, 'Augusto', 'Sanchez', 'Arone', 'Au_S6A_2017@gmail.com', 'M', '1990-08-29', '2017-05-25', 1),
(95, 'Benssa', 'Santa', 'Cruz', 'Be_S6C_2017@gmail.com', 'F', '1994-08-30', '2017-05-25', 1),
(96, 'Angel', 'Solano', 'Vargas', 'An_S6V_2017@gmail.com', 'M', '1995-08-31', '2017-05-25', 1),
(97, 'Jose', 'Tejedo', 'Luna', 'Jo_T6L_2017@gmail.com', 'M', '1980-09-02', '2017-05-25', 1),
(98, 'Angel', 'Tenorio', 'Davila', 'An_T6D_2017@gmail.com', 'M', '1981-09-03', '2017-05-25', 1),
(99, 'Miguel', 'Torres', 'Gaspar', 'Mi_T6G_2017@gmail.com', 'M', '1982-09-04', '2017-05-25', 1),
(100, 'Jacquelin', 'Trujillo', 'Parodi', 'Ja_T6P_2017@gmail.com', 'F', '1983-09-05', '2017-05-25', 1),
(101, 'Ruth', 'Vega', 'Carreazo', 'Ru_V6C_2017@gmail.com', 'F', '1984-09-06', '2017-05-25', 1),
(102, 'Guillermo', 'Velasquez', 'Ramos', 'Gu_V6R_2017@gmail.com', 'M', '1987-09-07', '2017-05-25', 1),
(103, 'Alejandro', 'Vera', 'Silva', 'Al_V6S_2017@gmail.com', 'M', '1988-09-08', '2017-05-25', 1),
(104, 'Blanca', 'Vilca', 'Lucero', 'Bl_V6L_2017@gmail.com', 'F', '1989-09-09', '2017-05-25', 1),
(105, 'Enrique', 'Vilgoso', 'Alvarado', 'En_V6A_2017@gmail.com', 'M', '1990-09-10', '2017-05-25', 1),
(106, 'Cecilia', 'Yamawaki', 'Onaga', 'Ce_Y6O_2017@gmail.com', 'F', '1991-09-11', '2017-05-25', 1),
(107, 'Mariela', 'Zamalloa', 'Vega', 'Ma_Z6V_2017@gmail.com', 'F', '1992-09-12', '2017-05-25', 1),
(108, 'Monica', 'Zapata', 'Chang', 'Mo_Z6C_2017@gmail.com', 'F', '1993-09-13', '2017-05-25', 1),
(109, 'Juan', 'Zegarra', 'Salcedo', 'Ju_Z6S_2017@gmail.com', 'M', '1994-09-14', '2017-05-25', 1),
(110, 'Hilrich', 'Zu', 'Flores', 'Hi_Z6F_2017@gmail.com', 'M', '1995-09-15', '2017-05-25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_presentacion`
--

CREATE TABLE `alm_presentacion` (
  `pres_id` int(11) NOT NULL COMMENT 'identificador de la presentacion',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `pres_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de la presentacion',
  `pres_freg` date DEFAULT NULL COMMENT 'fecha de registro de la presentacion',
  `pres_est` tinyint(1) DEFAULT NULL COMMENT 'estado de la presentacion Activo ''1'', desactivo''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de la presentacion';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_prioridad`
--

CREATE TABLE `alm_prioridad` (
  `pri_id` int(11) NOT NULL COMMENT 'identificador de la prioridad',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `pri_des` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de la prioridad',
  `pri_freg` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'fecha de registro de la prioridad',
  `pri_est` tinyint(1) DEFAULT NULL COMMENT 'estadado activo ''1'', desactivado ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de las prioridades ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_producto`
--

CREATE TABLE `alm_producto` (
  `prod_id` int(11) NOT NULL COMMENT 'identificador de producto',
  `prod_Nom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre del producto',
  `marca_id` int(11) DEFAULT NULL COMMENT 'identificador de la marca',
  `tppro_id` int(11) DEFAULT NULL COMMENT 'identificador del tipo de producto',
  `cate_id` int(11) DEFAULT NULL COMMENT 'identificador de la categoria',
  `lote_id` int(11) DEFAULT NULL COMMENT 'identificador del lote',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador del usuario',
  `prod_umed` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'unidad de medida',
  `prod_nrsa` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numero de regla sanitaria del producto',
  `prod_fvc` date DEFAULT NULL COMMENT 'fecha de vencimiento',
  `prod_stmx` int(11) DEFAULT NULL COMMENT 'stock maximo',
  `prod_stmin` int(11) DEFAULT NULL COMMENT 'stock minimo',
  `prod_prcm` decimal(10,2) DEFAULT NULL COMMENT 'precio de compra',
  `prod_prvt` decimal(10,2) DEFAULT NULL COMMENT 'precio de venta',
  `prod_cant` int(11) DEFAULT NULL COMMENT 'cantidad ',
  `prod_freg` date DEFAULT NULL COMMENT 'fecha de registro',
  `prod_est` tinyint(1) DEFAULT NULL COMMENT 'estado del producto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla producto';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tipodato`
--

CREATE TABLE `alm_tipodato` (
  `tpdt_id` int(11) NOT NULL COMMENT 'identificador del tipo de dato',
  `tpdt_des` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del tipo de dato',
  `tpdt_Freg` date DEFAULT NULL COMMENT 'fecha del registro',
  `tpdt_est` tinyint(1) DEFAULT NULL COMMENT 'el estado del tipo de daato'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='entidado donde iran el tipo datos extras de la persona';

--
-- Volcado de datos para la tabla `alm_tipodato`
--

INSERT INTO `alm_tipodato` (`tpdt_id`, `tpdt_des`, `tpdt_Freg`, `tpdt_est`) VALUES
(1, 'DNI', '2017-05-25', 1),
(2, 'RUC', '2017-05-25', 1),
(3, 'PASAPORTE', '2017-05-25', 1),
(4, 'CELULA', '2017-05-25', 1),
(5, 'DIRECCION', '2017-05-25', 1),
(6, 'CELULAR', '2017-05-25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tipodocing`
--

CREATE TABLE `alm_tipodocing` (
  `tpdi_id` int(11) NOT NULL COMMENT 'identificador del tipo documento ',
  `usu_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'identificador de usuario',
  `tpdi_des` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del documento de ingreso',
  `tpdi_freg` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'fecha registore del documento de ingreso',
  `tpdi_est` tinyint(1) DEFAULT NULL COMMENT 'estado del documemto de ingreso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla del tipo de documento de ingreso';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tipoinventario`
--

CREATE TABLE `alm_tipoinventario` (
  `tpiv_id` int(11) NOT NULL COMMENT 'identificador de tipo de inventario',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador de usuario',
  `tpiv_des` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de tipo de inventario',
  `tpiv_freg` date DEFAULT NULL COMMENT 'fecha de registro',
  `tpiv_est` tinyint(1) DEFAULT NULL COMMENT 'estado activo ''1'' desactivo ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de tipo de inventario';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tiponotaingreso`
--

CREATE TABLE `alm_tiponotaingreso` (
  `tpnti_id` int(11) NOT NULL COMMENT 'identificador tipo de nota de ingreso',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador de usuario',
  `tpnti_des` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del tipo nota de ingreso',
  `tpnti_freg` date DEFAULT NULL COMMENT 'fecha de registro tipo de nota de ingreso',
  `tpnti_est` tinyint(1) DEFAULT NULL COMMENT 'estado  activado ''1'' , desactivado ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de tipo de nota de ingreso ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tiponotasalida`
--

CREATE TABLE `alm_tiponotasalida` (
  `tpnts_id` int(11) NOT NULL COMMENT 'identificador de tipo nota de salida',
  `usu_id` int(11) DEFAULT NULL COMMENT 'identificador de usuario',
  `tpnts_des` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion de tipo nota salida',
  `tpnts_freg` date DEFAULT NULL COMMENT 'fecha registro de tipo nota salida',
  `tpnts_est` tinyint(1) DEFAULT NULL COMMENT 'estado de tipo nota salida activo''1'' , desactivar ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla de tipo de nota de salida';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tipousuario`
--

CREATE TABLE `alm_tipousuario` (
  `tpusu_id` int(11) NOT NULL COMMENT 'identificador del tipo de usuario',
  `tpusu_desc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del tipo del usuario',
  `tpusu_freg` date DEFAULT NULL COMMENT 'fecha de registro ',
  `tpusu_est` tinyint(1) DEFAULT NULL COMMENT 'estado del tipo de usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla del tipo de usuario';

--
-- Volcado de datos para la tabla `alm_tipousuario`
--

INSERT INTO `alm_tipousuario` (`tpusu_id`, `tpusu_desc`, `tpusu_freg`, `tpusu_est`) VALUES
(1, 'ADMINISTRADOR', '2017-05-25', 1),
(2, 'CLIENTE', '2017-05-25', 1),
(3, 'JEFE ALMACEN', '2017-05-25', 1),
(4, 'ALMACENERO', '2017-05-25', 1),
(5, 'JEFE VENTAS', '2017-05-25', 1),
(6, 'VENDEDOR', '2017-05-25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tipo_producto`
--

CREATE TABLE `alm_tipo_producto` (
  `tppro_id` int(11) NOT NULL COMMENT 'identificador de tipo de producto',
  `usu_id` int(11) DEFAULT NULL,
  `tppro_des` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcionde tipo de producto',
  `tppro_freg` date DEFAULT NULL COMMENT 'fecha de registro',
  `tppro_est` tinyint(1) DEFAULT NULL COMMENT 'estado activo''1'', desactivado ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla tipo de producto';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_tpdokx`
--

CREATE TABLE `alm_tpdokx` (
  `tdkx_id` int(11) NOT NULL COMMENT 'identificador tipo documento kardex',
  `usu_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'identificador usuario',
  `tdkx_desc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del tipo documento kardex',
  `tdkx_freg` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'fecha de registro de documento kardex',
  `tdkx_est` tinyint(1) DEFAULT NULL COMMENT 'estado activo ''1'' desactivo ''0'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tipo de documento de kardex';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alm_usuario`
--

CREATE TABLE `alm_usuario` (
  `usu_id` int(11) NOT NULL COMMENT 'identificador del usuario',
  `perso_id` int(11) DEFAULT NULL COMMENT 'identificador de pesona',
  `tpusu_id` int(11) DEFAULT NULL COMMENT 'identificador del tipo de usuario',
  `usu_nom` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre del usuario',
  `usu_pass` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'contraseña del usuario',
  `usu_freg` date DEFAULT NULL COMMENT 'fecha del registro del usuario',
  `usu_frmo` date DEFAULT NULL COMMENT 'fecha de modificacion',
  `usu_est` tinyint(1) DEFAULT NULL COMMENT 'estado del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla del usuario';

--
-- Volcado de datos para la tabla `alm_usuario`
--

INSERT INTO `alm_usuario` (`usu_id`, `perso_id`, `tpusu_id`, `usu_nom`, `usu_pass`, `usu_freg`, `usu_frmo`, `usu_est`) VALUES
(1, 1, 1, 'admin', '123456', '2017-05-25', '2017-05-25', 1),
(2, 2, 1, 'admin1', '123456', '2017-05-25', '2017-05-25', 1),
(3, 3, 3, 'Jhoana', '123456', '2017-05-25', '2017-05-25', 1),
(4, 4, 3, 'Renzo', '123456', '2017-05-25', '2017-05-25', 1),
(5, 5, 3, 'David', '123456', '2017-05-25', '2017-05-25', 1),
(6, 6, 3, 'Miguel', '123456', '2017-05-25', '2017-05-25', 1),
(7, 7, 4, 'Christian', '123456', '2017-05-25', '2017-05-25', 1),
(8, 8, 4, 'Raul', '123456', '2017-05-25', '2017-05-25', 1),
(9, 9, 4, 'Maria', '123456', '2017-05-25', '2017-05-25', 1),
(10, 10, 4, 'Victor', '123456', '2017-05-25', '2017-05-25', 1),
(11, 11, 4, 'Javier', '123456', '2017-05-25', '2017-05-25', 1),
(12, 12, 4, 'Rosario', '123456', '2017-05-25', '2017-05-25', 1),
(13, 13, 4, 'Efraín', '123456', '2017-05-25', '2017-05-25', 1),
(14, 14, 4, 'Marco', '123456', '2017-05-25', '2017-05-25', 1),
(15, 15, 5, 'Cesar', '123456', '2017-05-25', '2017-05-25', 1),
(16, 16, 5, 'Isela', '123456', '2017-05-25', '2017-05-25', 1),
(17, 17, 5, 'Leoncia', '123456', '2017-05-25', '2017-05-25', 1),
(18, 18, 5, 'Luz', '123456', '2017-05-25', '2017-05-25', 1),
(19, 19, 6, 'Ramiro', '123456', '2017-05-25', '2017-05-25', 1),
(20, 20, 6, 'Javier', '123456', '2017-05-25', '2017-05-25', 1),
(21, 21, 6, 'Nelson', '123456', '2017-05-25', '2017-05-25', 1),
(22, 22, 6, 'Cielito', '123456', '2017-05-25', '2017-05-25', 1),
(23, 23, 6, 'Isabel', '123456', '2017-05-25', '2017-05-25', 1),
(24, 24, 6, 'Gizella', '123456', '2017-05-25', '2017-05-25', 1),
(25, 25, 6, 'Estalins', '123456', '2017-05-25', '2017-05-25', 1),
(26, 26, 6, 'Jorge', '123456', '2017-05-25', '2017-05-25', 1),
(27, 27, 2, 'Guillermo', '123456', '2017-05-25', '2017-05-25', 1),
(28, 28, 2, 'Zarita', '123456', '2017-05-25', '2017-05-25', 1),
(29, 29, 2, 'Carlos', '123456', '2017-05-25', '2017-05-25', 1),
(30, 30, 2, 'Doris', '123456', '2017-05-25', '2017-05-25', 1),
(31, 31, 2, 'Maribel', '123456', '2017-05-25', '2017-05-25', 1),
(32, 32, 2, 'Angel', '123456', '2017-05-25', '2017-05-25', 1),
(33, 33, 2, 'Conterno', '123456', '2017-05-25', '2017-05-25', 1),
(34, 34, 2, 'Ana', '123456', '2017-05-25', '2017-05-25', 1),
(35, 35, 2, 'Antonio', '123456', '2017-05-25', '2017-05-25', 1),
(36, 36, 2, 'Yuliana', '123456', '2017-05-25', '2017-05-25', 1),
(37, 37, 2, 'Carlos', '123456', '2017-05-25', '2017-05-25', 1),
(38, 38, 2, 'Esther', '123456', '2017-05-25', '2017-05-25', 1),
(39, 39, 2, 'Olga', '123456', '2017-05-25', '2017-05-25', 1),
(40, 40, 2, 'Edwin', '123456', '2017-05-25', '2017-05-25', 1),
(41, 41, 2, 'Roberto', '123456', '2017-05-25', '2017-05-25', 1),
(42, 42, 2, 'Gloria', '123456', '2017-05-25', '2017-05-25', 1),
(43, 43, 2, 'Miriam', '123456', '2017-05-25', '2017-05-25', 1),
(44, 44, 2, 'Valle', '123456', '2017-05-25', '2017-05-25', 1),
(45, 45, 2, 'Marlene', '123456', '2017-05-25', '2017-05-25', 1),
(46, 46, 2, 'Elsa', '123456', '2017-05-25', '2017-05-25', 1),
(47, 47, 2, 'Javier', '123456', '2017-05-25', '2017-05-25', 1),
(48, 48, 2, 'Elena', '123456', '2017-05-25', '2017-05-25', 1),
(49, 49, 2, 'Clara', '123456', '2017-05-25', '2017-05-25', 1),
(50, 50, 2, 'Milagros', '123456', '2017-05-25', '2017-05-25', 1),
(51, 51, 2, 'Guillermo', '123456', '2017-05-25', '2017-05-25', 1),
(52, 52, 2, 'Lourdes', '123456', '2017-05-25', '2017-05-25', 1),
(53, 53, 2, 'Luis', '123456', '2017-05-25', '2017-05-25', 1),
(54, 54, 2, 'Marcos', '123456', '2017-05-25', '2017-05-25', 1),
(55, 55, 2, 'Walter', '123456', '2017-05-25', '2017-05-25', 1),
(56, 56, 2, 'Fabian', '123456', '2017-05-25', '2017-05-25', 1),
(57, 57, 2, 'Pedro', '123456', '2017-05-25', '2017-05-25', 1),
(58, 58, 2, 'Roberto', '123456', '2017-05-25', '2017-05-25', 1),
(59, 59, 2, 'Orfelina', '123456', '2017-05-25', '2017-05-25', 1),
(60, 60, 2, 'Hector', '123456', '2017-05-25', '2017-05-25', 1),
(61, 61, 2, 'Yen', '123456', '2017-05-25', '2017-05-25', 1),
(62, 62, 2, 'Cosme', '123456', '2017-05-25', '2017-05-25', 1),
(63, 63, 2, 'Sandra', '123456', '2017-05-25', '2017-05-25', 1),
(64, 64, 2, 'Jenny', '123456', '2017-05-25', '2017-05-25', 1),
(65, 65, 2, 'Santiago', '123456', '2017-05-25', '2017-05-25', 1),
(66, 66, 2, 'Magda', '123456', '2017-05-25', '2017-05-25', 1),
(67, 67, 2, 'Martin', '123456', '2017-05-25', '2017-05-25', 1),
(68, 68, 2, 'Oscar', '123456', '2017-05-25', '2017-05-25', 1),
(69, 69, 2, 'Carlos', '123456', '2017-05-25', '2017-05-25', 1),
(70, 70, 2, 'Elizabeth', '123456', '2017-05-25', '2017-05-25', 1),
(71, 71, 2, 'Manuel', '123456', '2017-05-25', '2017-05-25', 1),
(72, 72, 2, 'Carlos', '123456', '2017-05-25', '2017-05-25', 1),
(73, 73, 2, 'Olga', '123456', '2017-05-25', '2017-05-25', 1),
(74, 74, 2, 'Josue', '123456', '2017-05-25', '2017-05-25', 1),
(75, 75, 2, 'Carmen', '123456', '2017-05-25', '2017-05-25', 1),
(76, 76, 2, 'Santiago', '123456', '2017-05-25', '2017-05-25', 1),
(77, 77, 2, 'Arturo', '123456', '2017-05-25', '2017-05-25', 1),
(78, 78, 2, 'Enrique', '123456', '2017-05-25', '2017-05-25', 1),
(79, 79, 2, 'Sonia', '123456', '2017-05-25', '2017-05-25', 1),
(80, 80, 2, 'Gerardo', '123456', '2017-05-25', '2017-05-25', 1),
(81, 81, 2, 'Freddy', '123456', '2017-05-25', '2017-05-25', 1),
(82, 82, 2, 'Teresa', '123456', '2017-05-25', '2017-05-25', 1),
(83, 83, 2, 'Juan', '123456', '2017-05-25', '2017-05-25', 1),
(84, 84, 2, 'Georgina', '123456', '2017-05-25', '2017-05-25', 1),
(85, 85, 2, 'Rosa', '123456', '2017-05-25', '2017-05-25', 1),
(86, 86, 2, 'Rosa', '123456', '2017-05-25', '2017-05-25', 1),
(87, 87, 2, 'Maria', '123456', '2017-05-25', '2017-05-25', 1),
(88, 88, 2, 'Augusto', '123456', '2017-05-25', '2017-05-25', 1),
(89, 89, 2, 'Carina', '123456', '2017-05-25', '2017-05-25', 1),
(90, 90, 2, 'Carlos', '123456', '2017-05-25', '2017-05-25', 1),
(91, 91, 2, 'Angel', '123456', '2017-05-25', '2017-05-25', 1),
(92, 92, 2, 'Pino', '123456', '2017-05-25', '2017-05-25', 1),
(93, 93, 2, 'Violeta', '123456', '2017-05-25', '2017-05-25', 1),
(94, 94, 2, 'Augusto', '123456', '2017-05-25', '2017-05-25', 1),
(95, 95, 2, 'Benssa', '123456', '2017-05-25', '2017-05-25', 1),
(96, 96, 2, 'Angel', '123456', '2017-05-25', '2017-05-25', 1),
(97, 97, 2, 'Jose', '123456', '2017-05-25', '2017-05-25', 1),
(98, 98, 2, 'Angel', '123456', '2017-05-25', '2017-05-25', 1),
(99, 99, 2, 'Miguel', '123456', '2017-05-25', '2017-05-25', 1),
(100, 100, 2, 'Jacquelin', '123456', '2017-05-25', '2017-05-25', 1),
(101, 101, 2, 'Ruth', '123456', '2017-05-25', '2017-05-25', 1),
(102, 102, 2, 'Guillermo', '123456', '2017-05-25', '2017-05-25', 1),
(103, 103, 2, 'Alejandro', '123456', '2017-05-25', '2017-05-25', 1),
(104, 104, 2, 'Blanca', '123456', '2017-05-25', '2017-05-25', 1),
(105, 105, 2, 'Enrique', '123456', '2017-05-25', '2017-05-25', 1),
(106, 106, 2, 'Cecilia', '123456', '2017-05-25', '2017-05-25', 1),
(107, 107, 2, 'Mariela', '123456', '2017-05-25', '2017-05-25', 1),
(108, 108, 2, 'Monica', '123456', '2017-05-25', '2017-05-25', 1),
(109, 109, 2, 'Juan', '123456', '2017-05-25', '2017-05-25', 1),
(110, 110, 2, 'Hilrich', '123456', '2017-05-25', '2017-05-25', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alm_almacen`
--
ALTER TABLE `alm_almacen`
  ADD PRIMARY KEY (`alm_id`),
  ADD KEY `iu_alm_des` (`alm_nom`,`alm_dire`);

--
-- Indices de la tabla `alm_categoria`
--
ALTER TABLE `alm_categoria`
  ADD PRIMARY KEY (`cate_id`),
  ADD KEY `iu_cate_desc` (`cate_desc`);

--
-- Indices de la tabla `alm_controlingreso`
--
ALTER TABLE `alm_controlingreso`
  ADD PRIMARY KEY (`ctin_id`),
  ADD KEY `fk_ctin_prod_idx` (`prod_id`),
  ADD KEY `fk_ctin_nti_idx` (`nti_id`);

--
-- Indices de la tabla `alm_controlsalida`
--
ALTER TABLE `alm_controlsalida`
  ADD PRIMARY KEY (`ctsd_id`),
  ADD KEY `fk_ctsd_nts_idx` (`nts_id`),
  ADD KEY `fk_ctsd_prod_idx` (`prod_id`);

--
-- Indices de la tabla `alm_dato_persona`
--
ALTER TABLE `alm_dato_persona`
  ADD PRIMARY KEY (`dtpe_id`),
  ADD KEY `fk_dtpe_perso` (`perso_id`),
  ADD KEY `fk_dtpe_dato` (`tpdt_id`),
  ADD KEY `iu_dtpe_des` (`dtpe_desc`);

--
-- Indices de la tabla `alm_detalmacen`
--
ALTER TABLE `alm_detalmacen`
  ADD PRIMARY KEY (`dtal_id`),
  ADD KEY `fk_dtal_alm_idx` (`alm_id`),
  ADD KEY `fk_dtal_prod_idx` (`prod_id`);

--
-- Indices de la tabla `alm_detnotaingreso`
--
ALTER TABLE `alm_detnotaingreso`
  ADD PRIMARY KEY (`dnti_id`),
  ADD KEY `fk_dtnti_nit_idx` (`nti_id`),
  ADD KEY `fk_dtnti_prod_idx` (`prod_id`),
  ADD KEY `fk_dtnti_krx_idx` (`krx_id`);

--
-- Indices de la tabla `alm_detnotasalida`
--
ALTER TABLE `alm_detnotasalida`
  ADD PRIMARY KEY (`dnts_id`),
  ADD KEY `fk_dtnts_idx` (`nts_id`),
  ADD KEY `fk_dtnts_prod_idx` (`prod_id`),
  ADD KEY `fk_dtnts_krx_idx` (`krx_id`);

--
-- Indices de la tabla `alm_detpresentacion`
--
ALTER TABLE `alm_detpresentacion`
  ADD PRIMARY KEY (`dtpre_id`),
  ADD KEY `fk_dtpre_prdo_idx` (`prod_id`),
  ADD KEY `fk_dtpre_pre_idx` (`pres_id`),
  ADD KEY `xi_dpre_con` (`Concentracion`);

--
-- Indices de la tabla `alm_empleado`
--
ALTER TABLE `alm_empleado`
  ADD PRIMARY KEY (`empl_id`),
  ADD KEY `fk_emp_perso_idx` (`perso_id`);

--
-- Indices de la tabla `alm_inventario`
--
ALTER TABLE `alm_inventario`
  ADD PRIMARY KEY (`inv_id`),
  ADD KEY `fk_inv_num` (`inv_num`),
  ADD KEY `fk_inv_alm_idx` (`alm_id`),
  ADD KEY `fk_inv_tpinv_idx` (`tpin_id`);

--
-- Indices de la tabla `alm_kardex`
--
ALTER TABLE `alm_kardex`
  ADD PRIMARY KEY (`krx_id`),
  ADD KEY `xi_krx_num` (`krx_num`),
  ADD KEY `fk_krx_inv_idx` (`inv_id`);

--
-- Indices de la tabla `alm_lote`
--
ALTER TABLE `alm_lote`
  ADD PRIMARY KEY (`lote_id`),
  ADD KEY `xi_lote_des` (`lote_desc`);

--
-- Indices de la tabla `alm_marca`
--
ALTER TABLE `alm_marca`
  ADD PRIMARY KEY (`marca_id`),
  ADD KEY `xi_marca_des` (`marca_desc`);

--
-- Indices de la tabla `alm_notaingreso`
--
ALTER TABLE `alm_notaingreso`
  ADD PRIMARY KEY (`nti_id`),
  ADD KEY `fk_nti_tpni_idx` (`tpni_id`),
  ADD KEY `fk_nti_tpdi_idx` (`tpdi_id`);

--
-- Indices de la tabla `alm_notasalida`
--
ALTER TABLE `alm_notasalida`
  ADD PRIMARY KEY (`nts_id`),
  ADD KEY `fk_nts_tpns_idx` (`tipnts_id`),
  ADD KEY `fk_nts_pri_idx` (`prio_id`);

--
-- Indices de la tabla `alm_persona`
--
ALTER TABLE `alm_persona`
  ADD PRIMARY KEY (`perso_id`),
  ADD KEY `ix_perso_nom` (`perso_nom`,`perso_app`,`perso_apm`);

--
-- Indices de la tabla `alm_presentacion`
--
ALTER TABLE `alm_presentacion`
  ADD PRIMARY KEY (`pres_id`),
  ADD KEY `xi_pres_des` (`pres_desc`);

--
-- Indices de la tabla `alm_prioridad`
--
ALTER TABLE `alm_prioridad`
  ADD PRIMARY KEY (`pri_id`),
  ADD KEY `xi_pri_des` (`pri_des`);

--
-- Indices de la tabla `alm_producto`
--
ALTER TABLE `alm_producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `alm_tipodato`
--
ALTER TABLE `alm_tipodato`
  ADD PRIMARY KEY (`tpdt_id`),
  ADD KEY `iu_tpdt_des` (`tpdt_des`);

--
-- Indices de la tabla `alm_tipodocing`
--
ALTER TABLE `alm_tipodocing`
  ADD PRIMARY KEY (`tpdi_id`),
  ADD KEY `xi_tpdi_desc` (`tpdi_des`);

--
-- Indices de la tabla `alm_tipoinventario`
--
ALTER TABLE `alm_tipoinventario`
  ADD PRIMARY KEY (`tpiv_id`),
  ADD KEY `xi_tpinv_des` (`tpiv_des`);

--
-- Indices de la tabla `alm_tiponotaingreso`
--
ALTER TABLE `alm_tiponotaingreso`
  ADD PRIMARY KEY (`tpnti_id`),
  ADD KEY `xi_tpni_desc` (`tpnti_des`);

--
-- Indices de la tabla `alm_tiponotasalida`
--
ALTER TABLE `alm_tiponotasalida`
  ADD PRIMARY KEY (`tpnts_id`),
  ADD KEY `xi_tpnsd_des` (`tpnts_des`);

--
-- Indices de la tabla `alm_tipousuario`
--
ALTER TABLE `alm_tipousuario`
  ADD PRIMARY KEY (`tpusu_id`),
  ADD KEY `xi_tpusu` (`tpusu_desc`);

--
-- Indices de la tabla `alm_tipo_producto`
--
ALTER TABLE `alm_tipo_producto`
  ADD PRIMARY KEY (`tppro_id`),
  ADD KEY `xi_tppro_des` (`tppro_des`);

--
-- Indices de la tabla `alm_tpdokx`
--
ALTER TABLE `alm_tpdokx`
  ADD PRIMARY KEY (`tdkx_id`),
  ADD KEY `xi_tpdokx_des` (`tdkx_desc`);

--
-- Indices de la tabla `alm_usuario`
--
ALTER TABLE `alm_usuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD KEY `fk_usu_perso_idx` (`perso_id`),
  ADD KEY `fk_usu_tpusu_idx` (`tpusu_id`),
  ADD KEY `xi_usu_nom` (`usu_nom`,`usu_pass`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alm_almacen`
--
ALTER TABLE `alm_almacen`
  MODIFY `alm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del almancen';
--
-- AUTO_INCREMENT de la tabla `alm_categoria`
--
ALTER TABLE `alm_categoria`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la categoria';
--
-- AUTO_INCREMENT de la tabla `alm_controlingreso`
--
ALTER TABLE `alm_controlingreso`
  MODIFY `ctin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indetificador del control de ingreso ';
--
-- AUTO_INCREMENT de la tabla `alm_controlsalida`
--
ALTER TABLE `alm_controlsalida`
  MODIFY `ctsd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'control de salida de producto';
--
-- AUTO_INCREMENT de la tabla `alm_dato_persona`
--
ALTER TABLE `alm_dato_persona`
  MODIFY `dtpe_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle', AUTO_INCREMENT=331;
--
-- AUTO_INCREMENT de la tabla `alm_detalmacen`
--
ALTER TABLE `alm_detalmacen`
  MODIFY `dtal_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador detalle del almacen';
--
-- AUTO_INCREMENT de la tabla `alm_detnotaingreso`
--
ALTER TABLE `alm_detnotaingreso`
  MODIFY `dnti_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de detalle de nota de ingresos';
--
-- AUTO_INCREMENT de la tabla `alm_detnotasalida`
--
ALTER TABLE `alm_detnotasalida`
  MODIFY `dnts_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle de nota de salida';
--
-- AUTO_INCREMENT de la tabla `alm_detpresentacion`
--
ALTER TABLE `alm_detpresentacion`
  MODIFY `dtpre_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle presentacion';
--
-- AUTO_INCREMENT de la tabla `alm_empleado`
--
ALTER TABLE `alm_empleado`
  MODIFY `empl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del empleado';
--
-- AUTO_INCREMENT de la tabla `alm_inventario`
--
ALTER TABLE `alm_inventario`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del inventario';
--
-- AUTO_INCREMENT de la tabla `alm_kardex`
--
ALTER TABLE `alm_kardex`
  MODIFY `krx_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del kardex';
--
-- AUTO_INCREMENT de la tabla `alm_lote`
--
ALTER TABLE `alm_lote`
  MODIFY `lote_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de lote';
--
-- AUTO_INCREMENT de la tabla `alm_marca`
--
ALTER TABLE `alm_marca`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la marca';
--
-- AUTO_INCREMENT de la tabla `alm_notaingreso`
--
ALTER TABLE `alm_notaingreso`
  MODIFY `nti_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de nota de ingreso';
--
-- AUTO_INCREMENT de la tabla `alm_notasalida`
--
ALTER TABLE `alm_notasalida`
  MODIFY `nts_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la nota de salida';
--
-- AUTO_INCREMENT de la tabla `alm_persona`
--
ALTER TABLE `alm_persona`
  MODIFY `perso_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la persona', AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `alm_presentacion`
--
ALTER TABLE `alm_presentacion`
  MODIFY `pres_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la presentacion';
--
-- AUTO_INCREMENT de la tabla `alm_prioridad`
--
ALTER TABLE `alm_prioridad`
  MODIFY `pri_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la prioridad';
--
-- AUTO_INCREMENT de la tabla `alm_producto`
--
ALTER TABLE `alm_producto`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de producto';
--
-- AUTO_INCREMENT de la tabla `alm_tipodato`
--
ALTER TABLE `alm_tipodato`
  MODIFY `tpdt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de dato', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `alm_tipodocing`
--
ALTER TABLE `alm_tipodocing`
  MODIFY `tpdi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo documento ';
--
-- AUTO_INCREMENT de la tabla `alm_tipoinventario`
--
ALTER TABLE `alm_tipoinventario`
  MODIFY `tpiv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de tipo de inventario';
--
-- AUTO_INCREMENT de la tabla `alm_tiponotaingreso`
--
ALTER TABLE `alm_tiponotaingreso`
  MODIFY `tpnti_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador tipo de nota de ingreso';
--
-- AUTO_INCREMENT de la tabla `alm_tiponotasalida`
--
ALTER TABLE `alm_tiponotasalida`
  MODIFY `tpnts_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de tipo nota de salida';
--
-- AUTO_INCREMENT de la tabla `alm_tipousuario`
--
ALTER TABLE `alm_tipousuario`
  MODIFY `tpusu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de usuario', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `alm_tipo_producto`
--
ALTER TABLE `alm_tipo_producto`
  MODIFY `tppro_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de tipo de producto';
--
-- AUTO_INCREMENT de la tabla `alm_tpdokx`
--
ALTER TABLE `alm_tpdokx`
  MODIFY `tdkx_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador tipo documento kardex';
--
-- AUTO_INCREMENT de la tabla `alm_usuario`
--
ALTER TABLE `alm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del usuario', AUTO_INCREMENT=111;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alm_controlingreso`
--
ALTER TABLE `alm_controlingreso`
  ADD CONSTRAINT `fk_ctin_nti` FOREIGN KEY (`nti_id`) REFERENCES `alm_notaingreso` (`nti_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ctin_prod` FOREIGN KEY (`prod_id`) REFERENCES `alm_producto` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alm_controlsalida`
--
ALTER TABLE `alm_controlsalida`
  ADD CONSTRAINT `fk_ctsd_nts` FOREIGN KEY (`nts_id`) REFERENCES `alm_notasalida` (`nts_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ctsd_prod` FOREIGN KEY (`prod_id`) REFERENCES `alm_producto` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_dato_persona`
--
ALTER TABLE `alm_dato_persona`
  ADD CONSTRAINT `perso_id` FOREIGN KEY (`perso_id`) REFERENCES `alm_persona` (`perso_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpdt_id` FOREIGN KEY (`tpdt_id`) REFERENCES `alm_tipodato` (`tpdt_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `alm_detalmacen`
--
ALTER TABLE `alm_detalmacen`
  ADD CONSTRAINT `fk_dtal_alm` FOREIGN KEY (`alm_id`) REFERENCES `alm_almacen` (`alm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dtal_prod` FOREIGN KEY (`prod_id`) REFERENCES `alm_producto` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_detnotaingreso`
--
ALTER TABLE `alm_detnotaingreso`
  ADD CONSTRAINT `fk_dtnti_krx` FOREIGN KEY (`krx_id`) REFERENCES `alm_kardex` (`krx_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dtnti_nit` FOREIGN KEY (`nti_id`) REFERENCES `alm_notaingreso` (`nti_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dtnti_prod` FOREIGN KEY (`prod_id`) REFERENCES `alm_producto` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_detnotasalida`
--
ALTER TABLE `alm_detnotasalida`
  ADD CONSTRAINT `fk_dtnts_krx` FOREIGN KEY (`krx_id`) REFERENCES `alm_kardex` (`krx_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dtnts_nts` FOREIGN KEY (`nts_id`) REFERENCES `alm_notasalida` (`nts_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dtnts_prod` FOREIGN KEY (`prod_id`) REFERENCES `alm_producto` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_detpresentacion`
--
ALTER TABLE `alm_detpresentacion`
  ADD CONSTRAINT `fk_dtpre_prdo` FOREIGN KEY (`prod_id`) REFERENCES `alm_producto` (`prod_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dtpre_pre` FOREIGN KEY (`pres_id`) REFERENCES `alm_presentacion` (`pres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_empleado`
--
ALTER TABLE `alm_empleado`
  ADD CONSTRAINT `fk_emp_perso` FOREIGN KEY (`perso_id`) REFERENCES `alm_persona` (`perso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_inventario`
--
ALTER TABLE `alm_inventario`
  ADD CONSTRAINT `fk_inv_alm` FOREIGN KEY (`alm_id`) REFERENCES `alm_almacen` (`alm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inv_tpinv` FOREIGN KEY (`tpin_id`) REFERENCES `alm_tipoinventario` (`tpiv_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_kardex`
--
ALTER TABLE `alm_kardex`
  ADD CONSTRAINT `fk_krx_inv` FOREIGN KEY (`inv_id`) REFERENCES `alm_inventario` (`inv_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_notaingreso`
--
ALTER TABLE `alm_notaingreso`
  ADD CONSTRAINT `fk_nti_tpdi` FOREIGN KEY (`tpdi_id`) REFERENCES `alm_tipodocing` (`tpdi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nti_tpni` FOREIGN KEY (`tpni_id`) REFERENCES `alm_tiponotaingreso` (`tpnti_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_notasalida`
--
ALTER TABLE `alm_notasalida`
  ADD CONSTRAINT `fk_nts_pri` FOREIGN KEY (`prio_id`) REFERENCES `alm_prioridad` (`pri_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nts_tpns` FOREIGN KEY (`tipnts_id`) REFERENCES `alm_tiponotasalida` (`tpnts_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alm_usuario`
--
ALTER TABLE `alm_usuario`
  ADD CONSTRAINT `fk_usu_perso` FOREIGN KEY (`perso_id`) REFERENCES `alm_persona` (`perso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usu_tpusu` FOREIGN KEY (`tpusu_id`) REFERENCES `alm_tipousuario` (`tpusu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
