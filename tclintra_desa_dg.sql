-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-10-2023 a las 14:50:16
-- Versión del servidor: 10.6.15-MariaDB-cll-lve
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tclintra_desa_dg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `codigo`, `nombre`) VALUES
(1, 'CONT', 'CONTABILIDAD'),
(2, 'RRHH', 'RECURSOS HUMANOS'),
(3, 'PREV', 'PREVENCION'),
(4, 'CMRL', 'COMERCIAL'),
(5, 'PROD', 'PRODUCCION'),
(6, 'OTRS', 'OTROS'),
(7, NULL, 'A-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `id` bigint(20) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`id`, `authority`, `user_id`) VALUES
(1, 'ROLE_SCAN', 1),
(2, 'ROLE_USER', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_documento`
--

CREATE TABLE `detalle_documento` (
  `id` bigint(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo_dato` varchar(2) DEFAULT 'S',
  `id_sub_area_detalle` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_documento`
--

INSERT INTO `detalle_documento` (`id`, `nivel`, `nombre`, `tipo_dato`, `id_sub_area_detalle`) VALUES
(1, 0, 'Numero Comprobante', 'S', 1),
(2, 0, 'Numero Documento', 'S', 2),
(3, 1, 'Rut Proveedor', 'S', 2),
(4, 0, 'Numero Documento', 'S', 3),
(5, 1, 'Rut Proveedor', 'S', 3),
(6, 0, 'Numero Documento', 'S', 4),
(7, 1, 'Rut Proveedor', 'S', 4),
(8, 0, 'Numero Documento', 'S', 5),
(9, 1, 'Rut Proveedor', 'S', 5),
(10, 0, 'Numero Documento', 'S', 6),
(11, 1, 'Rut Proveedor', 'S', 6),
(12, 0, 'Numero Documento', 'S', 7),
(13, 1, 'Rut Proveedor', 'S', 7),
(14, 0, 'Numero Documento', 'S', 8),
(15, 0, 'Numero Documento', 'S', 9),
(16, 0, 'Numero Documento', 'S', 10),
(17, 0, 'Numero Documento', 'S', 11),
(18, 0, 'Numero Documento', 'S', 12),
(19, 0, 'Numero Documento', 'S', 13),
(20, 0, 'Numero Documento', 'S', 14),
(21, 0, 'Numero Documento', 'S', 15),
(22, 0, 'Numero Documento', 'S', 16),
(23, 0, 'Numero De Bl', 'S', 17),
(24, 0, 'Numero Documento', 'S', 20),
(25, 0, 'Numero Documento', 'S', 21),
(26, 0, 'Numero Documento', 'S', 22),
(27, 0, 'Numero De Estado De Pago', 'S', 24),
(28, 1, 'Rut Proveedor', 'S', 24),
(29, 1, 'Tipo De Documento', 'S', 24),
(30, 1, 'Numero De Documento', 'S', 24),
(31, 1, 'Nombre Trabajador', 'S', 25),
(32, 1, 'Nombre Trabajador', 'S', 26),
(33, 0, 'Periodo', 'S', 27),
(34, 0, 'Periodo', 'S', 28),
(35, 0, 'Periodo', 'S', 29),
(36, 0, 'Periodo', 'S', 30),
(37, 0, 'Periodo', 'S', 31),
(38, 0, 'Periodo', 'S', 32),
(39, 0, 'Periodo', 'S', 33),
(40, 0, 'Periodo', 'S', 34),
(41, 0, 'Periodo', 'S', 35),
(42, 0, 'Periodo', 'S', 36),
(43, 1, 'Folio', 'S', 37),
(44, 1, 'Folio', 'S', 38),
(45, 1, 'Folio', 'S', 39),
(46, 1, 'Folio', 'S', 40),
(47, 1, 'Folio', 'S', 41),
(48, 1, 'Folio', 'S', 42),
(49, 1, 'Folio', 'S', 43),
(50, 1, 'Folio', 'S', 44),
(51, 1, 'Folio', 'S', 45),
(52, 1, 'Folio', 'S', 46),
(53, 1, 'Folio', 'S', 47),
(54, 1, 'Folio', 'S', 48),
(55, 1, 'Folio', 'S', 49),
(56, 1, 'Folio', 'S', 50),
(57, 1, 'Folio', 'S', 51),
(58, 1, 'Folio', 'S', 52),
(59, 1, 'Folio', 'S', 53),
(60, 1, 'Folio', 'S', 54),
(61, 1, 'Folio', 'S', 55),
(62, 1, 'Folio', 'S', 56),
(63, 0, 'DD-C1', NULL, 57),
(64, 1, 'DD-D1', NULL, 57),
(65, 1, 'DD-D2', NULL, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_descripcion`
--

CREATE TABLE `item_descripcion` (
  `id` bigint(20) NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `id_detalle_documento` bigint(20) DEFAULT NULL,
  `id_registro` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` bigint(20) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `fecha_emision` datetime NOT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  `id_area` bigint(20) NOT NULL,
  `id_sub_area` bigint(20) NOT NULL,
  `id_sub_area_detalle` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_areas`
--

CREATE TABLE `sub_areas` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_area` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sub_areas`
--

INSERT INTO `sub_areas` (`id`, `codigo`, `nombre`, `id_area`) VALUES
(1, 'CPTCO', 'COMPROBANTES CONTABLES', 1),
(2, 'DOCCO', 'DOCUMENTOS DE COMPRA', 1),
(3, 'DOCEX', 'DOCUMENTOS DE EXPORTACION', 1),
(4, 'DOCIM', 'DOCUMENTOS DE IMPORTACION', 1),
(5, 'DOCVE', 'DOCUMENTOS DE VENTA', 1),
(6, 'DOCLG', 'DOCUMENTOS LEGALES', 1),
(7, 'ESTPA', 'ESTADOS DE PAGO', 1),
(8, 'FDSFJ', 'FONDOS FIJOS', 1),
(9, 'LBCON', 'LIBRO CONTABLE', 1),
(10, 'ESPUB', 'ESCRITURAS PUBLICAS', 1),
(11, 'CNTRJ', 'CONTRATOS DE TRABAJO', 2),
(12, 'LQSDO', 'LIQUIDACIONES DE SUELDO', 2),
(13, 'INDPL', 'INDUCCION A LA PLANTA', 3),
(14, 'MNLDC', 'MANUAL DE DESCARGA DE MATERIAL', 3),
(15, 'FCCVT', 'FACTURA COMERCIAL DE VENTA', 4),
(16, 'RCDOC', 'RECEPCION DE DOCUMENTOS', 4),
(17, 'RPMAN', 'REPUESTOS DE MANTENCION', 5),
(18, 'OTNUM', 'NUMERO DE OT', 5),
(19, 'OTMNL', 'OTMANUAL', 5),
(20, 'MNLEQ', 'MANUAL DE EQUIPOS', 5),
(21, 'DCSVS', 'DOCUMENTOS VARIOS', 6),
(22, 'RVPUB', 'REVISTAS PUBLICITARIAS', 6),
(23, NULL, 'SA-2', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_areas_detalle`
--

CREATE TABLE `sub_areas_detalle` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_sub_area` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sub_areas_detalle`
--

INSERT INTO `sub_areas_detalle` (`id`, `codigo`, `nombre`, `id_sub_area`) VALUES
(1, 'COMPTE', 'COMPROBANTE CONTABLE', 1),
(2, 'FCOAFE', 'FACTURA COMPRA AFECTA', 2),
(3, 'FCOEXE', 'FACTURA COMPRA EXENTA', 2),
(4, 'NCCAFE', 'NOTA DE CREDITO AFECTA', 2),
(5, 'NCCEXE', 'NOTA DE CREDITO EXENTA', 2),
(6, 'NDCAFE', 'NOTA DEBITO COMPRA AFECTA', 2),
(7, 'NDCEXE', 'NOTA DEBITO COMPRA EXENTA', 2),
(8, 'FVTAFE', 'FACTURA VENTA AFECTA', 5),
(9, 'FVTEXE', 'FACTURA VENTA EXENTA', 5),
(10, 'NCVAFE', 'NOTA CREDITO VTA AFECTA', 5),
(11, 'NCVEXE', 'NOTA CREDITO VTA EXENTA', 5),
(12, 'NDVAFE', 'NOTA DE DEBITO VTA AFECTA', 5),
(13, 'NDVEXE', 'NOTA DE DEBITO VTA EXENTA', 5),
(14, 'FACEXP', 'FACTURA EXPORTACION', 3),
(15, 'NCEXPO', 'NOTA DE CREDITO EXPORTACION', 3),
(16, 'NDEXPO', 'NOTA DE DEBITO EXPORTACION', 3),
(17, 'BLEXPO', 'BILL OF LOADING', 3),
(18, 'CTACRE', 'CARTA DE CREDITO EXPORTACION', 3),
(19, 'CERORE', 'CERTIFICADO ORIGEN DE EXPORTACION', 3),
(20, 'COMINV', 'COMERCIAL INVOICE', 4),
(21, 'DIIMP', 'DECLARACION DE INGRESO', 4),
(22, 'PROFDO', 'PROVISION FONDOS', 4),
(23, 'SINDT', 'Sin datos', 6),
(24, 'EDDPAG', 'ESTADO DE PAGO', 7),
(25, 'FDOFJO', 'FONDOS FIJOS', 8),
(26, 'FDOREN', 'FONDOS POR RENDIR', 8),
(27, 'LIBVTA', 'LIBRO DE VENTAS', 9),
(28, 'LIBCOM', 'LIBRO DE COMPRAS', 9),
(29, 'LIBREM', 'LIBRO REM', 9),
(30, 'LIBHON', 'LIBRO DE HONORARIOS', 9),
(31, 'LIBIYB', 'LIBRO INV Y BCE', 9),
(32, 'LIBDIA', 'LIBRO DIARIO', 9),
(33, 'LIBMAY', 'LIBRO MAYOR', 9),
(34, 'RLISII', 'RENTA LIQUIDA IMPONIBLE', 9),
(35, 'RRESII', 'REGISTRO RENTA EMPRESARIAL', 9),
(36, 'FUTSII', 'FONDO UTIL RID (FUT)', 9),
(37, 'CONSOC', 'CONSTITUCIÓN DE SOCIEDAD', 10),
(38, 'EXCSOC', 'EXTRACTO DE CONSTITUCIÓN DE SOCIEDAD CERRADA', 10),
(39, 'SEDISO', 'SESIÓN DE DIRECTORIO DE SOCIEDAD', 10),
(40, 'ACSEDI', 'ACTA DE SESION DE DIRECTORIO', 10),
(41, 'LACSED', 'LIBRO DE ACTAS SESIONES DE DIRECTORIO', 10),
(42, '1SEORD', 'PRIMERA SESION ORDINARIA DEL DIRECTORIO', 10),
(43, '2SEORD', 'SEGUNDA SESION ORDINARIA DEL DIRECTORIO', 10),
(44, 'ASEORD', 'ACTA SESIÓN EXTRAORDINARIA DE DIRECTORIO', 10),
(45, 'JUGEXA', 'JUNTA GENERAL EXTRAORDINARIA DE ACCIONISTAS', 10),
(46, '1JGEXA', 'PRIMERA JUNTA GENERAL EXTRAORDINARIA DE ACCIONISTAS', 10),
(47, 'EA1JGEA', 'EXTRACTO DEL ACTA DE LA PRIMERA JUNTA GENERAL EXTRAORDINARIA DE ACCIONISTAS', 10),
(48, 'EXRESOD', 'EXTRACTO SOBRE LA REFORMA DE SOC. DENOMINADA', 10),
(49, 'RUTTCO', 'ROL UNICO TRIBUTARIO TECNOLOGIAS COBRA', 10),
(50, 'REVPOD', 'REVOCACION Y PODER TECNOLOGIAS COBRA S.A.', 10),
(51, 'COSUAC', 'CONTRATO SUSCRIPCION DE ACCIONES SX TECHNOLOGIES INC.', 10),
(52, 'ETEPCM', 'ESTATUTOS DE EPCM SERVICES LTD', 10),
(53, 'ADEPCM', 'ACUERDO DEL DIRECTORIO EPCM SERVICES LTD', 10),
(54, 'COGADI', 'CONSEJO DE GABINETE DEL DIRECTORIO', 10),
(55, 'ETSXTC', 'ESTATUTOS DE SX TECHNOLOGIES INC.', 10),
(56, 'POSXTC', 'PODERES SX TECHNOLOGIES INC.', 10),
(57, NULL, 'SAD-3', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `rut` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `apellido`, `email`, `enabled`, `nombre`, `password`, `rut`) VALUES
(1, 'Scan', 'scan@cobra.cl', b'1', 'Scan', '$2a$10$up4lZVTywxofQulniXLcYuEjF6BJ2bzIcHJxZtOHzAA67OHRpwGL6', '16074474k'),
(2, 'Usuario', 'usuario@cobra.cl', b'1', 'Usuario', '$2a$10$h5zWx.w.hq.a2ekp0S.BNe.cgoG4321.XcZYtJnPxANwJvw0xU2uq', '268888411');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKrimuuii4fm3j9qt8uupyiy8nd` (`user_id`,`authority`);

--
-- Indices de la tabla `detalle_documento`
--
ALTER TABLE `detalle_documento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3lcmpw1ypfoqy3x7ynw9kkbpq` (`id_sub_area_detalle`);

--
-- Indices de la tabla `item_descripcion`
--
ALTER TABLE `item_descripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK57oj6lvdkkby9kkfuf1nhlkly` (`id_detalle_documento`),
  ADD KEY `FKq9sasok5p5yacrai72ihx7jd3` (`id_registro`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKocp7mc4cmaicrdjm9twwy2u58` (`id_area`),
  ADD KEY `FKi7scm50tggfhel7qrdb6ooddx` (`id_sub_area`),
  ADD KEY `FK1fk0c51soo3u3tvlorvpu0y37` (`id_sub_area_detalle`);

--
-- Indices de la tabla `sub_areas`
--
ALTER TABLE `sub_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn6r039ykmmik6cio1sk1cabtj` (`id_area`);

--
-- Indices de la tabla `sub_areas_detalle`
--
ALTER TABLE `sub_areas_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqnlsmwjd3nbi4lnyfcj0v2jnt` (`id_sub_area`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_scuj1snh0iy35s195t3qff5o` (`rut`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_documento`
--
ALTER TABLE `detalle_documento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `item_descripcion`
--
ALTER TABLE `item_descripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sub_areas`
--
ALTER TABLE `sub_areas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `sub_areas_detalle`
--
ALTER TABLE `sub_areas_detalle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FKk91upmbueyim93v469wj7b2qh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `detalle_documento`
--
ALTER TABLE `detalle_documento`
  ADD CONSTRAINT `FK3lcmpw1ypfoqy3x7ynw9kkbpq` FOREIGN KEY (`id_sub_area_detalle`) REFERENCES `sub_areas_detalle` (`id`);

--
-- Filtros para la tabla `item_descripcion`
--
ALTER TABLE `item_descripcion`
  ADD CONSTRAINT `FK57oj6lvdkkby9kkfuf1nhlkly` FOREIGN KEY (`id_detalle_documento`) REFERENCES `detalle_documento` (`id`),
  ADD CONSTRAINT `FKq9sasok5p5yacrai72ihx7jd3` FOREIGN KEY (`id_registro`) REFERENCES `registros` (`id`);

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `FK1fk0c51soo3u3tvlorvpu0y37` FOREIGN KEY (`id_sub_area_detalle`) REFERENCES `sub_areas_detalle` (`id`),
  ADD CONSTRAINT `FKi7scm50tggfhel7qrdb6ooddx` FOREIGN KEY (`id_sub_area`) REFERENCES `sub_areas` (`id`),
  ADD CONSTRAINT `FKocp7mc4cmaicrdjm9twwy2u58` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id`);

--
-- Filtros para la tabla `sub_areas`
--
ALTER TABLE `sub_areas`
  ADD CONSTRAINT `FKn6r039ykmmik6cio1sk1cabtj` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id`);

--
-- Filtros para la tabla `sub_areas_detalle`
--
ALTER TABLE `sub_areas_detalle`
  ADD CONSTRAINT `FKqnlsmwjd3nbi4lnyfcj0v2jnt` FOREIGN KEY (`id_sub_area`) REFERENCES `sub_areas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
