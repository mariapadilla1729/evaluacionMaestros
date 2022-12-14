-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-12-2022 a las 20:44:56
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evaluamaestroscursos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$ZbkPL71c2KoR6PxChJLLdR$FCOYpNaqkXB/oWS7oqTiNZ8Qs+AQtpBhjCrTzqHcc3I=', '2022-12-13 04:53:27.863947', 1, 'admin', '', '', '', 1, 1, '2022-12-06 00:51:51.040142'),
(2, 'pbkdf2_sha256$390000$7CRlWiEO1FWDJdfeNZI8pG$UyAx+WUnqYEmXh4fsyYpldNW6pHEjDFtQvhE8O7MBVU=', NULL, 0, 'auxiliarSystem', '', '', '', 0, 1, '2022-12-06 02:40:17.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre`, `departamento`) VALUES
(1, 'Arquitectura', 1),
(2, 'Ingenieria Ambiental ', 1),
(3, 'Gestion ', 2),
(4, 'Contador', 2),
(5, 'Informatica', 3),
(6, 'Ingeneria En Sistemas Computacionales', 3),
(7, 'Electrica', 4),
(8, 'Electronica', 4),
(9, 'Mecanica', 5),
(10, 'Industrial', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idAspectos` int(11) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `aspectos` varchar(60) NOT NULL,
  `puntaje` varchar(3) NOT NULL,
  `calificacion` varchar(30) NOT NULL,
  `semestre` varchar(40) NOT NULL,
  `idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idAspectos`, `rfc`, `aspectos`, `puntaje`, `calificacion`, `semestre`, `idDepartamento`) VALUES
(1, 'REPV850522J5A', 'Planificación del Curso', '4.6', 'Notable', 'enjun2019', 7),
(2, 'REPV850522J5A', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 7),
(3, 'REPV850522J5A', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 7),
(4, 'REPV850522J5A', 'Motivación', '4.4', 'Notable', 'enjun2019', 7),
(5, 'REPV850522J5A', 'Evaluación', '4.5', 'Notable', 'enjun2019', 7),
(6, 'REPV850522J5A', 'Comunicación', '4.7', 'Notable', 'enjun2019', 7),
(7, 'REPV850522J5A', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 7),
(8, 'REPV850522J5A', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 7),
(9, 'REPV850522J5A', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 7),
(10, 'PUVF650107584', 'Dominio de la Asignatura', '4.7', 'Notable', 'enjun2019', 7),
(11, 'PUVF650107584', 'Planificación del Curso', '4.8', 'Excelente', 'enjun2019', 7),
(12, 'PUVF650107584', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 7),
(13, 'PUVF650107584', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 7),
(14, 'PUVF650107584', 'Motivación', '4.4', 'Notable', 'enjun2019', 7),
(15, 'PUVF650107584', 'Evaluación', '4.5', 'Notable', 'enjun2019', 7),
(16, 'PUVF650107584', 'Comunicación', '4.6', 'Notable', 'enjun2019', 7),
(17, 'PUVF650107584', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 7),
(18, 'PUVF650107584', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 7),
(19, 'PUVF650107584', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 7),
(20, 'MACJ580314BS1', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 7),
(21, 'MACJ580314BS1', 'Planificación del Curso', '4.6', 'Notable', 'enjun2019', 7),
(22, 'MACJ580314BS1', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 7),
(23, 'MACJ580314BS1', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 7),
(24, 'MACJ580314BS1', 'Motivación', '4.2', 'Bueno', 'enjun2019', 7),
(25, 'MACJ580314BS1', 'Evaluación', '4.4', 'Notable', 'enjun2019', 7),
(26, 'MACJ580314BS1', 'Comunicación', '4.5', 'Notable', 'enjun2019', 7),
(27, 'MACJ580314BS1', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 7),
(28, 'MACJ580314BS1', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 7),
(29, 'MACJ580314BS1', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 7),
(30, 'CIAN831201SC4', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 7),
(31, 'CIAN831201SC4', 'Planificación del Curso', '4.6', 'Notable', 'enjun2019', 7),
(32, 'CIAN831201SC4', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 7),
(33, 'CIAN831201SC4', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 7),
(34, 'CIAN831201SC4', 'Motivación', '4.4', 'Notable', 'enjun2019', 7),
(35, 'CIAN831201SC4', 'Evaluación', '4.3', 'Notable', 'enjun2019', 7),
(36, 'CIAN831201SC4', 'Comunicación', '4.5', 'Notable', 'enjun2019', 7),
(37, 'CIAN831201SC4', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 7),
(38, 'CIAN831201SC4', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 7),
(39, 'CIAN831201SC4', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 7),
(40, 'PUNK7009046D2', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 7),
(41, 'PUNK7009046D2', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 7),
(42, 'PUNK7009046D2', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 7),
(43, 'PUNK7009046D2', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 7),
(44, 'PUNK7009046D2', 'Motivación', '4.3', 'Notable', 'enjun2019', 7),
(45, 'PUNK7009046D2', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 7),
(46, 'PUNK7009046D2', 'Comunicación', '4.5', 'Notable', 'enjun2019', 7),
(47, 'PUNK7009046D2', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 7),
(48, 'PUNK7009046D2', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 7),
(49, 'PUNK7009046D2', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 7),
(50, 'CASC8304184U0', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 7),
(51, 'CASC8304184U0', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 7),
(52, 'CASC8304184U0', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 7),
(53, 'CASC8304184U0', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 7),
(54, 'CASC8304184U0', 'Motivación', '4.3', 'Notable', 'enjun2019', 7),
(55, 'CASC8304184U0', 'Evaluación', '4.3', 'Notable', 'enjun2019', 7),
(56, 'CASC8304184U0', 'Comunicación', '4.5', 'Notable', 'enjun2019', 7),
(57, 'CASC8304184U0', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 7),
(58, 'CASC8304184U0', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 7),
(59, 'CASC8304184U0', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 7),
(60, 'GOMA500408P64', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 7),
(61, 'GOMA500408P64', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 7),
(62, 'GOMA500408P64', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 7),
(63, 'GOMA500408P64', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 7),
(64, 'GOMA500408P64', 'Motivación', '4.3', 'Notable', 'enjun2019', 7),
(65, 'GOMA500408P64', 'Evaluación', '4.3', 'Notable', 'enjun2019', 7),
(66, 'GOMA500408P64', 'Comunicación', '4.3', 'Notable', 'enjun2019', 7),
(67, 'GOMA500408P64', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 7),
(68, 'GOMA500408P64', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 7),
(69, 'GOMA500408P64', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 7),
(70, 'BAVE7910135E0', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 7),
(71, 'BAVE7910135E0', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 7),
(72, 'BAVE7910135E0', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 7),
(73, 'BAVE7910135E0', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 7),
(74, 'BAVE7910135E0', 'Motivación', '4.1', 'Bueno', 'enjun2019', 7),
(75, 'BAVE7910135E0', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 7),
(76, 'BAVE7910135E0', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(77, 'BAVE7910135E0', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 7),
(78, 'BAVE7910135E0', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 7),
(79, 'BAVE7910135E0', 'Satisfacción General', '4.3', 'Notable', 'enjun2019', 7),
(80, 'PAGR820309RF7', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 7),
(81, 'PAGR820309RF7', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 7),
(82, 'PAGR820309RF7', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 7),
(83, 'PAGR820309RF7', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 7),
(84, 'PAGR820309RF7', 'Motivación', '4.1', 'Bueno', 'enjun2019', 7),
(85, 'PAGR820309RF7', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 7),
(86, 'PAGR820309RF7', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(87, 'PAGR820309RF7', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 7),
(88, 'PAGR820309RF7', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 7),
(89, 'PAGR820309RF7', 'Satisfacción General', '4.3', 'Notable', 'enjun2019', 7),
(90, 'GUSM740627ID7', 'Dominio de la Asignatura', '4.2', 'Bueno', 'enjun2019', 7),
(91, 'GUSM740627ID7', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 7),
(92, 'GUSM740627ID7', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 7),
(93, 'GUSM740627ID7', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 7),
(94, 'GUSM740627ID7', 'Motivación', '4.1', 'Bueno', 'enjun2019', 7),
(95, 'GUSM740627ID7', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 7),
(96, 'GUSM740627ID7', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(97, 'GUSM740627ID7', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 7),
(98, 'GUSM740627ID7', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(99, 'GUSM740627ID7', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 7),
(100, 'GOCA850916TX7', 'Dominio de la Asignatura', '4.2', 'Bueno', 'enjun2019', 7),
(101, 'GOCA850916TX7', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(102, 'GOCA850916TX7', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 7),
(103, 'GOCA850916TX7', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 7),
(104, 'GOCA850916TX7', 'Motivación', '4', 'Bueno', 'enjun2019', 7),
(105, 'GOCA850916TX7', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 7),
(106, 'GOCA850916TX7', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(107, 'GOCA850916TX7', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(108, 'GOCA850916TX7', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(109, 'GOCA850916TX7', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 7),
(110, 'CASJ570911LI8', 'Dominio de la Asignatura', '4.2', 'Bueno', 'enjun2019', 7),
(111, 'CASJ570911LI8', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 7),
(112, 'CASJ570911LI8', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 7),
(113, 'CASJ570911LI8', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 7),
(114, 'CASJ570911LI8', 'Motivación', '4', 'Bueno', 'enjun2019', 7),
(115, 'CASJ570911LI8', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 7),
(116, 'CASJ570911LI8', 'Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(117, 'CASJ570911LI8', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 7),
(118, 'CASJ570911LI8', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 7),
(119, 'CASJ570911LI8', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 7),
(120, 'ZAAJ731116BA8', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 7),
(121, 'ZAAJ731116BA8', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(122, 'ZAAJ731116BA8', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 7),
(123, 'ZAAJ731116BA8', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 7),
(124, 'ZAAJ731116BA8', 'Motivación', '4', 'Bueno', 'enjun2019', 7),
(125, 'ZAAJ731116BA8', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 7),
(126, 'ZAAJ731116BA8', 'Comunicación', '4', 'Bueno', 'enjun2019', 7),
(127, 'ZAAJ731116BA8', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 7),
(128, 'ZAAJ731116BA8', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(129, 'ZAAJ731116BA8', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 7),
(130, 'CELG7407249W2', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 7),
(131, 'CELG7407249W2', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(132, 'CELG7407249W2', 'Ambientes de Aprendizaje', '3.9', 'Bueno', 'enjun2019', 7),
(133, 'CELG7407249W2', 'Estrategias, Métodos y Técnicas', '4', 'Bueno', 'enjun2019', 7),
(134, 'CELG7407249W2', 'Motivación', '3.9', 'Bueno', 'enjun2019', 7),
(135, 'CELG7407249W2', 'Evaluación', '4', 'Bueno', 'enjun2019', 7),
(136, 'CELG7407249W2', 'Comunicación', '4', 'Bueno', 'enjun2019', 7),
(137, 'CELG7407249W2', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(138, 'CELG7407249W2', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(139, 'CELG7407249W2', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 7),
(140, 'RETV530719TY2', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 7),
(141, 'RETV530719TY2', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(142, 'RETV530719TY2', 'Ambientes de Aprendizaje', '3.9', 'Bueno', 'enjun2019', 7),
(143, 'RETV530719TY2', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 7),
(144, 'RETV530719TY2', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 7),
(145, 'RETV530719TY2', 'Evaluación', '4', 'Bueno', 'enjun2019', 7),
(146, 'RETV530719TY2', 'Comunicación', '3.9', 'Bueno', 'enjun2019', 7),
(147, 'RETV530719TY2', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 7),
(148, 'RETV530719TY2', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 7),
(149, 'RETV530719TY2', 'Satisfacción General', '3.9', 'Bueno', 'enjun2019', 7),
(150, 'MASJ620725HYA', 'Dominio de la Asignatura', '3.9', 'Bueno', 'enjun2019', 7),
(151, 'MASJ620725HYA', 'Planificación del Curso', '4', 'Bueno', 'enjun2019', 7),
(152, 'MASJ620725HYA', 'Ambientes de Aprendizaje', '3.9', 'Bueno', 'enjun2019', 7),
(153, 'MASJ620725HYA', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 7),
(154, 'MASJ620725HYA', 'Motivación', '3.8', 'Bueno', 'enjun2019', 7),
(155, 'MASJ620725HYA', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 7),
(156, 'MASJ620725HYA', 'Comunicación', '4', 'Bueno', 'enjun2019', 7),
(157, 'MASJ620725HYA', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 7),
(158, 'MASJ620725HYA', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 7),
(159, 'MASJ620725HYA', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 7),
(160, 'CAFL550317GB1', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 7),
(161, 'CAFL550317GB1', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 7),
(162, 'CAFL550317GB1', 'Ambientes de Aprendizaje', '3.8', 'Bueno', 'enjun2019', 7),
(163, 'CAFL550317GB1', 'Estrategias, Métodos y Técnicas', '4', 'Bueno', 'enjun2019', 7),
(164, 'CAFL550317GB1', 'Motivación', '3.9', 'Bueno', 'enjun2019', 7),
(165, 'CAFL550317GB1', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 7),
(166, 'CAFL550317GB1', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 7),
(167, 'CAFL550317GB1', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 7),
(168, 'CAFL550317GB1', 'Tecnologías de la Información y Comunicación', '3.9', 'Bueno', 'enjun2019', 7),
(169, 'CAFL550317GB1', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 7),
(170, 'RORR470309GI3', 'Dominio de la Asignatura', '3.8', 'Bueno', 'enjun2019', 7),
(171, 'RORR470309GI3', 'Planificación del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(172, 'RORR470309GI3', 'Ambientes de Aprendizaje', '3.7', 'Suficiente', 'enjun2019', 7),
(173, 'RORR470309GI3', 'Estrategias, Métodos y Técnicas', '3.7', 'Suficiente', 'enjun2019', 7),
(174, 'RORR470309GI3', 'Motivación', '3.6', 'Suficiente', 'enjun2019', 7),
(175, 'RORR470309GI3', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 7),
(176, 'RORR470309GI3', 'Comunicación', '3.9', 'Bueno', 'enjun2019', 7),
(177, 'RORR470309GI3', 'Gestion del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(178, 'RORR470309GI3', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(179, 'RORR470309GI3', 'Satisfacción General', '3.7', 'Suficiente', 'enjun2019', 7),
(180, 'MOEI5312115C0', 'Dominio de la Asignatura', '3.7', 'Suficiente', 'enjun2019', 7),
(181, 'MOEI5312115C0', 'Planificación del Curso', '3.7', 'Suficiente', 'enjun2019', 7),
(182, 'MOEI5312115C0', 'Ambientes de Aprendizaje', '3.7', 'Suficiente', 'enjun2019', 7),
(183, 'MOEI5312115C0', 'Estrategias, Métodos y Técnicas', '3.8', 'Bueno', 'enjun2019', 7),
(184, 'MOEI5312115C0', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 7),
(185, 'MOEI5312115C0', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 7),
(186, 'MOEI5312115C0', 'Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(187, 'MOEI5312115C0', 'Gestion del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(188, 'MOEI5312115C0', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(189, 'MOEI5312115C0', 'Satisfacción General', '3.7', 'Suficiente', 'enjun2019', 7),
(190, 'MONA650411N84', 'Dominio de la Asignatura', '3.7', 'Suficiente', 'enjun2019', 7),
(191, 'MONA650411N84', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 7),
(192, 'MONA650411N84', 'Ambientes de Aprendizaje', '3.6', 'Suficiente', 'enjun2019', 7),
(193, 'MONA650411N84', 'Estrategias, Métodos y Técnicas', '3.7', 'Suficiente', 'enjun2019', 7),
(194, 'MONA650411N84', 'Motivación', '3.6', 'Suficiente', 'enjun2019', 7),
(195, 'MONA650411N84', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 7),
(196, 'MONA650411N84', 'Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(197, 'MONA650411N84', 'Gestion del Curso', '3.9', 'Bueno', 'enjun2019', 7),
(198, 'MONA650411N84', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(199, 'MONA650411N84', 'Satisfacción General', '3.7', 'Suficiente', 'enjun2019', 7),
(200, 'CAMH731207J87', 'Dominio de la Asignatura', '3.5', 'Suficiente', 'enjun2019', 7),
(201, 'CAMH731207J87', 'Planificación del Curso', '3.7', 'Suficiente', 'enjun2019', 7),
(202, 'CAMH731207J87', 'Ambientes de Aprendizaje', '3.7', 'Suficiente', 'enjun2019', 7),
(203, 'CAMH731207J87', 'Estrategias, Métodos y Técnicas', '3.8', 'Bueno', 'enjun2019', 7),
(204, 'CAMH731207J87', 'Motivación', '3.6', 'Suficiente', 'enjun2019', 7),
(205, 'CAMH731207J87', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 7),
(206, 'CAMH731207J87', 'Comunicación', '3.7', 'Suficiente', 'enjun2019', 7),
(207, 'CAMH731207J87', 'Gestion del Curso', '3.9', 'Bueno', 'enjun2019', 7),
(208, 'CAMH731207J87', 'Tecnologías de la Información y Comunicación', '3.9', 'Bueno', 'enjun2019', 7),
(209, 'CAMH731207J87', 'Satisfacción General', '3.7', 'Suficiente', 'enjun2019', 7),
(210, 'CAAR7907036T2', 'Dominio de la Asignatura', '3.7', 'Suficiente', 'enjun2019', 7),
(211, 'CAAR7907036T2', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 7),
(212, 'CAAR7907036T2', 'Ambientes de Aprendizaje', '3.7', 'Suficiente', 'enjun2019', 7),
(213, 'CAAR7907036T2', 'Estrategias, Métodos y Técnicas', '3.6', 'Suficiente', 'enjun2019', 7),
(214, 'CAAR7907036T2', 'Motivación', '3.5', 'Suficiente', 'enjun2019', 7),
(215, 'CAAR7907036T2', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 7),
(216, 'CAAR7907036T2', 'Comunicación', '3.7', 'Suficiente', 'enjun2019', 7),
(217, 'CAAR7907036T2', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 7),
(218, 'CAAR7907036T2', 'Tecnologías de la Información y Comunicación', '3.9', 'Bueno', 'enjun2019', 7),
(219, 'CAAR7907036T2', 'Satisfacción General', '3.7', 'Suficiente', 'enjun2019', 7),
(220, 'VISL661124RI8', 'Dominio de la Asignatura', '3.5', 'Suficiente', 'enjun2019', 7),
(221, 'VISL661124RI8', 'Planificación del Curso', '3.7', 'Suficiente', 'enjun2019', 7),
(222, 'VISL661124RI8', 'Ambientes de Aprendizaje', '3.6', 'Suficiente', 'enjun2019', 7),
(223, 'VISL661124RI8', 'Estrategias, Métodos y Técnicas', '3.6', 'Suficiente', 'enjun2019', 7),
(224, 'VISL661124RI8', 'Motivación', '3.4', 'Suficiente', 'enjun2019', 7),
(225, 'VISL661124RI8', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 7),
(226, 'VISL661124RI8', 'Comunicación', '3.6', 'Suficiente', 'enjun2019', 7),
(227, 'VISL661124RI8', 'Gestion del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(228, 'VISL661124RI8', 'Tecnologías de la Información y Comunicación', '3.7', 'Suficiente', 'enjun2019', 7),
(229, 'VISL661124RI8', 'Satisfacción General', '3.5', 'Suficiente', 'enjun2019', 7),
(230, 'TOHA5203201U2', 'Dominio de la Asignatura', '3.5', 'Suficiente', 'enjun2019', 7),
(231, 'TOHA5203201U2', 'Planificación del Curso', '3.5', 'Suficiente', 'enjun2019', 7),
(232, 'TOHA5203201U2', 'Ambientes de Aprendizaje', '3.4', 'Suficiente', 'enjun2019', 7),
(233, 'TOHA5203201U2', 'Estrategias, Métodos y Técnicas', '3.6', 'Suficiente', 'enjun2019', 7),
(234, 'TOHA5203201U2', 'Motivación', '3.5', 'Suficiente', 'enjun2019', 7),
(235, 'TOHA5203201U2', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 7),
(236, 'TOHA5203201U2', 'Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(237, 'TOHA5203201U2', 'Gestion del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(238, 'TOHA5203201U2', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 7),
(239, 'TOHA5203201U2', 'Satisfacción General', '3.5', 'Suficiente', 'enjun2019', 7),
(240, 'AEFA551001850', 'Dominio de la Asignatura', '3.7', 'Suficiente', 'enjun2019', 7),
(241, 'AEFA551001850', 'Planificación del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(242, 'AEFA551001850', 'Ambientes de Aprendizaje', '3.2', 'Desempeño Insuficiente', 'enjun2019', 7),
(243, 'AEFA551001850', 'Estrategias, Métodos y Técnicas', '3.4', 'Suficiente', 'enjun2019', 7),
(244, 'AEFA551001850', 'Motivación', '3.5', 'Suficiente', 'enjun2019', 7),
(245, 'AEFA551001850', 'Evaluación', '3.4', 'Suficiente', 'enjun2019', 7),
(246, 'AEFA551001850', 'Comunicación', '3.6', 'Suficiente', 'enjun2019', 7),
(247, 'AEFA551001850', 'Gestion del Curso', '3.8', 'Bueno', 'enjun2019', 7),
(248, 'AEFA551001850', 'Tecnologías de la Información y Comunicación', '3.4', 'Suficiente', 'enjun2019', 7),
(249, 'AEFA551001850', 'Satisfacción General', '3.4', 'Suficiente', 'enjun2019', 7),
(250, 'LASA8306224X3', 'Dominio de la Asignatura', '3.2', 'Desempeño Insuficiente', 'enjun2019', 7),
(251, 'LASA8306224X3', 'Planificación del Curso', '3.4', 'Suficiente', 'enjun2019', 7),
(252, 'LASA8306224X3', 'Ambientes de Aprendizaje', '3.2', 'Desempeño Insuficiente', 'enjun2019', 7),
(253, 'LASA8306224X3', 'Estrategias, Métodos y Técnicas', '3.2', 'Desempeño Insuficiente', 'enjun2019', 7),
(254, 'LASA8306224X3', 'Motivación', '3.2', 'Desempeño Insuficiente', 'enjun2019', 7),
(255, 'LASA8306224X3', 'Evaluación', '3.5', 'Suficiente', 'enjun2019', 7),
(256, 'LASA8306224X3', 'Comunicación', '3.2', 'Desempeño Insuficiente', 'enjun2019', 7),
(257, 'LASA8306224X3', 'Gestion del Curso', '3.5', 'Suficiente', 'enjun2019', 7),
(258, 'LASA8306224X3', 'Tecnologías de la Información y Comunicación', '3.6', 'Suficiente', 'enjun2019', 7),
(259, 'LASA8306224X3', 'Satisfacción General', '3.3', 'Suficiente', 'enjun2019', 7),
(260, 'Cencias Basicas', 'Total', '4.0', 'bueno', 'enjun2019', 7),
(261, 'DIRJ630907RF9', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 5),
(262, 'DIRJ630907RF9', 'Planificación del Curso', '4.8', 'Excelente', 'enjun2019', 5),
(263, 'DIRJ630907RF9', 'Ambientes de Aprendizaje', '4.8', 'Excelente', 'enjun2019', 5),
(264, 'DIRJ630907RF9', 'Estrategias, Métodos y Técnicas', '4.8', 'Excelente', 'enjun2019', 5),
(265, 'DIRJ630907RF9', 'Motivación', '4.7', 'Notable', 'enjun2019', 5),
(266, 'DIRJ630907RF9', 'Evaluación', '4.7', 'Notable', 'enjun2019', 5),
(267, 'DIRJ630907RF9', 'Comunicación', '4.7', 'Notable', 'enjun2019', 5),
(268, 'DIRJ630907RF9', 'Gestion del Curso', '4.8', 'Excelente', 'enjun2019', 5),
(269, 'DIRJ630907RF9', 'Tecnologías de la Información y Comunicación', '4.8', 'Excelente', 'enjun2019', 5),
(270, 'DIRJ630907RF9', 'Satisfacción General', '4.8', 'Excelente', 'enjun2019', 5),
(271, 'CASV500903DV4', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 5),
(272, 'CASV500903DV4', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(273, 'CASV500903DV4', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 5),
(274, 'CASV500903DV4', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 5),
(275, 'CASV500903DV4', 'Motivación', '4.4', 'Notable', 'enjun2019', 5),
(276, 'CASV500903DV4', 'Evaluación', '4.5', 'Notable', 'enjun2019', 5),
(277, 'CASV500903DV4', 'Comunicación', '4.6', 'Notable', 'enjun2019', 5),
(278, 'CASV500903DV4', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 5),
(279, 'CASV500903DV4', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 5),
(280, 'CASV500903DV4', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 5),
(281, 'GARJ520921GB9', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 5),
(282, 'GARJ520921GB9', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(283, 'GARJ520921GB9', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 5),
(284, 'GARJ520921GB9', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 5),
(285, 'GARJ520921GB9', 'Motivación', '4.4', 'Notable', 'enjun2019', 5),
(286, 'GARJ520921GB9', 'Evaluación', '4.5', 'Notable', 'enjun2019', 5),
(287, 'GARJ520921GB9', 'Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(288, 'GARJ520921GB9', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 5),
(289, 'GARJ520921GB9', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 5),
(290, 'GARJ520921GB9', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 5),
(291, 'PEDF541225C90', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 5),
(292, 'PEDF541225C90', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(293, 'PEDF541225C90', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 5),
(294, 'PEDF541225C90', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 5),
(295, 'PEDF541225C90', 'Motivación', '4.4', 'Notable', 'enjun2019', 5),
(296, 'PEDF541225C90', 'Evaluación', '4.5', 'Notable', 'enjun2019', 5),
(297, 'PEDF541225C90', 'Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(298, 'PEDF541225C90', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 5),
(299, 'PEDF541225C90', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 5),
(300, 'PEDF541225C90', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 5),
(301, 'CAZE750417S59', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 5),
(302, 'CAZE750417S59', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(303, 'CAZE750417S59', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 5),
(304, 'CAZE750417S59', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 5),
(305, 'CAZE750417S59', 'Motivación', '4.3', 'Notable', 'enjun2019', 5),
(306, 'CAZE750417S59', 'Evaluación', '4.4', 'Notable', 'enjun2019', 5),
(307, 'CAZE750417S59', 'Comunicación', '4.3', 'Notable', 'enjun2019', 5),
(308, 'CAZE750417S59', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 5),
(309, 'CAZE750417S59', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 5),
(310, 'CAZE750417S59', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 5),
(311, 'MUPD700806P78', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 5),
(312, 'MUPD700806P78', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(313, 'MUPD700806P78', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 5),
(314, 'MUPD700806P78', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 5),
(315, 'MUPD700806P78', 'Motivación', '4.4', 'Notable', 'enjun2019', 5),
(316, 'MUPD700806P78', 'Evaluación', '4.4', 'Notable', 'enjun2019', 5),
(317, 'MUPD700806P78', 'Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(318, 'MUPD700806P78', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 5),
(319, 'MUPD700806P78', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(320, 'MUPD700806P78', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 5),
(321, 'BARJ6906279P5', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 5),
(322, 'BARJ6906279P5', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(323, 'BARJ6906279P5', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 5),
(324, 'BARJ6906279P5', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 5),
(325, 'BARJ6906279P5', 'Motivación', '4.4', 'Notable', 'enjun2019', 5),
(326, 'BARJ6906279P5', 'Evaluación', '4.3', 'Notable', 'enjun2019', 5),
(327, 'BARJ6906279P5', 'Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(328, 'BARJ6906279P5', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 5),
(329, 'BARJ6906279P5', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(330, 'BARJ6906279P5', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 5),
(331, 'AERJ730609RV8', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 5),
(332, 'AERJ730609RV8', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 5),
(333, 'AERJ730609RV8', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 5),
(334, 'AERJ730609RV8', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 5),
(335, 'AERJ730609RV8', 'Motivación', '4.4', 'Notable', 'enjun2019', 5),
(336, 'AERJ730609RV8', 'Evaluación', '4.3', 'Notable', 'enjun2019', 5),
(337, 'AERJ730609RV8', 'Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(338, 'AERJ730609RV8', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 5),
(339, 'AERJ730609RV8', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 5),
(340, 'AERJ730609RV8', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 5),
(341, 'AARJ601008RA1', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 5),
(342, 'AARJ601008RA1', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 5),
(343, 'AARJ601008RA1', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 5),
(344, 'AARJ601008RA1', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 5),
(345, 'AARJ601008RA1', 'Motivación', '4.3', 'Notable', 'enjun2019', 5),
(346, 'AARJ601008RA1', 'Evaluación', '4.3', 'Notable', 'enjun2019', 5),
(347, 'AARJ601008RA1', 'Comunicación', '4.4', 'Notable', 'enjun2019', 5),
(348, 'AARJ601008RA1', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 5),
(349, 'AARJ601008RA1', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 5),
(350, 'AARJ601008RA1', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 5),
(351, 'CASE860912M10', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 5),
(352, 'CASE860912M10', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 5),
(353, 'CASE860912M10', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 5),
(354, 'CASE860912M10', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 5),
(355, 'CASE860912M10', 'Motivación', '4', 'Bueno', 'enjun2019', 5),
(356, 'CASE860912M10', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 5),
(357, 'CASE860912M10', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 5),
(358, 'CASE860912M10', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 5),
(359, 'CASE860912M10', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 5),
(360, 'CASE860912M10', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 5),
(361, 'EIHS571008HT7', 'Dominio de la Asignatura', '3.4', 'Suficiente', 'enjun2019', 5),
(362, 'EIHS571008HT7', 'Planificación del Curso', '3.5', 'Suficiente', 'enjun2019', 5),
(363, 'EIHS571008HT7', 'Ambientes de Aprendizaje', '3.4', 'Suficiente', 'enjun2019', 5),
(364, 'EIHS571008HT7', 'Estrategias, Métodos y Técnicas', '3.4', 'Suficiente', 'enjun2019', 5),
(365, 'EIHS571008HT7', 'Motivación', '3.4', 'Suficiente', 'enjun2019', 5),
(366, 'EIHS571008HT7', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 5),
(367, 'EIHS571008HT7', 'Comunicación', '3.3', 'Suficiente', 'enjun2019', 5),
(368, 'EIHS571008HT7', 'Gestion del Curso', '3.7', 'Suficiente', 'enjun2019', 5),
(369, 'EIHS571008HT7', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 5),
(370, 'EIHS571008HT7', 'Satisfacción General', '3.2', 'Desempeño Insuficiente', 'enjun2019', 5),
(371, 'MECANICA', 'Total', '4.3', 'Notable', 'enjun2019', 5),
(372, 'DIRJ630907RF9', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 6),
(373, 'DIRJ630907RF9', 'Planificación del Curso', '4.8', 'Excelente', 'enjun2019', 6),
(374, 'DIRJ630907RF9', 'Ambientes de Aprendizaje', '4.8', 'Excelente', 'enjun2019', 6),
(375, 'DIRJ630907RF9', 'Estrategias, Métodos y Técnicas', '4.8', 'Excelente', 'enjun2019', 6),
(376, 'DIRJ630907RF9', 'Motivación', '4.7', 'Notable', 'enjun2019', 6),
(377, 'DIRJ630907RF9', 'Evaluación', '4.7', 'Notable', 'enjun2019', 6),
(378, 'DIRJ630907RF9', 'Comunicación', '4.7', 'Notable', 'enjun2019', 6),
(379, 'DIRJ630907RF9', 'Gestion del Curso', '4.8', 'Excelente', 'enjun2019', 6),
(380, 'DIRJ630907RF9', 'Tecnologías de la Información y Comunicación', '4.8', 'Excelente', 'enjun2019', 6),
(381, 'DIRJ630907RF9', 'Satisfacción General', '4.8', 'Excelente', 'enjun2019', 6),
(382, 'CASV500903DV4', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 6),
(383, 'CASV500903DV4', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(384, 'CASV500903DV4', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 6),
(385, 'CASV500903DV4', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 6),
(386, 'CASV500903DV4', 'Motivación', '4.4', 'Notable', 'enjun2019', 6),
(387, 'CASV500903DV4', 'Evaluación', '4.5', 'Notable', 'enjun2019', 6),
(388, 'CASV500903DV4', 'Comunicación', '4.6', 'Notable', 'enjun2019', 6),
(389, 'CASV500903DV4', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 6),
(390, 'CASV500903DV4', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 6),
(391, 'CASV500903DV4', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 6),
(392, 'GARJ520921GB9', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 6),
(393, 'GARJ520921GB9', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(394, 'GARJ520921GB9', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 6),
(395, 'GARJ520921GB9', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 6),
(396, 'GARJ520921GB9', 'Motivación', '4.4', 'Notable', 'enjun2019', 6),
(397, 'GARJ520921GB9', 'Evaluación', '4.5', 'Notable', 'enjun2019', 6),
(398, 'GARJ520921GB9', 'Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(399, 'GARJ520921GB9', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 6),
(400, 'GARJ520921GB9', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 6),
(401, 'GARJ520921GB9', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 6),
(402, 'PEDF541225C90', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 6),
(403, 'PEDF541225C90', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(404, 'PEDF541225C90', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 6),
(405, 'PEDF541225C90', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 6),
(406, 'PEDF541225C90', 'Motivación', '4.4', 'Notable', 'enjun2019', 6),
(407, 'PEDF541225C90', 'Evaluación', '4.5', 'Notable', 'enjun2019', 6),
(408, 'PEDF541225C90', 'Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(409, 'PEDF541225C90', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 6),
(410, 'PEDF541225C90', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 6),
(411, 'PEDF541225C90', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 6),
(412, 'CAZE750417S59', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 6),
(413, 'CAZE750417S59', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(414, 'CAZE750417S59', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 6),
(415, 'CAZE750417S59', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 6),
(416, 'CAZE750417S59', 'Motivación', '4.3', 'Notable', 'enjun2019', 6),
(417, 'CAZE750417S59', 'Evaluación', '4.4', 'Notable', 'enjun2019', 6),
(418, 'CAZE750417S59', 'Comunicación', '4.3', 'Notable', 'enjun2019', 6),
(419, 'CAZE750417S59', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 6),
(420, 'CAZE750417S59', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 6),
(421, 'CAZE750417S59', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 6),
(422, 'MUPD700806P78', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 6),
(423, 'MUPD700806P78', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(424, 'MUPD700806P78', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 6),
(425, 'MUPD700806P78', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 6),
(426, 'MUPD700806P78', 'Motivación', '4.4', 'Notable', 'enjun2019', 6),
(427, 'MUPD700806P78', 'Evaluación', '4.4', 'Notable', 'enjun2019', 6),
(428, 'MUPD700806P78', 'Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(429, 'MUPD700806P78', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 6),
(430, 'MUPD700806P78', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(431, 'MUPD700806P78', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 6),
(432, 'BARJ6906279P5', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 6),
(433, 'BARJ6906279P5', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(434, 'BARJ6906279P5', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 6),
(435, 'BARJ6906279P5', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 6),
(436, 'BARJ6906279P5', 'Motivación', '4.4', 'Notable', 'enjun2019', 6),
(437, 'BARJ6906279P5', 'Evaluación', '4.3', 'Notable', 'enjun2019', 6),
(438, 'BARJ6906279P5', 'Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(439, 'BARJ6906279P5', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 6),
(440, 'BARJ6906279P5', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(441, 'BARJ6906279P5', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 6),
(442, 'AERJ730609RV8', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 6),
(443, 'AERJ730609RV8', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 6),
(444, 'AERJ730609RV8', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 6),
(445, 'AERJ730609RV8', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 6),
(446, 'AERJ730609RV8', 'Motivación', '4.4', 'Notable', 'enjun2019', 6),
(447, 'AERJ730609RV8', 'Evaluación', '4.3', 'Notable', 'enjun2019', 6),
(448, 'AERJ730609RV8', 'Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(449, 'AERJ730609RV8', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 6),
(450, 'AERJ730609RV8', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 6),
(451, 'AERJ730609RV8', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 6),
(452, 'AARJ601008RA1', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 6),
(453, 'AARJ601008RA1', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 6),
(454, 'AARJ601008RA1', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 6),
(455, 'AARJ601008RA1', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 6),
(456, 'AARJ601008RA1', 'Motivación', '4.3', 'Notable', 'enjun2019', 6),
(457, 'AARJ601008RA1', 'Evaluación', '4.3', 'Notable', 'enjun2019', 6),
(458, 'AARJ601008RA1', 'Comunicación', '4.4', 'Notable', 'enjun2019', 6),
(459, 'AARJ601008RA1', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 6),
(460, 'AARJ601008RA1', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 6),
(461, 'AARJ601008RA1', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 6),
(462, 'CASE860912M10', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 6),
(463, 'CASE860912M10', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 6),
(464, 'CASE860912M10', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 6),
(465, 'CASE860912M10', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 6),
(466, 'CASE860912M10', 'Motivación', '4', 'Bueno', 'enjun2019', 6),
(467, 'CASE860912M10', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 6),
(468, 'CASE860912M10', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 6),
(469, 'CASE860912M10', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 6),
(470, 'CASE860912M10', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 6),
(471, 'CASE860912M10', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 6),
(472, 'EIHS571008HT7', 'Dominio de la Asignatura', '3.4', 'Suficiente', 'enjun2019', 6),
(473, 'EIHS571008HT7', 'Planificación del Curso', '3.5', 'Suficiente', 'enjun2019', 6),
(474, 'EIHS571008HT7', 'Ambientes de Aprendizaje', '3.4', 'Suficiente', 'enjun2019', 6),
(475, 'EIHS571008HT7', 'Estrategias, Métodos y Técnicas', '3.4', 'Suficiente', 'enjun2019', 6),
(476, 'EIHS571008HT7', 'Motivación', '3.4', 'Suficiente', 'enjun2019', 6),
(477, 'EIHS571008HT7', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 6),
(478, 'EIHS571008HT7', 'Comunicación', '3.3', 'Suficiente', 'enjun2019', 6),
(479, 'EIHS571008HT7', 'Gestion del Curso', '3.7', 'Suficiente', 'enjun2019', 6),
(480, 'EIHS571008HT7', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 6),
(481, 'EIHS571008HT7', 'Satisfacción General', '3.2', 'Desempeño Insuficiente', 'enjun2019', 6),
(482, 'INDUSTRIAL', 'Total', '4.3', 'Notable', 'enjun2019', 6),
(483, 'DIRJ630907RF9', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 1),
(484, 'DIRJ630907RF9', 'Planificación del Curso', '4.8', 'Excelente', 'enjun2019', 1),
(485, 'DIRJ630907RF9', 'Ambientes de Aprendizaje', '4.8', 'Excelente', 'enjun2019', 1),
(486, 'DIRJ630907RF9', 'Estrategias, Métodos y Técnicas', '4.8', 'Excelente', 'enjun2019', 1),
(487, 'DIRJ630907RF9', 'Motivación', '4.7', 'Notable', 'enjun2019', 1),
(488, 'DIRJ630907RF9', 'Evaluación', '4.7', 'Notable', 'enjun2019', 1),
(489, 'DIRJ630907RF9', 'Comunicación', '4.7', 'Notable', 'enjun2019', 1),
(490, 'DIRJ630907RF9', 'Gestion del Curso', '4.8', 'Excelente', 'enjun2019', 1),
(492, 'DIRJ630907RF9', 'Tecnologías de la Información y Comunicación', '4.8', 'Excelente', 'enjun2019', 1),
(493, 'DIRJ630907RF9', 'Satisfacción General', '4.8', 'Excelente', 'enjun2019', 1),
(494, 'CASV500903DV4', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 1),
(495, 'CASV500903DV4', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(496, 'CASV500903DV4', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 1),
(497, 'CASV500903DV4', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 1),
(498, 'CASV500903DV4', 'Motivación', '4.4', 'Notable', 'enjun2019', 1),
(499, 'CASV500903DV4', 'Evaluación', '4.5', 'Notable', 'enjun2019', 1),
(500, 'CASV500903DV4', 'Comunicación', '4.6', 'Notable', 'enjun2019', 1),
(501, 'CASV500903DV4', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 1),
(502, 'CASV500903DV4', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 1),
(503, 'CASV500903DV4', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 1),
(504, 'GARJ520921GB9', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 1),
(505, 'GARJ520921GB9', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(506, 'GARJ520921GB9', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 1),
(507, 'GARJ520921GB9', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 1),
(508, 'GARJ520921GB9', 'Motivación', '4.4', 'Notable', 'enjun2019', 1),
(509, 'GARJ520921GB9', 'Evaluación', '4.5', 'Notable', 'enjun2019', 1),
(510, 'GARJ520921GB9', 'Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(511, 'GARJ520921GB9', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 1),
(512, 'GARJ520921GB9', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 1),
(513, 'GARJ520921GB9', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 1),
(514, 'PEDF541225C90', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 1),
(515, 'PEDF541225C90', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(516, 'PEDF541225C90', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 1),
(517, 'PEDF541225C90', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 1),
(518, 'PEDF541225C90', 'Motivación', '4.4', 'Notable', 'enjun2019', 1),
(519, 'PEDF541225C90', 'Evaluación', '4.5', 'Notable', 'enjun2019', 1),
(520, 'PEDF541225C90', 'Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(521, 'PEDF541225C90', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 1),
(522, 'PEDF541225C90', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 1),
(523, 'PEDF541225C90', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 1),
(524, 'CAZE750417S59', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 1),
(525, 'CAZE750417S59', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(526, 'CAZE750417S59', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 1),
(527, 'CAZE750417S59', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 1),
(528, 'CAZE750417S59', 'Motivación', '4.3', 'Notable', 'enjun2019', 1),
(529, 'CAZE750417S59', 'Evaluación', '4.4', 'Notable', 'enjun2019', 1),
(530, 'CAZE750417S59', 'Comunicación', '4.3', 'Notable', 'enjun2019', 1),
(531, 'CAZE750417S59', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 1),
(532, 'CAZE750417S59', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 1),
(533, 'CAZE750417S59', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 1),
(534, 'MUPD700806P78', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 1),
(535, 'MUPD700806P78', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(536, 'MUPD700806P78', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 1),
(537, 'MUPD700806P78', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 1),
(538, 'MUPD700806P78', 'Motivación', '4.4', 'Notable', 'enjun2019', 1),
(539, 'MUPD700806P78', 'Evaluación', '4.4', 'Notable', 'enjun2019', 1),
(540, 'MUPD700806P78', 'Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(541, 'MUPD700806P78', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 1),
(542, 'MUPD700806P78', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(543, 'MUPD700806P78', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 1),
(544, 'BARJ6906279P5', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 1),
(545, 'BARJ6906279P5', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(546, 'BARJ6906279P5', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 1),
(547, 'BARJ6906279P5', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 1),
(548, 'BARJ6906279P5', 'Motivación', '4.4', 'Notable', 'enjun2019', 1),
(549, 'BARJ6906279P5', 'Evaluación', '4.3', 'Notable', 'enjun2019', 1),
(550, 'BARJ6906279P5', 'Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(551, 'BARJ6906279P5', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 1),
(552, 'BARJ6906279P5', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(553, 'BARJ6906279P5', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 1),
(554, 'AERJ730609RV8', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 1),
(555, 'AERJ730609RV8', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 1),
(556, 'AERJ730609RV8', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 1),
(557, 'AERJ730609RV8', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 1),
(558, 'AERJ730609RV8', 'Motivación', '4.4', 'Notable', 'enjun2019', 1),
(559, 'AERJ730609RV8', 'Evaluación', '4.3', 'Notable', 'enjun2019', 1),
(560, 'AERJ730609RV8', 'Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(561, 'AERJ730609RV8', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 1),
(562, 'AERJ730609RV8', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 1),
(563, 'AERJ730609RV8', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 1),
(564, 'AARJ601008RA1', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 1),
(565, 'AARJ601008RA1', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 1),
(566, 'AARJ601008RA1', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 1),
(567, 'AARJ601008RA1', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 1),
(568, 'AARJ601008RA1', 'Motivación', '4.3', 'Notable', 'enjun2019', 1),
(569, 'AARJ601008RA1', 'Evaluación', '4.3', 'Notable', 'enjun2019', 1),
(570, 'AARJ601008RA1', 'Comunicación', '4.4', 'Notable', 'enjun2019', 1),
(571, 'AARJ601008RA1', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 1),
(572, 'AARJ601008RA1', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 1),
(573, 'AARJ601008RA1', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 1),
(574, 'CASE860912M10', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 1),
(575, 'CASE860912M10', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 1),
(576, 'CASE860912M10', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 1),
(577, 'CASE860912M10', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 1),
(578, 'CASE860912M10', 'Motivación', '4', 'Bueno', 'enjun2019', 1),
(579, 'CASE860912M10', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 1),
(580, 'CASE860912M10', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 1),
(581, 'CASE860912M10', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 1),
(582, 'CASE860912M10', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 1),
(583, 'CASE860912M10', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 1),
(584, 'EIHS571008HT7', 'Dominio de la Asignatura', '3.4', 'Suficiente', 'enjun2019', 1),
(585, 'EIHS571008HT7', 'Planificación del Curso', '3.5', 'Suficiente', 'enjun2019', 1),
(586, 'EIHS571008HT7', 'Ambientes de Aprendizaje', '3.4', 'Suficiente', 'enjun2019', 1),
(587, 'EIHS571008HT7', 'Estrategias, Métodos y Técnicas', '3.4', 'Suficiente', 'enjun2019', 1),
(588, 'EIHS571008HT7', 'Motivación', '3.4', 'Suficiente', 'enjun2019', 1),
(589, 'EIHS571008HT7', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 1),
(590, 'EIHS571008HT7', 'Comunicación', '3.3', 'Suficiente', 'enjun2019', 1),
(591, 'EIHS571008HT7', 'Gestion del Curso', '3.7', 'Suficiente', 'enjun2019', 1),
(592, 'EIHS571008HT7', 'Tecnologías de la Información y Comunicación', '3.8', 'Bueno', 'enjun2019', 1),
(593, 'EIHS571008HT7', 'Satisfacción General', '3.2', 'Desempeño Insuficiente', 'enjun2019', 1),
(594, 'Ciencias y Tierra', 'Total', '4.3', 'Notable', 'enjun2019', 1),
(595, 'CABR700422R46', 'Dominio de la Asignatura', '4.8', 'Excelente', 'enjun2019', 4),
(596, 'CABR700422R46', 'Planificación del Curso', '4.8', 'Excelente', 'enjun2019', 4),
(597, 'CABR700422R46', 'Ambientes de Aprendizaje', '4.8', 'Excelente', 'enjun2019', 4),
(598, 'CABR700422R46', 'Estrategias, Métodos y Técnicas', '4.8', 'Excelente', 'enjun2019', 4),
(599, 'CABR700422R46', 'Motivación', '4.6', 'Notable', 'enjun2019', 4),
(600, 'CABR700422R46', 'Evaluación', '4.7', 'Notable', 'enjun2019', 4),
(601, 'CABR700422R46', 'Comunicación', '4.7', 'Notable', 'enjun2019', 4),
(602, 'CABR700422R46', 'Gestion del Curso', '4.8', 'Excelente', 'enjun2019', 4),
(603, 'CABR700422R46', 'Tecnologías de la Información y Comunicación', '4.8', 'Excelente', 'enjun2019', 4),
(604, 'CABR700422R46', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 4),
(605, 'MOOJ90111387A', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 4),
(606, 'MOOJ90111387A', 'Planificación del Curso', '4.6', 'Notable', 'enjun2019', 4),
(607, 'MOOJ90111387A', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 4),
(608, 'MOOJ90111387A', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 4),
(609, 'MOOJ90111387A', 'Motivación', '4.5', 'Notable', 'enjun2019', 4),
(610, 'MOOJ90111387A', 'Evaluación', '4.4', 'Notable', 'enjun2019', 4),
(611, 'MOOJ90111387A', 'Comunicación', '4.6', 'Notable', 'enjun2019', 4),
(612, 'MOOJ90111387A', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 4),
(613, 'MOOJ90111387A', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 4),
(614, 'MOOJ90111387A', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 4);
INSERT INTO `cursos` (`idAspectos`, `rfc`, `aspectos`, `puntaje`, `calificacion`, `semestre`, `idDepartamento`) VALUES
(615, 'OOCF781007FP0', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 4),
(616, 'OOCF781007FP0', 'Planificación del Curso', '4.6', 'Notable', 'enjun2019', 4),
(617, 'OOCF781007FP0', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 4),
(618, 'OOCF781007FP0', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 4),
(619, 'OOCF781007FP0', 'Motivación', '4.4', 'Notable', 'enjun2019', 4),
(620, 'OOCF781007FP0', 'Evaluación', '4.3', 'Notable', 'enjun2019', 4),
(621, 'OOCF781007FP0', 'Comunicación', '4.5', 'Notable', 'enjun2019', 4),
(622, 'OOCF781007FP0', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 4),
(623, 'OOCF781007FP0', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 4),
(624, 'OOCF781007FP0', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 4),
(625, 'RAGI610514DY5', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 4),
(626, 'RAGI610514DY5', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 4),
(627, 'RAGI610514DY5', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 4),
(628, 'RAGI610514DY5', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 4),
(629, 'RAGI610514DY5', 'Motivación', '4.4', 'Notable', 'enjun2019', 4),
(630, 'RAGI610514DY5', 'Evaluación', '4.5', 'Notable', 'enjun2019', 4),
(631, 'RAGI610514DY5', 'Comunicación', '4.5', 'Notable', 'enjun2019', 4),
(632, 'RAGI610514DY5', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 4),
(633, 'RAGI610514DY5', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 4),
(634, 'RAGI610514DY5', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 4),
(635, 'JACJ740418AV7', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 4),
(636, 'JACJ740418AV7', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 4),
(637, 'JACJ740418AV7', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 4),
(638, 'JACJ740418AV7', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 4),
(639, 'JACJ740418AV7', 'Motivación', '4.2', 'Bueno', 'enjun2019', 4),
(640, 'JACJ740418AV7', 'Evaluación', '4.3', 'Notable', 'enjun2019', 4),
(641, 'JACJ740418AV7', 'Comunicación', '4.5', 'Notable', 'enjun2019', 4),
(642, 'JACJ740418AV7', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 4),
(643, 'JACJ740418AV7', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 4),
(644, 'JACJ740418AV7', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 4),
(645, 'GAGM610425CP7', 'Dominio de la Asignatura', '4.4', 'Notable', 'enjun2019', 4),
(646, 'GAGM610425CP7', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 4),
(647, 'GAGM610425CP7', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 4),
(648, 'GAGM610425CP7', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 4),
(649, 'GAGM610425CP7', 'Motivación', '4.3', 'Notable', 'enjun2019', 4),
(650, 'GAGM610425CP7', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 4),
(651, 'GAGM610425CP7', 'Comunicación', '4.4', 'Notable', 'enjun2019', 4),
(652, 'GAGM610425CP7', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 4),
(653, 'GAGM610425CP7', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 4),
(654, 'GAGM610425CP7', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 4),
(655, 'GUVR580502AB8', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 4),
(656, 'GUVR580502AB8', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 4),
(657, 'GUVR580502AB8', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 4),
(658, 'GUVR580502AB8', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 4),
(659, 'GUVR580502AB8', 'Motivación', '4.3', 'Notable', 'enjun2019', 4),
(660, 'GUVR580502AB8', 'Evaluación', '4.3', 'Notable', 'enjun2019', 4),
(661, 'GUVR580502AB8', 'Comunicación', '4.3', 'Notable', 'enjun2019', 4),
(662, 'GUVR580502AB8', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 4),
(663, 'GUVR580502AB8', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 4),
(664, 'GUVR580502AB8', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 4),
(665, 'GACJ651213MJ7', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 4),
(666, 'GACJ651213MJ7', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 4),
(667, 'GACJ651213MJ7', 'Ambientes de Aprendizaje', '4.4', 'Notable', 'enjun2019', 4),
(668, 'GACJ651213MJ7', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 4),
(669, 'GACJ651213MJ7', 'Motivación', '4.2', 'Bueno', 'enjun2019', 4),
(670, 'GACJ651213MJ7', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 4),
(671, 'GACJ651213MJ7', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(672, 'GACJ651213MJ7', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 4),
(673, 'GACJ651213MJ7', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(674, 'GACJ651213MJ7', 'Satisfacción General', '4.3', 'Notable', 'enjun2019', 4),
(675, 'LUMF711030232', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 4),
(676, 'LUMF711030232', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(677, 'LUMF711030232', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 4),
(678, 'LUMF711030232', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 4),
(679, 'LUMF711030232', 'Motivación', '4.2', 'Bueno', 'enjun2019', 4),
(680, 'LUMF711030232', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 4),
(681, 'LUMF711030232', 'Comunicación', '4.3', 'Notable', 'enjun2019', 4),
(682, 'LUMF711030232', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 4),
(683, 'LUMF711030232', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 4),
(684, 'LUMF711030232', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 4),
(685, 'CAOG5402103X9', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 4),
(686, 'CAOG5402103X9', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(687, 'CAOG5402103X9', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 4),
(688, 'CAOG5402103X9', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 4),
(689, 'CAOG5402103X9', 'Motivación', '4.1', 'Bueno', 'enjun2019', 4),
(690, 'CAOG5402103X9', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 4),
(691, 'CAOG5402103X9', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(692, 'CAOG5402103X9', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 4),
(693, 'CAOG5402103X9', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(694, 'CAOG5402103X9', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 4),
(695, 'MAGC780613IL1', 'Dominio de la Asignatura', '4.2', 'Bueno', 'enjun2019', 4),
(696, 'MAGC780613IL1', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 4),
(697, 'MAGC780613IL1', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 4),
(698, 'MAGC780613IL1', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 4),
(699, 'MAGC780613IL1', 'Motivación', '4.1', 'Bueno', 'enjun2019', 4),
(700, 'MAGC780613IL1', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 4),
(701, 'MAGC780613IL1', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(702, 'MAGC780613IL1', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 4),
(703, 'MAGC780613IL1', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(704, 'MAGC780613IL1', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 4),
(705, 'RIAL650614UC9', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 4),
(706, 'RIAL650614UC9', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(707, 'RIAL650614UC9', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 4),
(708, 'RIAL650614UC9', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 4),
(709, 'RIAL650614UC9', 'Motivación', '4', 'Bueno', 'enjun2019', 4),
(710, 'RIAL650614UC9', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 4),
(711, 'RIAL650614UC9', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(712, 'RIAL650614UC9', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(713, 'RIAL650614UC9', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(714, 'RIAL650614UC9', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 4),
(715, 'HEOM7007303Z4', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 4),
(716, 'HEOM7007303Z4', 'Planificación del Curso', '4', 'Bueno', 'enjun2019', 4),
(717, 'HEOM7007303Z4', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 4),
(718, 'HEOM7007303Z4', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 4),
(719, 'HEOM7007303Z4', 'Motivación', '4', 'Bueno', 'enjun2019', 4),
(720, 'HEOM7007303Z4', 'Evaluación', '4', 'Bueno', 'enjun2019', 4),
(721, 'HEOM7007303Z4', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(722, 'HEOM7007303Z4', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(723, 'HEOM7007303Z4', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(724, 'HEOM7007303Z4', 'Satisfacción General', '4.3', 'Notable', 'enjun2019', 4),
(725, 'GUMR6002189Z5', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 4),
(726, 'GUMR6002189Z5', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 4),
(727, 'GUMR6002189Z5', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 4),
(728, 'GUMR6002189Z5', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 4),
(729, 'GUMR6002189Z5', 'Motivación', '3.9', 'Bueno', 'enjun2019', 4),
(730, 'GUMR6002189Z5', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 4),
(731, 'GUMR6002189Z5', 'Comunicación', '4.3', 'Notable', 'enjun2019', 4),
(732, 'GUMR6002189Z5', 'Gestion del Curso', '3.9', 'Bueno', 'enjun2019', 4),
(733, 'GUMR6002189Z5', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(734, 'GUMR6002189Z5', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 4),
(735, 'MOSJ7605015F2', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 4),
(736, 'MOSJ7605015F2', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 4),
(737, 'MOSJ7605015F2', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 4),
(738, 'MOSJ7605015F2', 'Estrategias, Métodos y Técnicas', '4', 'Bueno', 'enjun2019', 4),
(739, 'MOSJ7605015F2', 'Motivación', '4.1', 'Bueno', 'enjun2019', 4),
(740, 'MOSJ7605015F2', 'Evaluación', '4', 'Bueno', 'enjun2019', 4),
(741, 'MOSJ7605015F2', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(742, 'MOSJ7605015F2', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 4),
(743, 'MOSJ7605015F2', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 4),
(744, 'MOSJ7605015F2', 'Satisfacción General', '4', 'Bueno', 'enjun2019', 4),
(745, 'LUNR660106H38', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 4),
(746, 'LUNR660106H38', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(747, 'LUNR660106H38', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 4),
(748, 'LUNR660106H38', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 4),
(749, 'LUNR660106H38', 'Motivación', '3.9', 'Bueno', 'enjun2019', 4),
(750, 'LUNR660106H38', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 4),
(751, 'LUNR660106H38', 'Comunicación', '4', 'Bueno', 'enjun2019', 4),
(752, 'LUNR660106H38', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 4),
(753, 'LUNR660106H38', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(754, 'LUNR660106H38', 'Satisfacción General', '3.8', 'Bueno', 'enjun2019', 4),
(755, 'OOMG580112G23', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 4),
(756, 'OOMG580112G23', 'Planificación del Curso', '4', 'Bueno', 'enjun2019', 4),
(757, 'OOMG580112G23', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 4),
(758, 'OOMG580112G23', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 4),
(759, 'OOMG580112G23', 'Motivación', '3.8', 'Bueno', 'enjun2019', 4),
(760, 'OOMG580112G23', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 4),
(761, 'OOMG580112G23', 'Comunicación', '4', 'Bueno', 'enjun2019', 4),
(762, 'OOMG580112G23', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 4),
(763, 'OOMG580112G23', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 4),
(764, 'OOMG580112G23', 'Satisfacción General', '3.9', 'Bueno', 'enjun2019', 4),
(765, 'LUMF730724D36', 'Dominio de la Asignatura', '3.9', 'Bueno', 'enjun2019', 4),
(766, 'LUMF730724D36', 'Planificación del Curso', '4', 'Bueno', 'enjun2019', 4),
(767, 'LUMF730724D36', 'Ambientes de Aprendizaje', '3.8', 'Bueno', 'enjun2019', 4),
(768, 'LUMF730724D36', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 4),
(769, 'LUMF730724D36', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 4),
(770, 'LUMF730724D36', 'Evaluación', '3.7', 'Suficiente', 'enjun2019', 4),
(771, 'LUMF730724D36', 'Comunicación', '4', 'Bueno', 'enjun2019', 4),
(772, 'LUMF730724D36', 'Gestion del Curso', '3.9', 'Bueno', 'enjun2019', 4),
(773, 'LUMF730724D36', 'Tecnologías de la Información y Comunicación', '4', 'Bueno', 'enjun2019', 4),
(774, 'LUMF730724D36', 'Satisfacción General', '3.9', 'Bueno', 'enjun2019', 4),
(775, 'RETR5610192K2', 'Dominio de la Asignatura', '3.8', 'Bueno', 'enjun2019', 4),
(776, 'RETR5610192K2', 'Planificación del Curso', '3.8', 'Bueno', 'enjun2019', 4),
(777, 'RETR5610192K2', 'Ambientes de Aprendizaje', '3.8', 'Bueno', 'enjun2019', 4),
(778, 'RETR5610192K2', 'Estrategias, Métodos y Técnicas', '3.8', 'Bueno', 'enjun2019', 4),
(779, 'RETR5610192K2', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 4),
(780, 'RETR5610192K2', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 4),
(781, 'RETR5610192K2', 'Comunicación', '3.8', 'Bueno', 'enjun2019', 4),
(782, 'RETR5610192K2', 'Gestion del Curso', '3.9', 'Bueno', 'enjun2019', 4),
(783, 'RETR5610192K2', 'Tecnologías de la Información y Comunicación', '4', 'Bueno', 'enjun2019', 4),
(784, 'RETR5610192K2', 'Satisfacción General', '3.8', 'Bueno', 'enjun2019', 4),
(785, 'SACL790901DE1', 'Dominio de la Asignatura', '3.8', 'Bueno', 'enjun2019', 4),
(786, 'SACL790901DE1', 'Planificación del Curso', '3.8', 'Bueno', 'enjun2019', 4),
(787, 'SACL790901DE1', 'Ambientes de Aprendizaje', '3.9', 'Bueno', 'enjun2019', 4),
(788, 'SACL790901DE1', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 4),
(789, 'SACL790901DE1', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 4),
(790, 'SACL790901DE1', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 4),
(791, 'SACL790901DE1', 'Comunicación', '3.7', 'Suficiente', 'enjun2019', 4),
(792, 'SACL790901DE1', 'Gestion del Curso', '3.8', 'Bueno', 'enjun2019', 4),
(793, 'SACL790901DE1', 'Tecnologías de la Información y Comunicación', '3.9', 'Bueno', 'enjun2019', 4),
(794, 'SACL790901DE1', 'Satisfacción General', '3.6', 'Suficiente', 'enjun2019', 4),
(795, 'NASA5910197V1', 'Dominio de la Asignatura', '3.7', 'Suficiente', 'enjun2019', 4),
(796, 'NASA5910197V1', 'Planificación del Curso', '3.6', 'Suficiente', 'enjun2019', 4),
(797, 'NASA5910197V1', 'Ambientes de Aprendizaje', '3.7', 'Suficiente', 'enjun2019', 4),
(798, 'NASA5910197V1', 'Estrategias, Métodos y Técnicas', '3.7', 'Suficiente', 'enjun2019', 4),
(799, 'NASA5910197V1', 'Motivación', '3.6', 'Suficiente', 'enjun2019', 4),
(800, 'NASA5910197V1', 'Evaluación', '3.6', 'Suficiente', 'enjun2019', 4),
(801, 'NASA5910197V1', 'Comunicación', '3.6', 'Suficiente', 'enjun2019', 4),
(802, 'NASA5910197V1', 'Gestion del Curso', '3.4', 'Suficiente', 'enjun2019', 4),
(803, 'NASA5910197V1', 'Tecnologías de la Información y Comunicación', '3.6', 'Suficiente', 'enjun2019', 4),
(804, 'NASA5910197V1', 'Satisfacción General', '3.4', 'Suficiente', 'enjun2019', 4),
(805, 'SOLM6201022P6', 'Dominio de la Asignatura', '3.4', 'Suficiente', 'enjun2019', 4),
(806, 'SOLM6201022P6', 'Planificación del Curso', '3', 'Desempeño Insuficiente', 'enjun2019', 4),
(807, 'SOLM6201022P6', 'Ambientes de Aprendizaje', '3.5', 'Suficiente', 'enjun2019', 4),
(808, 'SOLM6201022P6', 'Estrategias, Métodos y Técnicas', '3.2', 'Desempeño Insuficiente', 'enjun2019', 4),
(809, 'SOLM6201022P6', 'Motivación', '3.1', 'Desempeño Insuficiente', 'enjun2019', 4),
(810, 'SOLM6201022P6', 'Evaluación', '3.2', 'Desempeño Insuficiente', 'enjun2019', 4),
(811, 'SOLM6201022P6', 'Comunicación', '3.3', 'Suficiente', 'enjun2019', 4),
(812, 'SOLM6201022P6', 'Gestion del Curso', '3.1', 'Desempeño Insuficiente', 'enjun2019', 4),
(813, 'SOLM6201022P6', 'Tecnologías de la Información y Comunicación', '3.4', 'Suficiente', 'enjun2019', 4),
(814, 'SOLM6201022P6', 'Satisfacción General', '2.8', 'Desempeño Insuficiente', 'enjun2019', 4),
(815, 'GUTJ6012044H8', 'Dominio de la Asignatura', '2.2', 'Desempeño Insuficiente', 'enjun2019', 4),
(816, 'GUTJ6012044H8', 'Planificación del Curso', '2.6', 'Desempeño Insuficiente', 'enjun2019', 4),
(817, 'GUTJ6012044H8', 'Ambientes de Aprendizaje', '2.8', 'Desempeño Insuficiente', 'enjun2019', 4),
(818, 'GUTJ6012044H8', 'Estrategias, Métodos y Técnicas', '2.7', 'Desempeño Insuficiente', 'enjun2019', 4),
(819, 'GUTJ6012044H8', 'Motivación', '2.5', 'Desempeño Insuficiente', 'enjun2019', 4),
(820, 'GUTJ6012044H8', 'Evaluación', '2.9', 'Desempeño Insuficiente', 'enjun2019', 4),
(821, 'GUTJ6012044H8', 'Comunicación', '2.2', 'Desempeño Insuficiente', 'enjun2019', 4),
(822, 'GUTJ6012044H8', 'Gestion del Curso', '2.4', 'Desempeño Insuficiente', 'enjun2019', 4),
(823, 'GUTJ6012044H8', 'Tecnologías de la Información y Comunicación', '3', 'Desempeño Insuficiente', 'enjun2019', 4),
(824, 'GUTJ6012044H8', 'Satisfacción General', '2.7', 'Desempeño Insuficiente', 'enjun2019', 4),
(825, 'SAPS770330QB3', 'Dominio de la Asignatura', '2.3', 'Desempeño Insuficiente', 'enjun2019', 4),
(826, 'SAPS770330QB3', 'Planificación del Curso', '2.3', 'Desempeño Insuficiente', 'enjun2019', 4),
(827, 'SAPS770330QB3', 'Ambientes de Aprendizaje', '2.7', 'Desempeño Insuficiente', 'enjun2019', 4),
(828, 'SAPS770330QB3', 'Estrategias, Métodos y Técnicas', '2.5', 'Desempeño Insuficiente', 'enjun2019', 4),
(829, 'SAPS770330QB3', 'Motivación', '2.3', 'Desempeño Insuficiente', 'enjun2019', 4),
(830, 'SAPS770330QB3', 'Evaluación', '2.5', 'Desempeño Insuficiente', 'enjun2019', 4),
(831, 'SAPS770330QB3', 'Comunicación', '2.6', 'Desempeño Insuficiente', 'enjun2019', 4),
(832, 'SAPS770330QB3', 'Gestion del Curso', '2.6', 'Desempeño Insuficiente', 'enjun2019', 4),
(833, 'SAPS770330QB3', 'Tecnologías de la Información y Comunicación', '2.6', 'Desempeño Insuficiente', 'enjun2019', 4),
(834, 'SAPS770330QB3', 'Satisfacción General', '2', 'Desempeño Insuficiente', 'enjun2019', 4),
(835, 'Electrica y Electron', 'total', '3.9', 'Bueno', 'enjun2019', 4),
(836, 'AECM691023TB7', 'Dominio de la Asignatura', '4.7', 'Notable', 'enjun2019', 3),
(837, 'AECM691023TB7', 'Planificación del Curso', '4.7', 'Notable', 'enjun2019', 3),
(838, 'AECM691023TB7', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 3),
(839, 'AECM691023TB7', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 3),
(840, 'AECM691023TB7', 'Motivación', '4.5', 'Notable', 'enjun2019', 3),
(841, 'AECM691023TB7', 'Evaluación', '4.5', 'Notable', 'enjun2019', 3),
(842, 'AECM691023TB7', 'Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(843, 'AECM691023TB7', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 3),
(844, 'AECM691023TB7', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(845, 'AECM691023TB7', 'Satisfacción General', '4.7', 'Notable', 'enjun2019', 3),
(846, 'MINR651005433', 'Dominio de la Asignatura', '4.7', 'Notable', 'enjun2019', 3),
(847, 'MINR651005433', 'Planificación del Curso', '4.6', 'Notable', 'enjun2019', 3),
(848, 'MINR651005433', 'Ambientes de Aprendizaje', '4.6', 'Notable', 'enjun2019', 3),
(849, 'MINR651005433', 'Estrategias, Métodos y Técnicas', '4.6', 'Notable', 'enjun2019', 3),
(850, 'MINR651005433', 'Motivación', '4.3', 'Notable', 'enjun2019', 3),
(851, 'MINR651005433', 'Evaluación', '4.4', 'Notable', 'enjun2019', 3),
(852, 'MINR651005433', 'Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(853, 'MINR651005433', 'Gestion del Curso', '4.6', 'Notable', 'enjun2019', 3),
(854, 'MINR651005433', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(855, 'MINR651005433', 'Satisfacción General', '4.6', 'Notable', 'enjun2019', 3),
(856, 'SACG780913577', 'Dominio de la Asignatura', '4.5', 'Notable', 'enjun2019', 3),
(857, 'SACG780913577', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 3),
(858, 'SACG780913577', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 3),
(859, 'SACG780913577', 'Estrategias, Métodos y Técnicas', '4.5', 'Notable', 'enjun2019', 3),
(860, 'SACG780913577', 'Motivación', '4.4', 'Notable', 'enjun2019', 3),
(861, 'SACG780913577', 'Evaluación', '4.4', 'Notable', 'enjun2019', 3),
(862, 'SACG780913577', 'Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(863, 'SACG780913577', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 3),
(864, 'SACG780913577', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(865, 'SACG780913577', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 3),
(866, 'CACE690803NI8', 'Dominio de la Asignatura', '4.6', 'Notable', 'enjun2019', 3),
(867, 'CACE690803NI8', 'Planificación del Curso', '4.5', 'Notable', 'enjun2019', 3),
(868, 'CACE690803NI8', 'Ambientes de Aprendizaje', '4.5', 'Notable', 'enjun2019', 3),
(869, 'CACE690803NI8', 'Estrategias, Métodos y Técnicas', '4.4', 'Notable', 'enjun2019', 3),
(870, 'CACE690803NI8', 'Motivación', '4.2', 'Bueno', 'enjun2019', 3),
(871, 'CACE690803NI8', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 3),
(872, 'CACE690803NI8', 'Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(873, 'CACE690803NI8', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 3),
(874, 'CACE690803NI8', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(875, 'CACE690803NI8', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 3),
(876, 'FOSR620304M52', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 3),
(877, 'FOSR620304M52', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 3),
(878, 'FOSR620304M52', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 3),
(879, 'FOSR620304M52', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 3),
(880, 'FOSR620304M52', 'Motivación', '4.3', 'Notable', 'enjun2019', 3),
(881, 'FOSR620304M52', 'Evaluación', '4.3', 'Notable', 'enjun2019', 3),
(882, 'FOSR620304M52', 'Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(883, 'FOSR620304M52', 'Gestion del Curso', '4.4', 'Notable', 'enjun2019', 3),
(884, 'FOSR620304M52', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 3),
(885, 'FOSR620304M52', 'Satisfacción General', '4.5', 'Notable', 'enjun2019', 3),
(886, 'TOSJ7002139K6', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 3),
(887, 'TOSJ7002139K6', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 3),
(888, 'TOSJ7002139K6', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 3),
(889, 'TOSJ7002139K6', 'Estrategias, Métodos y Técnicas', '4.3', 'Notable', 'enjun2019', 3),
(890, 'TOSJ7002139K6', 'Motivación', '4.1', 'Bueno', 'enjun2019', 3),
(891, 'TOSJ7002139K6', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 3),
(892, 'TOSJ7002139K6', 'Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(893, 'TOSJ7002139K6', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 3),
(894, 'TOSJ7002139K6', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(895, 'TOSJ7002139K6', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 3),
(896, 'CAHE580507V46', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 3),
(897, 'CAHE580507V46', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(898, 'CAHE580507V46', 'Ambientes de Aprendizaje', '4.3', 'Notable', 'enjun2019', 3),
(899, 'CAHE580507V46', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 3),
(900, 'CAHE580507V46', 'Motivación', '4.1', 'Bueno', 'enjun2019', 3),
(901, 'CAHE580507V46', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 3),
(902, 'CAHE580507V46', 'Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(903, 'CAHE580507V46', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 3),
(904, 'CAHE580507V46', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(905, 'CAHE580507V46', 'Satisfacción General', '4.4', 'Notable', 'enjun2019', 3),
(906, 'OOOR660727D74', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 3),
(907, 'OOOR660727D74', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 3),
(908, 'OOOR660727D74', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 3),
(909, 'OOOR660727D74', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 3),
(910, 'OOOR660727D74', 'Motivación', '4.1', 'Bueno', 'enjun2019', 3),
(911, 'OOOR660727D74', 'Evaluación', '4.2', 'Bueno', 'enjun2019', 3),
(912, 'OOOR660727D74', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(913, 'OOOR660727D74', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 3),
(914, 'OOOR660727D74', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(915, 'OOOR660727D74', 'Satisfacción General', '4.3', 'Notable', 'enjun2019', 3),
(916, 'OOVJ741030CN9', 'Dominio de la Asignatura', '4.2', 'Bueno', 'enjun2019', 3),
(917, 'OOVJ741030CN9', 'Planificación del Curso', '4.4', 'Notable', 'enjun2019', 3),
(918, 'OOVJ741030CN9', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 3),
(919, 'OOVJ741030CN9', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 3),
(920, 'OOVJ741030CN9', 'Motivación', '3.9', 'Bueno', 'enjun2019', 3),
(921, 'OOVJ741030CN9', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 3),
(922, 'OOVJ741030CN9', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(923, 'OOVJ741030CN9', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 3),
(924, 'OOVJ741030CN9', 'Tecnologías de la Información y Comunicación', '4.6', 'Notable', 'enjun2019', 3),
(925, 'OOVJ741030CN9', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 3),
(926, 'GAPR680316DSA', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 3),
(927, 'GAPR680316DSA', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 3),
(928, 'GAPR680316DSA', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(929, 'GAPR680316DSA', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 3),
(930, 'GAPR680316DSA', 'Motivación', '4.1', 'Bueno', 'enjun2019', 3),
(931, 'GAPR680316DSA', 'Evaluación', '4.3', 'Notable', 'enjun2019', 3),
(932, 'GAPR680316DSA', 'Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(933, 'GAPR680316DSA', 'Gestion del Curso', '4.5', 'Notable', 'enjun2019', 3),
(934, 'GAPR680316DSA', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 3),
(935, 'GAPR680316DSA', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 3),
(936, 'MAIJ750306BM7', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 3),
(937, 'MAIJ750306BM7', 'Planificación del Curso', '4.3', 'Notable', 'enjun2019', 3),
(938, 'MAIJ750306BM7', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 3),
(939, 'MAIJ750306BM7', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 3),
(940, 'MAIJ750306BM7', 'Motivación', '4', 'Bueno', 'enjun2019', 3),
(941, 'MAIJ750306BM7', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 3),
(942, 'MAIJ750306BM7', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(943, 'MAIJ750306BM7', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 3),
(944, 'MAIJ750306BM7', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(945, 'MAIJ750306BM7', 'Satisfacción General', '4.3', 'Notable', 'enjun2019', 3),
(946, 'MUCR680529D14', 'Dominio de la Asignatura', '4.2', 'Bueno', 'enjun2019', 3),
(947, 'MUCR680529D14', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(948, 'MUCR680529D14', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(949, 'MUCR680529D14', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 3),
(950, 'MUCR680529D14', 'Motivación', '4', 'Bueno', 'enjun2019', 3),
(951, 'MUCR680529D14', 'Evaluación', '4.1', 'Bueno', 'enjun2019', 3),
(952, 'MUCR680529D14', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(953, 'MUCR680529D14', 'Gestion del Curso', '4.3', 'Notable', 'enjun2019', 3),
(954, 'MUCR680529D14', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(955, 'MUCR680529D14', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 3),
(956, 'VAGO7709167L5', 'Dominio de la Asignatura', '4.3', 'Notable', 'enjun2019', 3),
(957, 'VAGO7709167L5', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(958, 'VAGO7709167L5', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(959, 'VAGO7709167L5', 'Estrategias, Métodos y Técnicas', '4.2', 'Bueno', 'enjun2019', 3),
(960, 'VAGO7709167L5', 'Motivación', '4.1', 'Bueno', 'enjun2019', 3),
(961, 'VAGO7709167L5', 'Evaluación', '4', 'Bueno', 'enjun2019', 3),
(962, 'VAGO7709167L5', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(963, 'VAGO7709167L5', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 3),
(964, 'VAGO7709167L5', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(965, 'VAGO7709167L5', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 3),
(966, 'CAAA770509TGA', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 3),
(967, 'CAAA770509TGA', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(968, 'CAAA770509TGA', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 3),
(969, 'CAAA770509TGA', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 3),
(970, 'CAAA770509TGA', 'Motivación', '3.9', 'Bueno', 'enjun2019', 3),
(971, 'CAAA770509TGA', 'Evaluación', '4', 'Bueno', 'enjun2019', 3),
(972, 'CAAA770509TGA', 'Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(973, 'CAAA770509TGA', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(974, 'CAAA770509TGA', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(975, 'CAAA770509TGA', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 3),
(976, 'ZEGR6709074E7', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 3),
(977, 'ZEGR6709074E7', 'Planificación del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(978, 'ZEGR6709074E7', 'Ambientes de Aprendizaje', '4.2', 'Bueno', 'enjun2019', 3),
(979, 'ZEGR6709074E7', 'Estrategias, Métodos y Técnicas', '4', 'Bueno', 'enjun2019', 3),
(980, 'ZEGR6709074E7', 'Motivación', '4', 'Bueno', 'enjun2019', 3),
(981, 'ZEGR6709074E7', 'Evaluación', '4', 'Bueno', 'enjun2019', 3),
(982, 'ZEGR6709074E7', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(983, 'ZEGR6709074E7', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 3),
(984, 'ZEGR6709074E7', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(985, 'ZEGR6709074E7', 'Satisfacción General', '4.2', 'Bueno', 'enjun2019', 3),
(986, 'PUNE681007G13', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 3),
(987, 'PUNE681007G13', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 3),
(988, 'PUNE681007G13', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(989, 'PUNE681007G13', 'Estrategias, Métodos y Técnicas', '4', 'Bueno', 'enjun2019', 3),
(990, 'PUNE681007G13', 'Motivación', '3.9', 'Bueno', 'enjun2019', 3),
(991, 'PUNE681007G13', 'Evaluación', '4', 'Bueno', 'enjun2019', 3),
(992, 'PUNE681007G13', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(993, 'PUNE681007G13', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(994, 'PUNE681007G13', 'Tecnologías de la Información y Comunicación', '4.4', 'Notable', 'enjun2019', 3),
(995, 'PUNE681007G13', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 3),
(996, 'AAHJ6505104W2', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 3),
(997, 'AAHJ6505104W2', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 3),
(998, 'AAHJ6505104W2', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(999, 'AAHJ6505104W2', 'Estrategias, Métodos y Técnicas', '4.1', 'Bueno', 'enjun2019', 3),
(1000, 'AAHJ6505104W2', 'Motivación', '3.9', 'Bueno', 'enjun2019', 3),
(1001, 'AAHJ6505104W2', 'Evaluación', '4', 'Bueno', 'enjun2019', 3),
(1002, 'AAHJ6505104W2', 'Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(1003, 'AAHJ6505104W2', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 3),
(1004, 'AAHJ6505104W2', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(1005, 'AAHJ6505104W2', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 3),
(1006, 'MALV720728RV8', 'Dominio de la Asignatura', '4.1', 'Bueno', 'enjun2019', 3),
(1007, 'MALV720728RV8', 'Planificación del Curso', '4.1', 'Bueno', 'enjun2019', 3),
(1008, 'MALV720728RV8', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(1009, 'MALV720728RV8', 'Estrategias, Métodos y Técnicas', '4', 'Bueno', 'enjun2019', 3),
(1010, 'MALV720728RV8', 'Motivación', '3.9', 'Bueno', 'enjun2019', 3),
(1011, 'MALV720728RV8', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 3),
(1012, 'MALV720728RV8', 'Comunicación', '4', 'Bueno', 'enjun2019', 3),
(1013, 'MALV720728RV8', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 3),
(1014, 'MALV720728RV8', 'Tecnologías de la Información y Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(1015, 'MALV720728RV8', 'Satisfacción General', '4', 'Bueno', 'enjun2019', 3),
(1016, 'RISA521010K87', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 3),
(1017, 'RISA521010K87', 'Planificación del Curso', '4', 'Bueno', 'enjun2019', 3),
(1018, 'RISA521010K87', 'Ambientes de Aprendizaje', '3.9', 'Bueno', 'enjun2019', 3),
(1019, 'RISA521010K87', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 3),
(1020, 'RISA521010K87', 'Motivación', '3.8', 'Bueno', 'enjun2019', 3),
(1021, 'RISA521010K87', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 3),
(1022, 'RISA521010K87', 'Comunicación', '4.2', 'Bueno', 'enjun2019', 3),
(1023, 'RISA521010K87', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(1024, 'RISA521010K87', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(1025, 'RISA521010K87', 'Satisfacción General', '4.1', 'Bueno', 'enjun2019', 3),
(1026, 'FADD791014J14', 'Dominio de la Asignatura', '3.9', 'Bueno', 'enjun2019', 3),
(1027, 'FADD791014J14', 'Planificación del Curso', '3.8', 'Bueno', 'enjun2019', 3),
(1028, 'FADD791014J14', 'Ambientes de Aprendizaje', '4.1', 'Bueno', 'enjun2019', 3),
(1029, 'FADD791014J14', 'Estrategias, Métodos y Técnicas', '3.8', 'Bueno', 'enjun2019', 3),
(1030, 'FADD791014J14', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 3),
(1031, 'FADD791014J14', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 3),
(1032, 'FADD791014J14', 'Comunicación', '4', 'Bueno', 'enjun2019', 3),
(1033, 'FADD791014J14', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(1034, 'FADD791014J14', 'Tecnologías de la Información y Comunicación', '4.5', 'Notable', 'enjun2019', 3),
(1035, 'FADD791014J14', 'Satisfacción General', '3.9', 'Bueno', 'enjun2019', 3),
(1036, 'BALR7609258D4', 'Dominio de la Asignatura', '3.9', 'Bueno', 'enjun2019', 3),
(1037, 'BALR7609258D4', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 3),
(1038, 'BALR7609258D4', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 3),
(1039, 'BALR7609258D4', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 3),
(1040, 'BALR7609258D4', 'Motivación', '3.6', 'Suficiente', 'enjun2019', 3),
(1041, 'BALR7609258D4', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 3),
(1042, 'BALR7609258D4', 'Comunicación', '4', 'Bueno', 'enjun2019', 3),
(1043, 'BALR7609258D4', 'Gestion del Curso', '4.2', 'Bueno', 'enjun2019', 3),
(1044, 'BALR7609258D4', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(1045, 'BALR7609258D4', 'Satisfacción General', '3.9', 'Bueno', 'enjun2019', 3),
(1046, 'GOSF640623LR3', 'Dominio de la Asignatura', '4', 'Bueno', 'enjun2019', 3),
(1047, 'GOSF640623LR3', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 3),
(1048, 'GOSF640623LR3', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 3),
(1049, 'GOSF640623LR3', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 3),
(1050, 'GOSF640623LR3', 'Motivación', '3.8', 'Bueno', 'enjun2019', 3),
(1051, 'GOSF640623LR3', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 3),
(1052, 'GOSF640623LR3', 'Comunicación', '4', 'Bueno', 'enjun2019', 3),
(1053, 'GOSF640623LR3', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 3),
(1054, 'GOSF640623LR3', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(1055, 'GOSF640623LR3', 'Satisfacción General', '3.8', 'Bueno', 'enjun2019', 3),
(1056, 'AASL4911068Y5', 'Dominio de la Asignatura', '3.9', 'Bueno', 'enjun2019', 3),
(1057, 'AASL4911068Y5', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 3),
(1058, 'AASL4911068Y5', 'Ambientes de Aprendizaje', '4', 'Bueno', 'enjun2019', 3),
(1059, 'AASL4911068Y5', 'Estrategias, Métodos y Técnicas', '3.9', 'Bueno', 'enjun2019', 3),
(1060, 'AASL4911068Y5', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 3),
(1061, 'AASL4911068Y5', 'Evaluación', '3.9', 'Bueno', 'enjun2019', 3),
(1062, 'AASL4911068Y5', 'Comunicación', '4', 'Bueno', 'enjun2019', 3),
(1063, 'AASL4911068Y5', 'Gestion del Curso', '4', 'Bueno', 'enjun2019', 3),
(1064, 'AASL4911068Y5', 'Tecnologías de la Información y Comunicación', '4.3', 'Notable', 'enjun2019', 3),
(1065, 'AASL4911068Y5', 'Satisfacción General', '3.8', 'Bueno', 'enjun2019', 3),
(1066, 'MOAR670928FX3', 'Dominio de la Asignatura', '3.8', 'Bueno', 'enjun2019', 3),
(1067, 'MOAR670928FX3', 'Planificación del Curso', '3.9', 'Bueno', 'enjun2019', 3),
(1068, 'MOAR670928FX3', 'Ambientes de Aprendizaje', '3.9', 'Bueno', 'enjun2019', 3),
(1069, 'MOAR670928FX3', 'Estrategias, Métodos y Técnicas', '3.8', 'Bueno', 'enjun2019', 3),
(1070, 'MOAR670928FX3', 'Motivación', '3.7', 'Suficiente', 'enjun2019', 3),
(1071, 'MOAR670928FX3', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 3),
(1072, 'MOAR670928FX3', 'Comunicación', '3.9', 'Bueno', 'enjun2019', 3),
(1073, 'MOAR670928FX3', 'Gestion del Curso', '4.1', 'Bueno', 'enjun2019', 3),
(1074, 'MOAR670928FX3', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(1075, 'MOAR670928FX3', 'Satisfacción General', '3.8', 'Bueno', 'enjun2019', 3),
(1076, 'AALK730829Q70', 'Dominio de la Asignatura', '3.7', 'Suficiente', 'enjun2019', 3),
(1077, 'AALK730829Q70', 'Planificación del Curso', '3.8', 'Bueno', 'enjun2019', 3),
(1078, 'AALK730829Q70', 'Ambientes de Aprendizaje', '3.7', 'Suficiente', 'enjun2019', 3),
(1079, 'AALK730829Q70', 'Estrategias, Métodos y Técnicas', '3.7', 'Suficiente', 'enjun2019', 3),
(1080, 'AALK730829Q70', 'Motivación', '3.6', 'Suficiente', 'enjun2019', 3),
(1081, 'AALK730829Q70', 'Evaluación', '3.8', 'Bueno', 'enjun2019', 3),
(1082, 'AALK730829Q70', 'Comunicación', '3.8', 'Bueno', 'enjun2019', 3),
(1083, 'AALK730829Q70', 'Gestion del Curso', '3.9', 'Bueno', 'enjun2019', 3),
(1084, 'AALK730829Q70', 'Tecnologías de la Información y Comunicación', '4.1', 'Bueno', 'enjun2019', 3),
(1085, 'AALK730829Q70', 'Satisfacción General', '3.7', 'Suficiente', 'enjun2019', 3),
(1086, 'EIOR510902C15', 'Dominio de la Asignatura', '2.9', 'Desempeño Insuficiente', 'enjun2019', 3),
(1087, 'EIOR510902C15', 'Planificación del Curso', '3.2', 'Desempeño Insuficiente', 'enjun2019', 3),
(1088, 'EIOR510902C15', 'Ambientes de Aprendizaje', '3.2', 'Desempeño Insuficiente', 'enjun2019', 3),
(1089, 'EIOR510902C15', 'Estrategias, Métodos y Técnicas', '3.1', 'Desempeño Insuficiente', 'enjun2019', 3),
(1090, 'EIOR510902C15', 'Motivación', '3.1', 'Desempeño Insuficiente', 'enjun2019', 3),
(1091, 'EIOR510902C15', 'Evaluación', '3.3', 'Suficiente', 'enjun2019', 3),
(1092, 'EIOR510902C15', 'Comunicación', '3.2', 'Desempeño Insuficiente', 'enjun2019', 3),
(1093, 'EIOR510902C15', 'Gestion del Curso', '3.6', 'Suficiente', 'enjun2019', 3),
(1094, 'EIOR510902C15', 'Tecnologías de la Información y Comunicación', '3.6', 'Suficiente', 'enjun2019', 3),
(1095, 'EIOR510902C15', 'Satisfacción General', '2.9', 'Desempeño Insuficiente', 'enjun2019', 3),
(1096, 'OOGF720206176', 'Dominio de la Asignatura', '2.9', 'Desempeño Insuficiente', 'enjun2019', 3),
(1097, 'OOGF720206176', 'Planificación del Curso', '2.9', 'Desempeño Insuficiente', 'enjun2019', 3),
(1098, 'OOGF720206176', 'Ambientes de Aprendizaje', '3.5', 'Suficiente', 'enjun2019', 3),
(1099, 'OOGF720206176', 'Estrategias, Métodos y Técnicas', '3', 'Desempeño Insuficiente', 'enjun2019', 3),
(1100, 'OOGF720206176', 'Motivación', '2.9', 'Desempeño Insuficiente', 'enjun2019', 3),
(1101, 'OOGF720206176', 'Evaluación', '3.2', 'Desempeño Insuficiente', 'enjun2019', 3),
(1102, 'OOGF720206176', 'Comunicación', '3', 'Desempeño Insuficiente', 'enjun2019', 3),
(1103, 'OOGF720206176', 'Gestion del Curso', '3.6', 'Suficiente', 'enjun2019', 3),
(1104, 'OOGF720206176', 'Tecnologías de la Información y Comunicación', '3.9', 'Bueno', 'enjun2019', 3),
(1105, 'OOGF720206176', 'Satisfacción General', '2.6', 'Desempeño Insuficiente', 'enjun2019', 3),
(1106, 'Sistemas y C', 'Total', '4.0', 'Bueno', 'enjun2019', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'Ciencias de la Tierra'),
(2, 'Ecnonmia y Administracion'),
(3, 'Sistemas y Computacion'),
(4, 'Electrica y Electronica'),
(5, 'Mecanica'),
(6, 'Industrial'),
(7, 'Ciencias Basicas'),
(8, 'Idiomas '),
(9, 'Direccion'),
(10, 'Subdireccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-06 02:40:17.472503', '2', 'auxiliarSystem', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-12-06 02:41:04.937706', '2', 'auxiliarSystem', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-06 00:48:35.665491'),
(2, 'auth', '0001_initial', '2022-12-06 00:48:36.518573'),
(3, 'admin', '0001_initial', '2022-12-06 00:48:36.714511'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-06 00:48:36.730102'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-06 00:48:36.730102'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-06 00:48:36.824264'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-06 00:48:36.903337'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-06 00:48:36.918922'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-06 00:48:36.918922'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-06 00:48:36.997730'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-06 00:48:36.997730'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-06 00:48:37.013352'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-06 00:48:37.028971'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-06 00:48:37.028971'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-06 00:48:37.076236'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-06 00:48:37.076236'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-06 00:48:37.091862'),
(18, 'sessions', '0001_initial', '2022-12-06 00:48:37.142974');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3fm29oj6f9mtqv5a2t5v2pleifh3jm0w', '.eJxVjDsOwjAQBe_iGllZbxzblPQ5g7W7tnEAJVI-FeLuJFIKaN_MvLeKtK01bkue45DUVYG6_G5M8szjAdKDxvukZRrXeWB9KPqki-6nlF-30_07qLTUvS7ehaYwdxI8ARqDxrcAmFwr1NkG0TpoyYglDg4wSymCvNsdB7CiPl_HPDdv:1p4xIF:we5LqydZN1ZH8zWdAMA5KWwGYUV3rMqNPrkvpmmONpo', '2022-12-27 04:53:27.867218'),
('nhw100mqocvb2jvaxnft081i3bs3tx8m', '.eJxVjDsOwjAQBe_iGllZbxzblPQ5g7W7tnEAJVI-FeLuJFIKaN_MvLeKtK01bkue45DUVYG6_G5M8szjAdKDxvukZRrXeWB9KPqki-6nlF-30_07qLTUvS7ehaYwdxI8ARqDxrcAmFwr1NkG0TpoyYglDg4wSymCvNsdB7CiPl_HPDdv:1p4A65:0-tvBju2IAdTQzpnZZ5ls0uEYzQ0iiXEUa7I-DpfuOU', '2022-12-25 00:21:37.025294');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `id` int(11) NOT NULL,
  `plantel` varchar(60) DEFAULT NULL,
  `departamento` int(11) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `curp` varchar(19) NOT NULL,
  `apellidoPaterno` varchar(20) NOT NULL,
  `apellidoMaterno` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maestro`
--

INSERT INTO `maestro` (`id`, `plantel`, `departamento`, `rfc`, `curp`, `apellidoPaterno`, `apellidoMaterno`, `nombre`, `email`) VALUES
(1, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AAHI611107UM1', 'AAHI611107MPLLRS07', 'ALVAREZ', 'HERNANDEZ', 'MARIA ISABEL', 'maria.ah@cdguzman.tecnm.mx'),
(2, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CUEH581227KQ1', 'CUEH581227HCLRSC09', 'CRUZ', 'ESQUIVEL', 'HECTOR ALEJANDRO', 'hector.ce@cdguzman.tecnm.mx'),
(3, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOMN801121I18', 'MOMN801121MJCRLR09', 'MORFIN', 'MALDONADO', 'NORMA NELIDA', 'norma.mm@cdguzman.tecnm.mx'),
(4, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RUMC7309208V5', 'RUMC730920HZSVRR03', 'RUVALCABA', 'MARQUEZ', 'CARLOS', 'carlos.rm@cdguzman.tecnm.mx'),
(5, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GAAJ560815Q80', 'GAAJ560815HDGLLQ03', 'GALLEGOS', 'ALVARADO', 'JOAQUIN', 'rechum@cdguzman.tecnm.mx'),
(6, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'HUGG520712ML2', 'HUGG520712HJCRRL04', 'HUERTA', 'GARIBAY', 'GUILLERMO', 'guillermo.hg@cdguzman.tecnm.mx'),
(7, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AEFA551001BJ7', 'AEFA551001HJCRBN02', 'ARELLANO', 'FABIAN', 'ANGEL ENRIQUE', 'angel.af@cdguzman.tecnm.mx'),
(8, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BAVE7910135E0', 'BAVE791013HJCTLD02', 'BAUTISTA', 'VALDEZ', 'EDGAR EDUARDO', 'edgar.bv@cdguzman.tecnm.mx'),
(9, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAAR7907036T2', 'CAAR790703HJCTLF05', 'CATZIM', 'ALCARAZ', 'RAFAEL HERNAN', 'rafael.ca@cdguzman.tecnm.mx'),
(10, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAFL550317GB1', 'CAFL550317HJCSGP00', 'CASTILLO', 'FIGUEROA', 'LEOPOLDO', 'leopoldo.cf@cdguzman.tecnm.mx'),
(11, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAMH731207J87', 'CAMH731207HMNNRR04', 'CANCINO', 'MORENO', 'HERMAN', 'herman.cm@cdguzman.tecnm.mx'),
(12, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CASC8304184U0', 'CASC830418HJCRLH07', 'CARREON', 'SILVA', 'CHRISTIAN LORENZO', 'christian.cs@cdguzman.tecnm.mx'),
(13, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CASJ570911LI8', 'CASJ570911HJCNNC02', 'CANO', 'SANDOVAL', 'JACINTO', 'jacinto.cs@cdguzman.tecnm.mx'),
(14, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CEGL7407249W2', 'CEGL740724HJCRNS02', 'CERVANTES', 'GONZALEZ', 'LUIS CESAR', 'luis.cg@cdguzman.tecnm.mx'),
(15, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CIAN831201SC4', 'CIAN831201MJCSGT25', 'CISNEROS', 'AGUILAR', 'NATALIA', 'natalia.ca@cdguzman.tecnm.mx'),
(16, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOCA850916TX7', 'GOCA850916HYNNRL06', 'GONZALEZ', 'COURTENAY', 'ALBERTO DAMIAN', 'alberto.gc@cdguzman.tecnm.mx'),
(17, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOMA500408P64', 'GOMA500408HYNNRL00', 'GONZALEZ', 'MURILLO', 'ALBERTO', 'alberto.gm@cdguzman.tecnm.mx'),
(18, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOPJ511229US1', '', 'GOMEZ', 'PERALTA', 'JESUA ENRIQUE', 'gperalta7@hotmail.com'),
(19, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUSM740627ID7', 'GUSM740627HJCZLR03', 'GUZMAN', 'SOLANO', 'MARCO ANTONIO', 'marco.gs@cdguzman.tecnm.mx'),
(20, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LASA8306224X3', 'LASA830622MJCRNN19', 'LARES', 'SANCHEZ', 'ANA VIRGINIA', 'ana.ls@cdguzman.tecnm.mx'),
(21, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MACJ580314BS1', 'MACJ580314HSRRVL06', 'MARTINEZ', 'CUEVAS', 'JOEL', 'joel.mc@cdguzman.tecnm.mx'),
(22, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MASJ620725HYA', 'MASJ620725HJCRNN01', 'MARTINEZ', 'SANDOVAL', 'JUAN CARLOS', 'juan.ms@cdguzman.tecnm.mx'),
(23, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MEBP740923U52', 'MEBP740923HJCDRB03', 'MEDINA', 'BRISEÑO', 'PABLO', 'pablo.mb@cdguzman.tecnm.mx'),
(24, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOEI5312115C0', 'MOEI531211HCLYSG08', 'MOYA', 'ESQUIVEL', 'IGNACIO', 'ignacio.me@cdguzman.tecnm.mx'),
(25, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MONA650411N84', 'MONA650411HJCNLN00', 'MONTES DE OCA', 'NOLASCO', 'ANICETO', 'aniceto.mn@cdguzman.tecnm.mx'),
(26, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PAGR820309RF7', 'PAGR820309HGTNNF04', 'PANTOJA', 'GONZALEZ', 'RAFAEL', 'rafael.pg@cdguzman.tecnm.mx'),
(27, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PUNK7009046D2', 'PUNK700904MJCGTR09', 'PUGA', 'NATHAL', 'KARLA LILIANA', 'karla.pn@cdguzman.tecnm.mx'),
(28, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PUVF650107584', 'PUVF650107HCMGGR05', 'PUGA', 'VEGA', 'FRANCISCO GABRIEL', 'francisco.pv@cdguzman.tecnm.mx'),
(29, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'REPV850522J5A', 'REPV850522HJCNLC06', 'RENTERIA', 'PALOMARES', 'VICTOR HUGO', 'victor.rp@cdguzman.tecnm.mx'),
(30, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RETV530719TY2', 'RETV530719HTSQRC08', 'REQUENA', 'TIRADO', 'VICENTE', 'vicente.rt@cdguzman.tecnm.mx'),
(31, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RORR470309GI3', 'RORR470309HJCDTC00', 'RODRIGUEZ', 'RETOLAZA', 'RICARDO', 'ricardo.rr@cdguzman.tecnm.mx'),
(32, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'TOCR860907M72', 'TOCR860907HVZBSB01', 'TOBIAS', 'CASTILLO', 'ROBERTO', 'roberto.tc@cdguzman.tecnm.mx'),
(33, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'TOHA5203201U2', 'TOHA520320HVZBRL08', 'TOBIAS', 'HERNANDEZ', 'ALEJANDRO', 'alejandro.th@cdguzman.tecnm.mx'),
(34, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VAGO7709167L5', 'VAGO770916HJCRNM02', 'VARGAS', 'GONZALEZ', 'OMAR CRISTIAN', 'omar.vg@cdguzman.tecnm.mx'),
(35, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VIAP850527EH7', 'VIAP850527MJCLGL00', 'VILLALVAZO', 'AGUILAR', 'PAULINA', 'paulina.va@cdguzman.tecnm.mx'),
(36, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VISL661124RI8', 'VISL661124HJCLNS03', 'VILLALOBOS', 'SANTANA', 'JOSE LUIS', 'jose.vs@cdguzman.tecnm.mx'),
(37, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'ZAAJ731116BA8', 'ZAAJ731116HTCMLR07', 'ZAMUDIO', 'ALAMILLA', 'JORGE', 'jorge.za@cdguzman.tecnm.mx'),
(38, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AAOE810929G25', 'AAOE810929MTSLRL05', 'ALDANA', 'ORNELAS', 'ELSA IVETTE', 'elsa.ao@cdguzman.tecnm.mx'),
(39, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BAAM660409ET1', 'BAAM660409HJCZLG02', 'BAEZA', 'ALCARAZ', 'JOSE MIGUEL', 'jose.ba@cdguzman.tecnm.mx'),
(40, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BAEM7007152I5', 'BAEM700715HJCRSG03', 'BARRAGAN', 'ESPINOZA', 'MIGUEL ANGEL', 'miguel.be@cdguzman.tecnm.mx'),
(41, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BAEO7409038H5', 'BAEO740903HJCRSS03', 'BARRAGAN', 'ESPINOZA', 'OSCAR ALBERTO', 'oscar.be@cdguzman.tecnm.mx'),
(42, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CACL7104068H8', 'CACL710406HJCHRS03', 'CHAVEZ', 'CARRILLO', 'JOSE LUIS', 'jose.cc@cdguzman.tecnm.mx'),
(43, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAVJ7601276G0', 'CAVJ760127HSLHLN04', 'CHAVEZ', 'VELARDE', 'JUAN JOSE', 'juan.cv@cdguzman.tecnm.mx'),
(44, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'DIAN750603BTA', 'DIAN750603MJCZNR02', 'DIAZ', 'ANTILLON', 'NORMA ANGELICA', 'norma.da@cdguzman.tecnm.mx'),
(45, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'EERL700314G21', 'EERL700314HJCSDP04', 'ESESARTE', 'RODRIGUEZ', 'LEOPOLDO', 'leopoldo.er@cdguzman.tecnm.mx'),
(46, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FACR870402TSA', 'FACR870402HJCBRB02', 'FABIAN', 'DE LA CRUZ', 'ROBERTO', 'roberto.fd@cdguzman.tecnm.mx'),
(47, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FAGB601230JF5', '', 'Franco', 'Galindo', 'Beatriz Celina', 'betifranco@hotmail.com'),
(48, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FEAO880417GC2', '', 'FERNANDEZ', 'ALVAREZ', 'OFELIA DEL CARMEN', 'ofe_19@hotmail.com'),
(49, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GAMM710704IC4', 'GAMM710704HJCRNS06', 'GARCIA', 'MENDOZA', 'MOISES', 'moises.gm@cdguzman.tecnm.mx'),
(50, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOCD751225TZ5', 'GOCD751225HJCNSV00', 'GONZALEZ', 'CASTOLO', 'DAVID AUGUSTO', 'david.gc@cdguzman.tecnm.mx'),
(51, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUHS711101LD9', 'GUHS711101HJCZRN03', 'GUZMAN', 'HERNANDEZ', 'SANTOS GUSTAVO', 'santos.gh@cdguzman.tecnm.mx'),
(52, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUPE871010645', 'GUPE871010HJCVGD00', 'GUEVARA', 'PUGA', 'EDGAR ALEJANDRO', 'edgar.gp@cdguzman.tecnm.mx'),
(53, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUSR830718QY2', 'GUSR830718MJCRNC02', 'GUERRERO', 'SANTANA', 'ROCIO CRYSTAL', 'rocio.gs@cdguzman.tecnm.mx'),
(54, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUVR871230QVA', 'GUVR871230HJCRLY06', 'GUERRERO', 'VELASCO', 'REYNALDO', 'reynaldo.gv@cdguzman.tecnm.mx'),
(55, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'HEJV900115G27', 'HEJV900115MJCRMR07', 'HERNANDEZ', 'JIMENEZ', 'VIRIDIANA BERENICE', 'viridiana.hj@cdguzman.tecnm.mx'),
(56, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'IAGM8807202B2', 'IAGM880720HJCSNR05', 'ISABELES', 'GONZALEZ', 'MARGARITO', 'margarito.ig@cdguzman.tecnm.mx'),
(57, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'JITJ801012BM3', 'JITJ801012HJCMRN03', 'JIMENEZ', 'DEL TORO', 'JUAN CARLOS', 'juan.jd@cdguzman.tecnm.mx'),
(58, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MACA500909JE0', 'MACA500909HJCRVL00', 'MARTINEZ', 'CUEVAS', 'JOSE ALBERTO', 'jose.mc@cdguzman.tecnm.mx'),
(59, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAMX790128GK6', 'MXMO790128HJCGRM02', 'MAGAÑA', 'MORENO', 'OMAR', 'omar.mm@cdguzman.tecnm.mx'),
(60, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAPF7311112K4', 'MAPF731111HCMNXR07', 'MANCILLA', 'PEÑA', 'FERNANDO', 'fernando.mp@cdguzman.tecnm.mx'),
(61, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAPJ841224C6A', 'MAPJ841224HJCRMS03', 'MARTINEZ', 'PAMATZ', 'JESUS ANGEL', 'jesus.mp@cdguzman.tecnm.mx'),
(62, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MARJ861215LX0', 'MARJ861215HJCGMS06', 'MAGAÑA', 'RAMIREZ', 'JOSE DE JESUS', 'jose.mr@cdguzman.tecnm.mx'),
(63, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MEDF531117PQ7', 'MEDF531117HJCNNR06', 'MENDEZ', 'DONATO', 'FRANCISCO JAVIER', 'francisco.md@cdguzman.tecnm.mx'),
(64, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MINJ560125QG1', 'MING560125HJCCVD08', 'Michel', 'Nava', 'J. Guadalupe', 'michelnava2008@hotmail.com'),
(65, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOMS871204Q29', 'MOMS871204MJCJGN00', 'MOJARRO', 'MAGAÑA', 'SANDRA', 'sandra.mm@cdguzman.tecnm.mx'),
(66, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PABJ880827IB0', 'PABJ880827HNTLRN01', 'PALOMINO', 'BERNAL', 'JUAN FRANCISCO', 'juan.pb@cdguzman.tecnm.mx'),
(67, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RERR751201J9A', 'RERR751201HJCYBB01', 'REYES', 'RUBIO', 'RUBEN', 'ruben.rr@cdguzman.tecnm.mx'),
(68, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RESL700920CVA', 'RESL700920HJCYSP02', 'REYES', 'SOSA', 'LEOPOLDO', 'leopoldo.rs@cdguzman.tecnm.mx'),
(70, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RONF621030597', 'RONF621030HJCBXR00', 'ROBLEDO', 'NUÑEZ', 'FERNANDO MARCO ANTONIO', 'fernando.rn@cdguzman.tecnm.mx'),
(71, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'ROPR761231CB4', 'ROPR761231HJCDRM02', 'RODRIGUEZ', 'PEREZ', 'RAMIRO', 'ramiro.rp@cdguzman.tecnm.mx'),
(72, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RUGS540119CF5', 'RUGS540119HJCSRL03', 'RUESGA', 'GARCIA', 'SALVADOR', 'salvador.rg@cdguzman.tecnm.mx'),
(73, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RULS880510RT1', 'RULS880510HJCZZR08', 'RUIZ', 'LAZARITT', 'SERGIO ALEJANDRO', 'sergio.rl@cdguzman.tecnm.mx'),
(74, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SOMM870927D50', 'SOMM870927MJCTCY02', 'SOTO', 'MACIAS', 'MAYRA', 'mayra.sm@cdguzman.tecnm.mx'),
(75, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'TOLM750321AR2', 'TOLM750321MJCRRR07', 'TORRES', 'LARES', 'MIRIAM SALOME', 'miriam.tl@cdguzman.tecnm.mx'),
(76, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VAAR9011054X2', 'VAAR901105MJCLVS09', 'VALENCIA', 'AVIÑA', 'ROSA BERENICE', 'rosa.va@cdguzman.tecnm.mx'),
(77, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VAVD910701UD4', 'VAVD910701MJCZRR05', 'VAZQUEZ', 'VERDUZCO', 'DARALY', 'daraly.vv@cdguzman.tecnm.mx'),
(78, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VIMH610114LH2', 'VIMH610114HJCLRC03', 'VILLEGAS', 'MORALES', 'HECTOR', 'hector.vm@cdguzman.tecnm.mx'),
(79, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'ZEOV8405234M9', 'ZEOV840523HJCPRC09', 'ZEPEDA', 'OROZCO', 'VICTOR MIGUEL', 'victor.zo@cdguzman.tecnm.mx'),
(80, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AASJ471203RD9', 'AASJ471203HJCLLV07', 'ALCARAZ', 'SILVA', 'JAVIER', 'javier.as@cdguzman.tecnm.mx'),
(81, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AAVC590419DE8', '', 'Álvarez', 'Vargas', 'Carlos', '29gavilan@gmail.com'),
(82, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AEML890331UK3', '', 'Aceves', 'Manzano', 'Laura Alejandra', 'aceves.lam997@gmail.com'),
(83, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AISD630612KR7', 'AISD630612MSRRTR07', 'ARRIAGA', 'SOTO', 'DORA LUZ', 'dora.as@cdguzman.tecnm.mx'),
(84, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AUMM570328PPA', '', 'AGUILAR', 'MENDOZA', 'MARTHA', 'martha570328@hotmail.com'),
(85, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BARJ740728MW6', 'BARJ740728MNTRBS02', 'BRAVO', 'ROBLES', 'MARIA DE JESUS', 'maria.br@cdguzman.tecnm.mx'),
(86, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BASP830429IZA', 'BASP830429MJCRNL06', 'BARRAGAN', 'SANCHEZ', 'PAULINA', 'paulina.bs@cdguzman.tecnm.mx'),
(87, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BAVG6501256A3', '', '', '', 'BARRAGAN VAZQUEZ MA. GUILLERMI', 'guillefinitcg@hotmail.com'),
(88, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BEEM930618BA8', 'BEEM930618HJCRNS07', 'BERNARDINO', 'ENCISO', 'MOISES DE JESUS', 'moises.be@cdguzman.tecnm.mx'),
(89, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BEVA841221878', 'BEVA841221MJCCZN01', 'Becerra', 'Vázquez', 'Ana Laura', 'abcv84@hotmail.com'),
(90, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CACJ630623S47', 'CACJ630623MJCRHS05', 'CARDENAS', 'CHAVEZ', 'MARIA DE JESUS', 'maria.cc@cdguzman.tecnm.mx'),
(91, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAGG681101C76', 'CAGG681101MJCRML06', 'CARDENAS', 'GOMEZ', 'GLORIA ESTELA', 'gloria.cg@cdguzman.tecnm.mx'),
(92, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CARR6808301S5', 'CARR680830MJCHMS09', 'CHAVEZ', 'ROMERO', 'ROSA OLIVIA', 'rosa.cr@cdguzman.tecnm.mx'),
(93, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CARS820701JD9', 'CARS820701MJCSYL08', 'CASTILLO', 'REYES', 'SILVIA MARISA', 'silvia.cr@cdguzman.tecnm.mx'),
(94, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CATE800526963', 'CATE800526MJCSPR09', 'CASTILLO', 'TAPIA', 'ERIKA CONSUELO', 'erika.ct@cdguzman.tecnm.mx'),
(95, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CECN551109KF3', 'CECN551109HJCLRX00', 'CELIS', 'CRISOSTOMO', 'NOE', 'noe.cc@cdguzman.tecnm.mx'),
(96, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CISA700512J38', 'CIXS700512MJCSXG08', 'CISNEROS', '', 'MARIA DEL SAGRARIO', 'maria.c@cdguzman.tecnm.mx'),
(97, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'COGJ4402116W6', '', 'Cortés', 'Gallardo', 'María de Jesús', 'chuy_c_g@hotmail.com'),
(98, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'COVI820912PD7', 'COVI820912MJCRLS00', 'CORTES', 'VILLANUEVA', 'MARIA ISABEL', 'maria.cv@cdguzman.tecnm.mx'),
(99, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'EIMR570913M75', 'EIMR570913HJCLTC01', 'ELIZONDO', 'MATA', 'RICARDO', 'ricardo.em@cdguzman.tecnm.mx'),
(100, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FARJ930419AL1', 'FARJ930419MDFRVS05', 'FARIAS', 'RIVERA', 'JESSICA', 'jessica.fr@cdguzman.tecnm.mx'),
(101, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FOSJ591030JN8', 'FOSJ591030MJCLHS06', 'FLORES', 'SAHAGUN', 'JOSEFINA', 'josefina.fs@cdguzman.tecnm.mx'),
(102, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GARM750526BZ5', 'GARM750526MJCRDR05', 'GARCIA', 'RODRIGUEZ', 'MARCIA ALEJANDRA', 'marcia.gr@cdguzman.tecnm.mx'),
(103, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOOA820725L72', 'GOOA820725MJCNCN04', 'GONZALEZ', 'OCHOA', 'ANA ELENA', 'ana.go@cdguzman.tecnm.mx'),
(104, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOSL8205276J5', 'GOSL820527MJCMNR05', 'GOMEZ', 'SANCHEZ', 'LAURA', 'laura.gs@cdguzman.tecnm.mx'),
(105, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUPM660124AG5', 'GUPM660124MJCTRR03', 'GUTIERREZ', 'PARBOL', 'MARGARITA', 'margarita.gp@cdguzman.tecnm.mx'),
(106, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUPR921109RA1', 'GUPR921109HJCVGL05', 'GUEVARA', 'PUGA', 'RAUL', 'raul.gp1@cdguzman.tecnm.mx'),
(107, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUVR621008QR5', 'GUVR621008HJCDNN02', 'GUDIÑO', 'VENEGAS', 'RENE', 'rene.gv@cdguzman.tecnm.mx'),
(108, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUVY780303F52', 'GUVY780303MJCRLZ03', 'GUERRERO', 'VALENCIA', 'YAZMIN ZUGEY', 'yazmin.gv@cdguzman.tecnm.mx'),
(109, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'HETC5911225J5', '', 'Hernandez', 'De la Torre', 'Celia', 'hernandezt_celia@hotmail.com'),
(110, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'HUCL710308M94', 'HUCL710308MJCRSR03', 'HUERTA', 'CASILLAS', 'LAURA ELENA', 'laura.hc@cdguzman.tecnm.mx'),
(111, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'IAOR751214J88', 'IAOR751214HJCSSD02', 'ISABELES', 'OSORIO', 'RODRIGO', 'rodrigo.io@cdguzman.tecnm.mx'),
(112, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'JICC681019E44', 'JICC681019MJCMSR08', 'JIMENEZ', 'CISNEROS', 'MARIA DEL CARMEN', 'maria.jc@cdguzman.tecnm.mx'),
(113, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'JIME560102LZ2', 'JIME560102HJCMRM04', 'JIMENEZ', 'MARTINEZ', 'EMILIO', 'emilio.jm@cdguzman.tecnm.mx'),
(114, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LIAL691201M34', 'LIAL691201MJCRGC06', 'LIERA', 'AGUILERA', 'LUCRECIA', 'lucrecia.la@cdguzman.tecnm.mx'),
(115, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LIBD480217BB6', 'LIBD480217HDFMRV05', 'LIMON', 'BARAJAS', 'DAVID', 'david.lb@cdguzman.tecnm.mx'),
(116, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LUVL5808198Y8', 'LUVL580819HJCNLS08', 'LUNA', 'VILLALOBOS', 'LUIS GABRIEL', 'luis.lv@cdguzman.tecnm.mx'),
(117, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MEAM530312C55', 'MEAM530312MJCNRR04', 'MENDOZA', 'ARREZOLA', 'MARIA MARICELA', 'maria.ma@cdguzman.tecnm.mx'),
(118, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MIAJ550714MB7', '', 'Miranda', 'Aceves', 'María de Jesús', 'mari_mi_a@hotmail.com'),
(119, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MIFI540309G67', '', 'Miranda', 'Franco', 'Ignacio', 'ignaciomirandalic@gmail.com'),
(120, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOFB580408FQ8', 'MOFB580408MJCNLR00', 'MONTES DE OCA', 'FLORES', 'BERTHA PATRICIA', 'bertha.md@cdguzman.tecnm.mx'),
(121, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOSE901224SM7', 'MOSE901224MJCNTD04', 'MONTES', 'SOTO', 'EDITH', 'edith.ms@cdguzman.tecnm.mx'),
(122, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MUMI780905HV1', 'MUMI780905MJCNDR07', 'MUNGUIA', 'MADRIGAL', 'IRMA', 'irma.mm@cdguzman.tecnm.mx'),
(123, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'NACC820819FT4', 'NACC820819MJCVVT08', 'NAVARRETE', 'COVA', 'CITLALI', 'citlali.nc@cdguzman.tecnm.mx'),
(124, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'NACM650827DM0', 'NACG650827MMNVHD09', 'NAVARRETE', 'CHAVEZ', 'MA. GUADALUPE', 'ma.nc@cdguzman.tecnm.mx'),
(125, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PAFE920722179', 'PAFE920722MJCLRL04', 'PALACIOS', 'FRIAS', 'ELENA MONTSERRAT', 'elena.pf@cdguzman.tecnm.mx'),
(126, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PERM7909207X9', 'PERM790920MJCRYR07', 'PRECIADO', 'REYES', 'MIRIAM YANELY', 'miriam.pr@cdguzman.tecnm.mx'),
(127, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PEVJ460711NIA', 'PEVJ460711HJCRRS07', 'PEREZ', 'VARGAS', 'JOSE DE JESUS', 'jose.pv@cdguzman.tecnm.mx'),
(128, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'POLR5412293N7', '', 'Ponce', 'López', 'Rosa', 'lopezponcer@yahoo.com.mx'),
(129, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RAGL8604073J0', 'RAGL860407MJCMTZ09', 'RAMOS', 'GUTIERREZ', 'LIZBETH', 'lizbeth.rg@cdguzman.tecnm.mx'),
(130, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RAGM691022MM3', 'RAGM691022MJCMTR04', 'RAMOS', 'GUTIERREZ', 'MARTHA SILVIA', 'martha.rg@cdguzman.tecnm.mx'),
(131, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RARR410911FS5', 'RARR410911HJCMSD05', 'RAMIREZ', 'RIOS', 'RODOLFO', 'rodolfo.rr@cdguzman.tecnm.mx'),
(132, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RISF770719MN1', 'RISF770719MJCSNL03', 'RIOS', 'SANDOVAL', 'MARIA FLOR SILVESTRE', 'maria.rs@cdguzman.tecnm.mx'),
(133, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'ROVE670416KY3', 'ROVE670416MJCMLS04', 'ROMERO', 'VALENCIA', 'MARIA ESTHER', 'ma.rv@cdguzman.tecnm.mx'),
(134, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RUGI921116LS1', 'RUGI921116MJCZTM07', 'RUIZ', 'GUTIERREZ', 'IMELDA ELIZABETH', 'imelda.rg@cdguzman.tecnm.mx'),
(135, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SAEP641105IS2', 'SAEP641105MJCNST08', 'SANCHEZ', 'ESPINOZA', 'PATRICIA', 'patricia.se@cdguzman.tecnm.mx'),
(136, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SEHL5809161U0', 'SEHL580916HJCRRS06', 'SERRATOS', 'HERNANDEZ', 'JOSE LUIS', 'jose.sh@cdguzman.tecnm.mx'),
(137, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'TORF470111M34', '', 'Torres', 'Ruiz', 'Fabian', 'fatorres70@hotmail.com'),
(138, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VANG560827SQ7', 'VANG560827MJCLLD08', 'VALENCIA', 'NILA', 'MARIA GUADALUPE', 'maria.vn@cdguzman.tecnm.mx'),
(139, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VEGD5812144EA', '', 'Velasco', 'Gutierrez', 'Delia', 'velascod14@hotmail.com'),
(140, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VIRA611024H61', 'VIRA611024MJCLMN02', 'VILLANUEVA', 'ROMERO', 'ANA ROSA', 'ana.vr@cdguzman.tecnm.mx'),
(141, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BATH700814U29', 'BATH700814HJCRRM06', 'BRACAMONTES', 'DEL TORO', 'HUMBERTO', 'humberto.bd@cdguzman.tecnm.mx'),
(142, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CABR700422R46', 'CABR700422HJCHRM04', 'CHAVEZ', 'BRACAMONTES', 'RAMON', 'ramon.cb@cdguzman.tecnm.mx'),
(143, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAOG5402103X9', 'CAOG540210HJCHRS05', 'CHAVEZ', 'ORENDAIN', 'GUSTAVO', 'gustavo.co@cdguzman.tecnm.mx'),
(144, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'COSJ500328TN4', '', '', '', 'CORONA SANCHEZ JOSE DE JESUS', 'jesuscoronasanchez@gmail.com'),
(145, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GACJ651213MJ7', 'GACJ651213HJCRRS05', 'GARCIA', 'CORTES', 'JOSE DE JESUS', 'jose.gc@cdguzman.tecnm.mx'),
(146, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GAGM610425CP7', 'GAGM610425HJCRZR01', 'GARCIA', 'GUZMAN', 'MARCOS', 'marcos.gg@cdguzman.tecnm.mx'),
(147, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GAMA600613F54', 'GAMA600613HJCRNR06', 'GARCIA', 'MENDOZA', 'ARMANDO', 'armando.gm@cdguzman.tecnm.mx'),
(148, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GARJ870623HJC', 'GARJ870623HJCRDL07', 'GARCIA', 'RODRIGUEZ', 'JULIO ALBERTO', 'julio.gr@cdguzman.tecnm.mx'),
(149, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUMR6002189Z5', 'GUMR600218HJCRGG02', 'GUERRERO', 'MAGAÑA', 'ROGELIO', 'rogelio.gm@cdguzman.tecnm.mx'),
(150, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUTJ6012044H8', 'GUTJ601204HJCTRV07', 'GUTIERREZ', 'TORRES', 'JAVIER', 'javier.gt@cdguzman.tecnm.mx'),
(151, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUVR580502AB8', '', 'Gudiño', 'Venegas', 'Ramón', 'raguve58@hotmail.com'),
(152, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'HEOM7007303Z4', 'HEOM700730HJCRCR08', 'HERNANDEZ', 'OCHOA', 'JOSE MARIA', 'jose.ho@cdguzman.tecnm.mx'),
(153, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'JACJ740418AV7', 'JACJ740418HJCLVM05', 'JALOMO', 'CUEVAS', 'JAIME', 'jaime.jc@cdguzman.tecnm.mx'),
(154, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LUMF711030232', 'LUMF711030HMNXDR01', 'LUA', 'MADRIGAL', 'FERNANDO', 'fernando.lm@cdguzman.tecnm.mx'),
(155, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LUMF730724D36', 'LUMF730724HMNXDV02', 'LUA', 'MADRIGAL', 'FAVIO REY', 'favio.lm@cdguzman.tecnm.mx'),
(156, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'LUNR660106H38', 'LUNR660106HJCCXY08', 'LUCAS', 'NUÑEZ', 'JOSE REYES', 'jose.ln@cdguzman.tecnm.mx'),
(157, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAGC780613IL1', 'MAGC780613HJCCRR06', 'MACIEL', 'GARCIA', 'CARLOS ENRIQUE', 'carlos.mg@cdguzman.tecnm.mx'),
(158, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MEGJ631209233', '', 'Mejia', 'Garcia', 'Jorge Horacio', 'jhmejia7@hotmail.com'),
(159, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOOJ90111387A', 'MOOJ901113HJCRRR01', 'MORFIN', 'OROZCO', 'JORGE RUBEN', 'jorge.mo@cdguzman.tecnm.mx'),
(160, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOSJ7605015F2', 'MOSJ760501HCHLLS10', 'MOLINAR', 'SOLIS', 'JESUS EZEQUIEL', 'jesus.ms@cdguzman.tecnm.mx'),
(161, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'NASA5910197V1', 'NASA591019HDGVMR07', 'NAVARRO', 'SIMENTAL', 'AURELIO', 'aurelio.ns@cdguzman.tecnm.mx'),
(162, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'OOCF781007FP0', 'OOCF781007HJCCRR04', 'OCHOA', 'CARDENAS', 'FRANCISCO', 'francisco.oc@cdguzman.tecnm.mx'),
(163, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'OOMG580112G23', 'OOMG580112HJCCTS02', 'OCHOA', 'MATA', 'GUSTAVO', 'gustavo.om@cdguzman.tecnm.mx'),
(164, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RAGI610514DY5', 'RAGI610514HJCMRS02', 'RAMOS', 'GARCIA', 'ISIDRO', 'isidro.rg@cdguzman.tecnm.mx'),
(165, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'REGG500315G24', '', '', '', 'DE LOS REYES GALVAN GERVACIO', 'gerey15@yahoo.com.mx'),
(166, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RETR5610192K2', 'RETR561019HJCNRL06', 'RENTERIA', 'TORIZ', 'RAUL', 'raul.rt@cdguzman.tecnm.mx'),
(167, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RIAL650614UC9', 'RIAL650614HVZVRS09', 'RIVAS', 'ARREGUIN', 'LUIS', 'luis.ra@cdguzman.tecnm.mx'),
(168, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SABJ850713BW0', 'SABJ850713HPLLYL04', 'SALOME', 'BAYLON', 'JOEL', 'joel.sb@cdguzman.tecnm.mx'),
(169, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SACL790901DE1', 'SACL790901HJCLNS03', 'SALVADOR', 'CANO', 'LUIS ENRIQUE', 'luis.sc@cdguzman.tecnm.mx'),
(171, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SAPS770330QB3', 'SAPS770330HJCNRR03', 'SANDOVAL', 'PEREZ', 'SERGIO', 'sergio.sp@cdguzman.tecnm.mx'),
(172, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SOLM6201022P6', 'SOLM620102HJCSPR04', 'SOSA', 'LOPEZ', 'MARCO ANTONIO', 'marco.sl@cdguzman.tecnm.mx'),
(173, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AAMS5111265W5', 'AAMS511126HCMLCL05', 'ALCAZAR', 'MICHEL', 'SALVADOR', 'salvador.am@cdguzman.tecnm.mx'),
(174, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AIPC840704N15', 'AIPC840704MJCRDT08', 'ARIAS', 'PADILLA', 'CITLALY CRISTINA', 'citlaly.ap@cdguzman.tecnm.mx'),
(175, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AUHN850103QS0', 'AUHN850103MJCGRN09', 'AGUILAR', 'HERNANDEZ', 'NANCY MARIA', 'nancy.ah@cdguzman.tecnm.mx'),
(176, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAAC8808063DA', 'CAAC880806MJCSLR02', 'CASTAÑEDA', 'ALVAREZ', 'CARMEN', 'carmen.ca@cdguzman.tecnm.mx'),
(177, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CACE570725TA5', 'CACE570725HJCRHM04', 'CARREON', 'CHAVEZ', 'EMILIO', 'emilio.cc@cdguzman.tecnm.mx'),
(178, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAHT890326JG8', 'CAHT890326MJCSRL05', 'CASTILLO', 'HERNANDEZ', 'TALIA', 'talia.ch@cdguzman.tecnm.mx'),
(179, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CANY8405212S9', 'CANY840521MJCHVL06', 'CHAVEZ', 'NAVARRO', 'YULIANA', 'yuliana.cn@cdguzman.tecnm.mx'),
(180, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'COCA850720EG9', 'COCA850720HJCHMB06', 'CHOCOTECO', 'CAMPOS', 'JOSE ABEL', 'jose.cc1@cdguzman.tecnm.mx'),
(181, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GABA831030780', 'GABA831030MJCRCL01', 'GARCIA', 'BECERRA', 'ALEJANDRA', 'alejandra.gb@cdguzman.tecnm.mx'),
(182, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GABA8610115E9', 'GABA861011MJCRCD07', 'GARCIA', 'BECERRA', 'ADRIANA', 'adriana.gb@cdguzman.tecnm.mx'),
(183, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GAMR8804262F9', 'GAMR880426HJCRGL08', 'GARCIA', 'MAGAÑA', 'RAUL', 'raul.gm@cdguzman.tecnm.mx'),
(184, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOJN5812269U1', 'GOJN581226MZSNMR07', 'GONZALEZ', 'JIMENEZ', 'NORMA LIDIA', 'norma.gj@cdguzman.tecnm.mx'),
(185, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOVL7809262I4', 'GOVL780926HJCNZS08', 'GONZALEZ', 'VAZQUEZ', 'LUIS GABRIEL', 'luis.gv@cdguzman.tecnm.mx'),
(186, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'HERM850809SL1', 'HERM850809MHGRDR05', 'HERNANDEZ', 'RODRIGUEZ', 'MAURA ROSA MARIA', 'maura.hr@cdguzman.tecnm.mx'),
(187, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'IAGA920508437', '', 'Isabeles', 'Gonzalez', 'Ana Cristina', 'ana_isabeles@outlook.com'),
(189, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAZA5612049R9', '', '', '', 'MAGAÑA ZUÑIGA ANTONIO', 'amagana44@hotmail.com'),
(190, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MESA830211JU2', 'MESA830211MJCNNH01', 'MENDOZA', 'SANCHEZ', 'AHIDE BERENICE', 'ahide.ms@cdguzman.tecnm.mx'),
(191, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOAA530318CU5', 'MOAA530318HMNRRN06', 'MORENO', 'ARANGO', 'JOSE ANTONIO', 'jose.ma@cdguzman.tecnm.mx'),
(193, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOMM821118NI7', 'MOMM821118MJCJGR00', 'MOJARRO', 'MAGAÑA', 'MARIA', 'maria.mm@cdguzman.tecnm.mx'),
(194, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PANA761128S54', 'PANA761128HJCRRL07', 'PAREDES', 'NARANJO', 'JOSE ALFREDO', 'jose.pn@cdguzman.tecnm.mx'),
(195, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PAOG851010NDA', 'PAOG851010HJCRCN05', 'PARTIDA', 'OCHOA', 'GONZALO', 'gonzalo.po@cdguzman.tecnm.mx'),
(196, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PELR821214E36', 'PELR821214HSPRPB08', 'PEREZ', 'LOPEZ', 'RUBEN JESUS', 'ruben.pl@cdguzman.tecnm.mx'),
(197, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PIGO850519K84', 'PIGO850519HJCZZS00', 'PIZANO', 'GUZMAN', 'OSCAR ENRIQUE', 'oscar.pg@cdguzman.tecnm.mx'),
(198, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'ROPH8111231S2', 'ROPH811123HJCMNM06', 'ROMERO', 'PINTO', 'HOMERO ALEXANDRO', 'homero.rp@cdguzman.tecnm.mx'),
(199, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RUCM891103HJ7', 'RUCM891103HJCBSG08', 'RUBIO', 'CASTELLANOS', 'MIGUEL ANGEL', 'miguel.rc@cdguzman.tecnm.mx'),
(200, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RULD761112IR9', 'RULD761112HJCZPN07', 'RUIZ', 'LOPEZ', 'DANIEL', 'daniel.rl@cdguzman.tecnm.mx'),
(201, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'TOMA860528MAA', 'TOMA860528MJCSRD09', 'TOSCANO', 'MARTINEZ', 'AIDA LISETTE', 'aida.tm@cdguzman.tecnm.mx'),
(202, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'TORK980110SA2', 'TORK980110MJCRBT01', 'TORRES', 'RUBIO', 'KATIA ALFONSINA', 'katia.tr@cdguzman.tecnm.mx'),
(203, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VARC5601064D8', '', 'Valdovinos', 'Romero', 'José Carlos', 'valdovinosromero@yahoo.com.mx'),
(204, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'VIRB8506078M4', 'VIRB850607HJCLVN06', 'VILLALVAZO', 'RIVERA', 'JOSE BENJAMIN', 'jose.vr@cdguzman.tecnm.mx'),
(205, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AARJ601008RA1', 'AARJ601008HJCYDS04', 'AYALA', 'RODRIGUEZ', 'J. JESUS', 'j.ar@cdguzman.tecnm.mx'),
(206, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AERJ730609RV8', 'AERJ730609HMNRNN06', 'ARMENTA', 'RENDON', 'JUAN', 'juan.ar@cdguzman.tecnm.mx'),
(207, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AUSH711108AZ1', 'AUSH711108HJCNLG00', 'ANGUIANO', 'SALCEDO', 'HUGO ALBERTO', 'hugo.as@cdguzman.tecnm.mx'),
(209, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BERA910911IWA', 'BERA910911HJCLDR07', 'BELMARES', 'RODRIGUEZ', 'AARON', 'aaron.br@cdguzman.tecnm.mx'),
(210, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CASE860912M10', 'CASE860912HJCHRR01', 'CHAGOYA', 'SERNA', 'ERNESTO', 'ernesto.cs@cdguzman.tecnm.mx'),
(211, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CASV500903DV4', 'CASV500903HYNTRC07', 'CATZIM', 'SERRA', 'VICTOR RAFAEL', 'victor.cs@cdguzman.tecnm.mx'),
(212, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAZE750417S59', 'CAZE750417HJCRNR01', 'CARDENAS', 'ZANABRIA', 'ERNESTO', 'ernesto.cz@cdguzman.tecnm.mx'),
(213, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'DICH850117MH8', 'DICH850117HJCZVC07', 'DIAZ', 'CUEVAS', 'HECTOR MANUEL', 'hector.dc@cdguzman.tecnm.mx'),
(214, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'DIRJ630907RF9', 'DIRJ630907HJCZZL04', 'DIAZ', 'RUIZ', 'JULIO CESAR', 'julio.dr@cdguzman.tecnm.mx'),
(215, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'EIHS571008HT7', 'EIHS571008HJCLRR08', 'ELIZONDO', 'HERRERA', 'SERGIO RAMIRO', 'sergio.eh@cdguzman.tecnm.mx'),
(216, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GARJ520921GB9', 'GARJ520921HVZRMN02', 'GARCIA', 'RAMOS', 'JONAS', 'jonas.gr@cdguzman.tecnm.mx'),
(217, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MEGE930714RM1', 'MEGE930714HJCDZD03', 'MEDINA', 'GUZMAN', 'EDGAR DANIEL', 'edgar.mg@cdguzman.tecnm.mx'),
(218, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOLM46052435A', '', '', '', 'MORAN LEONARDO MARGARITA', 'morleo_mago@hotmail.com'),
(219, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MUPD700806P78', 'MUPD700806HJCRRN04', 'MURGUIA', 'PEREZ', 'DANIEL', 'daniel.mp@cdguzman.tecnm.mx'),
(220, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PEDF541225C90', 'PEDF541225HJCRLL02', 'PRECIADO', 'DELGADO', 'FELIPE DE JESUS', 'felipe.pd@cdguzman.tecnm.mx'),
(221, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AAAJ790722747', 'AAAJ790722HDGLCM03', 'ALMAGUER', 'ACOSTA', 'JOSE JAIME', 'jose.aa@cdguzman.tecnm.mx'),
(222, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AAHJ6505104W2', 'AAHJ650510HDFRPR04', 'ARAGON', 'HOPE', 'JORGE ALFONSO', 'jorge.ah@cdguzman.tecnm.mx'),
(223, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AALK730829Q70', 'AALK730829MVZLZR09', 'ALANIS', 'LEZAMA', 'KARINA', 'karina.al@cdguzman.tecnm.mx'),
(224, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AASL4911068Y5', 'AASL491106HJCLLN02', 'ALCARAZ', 'SILVA', 'LEONARDO', 'leonardo.as@cdguzman.tecnm.mx'),
(225, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'AECM691023TB7', 'AECM691023HJCMSR09', 'AMEZCUA', 'CASTREJON', 'JOSE MARIA', 'jose.ac@cdguzman.tecnm.mx'),
(226, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'BALR7609258D4', 'BALR760925MJCRPT01', 'BARRAGAN', 'LOPEZ', 'RUTH CLEMENTINA', 'ruth.bl@cdguzman.tecnm.mx'),
(227, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAAA770509TGA', 'CAAA770509MJCBGR05', 'CABRERA', 'AGUILAR', 'AURORA CARMINA', 'aurora.ca@cdguzman.tecnm.mx'),
(228, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CACE690803NI8', 'CACE690803MJCRHL04', 'CARDENAS', 'CHAVEZ', 'ELVA ADRIANA', 'elva.cc@cdguzman.tecnm.mx'),
(229, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAHE580507V46', 'CAHE580507HJCSRS05', 'CASTILLO', 'HORTA', 'ESTANISLAO', 'estanislao.ch@cdguzman.tecnm.m'),
(230, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'CAVH7703115S6', 'CAVH770311HJCMZC05', 'CAMPOS', 'VAZQUEZ', 'HECTOR MANUEL', 'hector.cv@cdguzman.tecnm.mx'),
(231, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'EIOR510902C15', 'EIOR510902HJCSCD09', 'ESPINOZA', 'OCHOA', 'RODOLFO', 'rodolfo.eo@cdguzman.tecnm.mx'),
(232, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FADD791014J14', 'FADD791014HJCJLN05', 'FAJARDO', 'DELGADO', 'DANIEL', 'daniel.fd@cdguzman.tecnm.mx'),
(233, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'FOSR620304M52', 'FOSR620304MJCLHT08', 'FLORES', 'SAHAGUN', 'RITA GRISELA', 'rita.fs@cdguzman.tecnm.mx'),
(234, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GAPR680316DSA', 'GAPR680316HJCRSL01', 'GARCIA', 'PASCUAL', 'RAUL', 'raul.gp@cdguzman.tecnm.mx'),
(235, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GOSF640623LR3', 'GOSF640623HJCNLR05', 'GONZALEZ', 'SOLARES', 'FRANCISCO MANUEL', 'francisco.gs@cdguzman.tecnm.mx'),
(236, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'GUVR551111BJ7', 'GUVR551111HJCDNB05', 'Gudiño', 'Venegas', 'José Roberto', 'jrgudino@hotmail.com'),
(237, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAIJ750306BM7', 'MAIJ750306HJCRSN05', 'MARTINEZ', 'ISABELES', 'JUAN BERNALDINO', 'juan.mi@cdguzman.tecnm.mx'),
(238, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MALV720728RV8', 'MALV720728MJCGRR08', 'MAGAÑA', 'LARES', 'VERONICA', 'veronica.ml@cdguzman.tecnm.mx'),
(239, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MAPC731220NH3', 'MAPC731220MDFRNY03', 'MARTINEZ', 'PINTO', 'CYNTHIA ALEJANDRA', 'cynthia.mp@cdguzman.tecnm.mx'),
(240, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MEAM850504BF7', 'MEAM850504HJCZGR09', 'MEZA', 'AGUILAR', 'MARCO ANTONIO', 'marco.ma@cdguzman.tecnm.mx'),
(241, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MINR651005433', 'MINR651005MBCCVS04', 'MICHEL', 'NAVA', 'ROSA MARIA', 'rosa.mn@cdguzman.tecnm.mx'),
(242, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MOAR670928FX3', 'MOAR670928MJCNLS06', 'MONTES', 'ALVAREZ', 'MA ROSARIO', 'ma.ma@cdguzman.tecnm.mx'),
(243, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'MUCR680529D14', 'MUCR680529HJCXLC00', 'MUÑOZ', 'COLLASO', 'RICARDO', 'ricardo.mc@cdguzman.tecnm.mx'),
(244, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'OOGF720206176', 'OOGF720206HYNRRL18', 'ORDOÑEZ', 'GARCIA', 'FELIPE ALFONSO', 'felipe.og@cdguzman.tecnm.mx'),
(245, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'OOOR660727D74', 'OOOR660727MJCCRQ09', 'OCHOA', 'ORNELAS', 'RAQUEL', 'raquel.oo@cdguzman.tecnm.mx'),
(246, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'OOVJ741030CN9', 'OOVJ741030HJCCZL08', 'OCHOA', 'VAZQUEZ', 'JOEL', 'joel.ov@cdguzman.tecnm.mx'),
(247, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PEAA770503MW3', 'PEAA770503MVZRPR09', 'PEREZ', 'APARICIO', 'ARELI', 'areli.pa@cdguzman.tecnm.mx'),
(248, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'PUNE681007G13', 'PUNE681007MJCGTG05', 'PUGA', 'NATHAL', 'MARIA EUGENIA', 'maria.pn@cdguzman.tecnm.mx'),
(249, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'RISA521010K87', 'RISA521010HDFVNL06', 'RIVERA', 'SANCHEZ', 'ALEJANDRO ARTURO', 'alejandro.rs@cdguzman.tecnm.mx'),
(250, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SACG780913577', 'SACG780913MJCNRD01', 'SANCHEZ', 'CERVANTES', 'MARIA GUADALUPE', 'maria.sc1@cdguzman.tecnm.mx'),
(251, 'Instituto Tecnológico de Ciudad Guzmán', 1, 'SAVF800806PJ6', 'SAVF800806HJCLRR05', 'SALVADOR', 'VARGAS', 'FRANCISCO', ''),
(252, 'Instituto Tecnológico de Ciudad Guzmán', 3, 'TOSJ7002139K6', 'TOSJ700213HJCPLN05', 'TOPETE', 'SILVA', 'JUAN MANUEL', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamento` (`departamento`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idAspectos`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddepartamento` (`departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `maestro`
--
ALTER TABLE `maestro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD CONSTRAINT `maestro_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
