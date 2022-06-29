-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 02:24:39
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dba`
--
CREATE DATABASE IF NOT EXISTS `dba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dba`;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_compra`
--

CREATE TABLE `app_compra` (
  `id` bigint(20) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `total` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `estado_id` bigint(20) NOT NULL,
  `descuento` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_compra`
--

INSERT INTO `app_compra` (`id`, `idusuario`, `created_at`, `total`, `updated_at`, `estado_id`, `descuento`) VALUES
(193, 1, '2022-06-26', 32000, '2022-06-26', 7, 0),
(194, 1, '2022-06-26', 21850, '2022-06-26', 8, 1),
(195, 1, '2022-06-26', 20900, '2022-06-26', 5, 1),
(196, 2, '2022-06-26', 24000, '2022-06-26', 5, 0),
(197, 2, '2022-06-26', 10000, '2022-06-26', 5, 0),
(198, 2, '2022-06-26', 14000, '2022-06-26', 5, 0),
(199, 0, '2022-06-26', 0, '2022-06-26', 7, 0),
(200, 1, '2022-06-27', 35150, '2022-06-27', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_estadocompra`
--

CREATE TABLE `app_estadocompra` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_estadocompra`
--

INSERT INTO `app_estadocompra` (`id`, `descripcion`) VALUES
(5, 'Validacion'),
(7, 'Preparacion'),
(8, 'Reparto'),
(9, 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_estadosubscripcion`
--

CREATE TABLE `app_estadosubscripcion` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_estadosubscripcion`
--

INSERT INTO `app_estadosubscripcion` (`id`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_itemcompra`
--

CREATE TABLE `app_itemcompra` (
  `id` bigint(20) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcompra` int(11) NOT NULL,
  `nombreProducto` varchar(200) NOT NULL,
  `precioProducto` int(11) NOT NULL,
  `imagenProducto` varchar(100) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_itemcompra`
--

INSERT INTO `app_itemcompra` (`id`, `idusuario`, `idcompra`, `nombreProducto`, `precioProducto`, `imagenProducto`, `cantidad`) VALUES
(1, 1, 188, 'Lavanda', 5000, 'productos/lavanda_EjszTUx.jpg', 1),
(2, 1, 188, 'Macetero Verde', 6000, 'productos/masetero_verde.jpg', 3),
(3, 1, 188, 'Pala de Jardin', 6000, 'productos/palajardin.jpg', 1),
(4, 1, 188, 'tierra de hojas marcel 10KG', 48000, 'productos/tierradehojas_LGaioNO.jpg', 4),
(5, 1, 189, 'Lavanda', 5000, 'productos/lavanda_EjszTUx.jpg', 1),
(6, 1, 189, 'Macetero Verde', 6000, 'productos/masetero_verde.jpg', 3),
(7, 1, 189, 'Pala de Jardin', 6000, 'productos/palajardin.jpg', 1),
(8, 1, 189, 'tierra de hojas marcel 10KG', 48000, 'productos/tierradehojas_LGaioNO.jpg', 4),
(9, 1, 190, 'Lavanda', 5000, 'productos/lavanda_EjszTUx.jpg', 1),
(10, 1, 190, 'Macetero Verde', 2000, 'productos/masetero_verde.jpg', 1),
(11, 1, 190, 'tierra de hojas marcel 10KG', 12000, 'productos/tierradehojas_LGaioNO.jpg', 1),
(12, 1, 192, 'Lavanda', 5000, 'productos/lavanda_EjszTUx.jpg', 1),
(13, 1, 192, 'tierra de hojas marcel 10KG', 12000, 'productos/tierradehojas_LGaioNO.jpg', 1),
(14, 1, 193, 'Macetero Verde', 2000, 'productos/masetero_verde.jpg', 1),
(15, 1, 193, 'Pala de Jardin', 6000, 'productos/palajardin.jpg', 1),
(16, 1, 193, 'tierra de hojas marcel 10KG', 24000, 'productos/tierradehojas_LGaioNO.jpg', 2),
(17, 1, 194, 'Lavanda', 5000, 'productos/lavanda_EjszTUx.jpg', 1),
(18, 1, 194, 'Pala de Jardin', 6000, 'productos/palajardin.jpg', 1),
(19, 1, 194, 'tierra de hojas marcel 10KG', 12000, 'productos/tierradehojas_LGaioNO.jpg', 1),
(20, 1, 195, 'Macetero Verde', 4000, 'productos/masetero_verde.jpg', 2),
(21, 1, 195, 'Pala de Jardin', 18000, 'productos/palajardin.jpg', 3),
(22, 2, 196, 'Macetero Verde', 6000, 'productos/masetero_verde.jpg', 3),
(23, 2, 196, 'Pala de Jardin', 6000, 'productos/palajardin.jpg', 1),
(24, 2, 196, 'tierra de hojas marcel 10KG', 12000, 'productos/tierradehojas_LGaioNO.jpg', 1),
(25, 2, 197, 'Lavanda', 10000, 'productos/lavanda_EjszTUx.jpg', 2),
(26, 2, 198, 'Macetero Verde', 2000, 'productos/masetero_verde.jpg', 1),
(27, 2, 198, 'Pala de Jardin', 12000, 'productos/palajardin.jpg', 2),
(28, 1, 200, 'Tierra de Hoja Harmoni 35Kg', 25000, 'productos/tierra2.jpg', 1),
(29, 1, 200, 'tierra de hojas marcel 10KG', 12000, 'productos/tierradehojas_LGaioNO.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_producto`
--

CREATE TABLE `app_producto` (
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ;

--
-- Volcado de datos para la tabla `app_producto`
--

INSERT INTO `app_producto` (`codigo`, `nombre`, `precio`, `stock`, `descripcion`, `imagen`, `created_at`, `updated_at`, `tipo_id`) VALUES
('HER001', 'Pala de Jardin', 6000, 42, 'Pala especial para jardinería', 'productos/palajardin.jpg', '2022-06-23', '2022-06-23', 2),
('MAS001', 'Macetero Verde', 2000, 96, 'Macetero verde de un litro', 'productos/masetero_verde.jpg', '2022-06-23', '2022-06-23', 3),
('PLA001', 'Lavanda', 5000, 46, 'Planta de decoración', 'productos/lavanda_EjszTUx.jpg', '2022-06-23', '2022-06-23', 4),
('sku00231', 'tierra de hojas marcel 10KG', 12000, 49, 'La pulenta tierra si', 'productos/tierradehojas_LGaioNO.jpg', '2022-06-22', '2022-06-26', 1),
('TDH002', 'Tierra de Hoja Harmoni 35Kg', 25000, 29, 'Tierra espacial', 'productos/tierra2.jpg', '2022-06-26', '2022-06-26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_subscripcion`
--

CREATE TABLE `app_subscripcion` (
  `id` bigint(20) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `monto` int(10) UNSIGNED NOT NULL CHECK (`monto` >= 0),
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `estado_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_subscripcion`
--

INSERT INTO `app_subscripcion` (`id`, `idusuario`, `monto`, `created_at`, `updated_at`, `estado_id`) VALUES
(25, 1, 1000, '2022-06-26', '2022-06-26', 'Inactivo'),
(26, 1, 20000, '2022-06-26', '2022-06-26', 'Inactivo'),
(27, 2, 20000, '2022-06-26', '2022-06-26', 'Activo'),
(28, 1, 20000, '2022-06-27', '2022-06-27', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_tipoproducto`
--

CREATE TABLE `app_tipoproducto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_tipoproducto`
--

INSERT INTO `app_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'Tierra de hoja'),
(2, 'Herramientas'),
(3, 'Maceteros'),
(4, 'Plantas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_tipousuario`
--

CREATE TABLE `app_tipousuario` (
  `id` bigint(20) NOT NULL,
  `nombreTipoUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_usuario`
--

CREATE TABLE `app_usuario` (
  `rut` varchar(50) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `contrasenaUsuario` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'admin'),
(1, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 45),
(3, 1, 46),
(4, 1, 47),
(5, 1, 48),
(6, 1, 49),
(7, 1, 53),
(8, 1, 56),
(9, 1, 60),
(10, 1, 61),
(11, 1, 62),
(12, 1, 63),
(1, 1, 64),
(13, 2, 1),
(14, 2, 2),
(15, 2, 3),
(16, 2, 4),
(17, 2, 5),
(18, 2, 6),
(19, 2, 7),
(20, 2, 8),
(21, 2, 9),
(22, 2, 10),
(23, 2, 11),
(24, 2, 12),
(25, 2, 13),
(26, 2, 14),
(27, 2, 15),
(28, 2, 16),
(29, 2, 17),
(30, 2, 18),
(31, 2, 19),
(32, 2, 20),
(33, 2, 21),
(34, 2, 22),
(35, 2, 23),
(36, 2, 24),
(37, 2, 25),
(38, 2, 26),
(39, 2, 27),
(40, 2, 28),
(41, 2, 29),
(42, 2, 30),
(43, 2, 31),
(44, 2, 32),
(45, 2, 33),
(46, 2, 34),
(47, 2, 35),
(48, 2, 36),
(49, 2, 37),
(50, 2, 38),
(51, 2, 39),
(52, 2, 40),
(53, 2, 41),
(54, 2, 42),
(55, 2, 43),
(56, 2, 44),
(57, 2, 45),
(58, 2, 46),
(59, 2, 47),
(60, 2, 48),
(61, 2, 49),
(62, 2, 50),
(63, 2, 51),
(64, 2, 52),
(65, 2, 53),
(66, 2, 54),
(67, 2, 55),
(68, 2, 56),
(69, 2, 57),
(70, 2, 58),
(71, 2, 59),
(72, 2, 60),
(73, 2, 61),
(74, 2, 62),
(75, 2, 63),
(76, 2, 64),
(77, 2, 65),
(78, 2, 66),
(79, 2, 67),
(80, 2, 68);

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
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add tipo usuario', 10, 'add_tipousuario'),
(38, 'Can change tipo usuario', 10, 'change_tipousuario'),
(39, 'Can delete tipo usuario', 10, 'delete_tipousuario'),
(40, 'Can view tipo usuario', 10, 'view_tipousuario'),
(41, 'Can add usuario', 11, 'add_usuario'),
(42, 'Can change usuario', 11, 'change_usuario'),
(43, 'Can delete usuario', 11, 'delete_usuario'),
(44, 'Can view usuario', 11, 'view_usuario'),
(45, 'Can add items carrito', 12, 'add_itemscarrito'),
(46, 'Can change items carrito', 12, 'change_itemscarrito'),
(47, 'Can delete items carrito', 12, 'delete_itemscarrito'),
(48, 'Can view items carrito', 12, 'view_itemscarrito'),
(49, 'Can add item compra', 13, 'add_itemcompra'),
(50, 'Can change item compra', 13, 'change_itemcompra'),
(51, 'Can delete item compra', 13, 'delete_itemcompra'),
(52, 'Can view item compra', 13, 'view_itemcompra'),
(53, 'Can add compra', 14, 'add_compra'),
(54, 'Can change compra', 14, 'change_compra'),
(55, 'Can delete compra', 14, 'delete_compra'),
(56, 'Can view compra', 14, 'view_compra'),
(57, 'Can add estado compra', 15, 'add_estadocompra'),
(58, 'Can change estado compra', 15, 'change_estadocompra'),
(59, 'Can delete estado compra', 15, 'delete_estadocompra'),
(60, 'Can view estado compra', 15, 'view_estadocompra'),
(61, 'Can add subscripcion', 16, 'add_subscripcion'),
(62, 'Can change subscripcion', 16, 'change_subscripcion'),
(63, 'Can delete subscripcion', 16, 'delete_subscripcion'),
(64, 'Can view subscripcion', 16, 'view_subscripcion'),
(65, 'Can add estado subscripcion', 17, 'add_estadosubscripcion'),
(66, 'Can change estado subscripcion', 17, 'change_estadosubscripcion'),
(67, 'Can delete estado subscripcion', 17, 'delete_estadosubscripcion'),
(68, 'Can view estado subscripcion', 17, 'view_estadosubscripcion');

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
(1, 'pbkdf2_sha256$320000$l8YhPG0olNwzxRaaatNRZB$yxJBEuJvuXtkcSbKfGc4v+DpPSyMFz6SqRXkl6Exqcs=', '2022-06-28 00:21:08.050727', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2022-06-22 22:22:34.000000'),
(2, 'pbkdf2_sha256$320000$Ln173CIgeK2Rk8C1yIClUV$MLf2qDHCg9+4vPj8f3Im5LhnCAPzGqI6MwsLupjrRw8=', '2022-06-28 00:22:23.340572', 0, 'loco', 'loco', 're', 're@loco.com', 0, 1, '2022-06-22 22:26:41.000000'),
(3, 'pbkdf2_sha256$320000$6k8uQJfMnS3UW590ySQwvd$AefwVSE2kZUeVz4FrLcJvDetqkYKL72S0dye8UizXzM=', NULL, 0, 'pepetapia', 'pepe', 'tapia', 'pepe@tapia.com', 0, 1, '2022-06-27 01:50:24.077661'),
(4, 'pbkdf2_sha256$320000$nlWGYBlCNCJpUFExfHJrYy$UbNCGyx+MY08Glvw9QurqOeuC2LPUXrRwJphjC7Wtjk=', '2022-06-27 01:52:40.964459', 0, 'tapiapepe', 'a', 's', 'd@3.com', 0, 1, '2022-06-27 01:52:31.795932');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 2),
(1, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_itemscarrito`
--

CREATE TABLE `db_itemscarrito` (
  `id` bigint(20) NOT NULL,
  `usuariocarro` int(11) NOT NULL,
  `nombreProducto` varchar(200) NOT NULL,
  `precioProducto` int(11) NOT NULL,
  `imagenProducto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, '2022-06-22 22:24:34.681579', '1', 'Tierra de hoja', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-06-23 18:45:26.544551', '2', 'Herramientas', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-06-23 18:45:40.255978', '3', 'Maceteros', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-06-23 18:45:57.095407', '4', 'Plantas', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-06-24 20:32:29.591337', '1', 'Validacion', 1, '[{\"added\": {}}]', 15, 1),
(6, '2022-06-24 20:32:54.750258', '2', 'Preparacion', 1, '[{\"added\": {}}]', 15, 1),
(7, '2022-06-24 20:33:10.166589', '3', 'Reparto', 1, '[{\"added\": {}}]', 15, 1),
(8, '2022-06-24 20:33:23.838392', '4', 'Entregado', 1, '[{\"added\": {}}]', 15, 1),
(9, '2022-06-24 21:16:09.944249', '3', 'Compra object (3)', 3, '', 14, 1),
(10, '2022-06-24 21:16:09.947210', '2', 'Compra object (2)', 3, '', 14, 1),
(11, '2022-06-24 21:16:09.948707', '1', 'Compra object (1)', 3, '', 14, 1),
(12, '2022-06-24 21:17:57.848212', '5', 'Compra object (5)', 3, '', 14, 1),
(13, '2022-06-24 21:17:57.850502', '4', 'Compra object (4)', 3, '', 14, 1),
(14, '2022-06-24 21:22:04.599983', '7', 'Compra object (7)', 3, '', 14, 1),
(15, '2022-06-24 21:22:04.603261', '6', 'Compra object (6)', 3, '', 14, 1),
(16, '2022-06-24 21:31:20.401780', '12', 'Compra object (12)', 3, '', 14, 1),
(17, '2022-06-24 21:31:20.404323', '11', 'Compra object (11)', 3, '', 14, 1),
(18, '2022-06-24 21:31:20.406024', '10', 'Compra object (10)', 3, '', 14, 1),
(19, '2022-06-24 21:31:20.408839', '9', 'Compra object (9)', 3, '', 14, 1),
(20, '2022-06-24 21:31:20.409839', '8', 'Compra object (8)', 3, '', 14, 1),
(21, '2022-06-24 21:32:53.745315', '18', 'Compra object (18)', 3, '', 14, 1),
(22, '2022-06-24 21:32:53.747062', '17', 'Compra object (17)', 3, '', 14, 1),
(23, '2022-06-24 21:32:53.749672', '16', 'Compra object (16)', 3, '', 14, 1),
(24, '2022-06-24 21:32:53.750795', '15', 'Compra object (15)', 3, '', 14, 1),
(25, '2022-06-24 21:32:53.751798', '14', 'Compra object (14)', 3, '', 14, 1),
(26, '2022-06-24 21:32:53.752797', '13', 'Compra object (13)', 3, '', 14, 1),
(27, '2022-06-24 21:35:59.058632', '21', 'Compra object (21)', 3, '', 14, 1),
(28, '2022-06-24 21:35:59.062315', '20', 'Compra object (20)', 3, '', 14, 1),
(29, '2022-06-24 21:35:59.064308', '19', 'Compra object (19)', 3, '', 14, 1),
(30, '2022-06-24 21:37:21.896194', '22', 'Compra object (22)', 3, '', 14, 1),
(31, '2022-06-24 21:51:22.840140', '29', 'Compra object (29)', 3, '', 14, 1),
(32, '2022-06-24 21:51:22.842135', '28', 'Compra object (28)', 3, '', 14, 1),
(33, '2022-06-24 21:51:22.845131', '27', 'Compra object (27)', 3, '', 14, 1),
(34, '2022-06-24 21:51:22.846124', '26', 'Compra object (26)', 3, '', 14, 1),
(35, '2022-06-24 21:51:22.847122', '25', 'Compra object (25)', 3, '', 14, 1),
(36, '2022-06-24 21:51:22.849122', '24', 'Compra object (24)', 3, '', 14, 1),
(37, '2022-06-24 21:51:22.850311', '23', 'Compra object (23)', 3, '', 14, 1),
(38, '2022-06-24 21:51:57.640730', '33', 'Compra object (33)', 3, '', 14, 1),
(39, '2022-06-24 21:51:57.642735', '32', 'Compra object (32)', 3, '', 14, 1),
(40, '2022-06-24 21:51:57.644229', '31', 'Compra object (31)', 3, '', 14, 1),
(41, '2022-06-24 21:51:57.645746', '30', 'Compra object (30)', 3, '', 14, 1),
(42, '2022-06-24 21:52:40.760751', '38', 'Compra object (38)', 3, '', 14, 1),
(43, '2022-06-24 21:52:40.763061', '37', 'Compra object (37)', 3, '', 14, 1),
(44, '2022-06-24 21:52:40.764592', '36', 'Compra object (36)', 3, '', 14, 1),
(45, '2022-06-24 21:52:40.767378', '35', 'Compra object (35)', 3, '', 14, 1),
(46, '2022-06-24 21:52:40.768165', '34', 'Compra object (34)', 3, '', 14, 1),
(47, '2022-06-24 21:53:47.217393', '41', 'Compra object (41)', 3, '', 14, 1),
(48, '2022-06-24 21:53:47.221048', '40', 'Compra object (40)', 3, '', 14, 1),
(49, '2022-06-24 21:53:47.222265', '39', 'Compra object (39)', 3, '', 14, 1),
(50, '2022-06-24 21:53:59.520175', '42', 'Compra object (42)', 3, '', 14, 1),
(51, '2022-06-24 21:54:12.473809', '49', 'Compra object (49)', 3, '', 14, 1),
(52, '2022-06-24 21:54:12.476231', '48', 'Compra object (48)', 3, '', 14, 1),
(53, '2022-06-24 21:54:12.477781', '47', 'Compra object (47)', 3, '', 14, 1),
(54, '2022-06-24 21:54:12.479151', '46', 'Compra object (46)', 3, '', 14, 1),
(55, '2022-06-24 21:54:12.480125', '45', 'Compra object (45)', 3, '', 14, 1),
(56, '2022-06-24 21:54:12.481125', '44', 'Compra object (44)', 3, '', 14, 1),
(57, '2022-06-24 21:54:12.483119', '43', 'Compra object (43)', 3, '', 14, 1),
(58, '2022-06-24 21:56:49.234294', '56', 'Compra object (56)', 3, '', 14, 1),
(59, '2022-06-24 21:56:49.236763', '55', 'Compra object (55)', 3, '', 14, 1),
(60, '2022-06-24 21:56:49.237890', '54', 'Compra object (54)', 3, '', 14, 1),
(61, '2022-06-24 21:56:49.238889', '53', 'Compra object (53)', 3, '', 14, 1),
(62, '2022-06-24 21:56:49.240885', '52', 'Compra object (52)', 3, '', 14, 1),
(63, '2022-06-24 21:56:49.241882', '51', 'Compra object (51)', 3, '', 14, 1),
(64, '2022-06-24 21:56:49.243513', '50', 'Compra object (50)', 3, '', 14, 1),
(65, '2022-06-24 21:57:11.520363', '58', 'Compra object (58)', 3, '', 14, 1),
(66, '2022-06-24 21:57:11.523037', '57', 'Compra object (57)', 3, '', 14, 1),
(67, '2022-06-24 21:57:45.537593', '61', 'Compra object (61)', 3, '', 14, 1),
(68, '2022-06-24 21:57:45.540855', '60', 'Compra object (60)', 3, '', 14, 1),
(69, '2022-06-24 21:57:45.542890', '59', 'Compra object (59)', 3, '', 14, 1),
(70, '2022-06-24 21:57:58.551851', '62', 'Compra object (62)', 3, '', 14, 1),
(71, '2022-06-24 21:59:18.033092', '63', 'Compra object (63)', 3, '', 14, 1),
(72, '2022-06-24 22:00:13.776759', '66', 'Compra object (66)', 3, '', 14, 1),
(73, '2022-06-24 22:00:13.779042', '65', 'Compra object (65)', 3, '', 14, 1),
(74, '2022-06-24 22:00:13.780766', '64', 'Compra object (64)', 3, '', 14, 1),
(75, '2022-06-24 22:01:13.440786', '72', 'Compra object (72)', 3, '', 14, 1),
(76, '2022-06-24 22:01:13.442726', '71', 'Compra object (71)', 3, '', 14, 1),
(77, '2022-06-24 22:01:13.445713', '70', 'Compra object (70)', 3, '', 14, 1),
(78, '2022-06-24 22:01:13.447359', '69', 'Compra object (69)', 3, '', 14, 1),
(79, '2022-06-24 22:01:13.448358', '68', 'Compra object (68)', 3, '', 14, 1),
(80, '2022-06-24 22:01:13.450423', '67', 'Compra object (67)', 3, '', 14, 1),
(81, '2022-06-24 22:09:20.161713', '80', 'Compra object (80)', 3, '', 14, 1),
(82, '2022-06-24 22:09:20.163468', '79', 'Compra object (79)', 3, '', 14, 1),
(83, '2022-06-24 22:09:20.164914', '78', 'Compra object (78)', 3, '', 14, 1),
(84, '2022-06-24 22:09:20.165475', '77', 'Compra object (77)', 3, '', 14, 1),
(85, '2022-06-24 22:09:20.167607', '76', 'Compra object (76)', 3, '', 14, 1),
(86, '2022-06-24 22:09:20.168469', '75', 'Compra object (75)', 3, '', 14, 1),
(87, '2022-06-24 22:09:20.169465', '74', 'Compra object (74)', 3, '', 14, 1),
(88, '2022-06-24 22:09:20.170935', '73', 'Compra object (73)', 3, '', 14, 1),
(89, '2022-06-24 22:11:53.824628', '84', 'Compra object (84)', 3, '', 14, 1),
(90, '2022-06-24 22:11:53.828681', '83', 'Compra object (83)', 3, '', 14, 1),
(91, '2022-06-24 22:11:53.829897', '82', 'Compra object (82)', 3, '', 14, 1),
(92, '2022-06-24 22:11:53.831421', '81', 'Compra object (81)', 3, '', 14, 1),
(93, '2022-06-24 22:12:31.139120', '102', 'Compra object (102)', 3, '', 14, 1),
(94, '2022-06-24 22:12:31.140659', '101', 'Compra object (101)', 3, '', 14, 1),
(95, '2022-06-24 22:12:31.142052', '100', 'Compra object (100)', 3, '', 14, 1),
(96, '2022-06-24 22:12:31.143297', '99', 'Compra object (99)', 3, '', 14, 1),
(97, '2022-06-24 22:12:31.144305', '98', 'Compra object (98)', 3, '', 14, 1),
(98, '2022-06-24 22:12:31.145300', '97', 'Compra object (97)', 3, '', 14, 1),
(99, '2022-06-24 22:12:31.146913', '96', 'Compra object (96)', 3, '', 14, 1),
(100, '2022-06-24 22:12:31.147470', '95', 'Compra object (95)', 3, '', 14, 1),
(101, '2022-06-24 22:12:31.149499', '94', 'Compra object (94)', 3, '', 14, 1),
(102, '2022-06-24 22:12:31.150651', '93', 'Compra object (93)', 3, '', 14, 1),
(103, '2022-06-24 22:12:31.151302', '92', 'Compra object (92)', 3, '', 14, 1),
(104, '2022-06-24 22:12:31.152946', '91', 'Compra object (91)', 3, '', 14, 1),
(105, '2022-06-24 22:12:31.154260', '90', 'Compra object (90)', 3, '', 14, 1),
(106, '2022-06-24 22:12:31.155265', '89', 'Compra object (89)', 3, '', 14, 1),
(107, '2022-06-24 22:12:31.156564', '88', 'Compra object (88)', 3, '', 14, 1),
(108, '2022-06-24 22:12:31.157638', '87', 'Compra object (87)', 3, '', 14, 1),
(109, '2022-06-24 22:12:31.158884', '86', 'Compra object (86)', 3, '', 14, 1),
(110, '2022-06-24 22:12:31.159314', '85', 'Compra object (85)', 3, '', 14, 1),
(111, '2022-06-24 22:13:26.985061', '105', 'Compra object (105)', 3, '', 14, 1),
(112, '2022-06-24 22:13:26.987569', '104', 'Compra object (104)', 3, '', 14, 1),
(113, '2022-06-24 22:13:26.988689', '103', 'Compra object (103)', 3, '', 14, 1),
(114, '2022-06-24 22:16:12.280548', '110', 'Compra object (110)', 3, '', 14, 1),
(115, '2022-06-24 22:16:12.282543', '109', 'Compra object (109)', 3, '', 14, 1),
(116, '2022-06-24 22:16:12.283541', '108', 'Compra object (108)', 3, '', 14, 1),
(117, '2022-06-24 22:16:12.285536', '107', 'Compra object (107)', 3, '', 14, 1),
(118, '2022-06-24 22:16:12.286532', '106', 'Compra object (106)', 3, '', 14, 1),
(119, '2022-06-24 22:20:30.881628', '117', 'Compra object (117)', 3, '', 14, 1),
(120, '2022-06-24 22:20:30.884863', '116', 'Compra object (116)', 3, '', 14, 1),
(121, '2022-06-24 22:20:30.886241', '115', 'Compra object (115)', 3, '', 14, 1),
(122, '2022-06-24 22:20:30.886799', '114', 'Compra object (114)', 3, '', 14, 1),
(123, '2022-06-24 22:20:30.888862', '113', 'Compra object (113)', 3, '', 14, 1),
(124, '2022-06-24 22:20:30.890190', '112', 'Compra object (112)', 3, '', 14, 1),
(125, '2022-06-24 22:20:30.891196', '111', 'Compra object (111)', 3, '', 14, 1),
(126, '2022-06-24 22:22:58.193101', '121', 'Compra object (121)', 3, '', 14, 1),
(127, '2022-06-24 22:22:58.195735', '120', 'Compra object (120)', 3, '', 14, 1),
(128, '2022-06-24 22:22:58.197363', '119', 'Compra object (119)', 3, '', 14, 1),
(129, '2022-06-24 22:22:58.198897', '118', 'Compra object (118)', 3, '', 14, 1),
(130, '2022-06-24 22:23:35.033364', '127', 'Compra object (127)', 3, '', 14, 1),
(131, '2022-06-24 22:23:35.035359', '126', 'Compra object (126)', 3, '', 14, 1),
(132, '2022-06-24 22:23:35.036352', '125', 'Compra object (125)', 3, '', 14, 1),
(133, '2022-06-24 22:23:35.038350', '124', 'Compra object (124)', 3, '', 14, 1),
(134, '2022-06-24 22:23:35.039348', '123', 'Compra object (123)', 3, '', 14, 1),
(135, '2022-06-24 22:23:35.040340', '122', 'Compra object (122)', 3, '', 14, 1),
(136, '2022-06-24 22:24:18.585679', '130', 'Compra object (130)', 3, '', 14, 1),
(137, '2022-06-24 22:24:18.588262', '129', 'Compra object (129)', 3, '', 14, 1),
(138, '2022-06-24 22:24:18.589794', '128', 'Compra object (128)', 3, '', 14, 1),
(139, '2022-06-24 22:25:07.185753', '136', 'Compra object (136)', 3, '', 14, 1),
(140, '2022-06-24 22:25:07.188400', '135', 'Compra object (135)', 3, '', 14, 1),
(141, '2022-06-24 22:25:07.191366', '134', 'Compra object (134)', 3, '', 14, 1),
(142, '2022-06-24 22:25:07.192368', '133', 'Compra object (133)', 3, '', 14, 1),
(143, '2022-06-24 22:25:07.194422', '132', 'Compra object (132)', 3, '', 14, 1),
(144, '2022-06-24 22:25:07.195927', '131', 'Compra object (131)', 3, '', 14, 1),
(145, '2022-06-24 22:28:52.816324', '140', 'Compra object (140)', 3, '', 14, 1),
(146, '2022-06-24 22:28:52.821345', '139', 'Compra object (139)', 3, '', 14, 1),
(147, '2022-06-24 22:28:52.823305', '138', 'Compra object (138)', 3, '', 14, 1),
(148, '2022-06-24 22:28:52.824302', '137', 'Compra object (137)', 3, '', 14, 1),
(149, '2022-06-24 22:29:13.824804', '142', 'Compra object (142)', 3, '', 14, 1),
(150, '2022-06-24 22:29:13.826156', '141', 'Compra object (141)', 3, '', 14, 1),
(151, '2022-06-24 22:30:18.681449', '147', 'Compra object (147)', 3, '', 14, 1),
(152, '2022-06-24 22:30:18.683710', '146', 'Compra object (146)', 3, '', 14, 1),
(153, '2022-06-24 22:30:18.684863', '145', 'Compra object (145)', 3, '', 14, 1),
(154, '2022-06-24 22:30:18.685875', '144', 'Compra object (144)', 3, '', 14, 1),
(155, '2022-06-24 22:30:18.686875', '143', 'Compra object (143)', 3, '', 14, 1),
(156, '2022-06-24 22:31:27.856841', '154', 'Compra object (154)', 3, '', 14, 1),
(157, '2022-06-24 22:31:27.859570', '153', 'Compra object (153)', 3, '', 14, 1),
(158, '2022-06-24 22:31:27.860927', '152', 'Compra object (152)', 3, '', 14, 1),
(159, '2022-06-24 22:31:27.862243', '151', 'Compra object (151)', 3, '', 14, 1),
(160, '2022-06-24 22:31:27.863592', '150', 'Compra object (150)', 3, '', 14, 1),
(161, '2022-06-24 22:31:27.864599', '149', 'Compra object (149)', 3, '', 14, 1),
(162, '2022-06-24 22:31:27.865809', '148', 'Compra object (148)', 3, '', 14, 1),
(163, '2022-06-24 22:33:06.657529', '167', 'Compra object (167)', 3, '', 14, 1),
(164, '2022-06-24 22:33:06.659948', '166', 'Compra object (166)', 3, '', 14, 1),
(165, '2022-06-24 22:33:06.662093', '165', 'Compra object (165)', 3, '', 14, 1),
(166, '2022-06-24 22:33:06.663700', '164', 'Compra object (164)', 3, '', 14, 1),
(167, '2022-06-24 22:33:06.664569', '163', 'Compra object (163)', 3, '', 14, 1),
(168, '2022-06-24 22:33:06.665573', '162', 'Compra object (162)', 3, '', 14, 1),
(169, '2022-06-24 22:33:06.667057', '161', 'Compra object (161)', 3, '', 14, 1),
(170, '2022-06-24 22:33:06.668169', '160', 'Compra object (160)', 3, '', 14, 1),
(171, '2022-06-24 22:33:06.669283', '159', 'Compra object (159)', 3, '', 14, 1),
(172, '2022-06-24 22:33:06.669837', '158', 'Compra object (158)', 3, '', 14, 1),
(173, '2022-06-24 22:33:06.671835', '157', 'Compra object (157)', 3, '', 14, 1),
(174, '2022-06-24 22:33:06.672833', '156', 'Compra object (156)', 3, '', 14, 1),
(175, '2022-06-24 22:33:06.674118', '155', 'Compra object (155)', 3, '', 14, 1),
(176, '2022-06-24 22:34:04.778923', '170', 'Compra object (170)', 3, '', 14, 1),
(177, '2022-06-24 22:34:04.780858', '169', 'Compra object (169)', 3, '', 14, 1),
(178, '2022-06-24 22:34:04.782136', '168', 'Compra object (168)', 3, '', 14, 1),
(179, '2022-06-24 22:35:26.529322', '172', 'Compra object (172)', 3, '', 14, 1),
(180, '2022-06-24 22:35:26.532701', '171', 'Compra object (171)', 3, '', 14, 1),
(181, '2022-06-24 22:47:35.528302', '174', 'Compra object (174)', 3, '', 14, 1),
(182, '2022-06-24 22:47:35.531117', '173', 'Compra object (173)', 3, '', 14, 1),
(183, '2022-06-24 22:54:36.561437', '176', 'Compra object (176)', 3, '', 14, 1),
(184, '2022-06-24 22:54:36.563775', '175', 'Compra object (175)', 3, '', 14, 1),
(185, '2022-06-24 23:00:04.130069', '179', 'Compra object (179)', 3, '', 14, 1),
(186, '2022-06-24 23:00:04.132991', '178', 'Compra object (178)', 3, '', 14, 1),
(187, '2022-06-24 23:00:04.133898', '177', 'Compra object (177)', 3, '', 14, 1),
(188, '2022-06-25 00:43:01.439329', '4', 'Entregado', 3, '', 15, 1),
(189, '2022-06-25 00:43:01.442321', '3', 'Reparto', 3, '', 15, 1),
(190, '2022-06-25 00:43:01.443318', '2', 'Preparacion', 3, '', 15, 1),
(191, '2022-06-25 00:43:01.444316', '1', 'Validacion', 3, '', 15, 1),
(192, '2022-06-25 00:55:45.617683', '5', 'Validacion', 1, '[{\"added\": {}}]', 15, 1),
(193, '2022-06-25 01:05:35.570904', '6', 'p', 1, '[{\"added\": {}}]', 15, 1),
(194, '2022-06-25 01:05:43.580424', '6', 'p', 3, '', 15, 1),
(195, '2022-06-25 01:05:50.706053', '7', 'Preparacion', 1, '[{\"added\": {}}]', 15, 1),
(196, '2022-06-25 01:06:08.265774', '8', 'Reparto', 1, '[{\"added\": {}}]', 15, 1),
(197, '2022-06-25 01:06:13.177965', '9', 'Entregado', 1, '[{\"added\": {}}]', 15, 1),
(198, '2022-06-25 01:16:05.971117', '187', 'Compra object (187)', 3, '', 14, 1),
(199, '2022-06-25 01:16:05.974166', '186', 'Compra object (186)', 3, '', 14, 1),
(200, '2022-06-25 01:16:05.975629', '185', 'Compra object (185)', 3, '', 14, 1),
(201, '2022-06-25 21:08:47.427581', '188', 'Compra object (188)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 14, 1),
(202, '2022-06-26 17:07:41.627397', '193', 'Compra object (193)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 14, 1),
(203, '2022-06-26 17:07:48.067587', '194', 'Compra object (194)', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 14, 1),
(204, '2022-06-26 17:49:32.413156', '1', 'cliente', 1, '[{\"added\": {}}]', 4, 1),
(205, '2022-06-26 17:55:01.844354', '2', 'loco', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(206, '2022-06-27 01:06:48.936552', '2', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(207, '2022-06-27 01:07:04.168946', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1);

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
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(14, 'app', 'compra'),
(15, 'app', 'estadocompra'),
(17, 'app', 'estadosubscripcion'),
(13, 'app', 'itemcompra'),
(12, 'app', 'itemscarrito'),
(9, 'app', 'producto'),
(16, 'app', 'subscripcion'),
(8, 'app', 'tipoproducto'),
(10, 'app', 'tipousuario'),
(11, 'app', 'usuario'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2022-06-22 22:14:24.608946'),
(2, 'auth', '0001_initial', '2022-06-22 22:14:24.924399'),
(3, 'admin', '0001_initial', '2022-06-22 22:14:25.013596'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-22 22:14:25.019759'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-22 22:14:25.025742'),
(6, 'admin_interface', '0001_initial', '2022-06-22 22:14:25.044200'),
(7, 'admin_interface', '0002_add_related_modal', '2022-06-22 22:14:25.098079'),
(8, 'admin_interface', '0003_add_logo_color', '2022-06-22 22:14:25.112304'),
(9, 'admin_interface', '0004_rename_title_color', '2022-06-22 22:14:25.120831'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2022-06-22 22:14:25.133568'),
(11, 'admin_interface', '0006_bytes_to_str', '2022-06-22 22:14:25.175025'),
(12, 'admin_interface', '0007_add_favicon', '2022-06-22 22:14:25.187113'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-06-22 22:14:25.211640'),
(14, 'admin_interface', '0009_add_enviroment', '2022-06-22 22:14:25.236696'),
(15, 'admin_interface', '0010_add_localization', '2022-06-22 22:14:25.247669'),
(16, 'admin_interface', '0011_add_environment_options', '2022-06-22 22:14:25.293326'),
(17, 'admin_interface', '0012_update_verbose_names', '2022-06-22 22:14:25.298213'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2022-06-22 22:14:25.311710'),
(19, 'admin_interface', '0014_name_unique', '2022-06-22 22:14:25.321649'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2022-06-22 22:14:25.334627'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2022-06-22 22:14:25.347592'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2022-06-22 22:14:25.351664'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2022-06-22 22:14:25.363840'),
(24, 'admin_interface', '0019_add_form_sticky', '2022-06-22 22:14:25.388943'),
(25, 'admin_interface', '0020_module_selected_colors', '2022-06-22 22:14:25.420901'),
(26, 'admin_interface', '0021_file_extension_validator', '2022-06-22 22:14:25.426886'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-06-22 22:14:25.450940'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2022-06-22 22:14:25.464351'),
(29, 'admin_interface', '0024_remove_theme_css', '2022-06-22 22:14:25.473628'),
(30, 'contenttypes', '0002_remove_content_type_name', '2022-06-22 22:14:25.513873'),
(31, 'auth', '0002_alter_permission_name_max_length', '2022-06-22 22:14:25.547945'),
(32, 'auth', '0003_alter_user_email_max_length', '2022-06-22 22:14:25.559857'),
(33, 'auth', '0004_alter_user_username_opts', '2022-06-22 22:14:25.565840'),
(34, 'auth', '0005_alter_user_last_login_null', '2022-06-22 22:14:25.594279'),
(35, 'auth', '0006_require_contenttypes_0002', '2022-06-22 22:14:25.596286'),
(36, 'auth', '0007_alter_validators_add_error_messages', '2022-06-22 22:14:25.601876'),
(37, 'auth', '0008_alter_user_username_max_length', '2022-06-22 22:14:25.612124'),
(38, 'auth', '0009_alter_user_last_name_max_length', '2022-06-22 22:14:25.623196'),
(39, 'auth', '0010_alter_group_name_max_length', '2022-06-22 22:14:25.633527'),
(40, 'auth', '0011_update_proxy_permissions', '2022-06-22 22:14:25.644110'),
(41, 'auth', '0012_alter_user_first_name_max_length', '2022-06-22 22:14:25.654279'),
(42, 'sessions', '0001_initial', '2022-06-22 22:14:25.680996'),
(43, 'app', '0001_initial', '2022-06-22 22:21:14.646970'),
(44, 'app', '0002_estadocompra_itemcompra_compra', '2022-06-24 20:30:55.293282'),
(45, 'app', '0003_estadosubscripcion_subscripcion', '2022-06-25 14:16:01.641401'),
(46, 'app', '0004_compra_descuento', '2022-06-26 13:34:48.918608'),
(47, 'app', '0005_alter_producto_nombre', '2022-06-26 19:59:41.461927'),
(48, 'app', '0006_alter_producto_descripcion_alter_producto_imagen_and_more', '2022-06-27 23:40:12.405915');

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
('38alnyg1kzq0ecd3o0uak1ylmwx5io7y', '.eJxVjDsOwjAQBe_iGln-rhdKes5grX84gGwpTirE3UmkFNC-mXlv5mldql9Hnv2U2IUpdvrdAsVnbjtID2r3zmNvyzwFviv8oIPfesqv6-H-HVQadasFgAxJWIkxmAwos9QFIjjSEFAVMNaQQ2GKBIlYtNlI1CEKbe1ZOfb5AsI5NrQ:1o5dIg:DZpWvOHr4gsa-xyMxSDkEnWV5yxwxU99e_XoSnLJscI', '2022-07-11 01:12:26.722296'),
('y2hy4oxsg0j0zyc1p9nw9gy98im5k35r', '.eJxVjEEOwiAQRe_C2hCYAgWX7j0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIstDj9bpjokdsO-J7abZY0t3WZUO6KPGiX15nz83K4fwc19fqtlUU0jjwbUA6CViqlQhwCZzMAoLcEwJpG7Yt1Q7YjFiIF2WpnHWvx_gDXZzeQ:1o5dxY:pW_p0XdZc83dM5qlLJxCZkZTHAScTp0cDdZhv2VXoQ0', '2022-07-11 01:54:40.224701');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `app_compra`
--
ALTER TABLE `app_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_compra_estado_id_e7cb0d8d_fk_app_estadocompra_id` (`estado_id`);

--
-- Indices de la tabla `app_estadocompra`
--
ALTER TABLE `app_estadocompra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_estadosubscripcion`
--
ALTER TABLE `app_estadosubscripcion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion` (`descripcion`);

--
-- Indices de la tabla `app_itemcompra`
--
ALTER TABLE `app_itemcompra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_producto`
--
ALTER TABLE `app_producto`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `app_producto_nombre_57580f23_uniq` (`nombre`),
  ADD KEY `app_producto_tipo_id_617598ff_fk_app_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `app_subscripcion`
--
ALTER TABLE `app_subscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_subscripcion_estado_id_add4776b_fk_app_estad` (`estado_id`);

--
-- Indices de la tabla `app_tipoproducto`
--
ALTER TABLE `app_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_tipousuario`
--
ALTER TABLE `app_tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_usuario`
--
ALTER TABLE `app_usuario`
  ADD PRIMARY KEY (`rut`);

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
-- Indices de la tabla `db_itemscarrito`
--
ALTER TABLE `db_itemscarrito`
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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `app_compra`
--
ALTER TABLE `app_compra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `app_estadocompra`
--
ALTER TABLE `app_estadocompra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `app_estadosubscripcion`
--
ALTER TABLE `app_estadosubscripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `app_itemcompra`
--
ALTER TABLE `app_itemcompra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `app_subscripcion`
--
ALTER TABLE `app_subscripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `app_tipoproducto`
--
ALTER TABLE `app_tipoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `app_tipousuario`
--
ALTER TABLE `app_tipousuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_itemscarrito`
--
ALTER TABLE `db_itemscarrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `app_compra`
--
ALTER TABLE `app_compra`
  ADD CONSTRAINT `app_compra_estado_id_e7cb0d8d_fk_app_estadocompra_id` FOREIGN KEY (`estado_id`) REFERENCES `app_estadocompra` (`id`);

--
-- Filtros para la tabla `app_producto`
--
ALTER TABLE `app_producto`
  ADD CONSTRAINT `app_producto_tipo_id_617598ff_fk_app_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `app_tipoproducto` (`id`);

--
-- Filtros para la tabla `app_subscripcion`
--
ALTER TABLE `app_subscripcion`
  ADD CONSTRAINT `app_subscripcion_estado_id_add4776b_fk_app_estad` FOREIGN KEY (`estado_id`) REFERENCES `app_estadosubscripcion` (`descripcion`);

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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
