-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2024 a las 19:11:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12
create database example-app;
use example-app;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `example-app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-07-28 23:04:38', '2024-07-28 23:04:38'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-07-28 23:04:38', '2024-07-28 23:04:38'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-07-28 23:04:38', '2024-07-28 23:04:38'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-07-28 23:04:38', '2024-07-28 23:04:38'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-07-28 23:04:38', '2024-07-28 23:04:38'),
(13, 0, 11, 'Facultas', 'icon-file', 'facultas', NULL, '2024-07-28 23:08:37', '2024-07-28 23:08:37'),
(14, 0, 11, 'Materias', 'icon-file', 'materias', NULL, '2024-07-28 23:20:24', '2024-07-28 23:20:24'),
(15, 0, 11, 'Docentes', 'icon-file', 'docentes', NULL, '2024-07-28 23:58:14', '2024-07-28 23:58:14'),
(16, 0, 11, 'Estudiantes', 'icon-file', 'estudiantes', NULL, '2024-07-29 00:00:35', '2024-07-29 00:00:35'),
(17, 0, 11, 'Detalle_materia_estudiantes', 'icon-file', 'detalle_materia_estudiantes', NULL, '2024-07-29 00:15:04', '2024-07-29 00:15:04'),
(18, 0, 11, 'Detalle_materia_docentes', 'icon-file', 'detalle_materia_docentes', NULL, '2024-07-29 00:16:55', '2024-07-29 00:16:55'),
(19, 0, 11, 'Notas_estudiantes', 'icon-file', 'notas_estudiantes', NULL, '2024-07-29 00:20:30', '2024-07-29 00:20:30'),
(20, 0, 11, 'Aulas', 'icon-file', 'aulas', NULL, '2024-07-29 00:39:39', '2024-07-29 00:39:39'),
(21, 0, 11, 'Cursos', 'icon-file', 'cursos', NULL, '2024-07-29 00:47:12', '2024-07-29 00:47:12'),
(22, 0, 11, 'Usuario_docentes', 'icon-file', 'usuario_docentes', NULL, '2024-07-29 06:09:12', '2024-07-29 06:09:12'),
(23, 0, 11, 'Usuario_estudiantes', 'icon-file', 'usuario_estudiantes', NULL, '2024-07-29 06:14:39', '2024-07-29 06:14:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:05:10', '2024-07-28 23:05:10'),
(2, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-07-28 23:05:16', '2024-07-28 23:05:16'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:05:16', '2024-07-28 23:05:16'),
(4, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:05:21', '2024-07-28 23:05:21'),
(5, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"facultad\",\"model_name\":\"App\\\\Models\\\\faculta\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\FacultadController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nombre\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:08:37', '2024-07-28 23:08:37'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:08:38', '2024-07-28 23:08:38'),
(7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:13:46', '2024-07-28 23:13:46'),
(8, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:13:48', '2024-07-28 23:13:48'),
(9, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:13:50', '2024-07-28 23:13:50'),
(10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-28 23:14:54', '2024-07-28 23:14:54'),
(11, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:14:56', '2024-07-28 23:14:56'),
(12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:00', '2024-07-28 23:15:00'),
(13, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:05', '2024-07-28 23:15:05'),
(14, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:06', '2024-07-28 23:15:06'),
(15, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:08', '2024-07-28 23:15:08'),
(16, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:25', '2024-07-28 23:15:25'),
(17, 1, 'admin/facultas', 'POST', '127.0.0.1', '{\"nombre\":\"ingenier\\u00eda\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:15:38', '2024-07-28 23:15:38'),
(18, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:38', '2024-07-28 23:15:38'),
(19, 1, 'admin/facultas/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:43', '2024-07-28 23:15:43'),
(20, 1, 'admin/facultas/1', 'PUT', '127.0.0.1', '{\"nombre\":\"Ingenier\\u00eda\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\",\"_method\":\"PUT\"}', '2024-07-28 23:15:48', '2024-07-28 23:15:48'),
(21, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:49', '2024-07-28 23:15:49'),
(22, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:51', '2024-07-28 23:15:51'),
(23, 1, 'admin/facultas', 'POST', '127.0.0.1', '{\"nombre\":\"Medicina\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:15:58', '2024-07-28 23:15:58'),
(24, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:58', '2024-07-28 23:15:58'),
(25, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:15:59', '2024-07-28 23:15:59'),
(26, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:16:26', '2024-07-28 23:16:26'),
(27, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:16:28', '2024-07-28 23:16:28'),
(28, 1, 'admin/facultas', 'POST', '127.0.0.1', '{\"nombre\":\"Derecho\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:16:34', '2024-07-28 23:16:34'),
(29, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:16:35', '2024-07-28 23:16:35'),
(30, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:16:40', '2024-07-28 23:16:40'),
(31, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"materias\",\"model_name\":\"App\\\\Models\\\\materias\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\MateriasController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nombre\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"descripcion\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_facultad\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:20:23', '2024-07-28 23:20:23'),
(32, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:20:24', '2024-07-28 23:20:24'),
(33, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:21:48', '2024-07-28 23:21:48'),
(34, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:00', '2024-07-28 23:22:00'),
(35, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:10', '2024-07-28 23:22:10'),
(36, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:12', '2024-07-28 23:22:12'),
(37, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:16', '2024-07-28 23:22:16'),
(38, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:24', '2024-07-28 23:22:24'),
(39, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:26', '2024-07-28 23:22:26'),
(40, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:22:54', '2024-07-28 23:22:54'),
(41, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"Estadistica Inferencial\",\"descripcion\":\"materia que estadista\",\"fk_id_facultad\":\"1\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:25:10', '2024-07-28 23:25:10'),
(42, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:25:11', '2024-07-28 23:25:11'),
(43, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:25:14', '2024-07-28 23:25:14'),
(44, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"Ciencias politicas\",\"descripcion\":\"ciencia que politiza\",\"fk_id_facultad\":\"3\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:25:47', '2024-07-28 23:25:47'),
(45, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:25:48', '2024-07-28 23:25:48'),
(46, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:25:50', '2024-07-28 23:25:50'),
(47, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"Embriologia\",\"descripcion\":\"Estudio de los embriones\",\"fk_id_facultad\":\"2\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:26:17', '2024-07-28 23:26:17'),
(48, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:17', '2024-07-28 23:26:17'),
(49, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:36', '2024-07-28 23:26:36'),
(50, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:39', '2024-07-28 23:26:39'),
(51, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:41', '2024-07-28 23:26:41'),
(52, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:51', '2024-07-28 23:26:51'),
(53, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:52', '2024-07-28 23:26:52'),
(54, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:26:54', '2024-07-28 23:26:54'),
(55, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-28 23:27:01', '2024-07-28 23:27:01'),
(56, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:27:05', '2024-07-28 23:27:05'),
(57, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"registro facultad\",\"name\":\"registro facultad\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/facultas\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:29:24', '2024-07-28 23:29:24'),
(58, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-28 23:29:25', '2024-07-28 23:29:25'),
(59, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-28 23:29:36', '2024-07-28 23:29:36'),
(60, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-28 23:29:39', '2024-07-28 23:29:39'),
(61, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '[]', '2024-07-28 23:29:42', '2024-07-28 23:29:42'),
(62, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"registro facultad\",\"name\":\"registro facultad\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/facultas\",\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\",\"_method\":\"PUT\"}', '2024-07-28 23:29:56', '2024-07-28 23:29:56'),
(63, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-28 23:29:56', '2024-07-28 23:29:56'),
(64, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-28 23:30:01', '2024-07-28 23:30:01'),
(65, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:30:04', '2024-07-28 23:30:04'),
(66, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"registro facultad\",\"name\":\"registro facultad\",\"permissions\":[\"7\",null],\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:30:45', '2024-07-28 23:30:45'),
(67, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-28 23:30:45', '2024-07-28 23:30:45'),
(68, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-28 23:30:47', '2024-07-28 23:30:47'),
(69, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:30:48', '2024-07-28 23:30:48'),
(70, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"edmundo\",\"name\":\"edmundo\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"3215\",\"roles\":[\"2\",null],\"search_terms\":null,\"permissions\":[\"7\",null],\"_token\":\"CZKH9dtCeX1TnnimLg0NVjtDOp3P0kVMjOHFXMoj\"}', '2024-07-28 23:31:21', '2024-07-28 23:31:21'),
(71, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:22', '2024-07-28 23:31:22'),
(72, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:28', '2024-07-28 23:31:28'),
(73, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:43', '2024-07-28 23:31:43'),
(74, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:48', '2024-07-28 23:31:48'),
(75, 2, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:51', '2024-07-28 23:31:51'),
(76, 2, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:52', '2024-07-28 23:31:52'),
(77, 2, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:53', '2024-07-28 23:31:53'),
(78, 2, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:31:58', '2024-07-28 23:31:58'),
(79, 2, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:00', '2024-07-28 23:32:00'),
(80, 2, 'admin/facultas/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:01', '2024-07-28 23:32:01'),
(81, 2, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:03', '2024-07-28 23:32:03'),
(82, 2, 'admin/facultas/1', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:05', '2024-07-28 23:32:05'),
(83, 2, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:07', '2024-07-28 23:32:07'),
(84, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:23', '2024-07-28 23:32:23'),
(85, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:29', '2024-07-28 23:32:29'),
(86, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:32', '2024-07-28 23:32:32'),
(87, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:32:40', '2024-07-28 23:32:40'),
(88, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:33:40', '2024-07-28 23:33:40'),
(89, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:36:52', '2024-07-28 23:36:52'),
(90, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:36:55', '2024-07-28 23:36:55'),
(91, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:36:57', '2024-07-28 23:36:57'),
(92, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:36:59', '2024-07-28 23:36:59'),
(93, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:37:04', '2024-07-28 23:37:04'),
(94, 1, 'admin/facultas/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:38:01', '2024-07-28 23:38:01'),
(95, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:38:01', '2024-07-28 23:38:01'),
(96, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:38:09', '2024-07-28 23:38:09'),
(97, 1, 'admin/facultas', 'POST', '127.0.0.1', '{\"nombre\":\"derecho\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:38:15', '2024-07-28 23:38:15'),
(98, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:38:15', '2024-07-28 23:38:15'),
(99, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:39:55', '2024-07-28 23:39:55'),
(100, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:40:18', '2024-07-28 23:40:18'),
(101, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:41:43', '2024-07-28 23:41:43'),
(102, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:42:01', '2024-07-28 23:42:01'),
(103, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:42:48', '2024-07-28 23:42:48'),
(104, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:42:58', '2024-07-28 23:42:58'),
(105, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:43:02', '2024-07-28 23:43:02'),
(106, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:43:07', '2024-07-28 23:43:07'),
(107, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:43:12', '2024-07-28 23:43:12'),
(108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-28 23:43:31', '2024-07-28 23:43:31'),
(109, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:43:33', '2024-07-28 23:43:33'),
(110, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:44:44', '2024-07-28 23:44:44'),
(111, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id);\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:45:14', '2024-07-28 23:45:14'),
(112, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from facultad\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:46:12', '2024-07-28 23:46:12'),
(113, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from materias\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:46:39', '2024-07-28 23:46:39'),
(114, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"DESCRIBE facultad;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:47:07', '2024-07-28 23:47:07'),
(115, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"DESCRIBE materias;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:47:29', '2024-07-28 23:47:29'),
(116, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias MODIFY fk_id_facultad UNSIGNED INTEGER;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:47:54', '2024-07-28 23:47:54'),
(117, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias MODIFY fk_id_facultad UNSIGNED INTEGER;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:48:33', '2024-07-28 23:48:33'),
(118, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias MODIFY fk_id_facultad INT UNSIGNED;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:48:52', '2024-07-28 23:48:52'),
(119, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:49:08', '2024-07-28 23:49:08'),
(120, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:49:39', '2024-07-28 23:49:39'),
(121, 1, 'admin/materias/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:49:42', '2024-07-28 23:49:42'),
(122, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:49:43', '2024-07-28 23:49:43'),
(123, 1, 'admin/materias/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:49:46', '2024-07-28 23:49:46'),
(124, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:49:46', '2024-07-28 23:49:46'),
(125, 1, 'admin/materias/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:49:48', '2024-07-28 23:49:48'),
(126, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:49:49', '2024-07-28 23:49:49'),
(127, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:49:53', '2024-07-28 23:49:53'),
(128, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"> artisan ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;    SQLSTATE[23000]: Integrity constraint violation: 1452 Cannot add or update a child row: a foreign key constraint fails (`example-app`.`#sql-1a84_1e2`, CONSTRAINT `fk_id_facultad` FOREIGN KEY (`fk_id_facultad`) REFERENCES `facultad` (`id`) ON DELETE CASCADE) (Connection: mysql, SQL: ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE)\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:49:57', '2024-07-28 23:49:57'),
(129, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE materias ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:50:10', '2024-07-28 23:50:10'),
(130, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:13', '2024-07-28 23:50:13'),
(131, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:19', '2024-07-28 23:50:19'),
(132, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"estadistica inferencial\",\"descripcion\":\"estadistica\",\"fk_id_facultad\":\"1\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:50:34', '2024-07-28 23:50:34'),
(133, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:35', '2024-07-28 23:50:35'),
(134, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:38', '2024-07-28 23:50:38'),
(135, 1, 'admin/facultas/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:50:42', '2024-07-28 23:50:42'),
(136, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:42', '2024-07-28 23:50:42'),
(137, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:44', '2024-07-28 23:50:44'),
(138, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-28 23:50:53', '2024-07-28 23:50:53'),
(139, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:01', '2024-07-28 23:51:01'),
(140, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:10', '2024-07-28 23:51:10'),
(141, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:11', '2024-07-28 23:51:11'),
(142, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:15', '2024-07-28 23:51:15'),
(143, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:23', '2024-07-28 23:51:23'),
(144, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:28', '2024-07-28 23:51:28'),
(145, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:51:33', '2024-07-28 23:51:33'),
(146, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"docentes\",\"model_name\":\"App\\\\Models\\\\docentes\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\DocentesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nombre\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"apellido\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_facultad\",\"type\":\"unsignedInteger\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"telefono\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"CI\",\"type\":\"integer\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"fecha de contrataci\\u00f3n\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"sueldo\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-28 23:58:13', '2024-07-28 23:58:13'),
(147, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-28 23:58:14', '2024-07-28 23:58:14'),
(148, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"estudiantes\",\"model_name\":\"App\\\\Models\\\\estudiantes\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\EstudiantesController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nombre\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"apellido\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"telefono\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"CI\",\"type\":\"integer\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"Email\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"sPPfgNAHX2d88p4nBkKwC9snM0W8KkFnoPduh6ZS\"}', '2024-07-29 00:00:34', '2024-07-29 00:00:34'),
(149, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:00:35', '2024-07-29 00:00:35'),
(150, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:01:50', '2024-07-29 00:01:50'),
(151, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:00', '2024-07-29 00:02:00'),
(152, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:07', '2024-07-29 00:02:07'),
(153, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:09', '2024-07-29 00:02:09'),
(154, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:10', '2024-07-29 00:02:10'),
(155, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:45', '2024-07-29 00:02:45'),
(156, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:49', '2024-07-29 00:02:49'),
(157, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:02:54', '2024-07-29 00:02:54'),
(158, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:03:21', '2024-07-29 00:03:21'),
(159, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 00:04:24', '2024-07-29 00:04:24'),
(160, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:04:30', '2024-07-29 00:04:30'),
(161, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 00:05:57', '2024-07-29 00:05:57'),
(162, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 00:06:00', '2024-07-29 00:06:00'),
(163, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 00:06:06', '2024-07-29 00:06:06'),
(164, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:06:19', '2024-07-29 00:06:19'),
(165, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 00:06:51', '2024-07-29 00:06:51'),
(166, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:06:53', '2024-07-29 00:06:53'),
(167, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:06:57', '2024-07-29 00:06:57'),
(168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 00:07:41', '2024-07-29 00:07:41'),
(169, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:07:50', '2024-07-29 00:07:50'),
(170, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 00:07:53', '2024-07-29 00:07:53'),
(171, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-07-29 00:07:55', '2024-07-29 00:07:55'),
(172, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:07:58', '2024-07-29 00:07:58'),
(173, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:09:04', '2024-07-29 00:09:04'),
(174, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:09:10', '2024-07-29 00:09:10'),
(175, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:09:11', '2024-07-29 00:09:11'),
(176, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:09:19', '2024-07-29 00:09:19'),
(177, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:10:19', '2024-07-29 00:10:19'),
(178, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:10:20', '2024-07-29 00:10:20'),
(179, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:10:22', '2024-07-29 00:10:22'),
(180, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:10:23', '2024-07-29 00:10:23'),
(181, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:10:52', '2024-07-29 00:10:52'),
(182, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:11:08', '2024-07-29 00:11:08'),
(183, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:11:10', '2024-07-29 00:11:10'),
(184, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:11:11', '2024-07-29 00:11:11'),
(185, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:11:12', '2024-07-29 00:11:12'),
(186, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:11:15', '2024-07-29 00:11:15'),
(187, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"detalle_materia_estudiante\",\"model_name\":\"App\\\\Models\\\\detalle_materia_estudiante\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\Detalle_materia_estudianteController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"fk_id_estudiante\",\"type\":\"unsignedInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_materia\",\"type\":\"unsignedInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fecha de inicio\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fecha final\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:15:04', '2024-07-29 00:15:04'),
(188, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:05', '2024-07-29 00:15:05'),
(189, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:25', '2024-07-29 00:15:25'),
(190, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:35', '2024-07-29 00:15:35'),
(191, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:37', '2024-07-29 00:15:37'),
(192, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:38', '2024-07-29 00:15:38'),
(193, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:39', '2024-07-29 00:15:39'),
(194, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:41', '2024-07-29 00:15:41'),
(195, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:42', '2024-07-29 00:15:42'),
(196, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:44', '2024-07-29 00:15:44'),
(197, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:15:47', '2024-07-29 00:15:47'),
(198, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"detalle_materia_docente\",\"model_name\":\"App\\\\Models\\\\detalle_materia_docente\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\Detalle_materia_docenteController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"fk_id_docente\",\"type\":\"unsignedInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_materia\",\"type\":\"unsignedInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fecha de inicio\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fecha final\",\"type\":\"date\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:16:55', '2024-07-29 00:16:55'),
(199, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:16:56', '2024-07-29 00:16:56'),
(200, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:17:17', '2024-07-29 00:17:17'),
(201, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:17:19', '2024-07-29 00:17:19'),
(202, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:17:21', '2024-07-29 00:17:21'),
(203, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:17:24', '2024-07-29 00:17:24'),
(204, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"notas_estudiantes\",\"model_name\":\"App\\\\Models\\\\notas_estudiantes\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\notas_estudiantes\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"puntaje\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_estudiante_materia\",\"type\":\"unsignedInteger\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:20:29', '2024-07-29 00:20:29'),
(205, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:20:30', '2024-07-29 00:20:30'),
(206, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:20:54', '2024-07-29 00:20:54'),
(207, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:24:06', '2024-07-29 00:24:06'),
(208, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 00:24:14', '2024-07-29 00:24:14'),
(209, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:24:44', '2024-07-29 00:24:44'),
(210, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:24:45', '2024-07-29 00:24:45'),
(211, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:24:48', '2024-07-29 00:24:48'),
(212, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:25:56', '2024-07-29 00:25:56'),
(213, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:26:17', '2024-07-29 00:26:17'),
(214, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 00:30:10', '2024-07-29 00:30:10'),
(215, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_estudiante DROP COLUMN `fecha de inicio`, DROP COLUMN `fecha final`,DROP COLUMN `fk_id_materia`;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:30:40', '2024-07-29 00:30:40'),
(216, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from detalle_materia_estudiante\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:31:04', '2024-07-29 00:31:04'),
(217, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_estudiante ADD CONSTRAINT fk_id_estudiante FOREIGN KEY (fk_id_estudiante) REFERENCES estudiantes(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:31:38', '2024-07-29 00:31:38'),
(218, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_docentes DROP COLUMN `fecha de inicio`, DROP COLUMN `fecha final`,DROP COLUMN `fk_id_materia`;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:32:51', '2024-07-29 00:32:51'),
(219, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_docente DROP COLUMN `fecha de inicio`, DROP COLUMN `fecha final`,DROP COLUMN `fk_id_materia`;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:33:19', '2024-07-29 00:33:19'),
(220, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:33:34', '2024-07-29 00:33:34'),
(221, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:33:38', '2024-07-29 00:33:38'),
(222, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:33:42', '2024-07-29 00:33:42'),
(223, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:33:47', '2024-07-29 00:33:47'),
(224, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:33:48', '2024-07-29 00:33:48'),
(225, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:33:55', '2024-07-29 00:33:55'),
(226, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:33:59', '2024-07-29 00:33:59'),
(227, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:00', '2024-07-29 00:34:00'),
(228, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:22', '2024-07-29 00:34:22'),
(229, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:24', '2024-07-29 00:34:24'),
(230, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:25', '2024-07-29 00:34:25'),
(231, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:29', '2024-07-29 00:34:29'),
(232, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:30', '2024-07-29 00:34:30'),
(233, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:36', '2024-07-29 00:34:36'),
(234, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:37', '2024-07-29 00:34:37'),
(235, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:38', '2024-07-29 00:34:38'),
(236, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:41', '2024-07-29 00:34:41'),
(237, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:43', '2024-07-29 00:34:43'),
(238, 1, 'admin/detalle_materia_docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:44', '2024-07-29 00:34:44'),
(239, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:34:49', '2024-07-29 00:34:49'),
(240, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:35:02', '2024-07-29 00:35:02'),
(241, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:35:04', '2024-07-29 00:35:04'),
(242, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:35:48', '2024-07-29 00:35:48'),
(243, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:35:51', '2024-07-29 00:35:51'),
(244, 1, 'admin/detalle_materia_docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 00:35:53', '2024-07-29 00:35:53'),
(245, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:35:59', '2024-07-29 00:35:59'),
(246, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:29', '2024-07-29 00:36:29'),
(247, 1, 'admin/detalle_materia_docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:30', '2024-07-29 00:36:30'),
(248, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:32', '2024-07-29 00:36:32'),
(249, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:34', '2024-07-29 00:36:34'),
(250, 1, 'admin/detalle_materia_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:35', '2024-07-29 00:36:35'),
(251, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:36', '2024-07-29 00:36:36'),
(252, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:36:44', '2024-07-29 00:36:44'),
(253, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"aula\",\"model_name\":\"App\\\\Models\\\\aula\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AulaController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"nombre\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"capacidad\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:39:38', '2024-07-29 00:39:38'),
(254, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:39:39', '2024-07-29 00:39:39'),
(255, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:39:58', '2024-07-29 00:39:58'),
(256, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 00:40:17', '2024-07-29 00:40:17'),
(257, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 00:40:54', '2024-07-29 00:40:54'),
(258, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:41:02', '2024-07-29 00:41:02'),
(259, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:42:41', '2024-07-29 00:42:41'),
(260, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:42:50', '2024-07-29 00:42:50'),
(261, 1, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:42:52', '2024-07-29 00:42:52'),
(262, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:42:53', '2024-07-29 00:42:53'),
(263, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:42:55', '2024-07-29 00:42:55'),
(264, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:42:58', '2024-07-29 00:42:58'),
(265, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"cursos\",\"model_name\":\"App\\\\Models\\\\cursos\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\CursosController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"fecha de inicio\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fecha final\",\"type\":\"date\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_docentes\",\"type\":\"unsignedInteger\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_materias\",\"type\":\"unsignedInteger\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fk_id_aulas\",\"type\":\"unsignedInteger\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:47:12', '2024-07-29 00:47:12'),
(266, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:47:13', '2024-07-29 00:47:13'),
(267, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 00:47:44', '2024-07-29 00:47:44'),
(268, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 00:47:47', '2024-07-29 00:47:47'),
(269, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:48:48', '2024-07-29 00:48:48'),
(270, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:48:50', '2024-07-29 00:48:50'),
(271, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 00:51:21', '2024-07-29 00:51:21'),
(272, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_estudiante ADD COLUMN fk_id_curso INT UNSIGNED NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:51:27', '2024-07-29 00:51:27'),
(273, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_estudiante ADD CONSTRAINT fk_id_curso FOREIGN KEY (fk_id_curso) REFERENCES cursos(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 00:51:36', '2024-07-29 00:51:36'),
(274, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:51:40', '2024-07-29 00:51:40'),
(275, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:51:43', '2024-07-29 00:51:43'),
(276, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 00:53:11', '2024-07-29 00:53:11'),
(277, 1, 'admin/detalle_materia_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 00:53:14', '2024-07-29 00:53:14'),
(278, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 01:03:24', '2024-07-29 01:03:24'),
(279, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:17:52', '2024-07-29 01:17:52'),
(280, 1, 'admin/facultas/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:08', '2024-07-29 01:18:08'),
(281, 1, 'admin/facultas', 'POST', '127.0.0.1', '{\"nombre\":\"ingenieria\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:18:15', '2024-07-29 01:18:15'),
(282, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:15', '2024-07-29 01:18:15'),
(283, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:17', '2024-07-29 01:18:17'),
(284, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:21', '2024-07-29 01:18:21'),
(285, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"programacion\",\"descripcion\":\"uso de programacion basica\",\"fk_id_facultad\":\"5\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:18:44', '2024-07-29 01:18:44'),
(286, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:45', '2024-07-29 01:18:45'),
(287, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:47', '2024-07-29 01:18:47'),
(288, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:49', '2024-07-29 01:18:49'),
(289, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:53', '2024-07-29 01:18:53'),
(290, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:56', '2024-07-29 01:18:56'),
(291, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:18:57', '2024-07-29 01:18:57'),
(292, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 01:24:09', '2024-07-29 01:24:09'),
(293, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:24:20', '2024-07-29 01:24:20'),
(294, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes DROP FOREIGN KEY fk_id_facultad;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:27:06', '2024-07-29 01:27:06'),
(295, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes DROP FOREIGN KEY fk_id_facultad;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:27:12', '2024-07-29 01:27:12'),
(296, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:27:51', '2024-07-29 01:27:51'),
(297, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = \'docentes\' AND CONSTRAINT_SCHEMA = \'example-app\';\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:28:27', '2024-07-29 01:28:27'),
(298, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes MODIFY fk_id_facultad INT UNSIGNED NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:28:50', '2024-07-29 01:28:50'),
(299, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT fk_id_facultad FROM docentes WHERE fk_id_facultad IS NOT NULL AND fk_id_facultad NOT IN (SELECT id FROM facultad);\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:29:06', '2024-07-29 01:29:06'),
(300, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:29:32', '2024-07-29 01:29:32'),
(301, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:30:16', '2024-07-29 01:30:16'),
(302, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SHOW INDEX FROM docentes;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:30:37', '2024-07-29 01:30:37'),
(303, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes MODIFY fk_id_facultad INT UNSIGNED NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:31:23', '2024-07-29 01:31:23'),
(304, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:31:34', '2024-07-29 01:31:34'),
(305, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"DESCRIBE facultad;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:31:56', '2024-07-29 01:31:56'),
(306, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"DESCRIBE docentes;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:32:10', '2024-07-29 01:32:10'),
(307, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT fk_id_facultad FROM docentes WHERE fk_id_facultad IS NOT NULL AND fk_id_facultad NOT IN (SELECT id FROM facultad);\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:32:39', '2024-07-29 01:32:39'),
(308, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:33:17', '2024-07-29 01:33:17'),
(309, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes DROP COLUMN fk_id_facultad;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:36:35', '2024-07-29 01:36:35'),
(310, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD COLUMN fk_id_facultad INT(10) UNSIGNED NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:36:46', '2024-07-29 01:36:46'),
(311, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:36:52', '2024-07-29 01:36:52'),
(312, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes ADD CONSTRAINT fk_id_facultad_docente FOREIGN KEY (fk_id_facultad) REFERENCES facultad(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:37:05', '2024-07-29 01:37:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(313, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos ADD CONSTRAINT fk_id_docentes FOREIGN KEY (fk_id_docentes) REFERENCES docentes(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:38:50', '2024-07-29 01:38:50'),
(314, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos ADD CONSTRAINT fk_id_materias FOREIGN KEY (fk_id_materias) REFERENCES materias(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:38:57', '2024-07-29 01:38:57'),
(315, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos ADD CONSTRAINT fk_id_aulas FOREIGN KEY (fk_id_aulas) REFERENCES aulas(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:39:03', '2024-07-29 01:39:03'),
(316, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos ADD CONSTRAINT fk_id_aulas FOREIGN KEY (fk_id_aulas) REFERENCES aulas(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:39:11', '2024-07-29 01:39:11'),
(317, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos ADD CONSTRAINT fk_id_aulas FOREIGN KEY (fk_id_aulas) REFERENCES aula(id) ON DELETE CASCADE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:39:33', '2024-07-29 01:39:33'),
(318, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:42:52', '2024-07-29 01:42:52'),
(319, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:42:54', '2024-07-29 01:42:54'),
(320, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2010-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:44:04', '2024-07-29 01:44:04'),
(321, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:44:05', '2024-07-29 01:44:05'),
(322, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:44:16', '2024-07-29 01:44:16'),
(323, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:44:17', '2024-07-29 01:44:17'),
(324, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:44:21', '2024-07-29 01:44:21'),
(325, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:44:21', '2024-07-29 01:44:21'),
(326, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-30\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:45:02', '2024-07-29 01:45:02'),
(327, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:45:03', '2024-07-29 01:45:03'),
(328, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:45:52', '2024-07-29 01:45:52'),
(329, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:45:53', '2024-07-29 01:45:53'),
(330, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2022-10-04\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:46:03', '2024-07-29 01:46:03'),
(331, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:04', '2024-07-29 01:46:04'),
(332, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:46:07', '2024-07-29 01:46:07'),
(333, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:46:08', '2024-07-29 01:46:08'),
(334, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:46:09', '2024-07-29 01:46:09'),
(335, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"1234567\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:46:09', '2024-07-29 01:46:09'),
(336, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:10', '2024-07-29 01:46:10'),
(337, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:11', '2024-07-29 01:46:11'),
(338, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:11', '2024-07-29 01:46:11'),
(339, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:11', '2024-07-29 01:46:11'),
(340, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:15', '2024-07-29 01:46:15'),
(341, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:18', '2024-07-29 01:46:18'),
(342, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:21', '2024-07-29 01:46:21'),
(343, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"12345678\",\"fecha_de_contrataci\\u00f3n\":\"2024-10-10\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:46:51', '2024-07-29 01:46:51'),
(344, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:46:52', '2024-07-29 01:46:52'),
(345, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 01:49:11', '2024-07-29 01:49:11'),
(346, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE docentes MODIFY `fecha de contrataci\\u00f3n` DATE DEFAULT CURRENT_DATE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:49:13', '2024-07-29 01:49:13'),
(347, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 01:49:57', '2024-07-29 01:49:57'),
(348, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:50:02', '2024-07-29 01:50:02'),
(349, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:50:03', '2024-07-29 01:50:03'),
(350, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"123456\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:50:27', '2024-07-29 01:50:27'),
(351, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:50:27', '2024-07-29 01:50:27'),
(352, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:50:51', '2024-07-29 01:50:51'),
(353, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"maria rachell\",\"apellido\":\"pe\\u00f1a\",\"fk_id_facultad\":\"2\",\"telefono\":\"98765432\",\"CI\":\"12345654\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"2500\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:51:36', '2024-07-29 01:51:36'),
(354, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:51:36', '2024-07-29 01:51:36'),
(355, 1, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:51:37', '2024-07-29 01:51:37'),
(356, 1, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"ernesto\",\"apellido\":\"el molesto\",\"fk_id_facultad\":\"4\",\"telefono\":\"78956541\",\"CI\":\"125468\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"3500\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:52:29', '2024-07-29 01:52:29'),
(357, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:52:29', '2024-07-29 01:52:29'),
(358, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:52:35', '2024-07-29 01:52:35'),
(359, 1, 'admin/estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:52:37', '2024-07-29 01:52:37'),
(360, 1, 'admin/estudiantes', 'POST', '127.0.0.1', '{\"nombre\":\"brandon\",\"apellido\":\"saucedo\",\"telefono\":\"71044259\",\"CI\":\"13428519\",\"Email\":\"lortbrandon@gmial.com\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:53:22', '2024-07-29 01:53:22'),
(361, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:53:23', '2024-07-29 01:53:23'),
(362, 1, 'admin/estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:53:27', '2024-07-29 01:53:27'),
(363, 1, 'admin/estudiantes', 'POST', '127.0.0.1', '{\"nombre\":\"alex\",\"apellido\":\"guzman\",\"telefono\":\"66666\",\"CI\":\"888888\",\"Email\":\"alexmanrio@gmail.com\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:53:57', '2024-07-29 01:53:57'),
(364, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:53:57', '2024-07-29 01:53:57'),
(365, 1, 'admin/estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:53:59', '2024-07-29 01:53:59'),
(366, 1, 'admin/estudiantes', 'POST', '127.0.0.1', '{\"nombre\":\"diego\",\"apellido\":\"salvatierra\",\"telefono\":\"7894562\",\"CI\":\"444666\",\"Email\":\"barry@gmail.com\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:54:35', '2024-07-29 01:54:35'),
(367, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:54:36', '2024-07-29 01:54:36'),
(368, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 01:55:06', '2024-07-29 01:55:06'),
(369, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:55:08', '2024-07-29 01:55:08'),
(370, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"embriologia\",\"descripcion\":\"estudio de los embriones\",\"fk_id_facultad\":\"2\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:55:29', '2024-07-29 01:55:29'),
(371, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 01:55:29', '2024-07-29 01:55:29'),
(372, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:55:32', '2024-07-29 01:55:32'),
(373, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"ciencias politicas\",\"descripcion\":\"estudio de los entes politicos\",\"fk_id_facultad\":\"4\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:55:57', '2024-07-29 01:55:57'),
(374, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 01:55:57', '2024-07-29 01:55:57'),
(375, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:56:56', '2024-07-29 01:56:56'),
(376, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:56:59', '2024-07-29 01:56:59'),
(377, 1, 'admin/aulas/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:03', '2024-07-29 01:57:03'),
(378, 1, 'admin/aulas', 'POST', '127.0.0.1', '{\"nombre\":\"A001\",\"capacidad\":\"40\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:57:20', '2024-07-29 01:57:20'),
(379, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:21', '2024-07-29 01:57:21'),
(380, 1, 'admin/aulas/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:22', '2024-07-29 01:57:22'),
(381, 1, 'admin/aulas', 'POST', '127.0.0.1', '{\"nombre\":\"B001\",\"capacidad\":\"50\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:57:32', '2024-07-29 01:57:32'),
(382, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:32', '2024-07-29 01:57:32'),
(383, 1, 'admin/aulas/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:34', '2024-07-29 01:57:34'),
(384, 1, 'admin/aulas', 'POST', '127.0.0.1', '{\"nombre\":\"C001\",\"capacidad\":\"20\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:57:42', '2024-07-29 01:57:42'),
(385, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:43', '2024-07-29 01:57:43'),
(386, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:48', '2024-07-29 01:57:48'),
(387, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 01:57:51', '2024-07-29 01:57:51'),
(388, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:58:00', '2024-07-29 01:58:00'),
(389, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"1\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:58:38', '2024-07-29 01:58:38'),
(390, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 01:58:39', '2024-07-29 01:58:39'),
(391, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 01:58:54', '2024-07-29 01:58:54'),
(392, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE DEFAULT CURRENT_DATE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:59:17', '2024-07-29 01:59:17'),
(393, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATE DEFAULT CURRENT_DATE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 01:59:24', '2024-07-29 01:59:24'),
(394, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:00:05', '2024-07-29 02:00:05'),
(395, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:00:07', '2024-07-29 02:00:07'),
(396, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"1\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:00:15', '2024-07-29 02:00:15'),
(397, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:00:15', '2024-07-29 02:00:15'),
(398, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 02:01:18', '2024-07-29 02:01:18'),
(399, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:01:27', '2024-07-29 02:01:27'),
(400, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:01:29', '2024-07-29 02:01:29'),
(401, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:01:58', '2024-07-29 02:01:58'),
(402, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:01:59', '2024-07-29 02:01:59'),
(403, 1, 'admin/cursos/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:09', '2024-07-29 02:02:09'),
(404, 1, 'admin/cursos/2', 'PUT', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\",\"_method\":\"PUT\"}', '2024-07-29 02:02:13', '2024-07-29 02:02:13'),
(405, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:13', '2024-07-29 02:02:13'),
(406, 1, 'admin/cursos/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:19', '2024-07-29 02:02:19'),
(407, 1, 'admin/cursos/2', 'PUT', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-06-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\",\"_method\":\"PUT\"}', '2024-07-29 02:02:25', '2024-07-29 02:02:25'),
(408, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:26', '2024-07-29 02:02:26'),
(409, 1, 'admin/cursos/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:30', '2024-07-29 02:02:30'),
(410, 1, 'admin/cursos/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:02:40', '2024-07-29 02:02:40'),
(411, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:41', '2024-07-29 02:02:41'),
(412, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:02:44', '2024-07-29 02:02:44'),
(413, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATE NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:03:42', '2024-07-29 02:03:42'),
(414, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 02:03:46', '2024-07-29 02:03:46'),
(415, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:03:48', '2024-07-29 02:03:48'),
(416, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:03:49', '2024-07-29 02:03:49'),
(417, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:03:57', '2024-07-29 02:03:57'),
(418, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:03:57', '2024-07-29 02:03:57'),
(419, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:04:18', '2024-07-29 02:04:18'),
(420, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:04:20', '2024-07-29 02:04:20'),
(421, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:04:25', '2024-07-29 02:04:25'),
(422, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:04:26', '2024-07-29 02:04:26'),
(423, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:04:35', '2024-07-29 02:04:35'),
(424, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:04:35', '2024-07-29 02:04:35'),
(425, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:05:09', '2024-07-29 02:05:09'),
(426, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATETIME;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:05:12', '2024-07-29 02:05:12'),
(427, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:05:52', '2024-07-29 02:05:52'),
(428, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:05:53', '2024-07-29 02:05:53'),
(429, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28 22:05:53\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:06:04', '2024-07-29 02:06:04'),
(430, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:06:04', '2024-07-29 02:06:04'),
(431, 1, 'admin/cursos/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:06:12', '2024-07-29 02:06:12'),
(432, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:06:13', '2024-07-29 02:06:13'),
(433, 1, 'admin/cursos/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:06:16', '2024-07-29 02:06:16'),
(434, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:06:17', '2024-07-29 02:06:17'),
(435, 1, 'admin/cursos/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:06:20', '2024-07-29 02:06:20'),
(436, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:06:20', '2024-07-29 02:06:20'),
(437, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 02:07:13', '2024-07-29 02:07:13'),
(438, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:07:13', '2024-07-29 02:07:13'),
(439, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATETIMENOT  NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:07:20', '2024-07-29 02:07:20'),
(440, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATETIME NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:07:29', '2024-07-29 02:07:29'),
(441, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:07:32', '2024-07-29 02:07:32'),
(442, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:07:34', '2024-07-29 02:07:34'),
(443, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:07:54', '2024-07-29 02:07:54'),
(444, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:07:55', '2024-07-29 02:07:55'),
(445, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:08:00', '2024-07-29 02:08:00'),
(446, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:09:03', '2024-07-29 02:09:03'),
(447, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:09:17', '2024-07-29 02:09:17'),
(448, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 02:09:19', '2024-07-29 02:09:19'),
(449, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:09:21', '2024-07-29 02:09:21'),
(450, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:09:23', '2024-07-29 02:09:23'),
(451, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-06-28\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:09:39', '2024-07-29 02:09:39'),
(452, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:09:39', '2024-07-29 02:09:39'),
(453, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28 22:09:39\",\"fecha_final\":\"2024-08-28 22:09:39\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:10:19', '2024-07-29 02:10:19'),
(454, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:10:20', '2024-07-29 02:10:20'),
(455, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:11:04', '2024-07-29 02:11:04'),
(456, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-08-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:11:13', '2024-07-29 02:11:13'),
(457, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:11:14', '2024-07-29 02:11:14'),
(458, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:11:30', '2024-07-29 02:11:30'),
(459, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` TIMESTAMP NULL DEFAULT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:14:27', '2024-07-29 02:14:27'),
(460, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:14:35', '2024-07-29 02:14:35'),
(461, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:14:36', '2024-07-29 02:14:36'),
(462, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-06-28\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:14:48', '2024-07-29 02:14:48'),
(463, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:14:48', '2024-07-29 02:14:48'),
(464, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:14:54', '2024-07-29 02:14:54'),
(465, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` TIMESTAMP NULL DEFAULT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:15:10', '2024-07-29 02:15:10'),
(466, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:15:15', '2024-07-29 02:15:15'),
(467, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:15:16', '2024-07-29 02:15:16'),
(468, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-06-28\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:15:24', '2024-07-29 02:15:24'),
(469, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:15:24', '2024-07-29 02:15:24'),
(470, 1, 'admin/cursos/6/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 02:15:32', '2024-07-29 02:15:32'),
(471, 1, 'admin/cursos/6', 'PUT', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\",\"_method\":\"PUT\"}', '2024-07-29 02:15:35', '2024-07-29 02:15:35'),
(472, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:15:35', '2024-07-29 02:15:35'),
(473, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:15:47', '2024-07-29 02:15:47'),
(474, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` TIMESTAMP NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:16:02', '2024-07-29 02:16:02'),
(475, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` TIMESTAMP NULL DEFAULT NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:16:20', '2024-07-29 02:16:20'),
(476, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL DEFAULT, MODIFY `fecha final` DATE NOT NULL ;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:17:55', '2024-07-29 02:17:55'),
(477, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL DEFAULT \'1970-01-01\', MODIFY `fecha final` DATE NOT NULL DEFAULT \'1970-01-01\';\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:18:13', '2024-07-29 02:18:13'),
(478, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL DEFAULT \'1970-01-01;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:18:31', '2024-07-29 02:18:31'),
(479, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:18:57', '2024-07-29 02:18:57'),
(480, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:19:09', '2024-07-29 02:19:09'),
(481, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE ;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:19:39', '2024-07-29 02:19:39'),
(482, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATE;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:19:57', '2024-07-29 02:19:57'),
(483, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:06', '2024-07-29 02:20:06'),
(484, 1, 'admin/cursos/6/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:09', '2024-07-29 02:20:09'),
(485, 1, 'admin/cursos/6', 'PUT', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\",\"_method\":\"PUT\"}', '2024-07-29 02:20:12', '2024-07-29 02:20:12'),
(486, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:12', '2024-07-29 02:20:12'),
(487, 1, 'admin/cursos/6/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:14', '2024-07-29 02:20:14'),
(488, 1, 'admin/cursos/6', 'PUT', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-30\",\"fecha_final\":\"2024-07-10\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\",\"_method\":\"PUT\"}', '2024-07-29 02:20:24', '2024-07-29 02:20:24'),
(489, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:24', '2024-07-29 02:20:24'),
(490, 1, 'admin/cursos/6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:20:27', '2024-07-29 02:20:27'),
(491, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:28', '2024-07-29 02:20:28'),
(492, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:29', '2024-07-29 02:20:29'),
(493, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-28\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:20:34', '2024-07-29 02:20:34'),
(494, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:34', '2024-07-29 02:20:34'),
(495, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:20:43', '2024-07-29 02:20:43'),
(496, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:20:56', '2024-07-29 02:20:56'),
(497, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:21:11', '2024-07-29 02:21:11'),
(498, 1, 'admin/cursos/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:21:14', '2024-07-29 02:21:14'),
(499, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:21:14', '2024-07-29 02:21:14'),
(500, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:21:17', '2024-07-29 02:21:17'),
(501, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha de inicio` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:21:20', '2024-07-29 02:21:20'),
(502, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos MODIFY `fecha final` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:21:30', '2024-07-29 02:21:30'),
(503, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:21:34', '2024-07-29 02:21:34'),
(504, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:21:36', '2024-07-29 02:21:36'),
(505, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-20\",\"fecha_final\":\"2024-07-28\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:21:45', '2024-07-29 02:21:45'),
(506, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:21:45', '2024-07-29 02:21:45'),
(507, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:23:19', '2024-07-29 02:23:19'),
(508, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-10\",\"fecha_final\":\"2024-08-14\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:23:32', '2024-07-29 02:23:32'),
(509, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:23:33', '2024-07-29 02:23:33'),
(510, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:24:28', '2024-07-29 02:24:28'),
(511, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:24:38', '2024-07-29 02:24:38'),
(512, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-10-01\",\"fecha_final\":\"2024-10-05\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"1\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:25:02', '2024-07-29 02:25:02'),
(513, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:25:03', '2024-07-29 02:25:03'),
(514, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:25:09', '2024-07-29 02:25:09'),
(515, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 02:25:54', '2024-07-29 02:25:54'),
(516, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:25:55', '2024-07-29 02:25:55'),
(517, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:25:56', '2024-07-29 02:25:56'),
(518, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":null,\"fecha_final\":null,\"fk_id_docentes\":null,\"fk_id_materias\":null,\"fk_id_aulas\":null,\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:26:26', '2024-07-29 02:26:26'),
(519, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":null,\"fecha_final\":null,\"fk_id_docentes\":null,\"fk_id_materias\":null,\"fk_id_aulas\":null,\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:26:27', '2024-07-29 02:26:27'),
(520, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:26:28', '2024-07-29 02:26:28'),
(521, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:26:29', '2024-07-29 02:26:29'),
(522, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"1999-10-01\",\"fecha_final\":\"1999-01-01\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"1\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:26:45', '2024-07-29 02:26:45'),
(523, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:26:46', '2024-07-29 02:26:46'),
(524, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:27:34', '2024-07-29 02:27:34'),
(525, 1, 'admin/cursos', 'GET', '127.0.0.1', '{\"_columns_\":\"fecha de inicio,fecha final,fk_id_aulas,fk_id_docentes,fk_id_materias,id\"}', '2024-07-29 02:27:42', '2024-07-29 02:27:42'),
(526, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:27:44', '2024-07-29 02:27:44'),
(527, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:28:14', '2024-07-29 02:28:14'),
(528, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:29:04', '2024-07-29 02:29:04'),
(529, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE cursos CHANGE `fecha de inicio` `fecha_de_inicio` DATE NOT NULL, CHANGE `fecha final` `fecha_final` DATE NOT NULL;\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:29:10', '2024-07-29 02:29:10'),
(530, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:29:14', '2024-07-29 02:29:14'),
(531, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:29:16', '2024-07-29 02:29:16'),
(532, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-01\",\"fecha_final\":\"2024-08-01\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:29:27', '2024-07-29 02:29:27'),
(533, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:29:28', '2024-07-29 02:29:28'),
(534, 1, 'admin/cursos/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:30:21', '2024-07-29 02:30:21'),
(535, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:30:21', '2024-07-29 02:30:21'),
(536, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 02:30:23', '2024-07-29 02:30:23'),
(537, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-16\",\"fecha_final\":\"2024-07-31\",\"fk_id_docentes\":\"1\",\"fk_id_materias\":\"5\",\"fk_id_aulas\":\"1\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:30:34', '2024-07-29 02:30:34'),
(538, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:30:34', '2024-07-29 02:30:34'),
(539, 1, 'admin/cursos/9', 'GET', '127.0.0.1', '[]', '2024-07-29 02:30:58', '2024-07-29 02:30:58'),
(540, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:31:03', '2024-07-29 02:31:03'),
(541, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:32:45', '2024-07-29 02:32:45'),
(542, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 02:32:48', '2024-07-29 02:32:48'),
(543, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 02:32:51', '2024-07-29 02:32:51'),
(544, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from cursos\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 02:32:59', '2024-07-29 02:32:59'),
(545, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:39:32', '2024-07-29 03:39:32'),
(546, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 03:39:45', '2024-07-29 03:39:45'),
(547, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:39:47', '2024-07-29 03:39:47'),
(548, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-10\",\"fecha_final\":\"2024-08-10\",\"fk_id_docentes\":\"2\",\"fk_id_materias\":\"6\",\"fk_id_aulas\":\"2\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:40:51', '2024-07-29 03:40:51'),
(549, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 03:40:52', '2024-07-29 03:40:52'),
(550, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:40:53', '2024-07-29 03:40:53'),
(551, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-18\",\"fecha_final\":\"2024-08-18\",\"fk_id_docentes\":\"3\",\"fk_id_materias\":null,\"fk_id_aulas\":null,\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:41:07', '2024-07-29 03:41:07'),
(552, 1, 'admin/cursos/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:08', '2024-07-29 03:41:08'),
(553, 1, 'admin/cursos', 'POST', '127.0.0.1', '{\"fecha_de_inicio\":\"2024-07-18\",\"fecha_final\":\"2024-08-18\",\"fk_id_docentes\":\"3\",\"fk_id_materias\":\"7\",\"fk_id_aulas\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:41:11', '2024-07-29 03:41:11'),
(554, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:11', '2024-07-29 03:41:11'),
(555, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:21', '2024-07-29 03:41:21'),
(556, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:26', '2024-07-29 03:41:26'),
(557, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:29', '2024-07-29 03:41:29'),
(558, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:30', '2024-07-29 03:41:30'),
(559, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:31', '2024-07-29 03:41:31'),
(560, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:32', '2024-07-29 03:41:32'),
(561, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:33', '2024-07-29 03:41:33'),
(562, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:35', '2024-07-29 03:41:35'),
(563, 1, 'admin/detalle_materia_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:41:41', '2024-07-29 03:41:41'),
(564, 1, 'admin/detalle_materia_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_estudiante\":\"1\",\"fk_id_curso\":\"9\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:42:11', '2024-07-29 03:42:11'),
(565, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:11', '2024-07-29 03:42:11'),
(566, 1, 'admin/detalle_materia_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:13', '2024-07-29 03:42:13'),
(567, 1, 'admin/detalle_materia_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_estudiante\":\"2\",\"fk_id_curso\":\"10\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:42:17', '2024-07-29 03:42:17'),
(568, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:17', '2024-07-29 03:42:17'),
(569, 1, 'admin/detalle_materia_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:19', '2024-07-29 03:42:19'),
(570, 1, 'admin/detalle_materia_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_estudiante\":\"3\",\"fk_id_curso\":\"11\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:42:23', '2024-07-29 03:42:23'),
(571, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:23', '2024-07-29 03:42:23'),
(572, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:29', '2024-07-29 03:42:29'),
(573, 1, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:42:37', '2024-07-29 03:42:37'),
(574, 1, 'admin/notas_estudiantes', 'POST', '127.0.0.1', '{\"puntaje\":\"100\",\"fk_id_estudiante_materia\":\"1\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:43:20', '2024-07-29 03:43:20'),
(575, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:43:20', '2024-07-29 03:43:20'),
(576, 1, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:43:21', '2024-07-29 03:43:21'),
(577, 1, 'admin/notas_estudiantes', 'POST', '127.0.0.1', '{\"puntaje\":\"51\",\"fk_id_estudiante_materia\":\"2\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:43:29', '2024-07-29 03:43:29'),
(578, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:43:29', '2024-07-29 03:43:29'),
(579, 1, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:43:30', '2024-07-29 03:43:30'),
(580, 1, 'admin/notas_estudiantes', 'POST', '127.0.0.1', '{\"puntaje\":\"0\",\"fk_id_estudiante_materia\":\"3\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 03:43:50', '2024-07-29 03:43:50'),
(581, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 03:43:51', '2024-07-29 03:43:51'),
(582, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 03:44:11', '2024-07-29 03:44:11'),
(583, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:44:19', '2024-07-29 03:44:19'),
(584, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 03:45:07', '2024-07-29 03:45:07'),
(585, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 03:45:09', '2024-07-29 03:45:09'),
(586, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 03:45:21', '2024-07-29 03:45:21'),
(587, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 03:45:22', '2024-07-29 03:45:22'),
(588, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:08:19', '2024-07-29 04:08:19'),
(589, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:10:51', '2024-07-29 04:10:51'),
(590, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:10:53', '2024-07-29 04:10:53'),
(591, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:14:51', '2024-07-29 04:14:51'),
(592, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:14:53', '2024-07-29 04:14:53'),
(593, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:15:07', '2024-07-29 04:15:07'),
(594, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:15:17', '2024-07-29 04:15:17'),
(595, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:15:17', '2024-07-29 04:15:17'),
(596, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:15:19', '2024-07-29 04:15:19'),
(597, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_materia\",\"name\":\"control_total_materia\",\"http_method\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/materias\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:19:34', '2024-07-29 04:19:34'),
(598, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:19:34', '2024-07-29 04:19:34'),
(599, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:19:38', '2024-07-29 04:19:38'),
(600, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_docentes\",\"name\":\"control_total_docentes\",\"http_method\":[\"GET\",\"PUT\",\"POST\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:20:20', '2024-07-29 04:20:20'),
(601, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:20:21', '2024-07-29 04:20:21'),
(602, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:20:23', '2024-07-29 04:20:23'),
(603, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_estudiantes\",\"name\":\"control_total_estudiantes\",\"http_method\":[\"GET\",\"PUT\",\"POST\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:21:02', '2024-07-29 04:21:02'),
(604, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:21:02', '2024-07-29 04:21:02'),
(605, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:21:04', '2024-07-29 04:21:04'),
(606, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_Detalle_E_M\",\"name\":\"control_total_Detalle_E_M\",\"http_method\":[\"GET\",\"PUT\",\"POST\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:21:55', '2024-07-29 04:21:55'),
(607, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:21:55', '2024-07-29 04:21:55'),
(608, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:21:57', '2024-07-29 04:21:57'),
(609, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_notas\",\"name\":\"control_total_notas\",\"http_method\":[\"GET\",\"PUT\",\"POST\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:22:37', '2024-07-29 04:22:37'),
(610, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:22:37', '2024-07-29 04:22:37'),
(611, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:22:39', '2024-07-29 04:22:39'),
(612, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_cursos\",\"name\":\"control_total_cursos\",\"http_method\":[\"GET\",\"PUT\",\"POST\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/cursos\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:23:23', '2024-07-29 04:23:23'),
(613, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:23:23', '2024-07-29 04:23:23'),
(614, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:23:31', '2024-07-29 04:23:31'),
(615, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"GET\",\"PUT\",\"DELETE\",null],\"search_terms\":null,\"http_path\":\"\\/materias\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:24:49', '2024-07-29 04:24:49'),
(616, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:24:50', '2024-07-29 04:24:50'),
(617, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:24:52', '2024-07-29 04:24:52');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(618, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"modificar_docentes\",\"name\":\"modificar_docentes\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:25:14', '2024-07-29 04:25:14'),
(619, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:25:14', '2024-07-29 04:25:14'),
(620, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:25:16', '2024-07-29 04:25:16'),
(621, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"modificar_estudiantes\",\"name\":\"modificar_estudiantes\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:25:36', '2024-07-29 04:25:36'),
(622, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:25:36', '2024-07-29 04:25:36'),
(623, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:25:38', '2024-07-29 04:25:38'),
(624, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"modificar_notas\",\"name\":\"modificar_notas\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:26:32', '2024-07-29 04:26:32'),
(625, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:26:33', '2024-07-29 04:26:33'),
(626, 1, 'admin/auth/permissions/15', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:26:44', '2024-07-29 04:26:44'),
(627, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:26:44', '2024-07-29 04:26:44'),
(628, 1, 'admin/auth/permissions/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:26:48', '2024-07-29 04:26:48'),
(629, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:26:48', '2024-07-29 04:26:48'),
(630, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:27:13', '2024-07-29 04:27:13'),
(631, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"ver_materias\",\"name\":\"ver_materias\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/materias\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:27:54', '2024-07-29 04:27:54'),
(632, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:27:55', '2024-07-29 04:27:55'),
(633, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:27:57', '2024-07-29 04:27:57'),
(634, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"ver_docentes\",\"name\":\"ver_docentes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:28:48', '2024-07-29 04:28:48'),
(635, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:28:49', '2024-07-29 04:28:49'),
(636, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:28:51', '2024-07-29 04:28:51'),
(637, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"ver_estudiantes\",\"name\":\"ver_estudiantes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:29:17', '2024-07-29 04:29:17'),
(638, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:29:17', '2024-07-29 04:29:17'),
(639, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:29:27', '2024-07-29 04:29:27'),
(640, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"ver_detalle_E_M\",\"name\":\"ver_detalle_E_M\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:30:04', '2024-07-29 04:30:04'),
(641, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:30:04', '2024-07-29 04:30:04'),
(642, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:30:05', '2024-07-29 04:30:05'),
(643, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"ver_notas\",\"name\":\"ver_notas\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:30:57', '2024-07-29 04:30:57'),
(644, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:30:57', '2024-07-29 04:30:57'),
(645, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:30:59', '2024-07-29 04:30:59'),
(646, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"ver_cursos\",\"name\":\"ver_cursos\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/cursos\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:31:16', '2024-07-29 04:31:16'),
(647, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:31:16', '2024-07-29 04:31:16'),
(648, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:31:21', '2024-07-29 04:31:21'),
(649, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:31:23', '2024-07-29 04:31:23'),
(650, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:31:32', '2024-07-29 04:31:32'),
(651, 1, 'admin/auth/roles/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:31:35', '2024-07-29 04:31:35'),
(652, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:31:35', '2024-07-29 04:31:35'),
(653, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:31:40', '2024-07-29 04:31:40'),
(654, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"jefe de carrera\",\"name\":\"jefe de carrera\",\"permissions\":[\"8\",\"9\",\"17\",\"20\",\"23\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:33:23', '2024-07-29 04:33:23'),
(655, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:33:23', '2024-07-29 04:33:23'),
(656, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:33:25', '2024-07-29 04:33:25'),
(657, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"docentes\",\"name\":\"docentes\",\"permissions\":[\"12\",\"14\",\"19\",\"20\",\"23\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:35:07', '2024-07-29 04:35:07'),
(658, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:35:08', '2024-07-29 04:35:08'),
(659, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:35:10', '2024-07-29 04:35:10'),
(660, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"registro\",\"name\":\"registro\",\"permissions\":[\"10\",\"11\",\"13\",\"19\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:36:11', '2024-07-29 04:36:11'),
(661, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:36:11', '2024-07-29 04:36:11'),
(662, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:36:13', '2024-07-29 04:36:13'),
(663, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"estudiantes\",\"name\":\"estudiantes\",\"permissions\":[\"18\",\"19\",\"21\",\"22\",\"23\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:37:34', '2024-07-29 04:37:34'),
(664, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:37:35', '2024-07-29 04:37:35'),
(665, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:37:37', '2024-07-29 04:37:37'),
(666, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"invitado\",\"name\":\"invitado\",\"permissions\":[\"18\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:37:54', '2024-07-29 04:37:54'),
(667, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:37:55', '2024-07-29 04:37:55'),
(668, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:37:57', '2024-07-29 04:37:57'),
(669, 1, 'admin/auth/users/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:38:01', '2024-07-29 04:38:01'),
(670, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:38:02', '2024-07-29 04:38:02'),
(671, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:38:04', '2024-07-29 04:38:04'),
(672, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:39:40', '2024-07-29 04:39:40'),
(673, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"lic_pedro\",\"name\":\"pedro\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"3215\",\"roles\":[\"4\",null],\"search_terms\":null,\"permissions\":[\"12\",\"14\",\"19\",\"20\",\"23\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:40:16', '2024-07-29 04:40:16'),
(674, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:40:17', '2024-07-29 04:40:17'),
(675, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:40:19', '2024-07-29 04:40:19'),
(676, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Re_laura\",\"name\":\"laura\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"3215\",\"roles\":[\"5\",null],\"search_terms\":null,\"permissions\":[\"10\",\"11\",\"13\",\"19\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:41:03', '2024-07-29 04:41:03'),
(677, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:41:04', '2024-07-29 04:41:04'),
(678, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:41:06', '2024-07-29 04:41:06'),
(679, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"JF_darius\",\"name\":\"darius\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"3215\",\"roles\":[\"3\",null],\"search_terms\":null,\"permissions\":[\"9\",\"8\",\"17\",\"20\",\"23\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:42:25', '2024-07-29 04:42:25'),
(680, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:42:25', '2024-07-29 04:42:25'),
(681, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:42:37', '2024-07-29 04:42:37'),
(682, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"invitado\",\"name\":\"invitado\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"3215\",\"roles\":[\"7\",null],\"search_terms\":null,\"permissions\":[\"18\",null],\"_token\":\"pbhDpRy7fgZdGXpbTL9r5EGHzTTgAtVTxCmsKsjE\"}', '2024-07-29 04:42:59', '2024-07-29 04:42:59'),
(683, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:42:59', '2024-07-29 04:42:59'),
(684, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:43:07', '2024-07-29 04:43:07'),
(685, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:43:12', '2024-07-29 04:43:12'),
(686, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:43:17', '2024-07-29 04:43:17'),
(687, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:43:19', '2024-07-29 04:43:19'),
(688, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Brandon\",\"name\":\"brandon\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"3215\",\"roles\":[\"6\",null],\"search_terms\":null,\"permissions\":[\"18\",\"19\",\"21\",\"22\",\"23\",null],\"_token\":\"gqD904k08IG4vKmOmZN1pxoOjBQ5SjXXd2P0e9pn\"}', '2024-07-29 04:44:08', '2024-07-29 04:44:08'),
(689, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:08', '2024-07-29 04:44:08'),
(690, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:24', '2024-07-29 04:44:24'),
(691, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:34', '2024-07-29 04:44:34'),
(692, 3, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:38', '2024-07-29 04:44:38'),
(693, 3, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:39', '2024-07-29 04:44:39'),
(694, 3, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:40', '2024-07-29 04:44:40'),
(695, 3, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:40', '2024-07-29 04:44:40'),
(696, 3, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:41', '2024-07-29 04:44:41'),
(697, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:43', '2024-07-29 04:44:43'),
(698, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:56', '2024-07-29 04:44:56'),
(699, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:44:58', '2024-07-29 04:44:58'),
(700, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:01', '2024-07-29 04:45:01'),
(701, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:03', '2024-07-29 04:45:03'),
(702, 3, 'admin/materias/5', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:09', '2024-07-29 04:45:09'),
(703, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:13', '2024-07-29 04:45:13'),
(704, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:16', '2024-07-29 04:45:16'),
(705, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:21', '2024-07-29 04:45:21'),
(706, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:26', '2024-07-29 04:45:26'),
(707, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:29', '2024-07-29 04:45:29'),
(708, 3, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:36', '2024-07-29 04:45:36'),
(709, 3, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:37', '2024-07-29 04:45:37'),
(710, 3, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:44', '2024-07-29 04:45:44'),
(711, 3, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:45', '2024-07-29 04:45:45'),
(712, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:46', '2024-07-29 04:45:46'),
(713, 3, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:47', '2024-07-29 04:45:47'),
(714, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:48', '2024-07-29 04:45:48'),
(715, 3, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:45:59', '2024-07-29 04:45:59'),
(716, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:01', '2024-07-29 04:46:01'),
(717, 3, 'admin/notas_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:03', '2024-07-29 04:46:03'),
(718, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:05', '2024-07-29 04:46:05'),
(719, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:14', '2024-07-29 04:46:14'),
(720, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:24', '2024-07-29 04:46:24'),
(721, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:27', '2024-07-29 04:46:27'),
(722, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:40', '2024-07-29 04:46:40'),
(723, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:46', '2024-07-29 04:46:46'),
(724, 4, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:56', '2024-07-29 04:46:56'),
(725, 4, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 04:46:59', '2024-07-29 04:46:59'),
(726, 4, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:02', '2024-07-29 04:47:02'),
(727, 4, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:04', '2024-07-29 04:47:04'),
(728, 4, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:06', '2024-07-29 04:47:06'),
(729, 4, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:09', '2024-07-29 04:47:09'),
(730, 4, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:12', '2024-07-29 04:47:12'),
(731, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:13', '2024-07-29 04:47:13'),
(732, 4, 'admin/detalle_materia_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:18', '2024-07-29 04:47:18'),
(733, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:20', '2024-07-29 04:47:20'),
(734, 4, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:21', '2024-07-29 04:47:21'),
(735, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:24', '2024-07-29 04:47:24'),
(736, 4, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:25', '2024-07-29 04:47:25'),
(737, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:27', '2024-07-29 04:47:27'),
(738, 4, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:28', '2024-07-29 04:47:28'),
(739, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:30', '2024-07-29 04:47:30'),
(740, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:37', '2024-07-29 04:47:37'),
(741, 4, 'admin/detalle_materia_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:39', '2024-07-29 04:47:39'),
(742, 4, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:47:57', '2024-07-29 04:47:57'),
(743, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:03', '2024-07-29 04:48:03'),
(744, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:14', '2024-07-29 04:48:14'),
(745, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:26', '2024-07-29 04:48:26'),
(746, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:29', '2024-07-29 04:48:29'),
(747, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:37', '2024-07-29 04:48:37'),
(748, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:44', '2024-07-29 04:48:44'),
(749, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"lic_pedro\",\"name\":\"pedro\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$MrMOENdoFwBklN5IM7bW3eiqbyoJ1Iza92emo9GaKa9eRz\\/u\\/C7ui\",\"roles\":[\"4\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"VCtSF3rEfsUROeu3lEkZNY0dGYtEomtW2zNo4ZFu\",\"_method\":\"PUT\"}', '2024-07-29 04:48:51', '2024-07-29 04:48:51'),
(750, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:51', '2024-07-29 04:48:51'),
(751, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:48:56', '2024-07-29 04:48:56'),
(752, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:09', '2024-07-29 04:49:09'),
(753, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:22', '2024-07-29 04:49:22'),
(754, 3, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:23', '2024-07-29 04:49:23'),
(755, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:25', '2024-07-29 04:49:25'),
(756, 3, 'admin/notas_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:27', '2024-07-29 04:49:27'),
(757, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:29', '2024-07-29 04:49:29'),
(758, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:34', '2024-07-29 04:49:34'),
(759, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:38', '2024-07-29 04:49:38'),
(760, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:44', '2024-07-29 04:49:44'),
(761, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:46', '2024-07-29 04:49:46'),
(762, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:49:50', '2024-07-29 04:49:50'),
(763, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:50:00', '2024-07-29 04:50:00'),
(764, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:50:02', '2024-07-29 04:50:02'),
(765, 1, 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:50:33', '2024-07-29 04:50:33'),
(766, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:50:45', '2024-07-29 04:50:45'),
(767, 1, 'admin/notas_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:50:48', '2024-07-29 04:50:48'),
(768, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:08', '2024-07-29 04:51:08'),
(769, 1, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:10', '2024-07-29 04:51:10'),
(770, 1, 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_notas\",\"name\":\"control_total_notas\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\r\\n\\/admin\\/notas_estudiantes\\/1\\/edit\\r\\n\\/admin\\/notas_estudiantes\\/create\",\"_token\":\"wxXZVGt9iuTY82Jtsu6GHZ0HYNhxHo58iMQUZt24\",\"_method\":\"PUT\"}', '2024-07-29 04:51:23', '2024-07-29 04:51:23'),
(771, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:23', '2024-07-29 04:51:23'),
(772, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:29', '2024-07-29 04:51:29'),
(773, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:38', '2024-07-29 04:51:38'),
(774, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:41', '2024-07-29 04:51:41'),
(775, 3, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:42', '2024-07-29 04:51:42'),
(776, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:44', '2024-07-29 04:51:44'),
(777, 3, 'admin/notas_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:46', '2024-07-29 04:51:46'),
(778, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:48', '2024-07-29 04:51:48'),
(779, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:51:58', '2024-07-29 04:51:58'),
(780, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:01', '2024-07-29 04:52:01'),
(781, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:03', '2024-07-29 04:52:03'),
(782, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:20', '2024-07-29 04:52:20'),
(783, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:26', '2024-07-29 04:52:26'),
(784, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:28', '2024-07-29 04:52:28'),
(785, 1, 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:34', '2024-07-29 04:52:34'),
(786, 1, 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_notas\",\"name\":\"control_total_notas\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/notas_estudiantes\",\"_token\":\"QR3bZb93SVHQhhw0Um2t9MQaOBAVOHS3nJG8u1w7\",\"_method\":\"PUT\"}', '2024-07-29 04:52:58', '2024-07-29 04:52:58'),
(787, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 04:52:58', '2024-07-29 04:52:58'),
(788, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:05', '2024-07-29 04:53:05'),
(789, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:14', '2024-07-29 04:53:14'),
(790, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:17', '2024-07-29 04:53:17'),
(791, 3, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:18', '2024-07-29 04:53:18'),
(792, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:24', '2024-07-29 04:53:24'),
(793, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:27', '2024-07-29 04:53:27'),
(794, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:31', '2024-07-29 04:53:31'),
(795, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:53:41', '2024-07-29 04:53:41'),
(796, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-07-29 04:57:51', '2024-07-29 04:57:51'),
(797, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:59:02', '2024-07-29 04:59:02'),
(798, 1, 'admin/notas_estudiantes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:59:06', '2024-07-29 04:59:06'),
(799, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:59:10', '2024-07-29 04:59:10'),
(800, 1, 'admin/notas_estudiantes/2/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 04:59:11', '2024-07-29 04:59:11'),
(801, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 04:59:13', '2024-07-29 04:59:13'),
(802, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '{\"_columns_\":\"fk_id_estudiante_materia,id,puntaje\"}', '2024-07-29 04:59:26', '2024-07-29 04:59:26'),
(803, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 04:59:58', '2024-07-29 04:59:58'),
(804, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-07-29 05:00:30', '2024-07-29 05:00:30'),
(805, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 05:00:35', '2024-07-29 05:00:35'),
(806, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:16:31', '2024-07-29 05:16:31'),
(807, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:16:43', '2024-07-29 05:16:43'),
(808, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:16:43', '2024-07-29 05:16:43'),
(809, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-07-29 05:16:44', '2024-07-29 05:16:44'),
(810, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:16:54', '2024-07-29 05:16:54'),
(811, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:28:13', '2024-07-29 05:28:13'),
(812, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:28:20', '2024-07-29 05:28:20'),
(813, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_materia\",\"name\":\"control_total_materia\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\/*\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:28:35', '2024-07-29 05:28:35'),
(814, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:28:36', '2024-07-29 05:28:36'),
(815, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:28:39', '2024-07-29 05:28:39'),
(816, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_docentes\",\"name\":\"control_total_docentes\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\\/*\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:28:47', '2024-07-29 05:28:47'),
(817, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:28:47', '2024-07-29 05:28:47'),
(818, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:28:54', '2024-07-29 05:28:54'),
(819, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_estudiantes\",\"name\":\"control_total_estudiantes\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\\/*\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:29:02', '2024-07-29 05:29:02'),
(820, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:02', '2024-07-29 05:29:02'),
(821, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:06', '2024-07-29 05:29:06'),
(822, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_materia\",\"name\":\"control_total_materia\",\"http_method\":[\"DELETE\",\"GET\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\/*\\r\\n\\/materias\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:29:15', '2024-07-29 05:29:15'),
(823, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:15', '2024-07-29 05:29:15'),
(824, 1, 'admin/auth/permissions/11/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:22', '2024-07-29 05:29:22'),
(825, 1, 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_Detalle_E_M\",\"name\":\"control_total_Detalle_E_M\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\\/*\\r\\n\\/detalle_materia_estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:29:34', '2024-07-29 05:29:34'),
(826, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:34', '2024-07-29 05:29:34'),
(827, 1, 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_Detalle_E_M\",\"name\":\"control_total_Detalle_E_M\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\\/*\\r\\n\\/detalle_materia_estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:29:35', '2024-07-29 05:29:35'),
(828, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:35', '2024-07-29 05:29:35'),
(829, 1, 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:38', '2024-07-29 05:29:38'),
(830, 1, 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_notas\",\"name\":\"control_total_notas\",\"http_method\":[\"GET\",\"DELETE\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\r\\n\\/notas_estudiantes\\/*\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:29:52', '2024-07-29 05:29:52'),
(831, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:52', '2024-07-29 05:29:52'),
(832, 1, 'admin/auth/permissions/13/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:29:56', '2024-07-29 05:29:56'),
(833, 1, 'admin/auth/permissions/13', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_cursos\",\"name\":\"control_total_cursos\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/cursos\\r\\n\\/cursos\\/*\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:30:02', '2024-07-29 05:30:02'),
(834, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:30:03', '2024-07-29 05:30:03'),
(835, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:30:13', '2024-07-29 05:30:13'),
(836, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/edit\\r\\n\\/materias\\/show\\r\\n\\/materias\\/delete\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:30:57', '2024-07-29 05:30:57'),
(837, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:30:57', '2024-07-29 05:30:57'),
(838, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:31:04', '2024-07-29 05:31:04'),
(839, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/edit\\r\\n\\/materias\\/show\\r\\n\\/materias\\/delete\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:31:07', '2024-07-29 05:31:07'),
(840, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:31:07', '2024-07-29 05:31:07'),
(841, 1, 'admin/auth/permissions/17/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:31:13', '2024-07-29 05:31:13'),
(842, 1, 'admin/auth/permissions/17', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_notas\",\"name\":\"modificar_notas\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\/edit\\r\\n\\/notas_estudiantes\\/show\\r\\n\\/notas_estudiantes\\/delete\\r\\n\\/notas_estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:31:42', '2024-07-29 05:31:42'),
(843, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:31:42', '2024-07-29 05:31:42'),
(844, 1, 'admin/auth/permissions/18/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:32:40', '2024-07-29 05:32:40'),
(845, 1, 'admin/auth/permissions/18', 'PUT', '127.0.0.1', '{\"slug\":\"ver_materias\",\"name\":\"ver_materias\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/show\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:32:52', '2024-07-29 05:32:52'),
(846, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:32:52', '2024-07-29 05:32:52'),
(847, 1, 'admin/auth/permissions/20/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:32:56', '2024-07-29 05:32:56'),
(848, 1, 'admin/auth/permissions/20', 'PUT', '127.0.0.1', '{\"slug\":\"ver_estudiantes\",\"name\":\"ver_estudiantes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\\/show\\r\\n\\/estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:33:08', '2024-07-29 05:33:08'),
(849, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:08', '2024-07-29 05:33:08'),
(850, 1, 'admin/auth/permissions/20/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:12', '2024-07-29 05:33:12'),
(851, 1, 'admin/auth/permissions/20', 'PUT', '127.0.0.1', '{\"slug\":\"ver_estudiantes\",\"name\":\"ver_estudiantes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\\/show\\r\\n\\/estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:33:14', '2024-07-29 05:33:14'),
(852, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:14', '2024-07-29 05:33:14'),
(853, 1, 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:18', '2024-07-29 05:33:18'),
(854, 1, 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"ver_docentes\",\"name\":\"ver_docentes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\\/show\\r\\n\\/docentes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:33:25', '2024-07-29 05:33:25'),
(855, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:26', '2024-07-29 05:33:26'),
(856, 1, 'admin/auth/permissions/21/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:31', '2024-07-29 05:33:31'),
(857, 1, 'admin/auth/permissions/21', 'PUT', '127.0.0.1', '{\"slug\":\"ver_detalle_E_M\",\"name\":\"ver_detalle_E_M\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\\/show\\r\\n\\/detalle_materia_estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:33:42', '2024-07-29 05:33:42'),
(858, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:42', '2024-07-29 05:33:42'),
(859, 1, 'admin/auth/permissions/22/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:45', '2024-07-29 05:33:45'),
(860, 1, 'admin/auth/permissions/22', 'PUT', '127.0.0.1', '{\"slug\":\"ver_notas\",\"name\":\"ver_notas\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\/show\\r\\n\\/notas_estudiantes\",\"_token\":\"v0dBT40hsTM1iwROfobYi3dJNVNBURPPaSCeK4db\",\"_method\":\"PUT\"}', '2024-07-29 05:33:53', '2024-07-29 05:33:53'),
(861, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:33:53', '2024-07-29 05:33:53'),
(862, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:08', '2024-07-29 05:34:08'),
(863, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:18', '2024-07-29 05:34:18'),
(864, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:21', '2024-07-29 05:34:21'),
(865, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:24', '2024-07-29 05:34:24'),
(866, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:26', '2024-07-29 05:34:26'),
(867, 3, 'admin/materias/5', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:28', '2024-07-29 05:34:28'),
(868, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:31', '2024-07-29 05:34:31'),
(869, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:33', '2024-07-29 05:34:33'),
(870, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:34:34', '2024-07-29 05:34:34'),
(871, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:13', '2024-07-29 05:35:13'),
(872, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:16', '2024-07-29 05:35:16'),
(873, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:21', '2024-07-29 05:35:21'),
(874, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:38', '2024-07-29 05:35:38'),
(875, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/edit\\r\\n\\/materias\\/show\\r\\n\\/materias\\/delete\",\"_token\":\"HhSp5i01Ye9qF2kMuqipKf5zUn4XAt4dtfn4A3Gs\",\"_method\":\"PUT\"}', '2024-07-29 05:35:42', '2024-07-29 05:35:42'),
(876, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:42', '2024-07-29 05:35:42'),
(877, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:51', '2024-07-29 05:35:51'),
(878, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_materia\",\"name\":\"control_total_materia\",\"http_method\":[\"DELETE\",\"GET\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\/*\\r\\n\\/materias\",\"_token\":\"HhSp5i01Ye9qF2kMuqipKf5zUn4XAt4dtfn4A3Gs\",\"_method\":\"PUT\"}', '2024-07-29 05:35:55', '2024-07-29 05:35:55'),
(879, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:35:55', '2024-07-29 05:35:55'),
(880, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:36:03', '2024-07-29 05:36:03'),
(881, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:36:24', '2024-07-29 05:36:24'),
(882, 1, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:36:28', '2024-07-29 05:36:28'),
(883, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"PATCH\",\"PUT\",\"POST\",\"OPTIONS\",\"HEAD\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\\r\\n\\/materias\\/show\\r\\n\\/materias\\/delete\",\"_token\":\"HhSp5i01Ye9qF2kMuqipKf5zUn4XAt4dtfn4A3Gs\",\"_method\":\"PUT\"}', '2024-07-29 05:38:02', '2024-07-29 05:38:02'),
(884, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:02', '2024-07-29 05:38:02'),
(885, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:08', '2024-07-29 05:38:08'),
(886, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:16', '2024-07-29 05:38:16'),
(887, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:19', '2024-07-29 05:38:19'),
(888, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:20', '2024-07-29 05:38:20'),
(889, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:25', '2024-07-29 05:38:25'),
(890, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:26', '2024-07-29 05:38:26'),
(891, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:28', '2024-07-29 05:38:28'),
(892, 3, 'admin/materias/5', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:30', '2024-07-29 05:38:30'),
(893, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:38', '2024-07-29 05:38:38'),
(894, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:40', '2024-07-29 05:38:40'),
(895, 3, 'admin/materias/5', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:46', '2024-07-29 05:38:46'),
(896, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:49', '2024-07-29 05:38:49'),
(897, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:38:51', '2024-07-29 05:38:51'),
(898, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:02', '2024-07-29 05:40:02'),
(899, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:05', '2024-07-29 05:40:05'),
(900, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:08', '2024-07-29 05:40:08'),
(901, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:09', '2024-07-29 05:40:09'),
(902, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"tuvieja\",\"descripcion\":\"tuvieja\",\"fk_id_facultad\":\"2\",\"_token\":\"adjnQPlJbqF3QoAfLE1ARk03MFAQrKAZ1sRApTFf\"}', '2024-07-29 05:40:19', '2024-07-29 05:40:19'),
(903, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:20', '2024-07-29 05:40:20'),
(904, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:27', '2024-07-29 05:40:27'),
(905, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:37', '2024-07-29 05:40:37'),
(906, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:41', '2024-07-29 05:40:41'),
(907, 3, 'admin/materias/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WZkVUQ4xX86z5vUdrvYRt4gXL9aGH8TZQFnbvOtZ\"}', '2024-07-29 05:40:45', '2024-07-29 05:40:45'),
(908, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:46', '2024-07-29 05:40:46'),
(909, 3, 'admin/materias/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WZkVUQ4xX86z5vUdrvYRt4gXL9aGH8TZQFnbvOtZ\"}', '2024-07-29 05:40:54', '2024-07-29 05:40:54'),
(910, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:54', '2024-07-29 05:40:54'),
(911, 3, 'admin/materias/8/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:40:58', '2024-07-29 05:40:58'),
(912, 3, 'admin/materias/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WZkVUQ4xX86z5vUdrvYRt4gXL9aGH8TZQFnbvOtZ\"}', '2024-07-29 05:41:00', '2024-07-29 05:41:00'),
(913, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:41:01', '2024-07-29 05:41:01'),
(914, 3, 'admin/materias/8', 'GET', '127.0.0.1', '[]', '2024-07-29 05:41:06', '2024-07-29 05:41:06'),
(915, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:41:08', '2024-07-29 05:41:08'),
(916, 3, 'admin/materias/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WZkVUQ4xX86z5vUdrvYRt4gXL9aGH8TZQFnbvOtZ\"}', '2024-07-29 05:41:54', '2024-07-29 05:41:54'),
(917, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:41:55', '2024-07-29 05:41:55'),
(918, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:07', '2024-07-29 05:42:07'),
(919, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:12', '2024-07-29 05:42:12'),
(920, 3, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:14', '2024-07-29 05:42:14'),
(921, 3, 'admin/notas_estudiantes', 'POST', '127.0.0.1', '{\"puntaje\":\"100\",\"fk_id_estudiante_materia\":\"1\",\"_token\":\"WZkVUQ4xX86z5vUdrvYRt4gXL9aGH8TZQFnbvOtZ\"}', '2024-07-29 05:42:21', '2024-07-29 05:42:21'),
(922, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:22', '2024-07-29 05:42:22'),
(923, 3, 'admin/notas_estudiantes/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"WZkVUQ4xX86z5vUdrvYRt4gXL9aGH8TZQFnbvOtZ\"}', '2024-07-29 05:42:27', '2024-07-29 05:42:27'),
(924, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:27', '2024-07-29 05:42:27'),
(925, 3, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:34', '2024-07-29 05:42:34'),
(926, 3, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:36', '2024-07-29 05:42:36'),
(927, 3, 'admin/cursos/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:38', '2024-07-29 05:42:38'),
(928, 3, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:40', '2024-07-29 05:42:40'),
(929, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:46', '2024-07-29 05:42:46'),
(930, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:49', '2024-07-29 05:42:49'),
(931, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:42:56', '2024-07-29 05:42:56'),
(932, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:43:00', '2024-07-29 05:43:00'),
(933, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\\r\\n\\/materias\\/*\",\"_token\":\"kHxpxMV7Hxs3SEYxwzek2Iy77WbqA5iaY99KIXY2\",\"_method\":\"PUT\"}', '2024-07-29 05:43:17', '2024-07-29 05:43:17'),
(934, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:43:17', '2024-07-29 05:43:17'),
(935, 1, 'admin/auth/permissions/17/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:43:24', '2024-07-29 05:43:24'),
(936, 1, 'admin/auth/permissions/17', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_notas\",\"name\":\"modificar_notas\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\/*\\/edit\\r\\n\\/notas_estudiantes\\r\\n\\/notas_estudiantes\\/*\",\"_token\":\"kHxpxMV7Hxs3SEYxwzek2Iy77WbqA5iaY99KIXY2\",\"_method\":\"PUT\"}', '2024-07-29 05:43:42', '2024-07-29 05:43:42'),
(937, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:43:43', '2024-07-29 05:43:43'),
(938, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:43:47', '2024-07-29 05:43:47'),
(939, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:43:58', '2024-07-29 05:43:58'),
(940, 3, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:03', '2024-07-29 05:44:03'),
(941, 3, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:05', '2024-07-29 05:44:05'),
(942, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:05', '2024-07-29 05:44:05'),
(943, 3, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:13', '2024-07-29 05:44:13'),
(944, 3, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:14', '2024-07-29 05:44:14'),
(945, 3, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:16', '2024-07-29 05:44:16'),
(946, 3, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:17', '2024-07-29 05:44:17'),
(947, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:32', '2024-07-29 05:44:32'),
(948, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:34', '2024-07-29 05:44:34'),
(949, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:38', '2024-07-29 05:44:38'),
(950, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:40', '2024-07-29 05:44:40'),
(951, 3, 'admin/materias/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"T1YzVFd2y41A1IKdMVVKD3JUSFQPnmba87bOkdDx\"}', '2024-07-29 05:44:57', '2024-07-29 05:44:57'),
(952, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:44:57', '2024-07-29 05:44:57'),
(953, 3, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:45:05', '2024-07-29 05:45:05'),
(954, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:45:11', '2024-07-29 05:45:11'),
(955, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:45:14', '2024-07-29 05:45:14'),
(956, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:45:19', '2024-07-29 05:45:19'),
(957, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:45:25', '2024-07-29 05:45:25'),
(958, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"OPTIONS\",\"PUT\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\\r\\n\\/materias\\/*\\/view\\r\\n\\/materias\\/*\\/show\",\"_token\":\"Kks8DiEjR1IDZswRpB8pZLj2nQdGpuRsulwrTJo2\",\"_method\":\"PUT\"}', '2024-07-29 05:46:51', '2024-07-29 05:46:51'),
(959, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:46:51', '2024-07-29 05:46:51'),
(960, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:46:56', '2024-07-29 05:46:56'),
(961, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:05', '2024-07-29 05:47:05'),
(962, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:11', '2024-07-29 05:47:11'),
(963, 3, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:12', '2024-07-29 05:47:12'),
(964, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:18', '2024-07-29 05:47:18'),
(965, 3, 'admin/materias/5', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:21', '2024-07-29 05:47:21'),
(966, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:23', '2024-07-29 05:47:23'),
(967, 3, 'admin/materias/6', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:24', '2024-07-29 05:47:24'),
(968, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:26', '2024-07-29 05:47:26'),
(969, 3, 'admin/materias/7', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:28', '2024-07-29 05:47:28'),
(970, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:29', '2024-07-29 05:47:29'),
(971, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:32', '2024-07-29 05:47:32'),
(972, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:34', '2024-07-29 05:47:34'),
(973, 3, 'admin/materias/5', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:43', '2024-07-29 05:47:43');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(974, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:47:45', '2024-07-29 05:47:45'),
(975, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:48:14', '2024-07-29 05:48:14'),
(976, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:48:16', '2024-07-29 05:48:16'),
(977, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:48:20', '2024-07-29 05:48:20'),
(978, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:48:36', '2024-07-29 05:48:36'),
(979, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"OPTIONS\",\"PATCH\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\\r\\n\\/materias\\/#\",\"_token\":\"VvVFb3i6yQGoCH75iQWz1YKtjpgGS4K9OCJc3DuG\",\"_method\":\"PUT\"}', '2024-07-29 05:48:53', '2024-07-29 05:48:53'),
(980, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:48:54', '2024-07-29 05:48:54'),
(981, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:01', '2024-07-29 05:49:01'),
(982, 1, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:03', '2024-07-29 05:49:03'),
(983, 1, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"asd\",\"descripcion\":\"asd\",\"fk_id_facultad\":\"2\",\"_token\":\"VvVFb3i6yQGoCH75iQWz1YKtjpgGS4K9OCJc3DuG\"}', '2024-07-29 05:49:08', '2024-07-29 05:49:08'),
(984, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:08', '2024-07-29 05:49:08'),
(985, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:17', '2024-07-29 05:49:17'),
(986, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:45', '2024-07-29 05:49:45'),
(987, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:48', '2024-07-29 05:49:48'),
(988, 3, 'admin/materias/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:49:50', '2024-07-29 05:49:50'),
(989, 3, 'admin/materias/9', 'PUT', '127.0.0.1', '{\"nombre\":\"asd123\",\"descripcion\":\"asd\",\"fk_id_facultad\":\"2\",\"_token\":\"i9HMNsyK2qcrJ1QV1zjA5Eltrwm4ou7YVaei7Mlm\",\"_method\":\"PUT\"}', '2024-07-29 05:49:54', '2024-07-29 05:49:54'),
(990, 3, 'admin/materias/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:10', '2024-07-29 05:50:10'),
(991, 3, 'admin/materias/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"i9HMNsyK2qcrJ1QV1zjA5Eltrwm4ou7YVaei7Mlm\"}', '2024-07-29 05:50:15', '2024-07-29 05:50:15'),
(992, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:16', '2024-07-29 05:50:16'),
(993, 3, 'admin/materias/9', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:21', '2024-07-29 05:50:21'),
(994, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:24', '2024-07-29 05:50:24'),
(995, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:31', '2024-07-29 05:50:31'),
(996, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:35', '2024-07-29 05:50:35'),
(997, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:42', '2024-07-29 05:50:42'),
(998, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:47', '2024-07-29 05:50:47'),
(999, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"OPTIONS\",\"PATCH\",\"PUT\",\"POST\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\",\"_token\":\"Oa58oapLrF2vJE2xvqrdfd5mHmBKy3e2X7hqhNj2\",\"_method\":\"PUT\"}', '2024-07-29 05:50:59', '2024-07-29 05:50:59'),
(1000, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:50:59', '2024-07-29 05:50:59'),
(1001, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:04', '2024-07-29 05:51:04'),
(1002, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:12', '2024-07-29 05:51:12'),
(1003, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:17', '2024-07-29 05:51:17'),
(1004, 3, 'admin/materias/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:19', '2024-07-29 05:51:19'),
(1005, 3, 'admin/materias/9', 'PUT', '127.0.0.1', '{\"nombre\":\"asd4\",\"descripcion\":\"asd\",\"fk_id_facultad\":\"2\",\"_token\":\"xJnYcr88nUdy1KTgCyxaIleaLjqT4VTZbllPwZ1c\",\"_method\":\"PUT\"}', '2024-07-29 05:51:22', '2024-07-29 05:51:22'),
(1006, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:49', '2024-07-29 05:51:49'),
(1007, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:52', '2024-07-29 05:51:52'),
(1008, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:51:58', '2024-07-29 05:51:58'),
(1009, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:53:31', '2024-07-29 05:53:31'),
(1010, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:53:38', '2024-07-29 05:53:38'),
(1011, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"DELETE\",\"GET\",\"OPTIONS\",\"PATCH\",\"PUT\",\"HEAD\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\\r\\n\\/materias\\/*\",\"_token\":\"9YUlsAZxQBgrSy2OCtXxapeqW8aE9s8sGMxthqEK\",\"_method\":\"PUT\"}', '2024-07-29 05:54:04', '2024-07-29 05:54:04'),
(1012, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:05', '2024-07-29 05:54:05'),
(1013, 1, 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:21', '2024-07-29 05:54:21'),
(1014, 1, 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"ver_docentes\",\"name\":\"ver_docentes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\\/show\\r\\n\\/docentes\\/*\",\"_token\":\"9YUlsAZxQBgrSy2OCtXxapeqW8aE9s8sGMxthqEK\",\"_method\":\"PUT\"}', '2024-07-29 05:54:27', '2024-07-29 05:54:27'),
(1015, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:28', '2024-07-29 05:54:28'),
(1016, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:34', '2024-07-29 05:54:34'),
(1017, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:51', '2024-07-29 05:54:51'),
(1018, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:54', '2024-07-29 05:54:54'),
(1019, 3, 'admin/materias/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:54:56', '2024-07-29 05:54:56'),
(1020, 3, 'admin/materias/9', 'PUT', '127.0.0.1', '{\"nombre\":\"asd4http:\\/\\/127.0.0.1:8000\\/admin\\/materias\\/9\",\"descripcion\":\"asd\",\"fk_id_facultad\":\"2\",\"_token\":\"0MLFNUPuRJqyHRuFuqz0UGHSiphCAY1tD6miRoUy\",\"_method\":\"PUT\"}', '2024-07-29 05:55:01', '2024-07-29 05:55:01'),
(1021, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:01', '2024-07-29 05:55:01'),
(1022, 3, 'admin/materias/9', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:04', '2024-07-29 05:55:04'),
(1023, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:07', '2024-07-29 05:55:07'),
(1024, 3, 'admin/materias/create', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:08', '2024-07-29 05:55:08'),
(1025, 3, 'admin/materias', 'POST', '127.0.0.1', '{\"nombre\":\"asd\",\"descripcion\":\"qwe\",\"fk_id_facultad\":\"2\",\"_token\":\"0MLFNUPuRJqyHRuFuqz0UGHSiphCAY1tD6miRoUy\"}', '2024-07-29 05:55:20', '2024-07-29 05:55:20'),
(1026, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:23', '2024-07-29 05:55:23'),
(1027, 3, 'admin/materias/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"0MLFNUPuRJqyHRuFuqz0UGHSiphCAY1tD6miRoUy\"}', '2024-07-29 05:55:27', '2024-07-29 05:55:27'),
(1028, 3, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:27', '2024-07-29 05:55:27'),
(1029, 3, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:38', '2024-07-29 05:55:38'),
(1030, 3, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:39', '2024-07-29 05:55:39'),
(1031, 3, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 05:55:57', '2024-07-29 05:55:57'),
(1032, 3, 'admin/cursos/9', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:00', '2024-07-29 05:56:00'),
(1033, 3, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:02', '2024-07-29 05:56:02'),
(1034, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:04', '2024-07-29 05:56:04'),
(1035, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:08', '2024-07-29 05:56:08'),
(1036, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:14', '2024-07-29 05:56:14'),
(1037, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:20', '2024-07-29 05:56:20'),
(1038, 1, 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:28', '2024-07-29 05:56:28'),
(1039, 1, 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"ver_docentes\",\"name\":\"ver_docentes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\\r\\n\\/docentes\\/*\",\"_token\":\"GXAxe7CPkh2dd2xW9EwT9bLGxakEti8cSW7cbHcR\",\"_method\":\"PUT\"}', '2024-07-29 05:56:33', '2024-07-29 05:56:33'),
(1040, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:33', '2024-07-29 05:56:33'),
(1041, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:38', '2024-07-29 05:56:38'),
(1042, 3, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:51', '2024-07-29 05:56:51'),
(1043, 3, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:53', '2024-07-29 05:56:53'),
(1044, 3, 'admin/docentes/1', 'GET', '127.0.0.1', '[]', '2024-07-29 05:56:56', '2024-07-29 05:56:56'),
(1045, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 05:57:17', '2024-07-29 05:57:17'),
(1046, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 05:57:21', '2024-07-29 05:57:21'),
(1047, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:57:23', '2024-07-29 05:57:23'),
(1048, 1, 'admin/auth/permissions/19/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:57:27', '2024-07-29 05:57:27'),
(1049, 1, 'admin/auth/permissions/19', 'PUT', '127.0.0.1', '{\"slug\":\"ver_docentes\",\"name\":\"ver_docentes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\\r\\n\\/docentes\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:57:43', '2024-07-29 05:57:43'),
(1050, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:57:44', '2024-07-29 05:57:44'),
(1051, 1, 'admin/auth/permissions/18/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:57:55', '2024-07-29 05:57:55'),
(1052, 1, 'admin/auth/permissions/18', 'PUT', '127.0.0.1', '{\"slug\":\"ver_materias\",\"name\":\"ver_materias\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:58:00', '2024-07-29 05:58:00'),
(1053, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:01', '2024-07-29 05:58:01'),
(1054, 1, 'admin/auth/permissions/20/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:04', '2024-07-29 05:58:04'),
(1055, 1, 'admin/auth/permissions/20', 'PUT', '127.0.0.1', '{\"slug\":\"ver_estudiantes\",\"name\":\"ver_estudiantes\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\\/*\\r\\n\\/estudiantes\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:58:08', '2024-07-29 05:58:08'),
(1056, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:08', '2024-07-29 05:58:08'),
(1057, 1, 'admin/auth/permissions/21/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:11', '2024-07-29 05:58:11'),
(1058, 1, 'admin/auth/permissions/21', 'PUT', '127.0.0.1', '{\"slug\":\"ver_detalle_E_M\",\"name\":\"ver_detalle_E_M\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\\/*\\r\\n\\/detalle_materia_estudiantes\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:58:17', '2024-07-29 05:58:17'),
(1059, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:18', '2024-07-29 05:58:18'),
(1060, 1, 'admin/auth/permissions/22/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:21', '2024-07-29 05:58:21'),
(1061, 1, 'admin/auth/permissions/22', 'PUT', '127.0.0.1', '{\"slug\":\"ver_notas\",\"name\":\"ver_notas\",\"http_method\":[\"GET\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\/*\\r\\n\\/notas_estudiantes\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:58:24', '2024-07-29 05:58:24'),
(1062, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:24', '2024-07-29 05:58:24'),
(1063, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:41', '2024-07-29 05:58:41'),
(1064, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_materia\",\"name\":\"control_total_materia\",\"http_method\":[\"DELETE\",\"GET\",\"PATCH\",\"POST\",\"PUT\",\"HEAD\",\"OPTIONS\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\/*\\r\\n\\/materias\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:58:46', '2024-07-29 05:58:46'),
(1065, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:46', '2024-07-29 05:58:46'),
(1066, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:58:54', '2024-07-29 05:58:54'),
(1067, 1, 'admin/auth/permissions/9', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_docentes\",\"name\":\"control_total_docentes\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",\"HEAD\",\"OPTIONS\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/docentes\\/*\\r\\n\\/docentes\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:59:07', '2024-07-29 05:59:07'),
(1068, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:07', '2024-07-29 05:59:07'),
(1069, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:16', '2024-07-29 05:59:16'),
(1070, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_estudiantes\",\"name\":\"control_total_estudiantes\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",\"HEAD\",\"OPTIONS\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/estudiantes\\/*\\r\\n\\/estudiantes\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:59:26', '2024-07-29 05:59:26'),
(1071, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:26', '2024-07-29 05:59:26'),
(1072, 1, 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:34', '2024-07-29 05:59:34'),
(1073, 1, 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_notas\",\"name\":\"control_total_notas\",\"http_method\":[\"DELETE\",\"GET\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\r\\n\\/notas_estudiantes\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:59:36', '2024-07-29 05:59:36'),
(1074, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:36', '2024-07-29 05:59:36'),
(1075, 1, 'admin/auth/permissions/11/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:41', '2024-07-29 05:59:41'),
(1076, 1, 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_Detalle_E_M\",\"name\":\"control_total_Detalle_E_M\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",\"HEAD\",\"OPTIONS\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/detalle_materia_estudiantes\\/*\\r\\n\\/detalle_materia_estudiantes\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 05:59:48', '2024-07-29 05:59:48'),
(1077, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:49', '2024-07-29 05:59:49'),
(1078, 1, 'admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 05:59:56', '2024-07-29 05:59:56'),
(1079, 1, 'admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_notas\",\"name\":\"control_total_notas\",\"http_method\":[\"DELETE\",\"GET\",\"PATCH\",\"POST\",\"PUT\",\"HEAD\",\"OPTIONS\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\r\\n\\/notas_estudiantes\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 06:00:00', '2024-07-29 06:00:00'),
(1080, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:00:00', '2024-07-29 06:00:00'),
(1081, 1, 'admin/auth/permissions/13/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:00:04', '2024-07-29 06:00:04'),
(1082, 1, 'admin/auth/permissions/13', 'PUT', '127.0.0.1', '{\"slug\":\"control_total_cursos\",\"name\":\"control_total_cursos\",\"http_method\":[\"DELETE\",\"GET\",\"POST\",\"PUT\",\"HEAD\",\"OPTIONS\",\"PATCH\",null],\"search_terms\":null,\"http_path\":\"\\/cursos\\r\\n\\/cursos\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 06:00:09', '2024-07-29 06:00:09'),
(1083, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:00:09', '2024-07-29 06:00:09'),
(1084, 1, 'admin/auth/permissions/17/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:00:26', '2024-07-29 06:00:26'),
(1085, 1, 'admin/auth/permissions/17', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_notas\",\"name\":\"modificar_notas\",\"http_method\":[\"DELETE\",\"GET\",\"PUT\",\"PATCH\",\"OPTIONS\",\"HEAD\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\/*\\/edit\\r\\n\\/notas_estudiantes\\r\\n\\/notas_estudiantes\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 06:00:35', '2024-07-29 06:00:35'),
(1086, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:00:36', '2024-07-29 06:00:36'),
(1087, 1, 'admin/auth/permissions/14/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:01:33', '2024-07-29 06:01:33'),
(1088, 1, 'admin/auth/permissions/14', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_materias\",\"name\":\"modificar_materias\",\"http_method\":[\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/materias\\r\\n\\/materias\\/*\\/edit\\r\\n\\/materias\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 06:01:36', '2024-07-29 06:01:36'),
(1089, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:01:36', '2024-07-29 06:01:36'),
(1090, 1, 'admin/auth/permissions/17/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:01:40', '2024-07-29 06:01:40'),
(1091, 1, 'admin/auth/permissions/17', 'PUT', '127.0.0.1', '{\"slug\":\"modificar_notas\",\"name\":\"modificar_notas\",\"http_method\":[\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/notas_estudiantes\\/*\\/edit\\r\\n\\/notas_estudiantes\\r\\n\\/notas_estudiantes\\/*\",\"_token\":\"FPiPuXNxYF1Uhkr90CBiSwJD9H5FfiUzGotBVQO8\",\"_method\":\"PUT\"}', '2024-07-29 06:01:44', '2024-07-29 06:01:44'),
(1092, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:01:45', '2024-07-29 06:01:45'),
(1093, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 06:01:50', '2024-07-29 06:01:50'),
(1094, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 06:01:53', '2024-07-29 06:01:53'),
(1095, 4, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:09', '2024-07-29 06:02:09'),
(1096, 4, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:12', '2024-07-29 06:02:12'),
(1097, 4, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:13', '2024-07-29 06:02:13'),
(1098, 4, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:14', '2024-07-29 06:02:14'),
(1099, 4, 'admin/docentes/1', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:22', '2024-07-29 06:02:22'),
(1100, 4, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:25', '2024-07-29 06:02:25'),
(1101, 4, 'admin/docentes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:27', '2024-07-29 06:02:27'),
(1102, 4, 'admin/docentes/1', 'PUT', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"123456\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"NRfcUwcfhkwhpypJSQshWEWYfsDZzjWVAlEXTMC1\",\"_method\":\"PUT\"}', '2024-07-29 06:02:38', '2024-07-29 06:02:38'),
(1103, 4, 'admin/docentes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:40', '2024-07-29 06:02:40'),
(1104, 4, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:41', '2024-07-29 06:02:41'),
(1105, 4, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:43', '2024-07-29 06:02:43'),
(1106, 4, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:45', '2024-07-29 06:02:45'),
(1107, 4, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:49', '2024-07-29 06:02:49'),
(1108, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:50', '2024-07-29 06:02:50'),
(1109, 4, 'admin/detalle_materia_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:54', '2024-07-29 06:02:54'),
(1110, 4, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:02:57', '2024-07-29 06:02:57'),
(1111, 4, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:00', '2024-07-29 06:03:00'),
(1112, 4, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:07', '2024-07-29 06:03:07'),
(1113, 5, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:20', '2024-07-29 06:03:20'),
(1114, 5, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:22', '2024-07-29 06:03:22'),
(1115, 5, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:29', '2024-07-29 06:03:29'),
(1116, 5, 'admin/docentes/1/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:45', '2024-07-29 06:03:45'),
(1117, 5, 'admin/docentes/1', 'PUT', '127.0.0.1', '{\"nombre\":\"gustavo\",\"apellido\":\"tantani\",\"fk_id_facultad\":\"5\",\"telefono\":\"78945612\",\"CI\":\"123456\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-28\",\"sueldo\":\"5000\",\"_token\":\"aODRWQctniRSLdlxwk4o824r4SdNsd17oj7u65rV\",\"_method\":\"PUT\"}', '2024-07-29 06:03:47', '2024-07-29 06:03:47'),
(1118, 5, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:48', '2024-07-29 06:03:48'),
(1119, 5, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:54', '2024-07-29 06:03:54'),
(1120, 5, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:03:59', '2024-07-29 06:03:59'),
(1121, 5, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:00', '2024-07-29 06:04:00'),
(1122, 5, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:05', '2024-07-29 06:04:05'),
(1123, 5, 'admin/notas_estudiantes', 'POST', '127.0.0.1', '{\"puntaje\":\"100\",\"fk_id_estudiante_materia\":\"1\",\"_token\":\"aODRWQctniRSLdlxwk4o824r4SdNsd17oj7u65rV\"}', '2024-07-29 06:04:11', '2024-07-29 06:04:11'),
(1124, 5, 'admin/notas_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:13', '2024-07-29 06:04:13'),
(1125, 5, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:14', '2024-07-29 06:04:14'),
(1126, 5, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:28', '2024-07-29 06:04:28'),
(1127, 5, 'admin/docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:30', '2024-07-29 06:04:30'),
(1128, 5, 'admin/docentes', 'POST', '127.0.0.1', '{\"nombre\":\"<zx\",\"apellido\":\"<zx\",\"fk_id_facultad\":\"2\",\"telefono\":\"124124\",\"CI\":\"1\",\"fecha_de_contrataci\\u00f3n\":\"2024-07-29\",\"sueldo\":\"12\",\"_token\":\"aODRWQctniRSLdlxwk4o824r4SdNsd17oj7u65rV\"}', '2024-07-29 06:04:41', '2024-07-29 06:04:41'),
(1129, 5, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:42', '2024-07-29 06:04:42'),
(1130, 5, 'admin/docentes/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"aODRWQctniRSLdlxwk4o824r4SdNsd17oj7u65rV\"}', '2024-07-29 06:04:45', '2024-07-29 06:04:45'),
(1131, 5, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:04:46', '2024-07-29 06:04:46'),
(1132, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:11', '2024-07-29 06:05:11'),
(1133, 6, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:24', '2024-07-29 06:05:24'),
(1134, 6, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:40', '2024-07-29 06:05:40'),
(1135, 6, 'admin/detalle_materia_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:45', '2024-07-29 06:05:45'),
(1136, 6, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:47', '2024-07-29 06:05:47'),
(1137, 6, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:48', '2024-07-29 06:05:48'),
(1138, 6, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:48', '2024-07-29 06:05:48'),
(1139, 6, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:49', '2024-07-29 06:05:49'),
(1140, 6, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:50', '2024-07-29 06:05:50'),
(1141, 6, 'admin/materias/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:57', '2024-07-29 06:05:57'),
(1142, 6, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 06:05:59', '2024-07-29 06:05:59'),
(1143, 6, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:06:00', '2024-07-29 06:06:00'),
(1144, 6, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-07-29 06:06:13', '2024-07-29 06:06:13'),
(1145, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 06:06:15', '2024-07-29 06:06:15'),
(1146, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 06:06:35', '2024-07-29 06:06:35'),
(1147, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 06:06:40', '2024-07-29 06:06:40'),
(1148, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 06:08:06', '2024-07-29 06:08:06'),
(1149, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 06:08:13', '2024-07-29 06:08:13'),
(1150, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"usuario_docente\",\"model_name\":\"App\\\\Models\\\\usuario_docente\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\Usuario_docenteController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"fk_id_usuario\",\"type\":\"unsignedInteger\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"fk_id_docente\",\"type\":\"unsignedInteger\",\"key\":\"unique\",\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:09:09', '2024-07-29 06:09:09'),
(1151, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 06:09:15', '2024-07-29 06:09:15'),
(1152, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"usuario_estudiante\",\"model_name\":\"App\\\\Models\\\\usuario_estudiante\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\Usuario_estudianteController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"fk_id_usuario\",\"type\":\"unsignedInteger\",\"key\":\"unique\",\"default\":null,\"comment\":null},{\"name\":\"fk_id_estudiante\",\"type\":\"unsignedInteger\",\"key\":\"unique\",\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:14:38', '2024-07-29 06:14:38'),
(1153, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 06:14:39', '2024-07-29 06:14:39'),
(1154, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:16:52', '2024-07-29 06:16:52'),
(1155, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 06:16:54', '2024-07-29 06:16:54'),
(1156, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE notas_estudiantes     ADD CONSTRAINT fk_id_usuario     FOREIGN KEY (fk_id_usuario)     REFERENCES admin_user(id)     ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:17:09', '2024-07-29 06:17:09'),
(1157, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente     ADD CONSTRAINT fk_id_usuario     FOREIGN KEY (fk_id_usuario)     REFERENCES admin_user(id)     ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:18:02', '2024-07-29 06:18:02'),
(1158, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_usuario FOREIGN KEY (fk_id_usuario) REFERENCES admin_user(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:18:37', '2024-07-29 06:18:37'),
(1159, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_usuario FOREIGN KEY (fk_id_usuario) REFERENCES admin_users(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:19:36', '2024-07-29 06:19:36'),
(1160, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente    ADD CONSTRAINT fk_id_docente     FOREIGN KEY (fk_id_docente)     REFERENCES docentes(id)  ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:20:34', '2024-07-29 06:20:34'),
(1161, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentes FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:21:18', '2024-07-29 06:21:18'),
(1162, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:21:50', '2024-07-29 06:21:50'),
(1163, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentes FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:22:39', '2024-07-29 06:22:39'),
(1164, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:23:37', '2024-07-29 06:23:37'),
(1165, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SHOW INDEX FROM usuario_docente;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:24:08', '2024-07-29 06:24:08'),
(1166, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente DROP INDEX usuario_docente_fk_id_usuario_unique;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:26:09', '2024-07-29 06:26:09'),
(1167, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente DROP INDEX usuario_docente_fk_id_docente_unique;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:26:36', '2024-07-29 06:26:36'),
(1168, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentes FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:26:46', '2024-07-29 06:26:46'),
(1169, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:26:53', '2024-07-29 06:26:53'),
(1170, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docente(id) ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:27:14', '2024-07-29 06:27:14'),
(1171, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"-- Eliminar la restricci\\u00f3n de llave for\\u00e1nea si existe ALTER TABLE usuario_docente DROP FOREIGN KEY fk_id_docente;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:29:01', '2024-07-29 06:29:01'),
(1172, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docente(id) ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:29:11', '2024-07-29 06:29:11'),
(1173, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:29:22', '2024-07-29 06:29:22'),
(1174, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:29:37', '2024-07-29 06:29:37'),
(1175, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:30:26', '2024-07-29 06:30:26'),
(1176, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:30:56', '2024-07-29 06:30:56'),
(1177, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentedos FOREIGN KEY (idDocente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:31:24', '2024-07-29 06:31:24'),
(1178, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente ) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:32:08', '2024-07-29 06:32:08'),
(1179, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:32:37', '2024-07-29 06:32:37'),
(1180, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:33:30', '2024-07-29 06:33:30'),
(1181, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentes FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:33:43', '2024-07-29 06:33:43'),
(1182, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentedos FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:33:51', '2024-07-29 06:33:51'),
(1183, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_usuario FOREIGN KEY (fk_id_usuario) REFERENCES admin_users(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:34:23', '2024-07-29 06:34:23'),
(1184, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:34:52', '2024-07-29 06:34:52'),
(1185, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SHOW INDEX FROM usuario_docente;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:35:08', '2024-07-29 06:35:08'),
(1186, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_SCHEMA = \'example-app\'   AND TABLE_NAME = \'usuario_docente\';\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:35:42', '2024-07-29 06:35:42'),
(1187, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"DESCRIBE usuario_docente;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:35:54', '2024-07-29 06:35:54'),
(1188, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 06:36:15', '2024-07-29 06:36:15'),
(1189, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id) ON DELETE CASCADE;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:36:18', '2024-07-29 06:36:18'),
(1190, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:36:27', '2024-07-29 06:36:27'),
(1191, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:37:00', '2024-07-29 06:37:00'),
(1192, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:37:23', '2024-07-29 06:37:23'),
(1193, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docente FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:38:36', '2024-07-29 06:38:36'),
(1194, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente ADD CONSTRAINT fk_id_docentes FOREIGN KEY (fk_id_docente) REFERENCES docentes(id);\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:38:48', '2024-07-29 06:38:48'),
(1195, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = \'usuario_docente\'   AND CONSTRAINT_SCHEMA = \'example-app\';\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:39:21', '2024-07-29 06:39:21'),
(1196, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA = \'example-app\'   AND CONSTRAINT_NAME = \'fk_id_docentes\';\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:39:42', '2024-07-29 06:39:42'),
(1197, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente DROP FOREIGN KEY fk_id_docentes;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:41:29', '2024-07-29 06:41:29'),
(1198, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente DROP FOREIGN KEY fk_id_docentes;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:42:30', '2024-07-29 06:42:30'),
(1199, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE detalle_materia_estudiante CHANGE COLUMN fk_id_docente fk_iddocente INT;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:44:10', '2024-07-29 06:44:10'),
(1200, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente CHANGE COLUMN fk_id_docente fk_iddocente INT;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:44:28', '2024-07-29 06:44:28'),
(1201, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente CHANGE COLUMN fk_id_docente fk_id_docen INT;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:45:35', '2024-07-29 06:45:35'),
(1202, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"ALTER TABLE usuario_docente CHANGE COLUMN fk_id_docente fk_id_docen ;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:45:42', '2024-07-29 06:45:42'),
(1203, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"SHOW CREATE TABLE usuario_docente;\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:46:15', '2024-07-29 06:46:15'),
(1204, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 06:46:30', '2024-07-29 06:46:30'),
(1205, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 06:46:32', '2024-07-29 06:46:32'),
(1206, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:46:51', '2024-07-29 06:46:51'),
(1207, 1, 'admin/notas_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:46:54', '2024-07-29 06:46:54'),
(1208, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:47:14', '2024-07-29 06:47:14'),
(1209, 1, 'admin/usuario_docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:47:16', '2024-07-29 06:47:16'),
(1210, 1, 'admin/usuario_docentes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"3\",\"fk_id_docente\":\"1\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:47:50', '2024-07-29 06:47:50'),
(1211, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:47:50', '2024-07-29 06:47:50'),
(1212, 1, 'admin/usuario_docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:47:53', '2024-07-29 06:47:53'),
(1213, 1, 'admin/usuario_docentes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"3\",\"fk_id_docente\":\"2\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:48:00', '2024-07-29 06:48:00'),
(1214, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:00', '2024-07-29 06:48:00'),
(1215, 1, 'admin/usuario_docentes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:04', '2024-07-29 06:48:04'),
(1216, 1, 'admin/usuario_docentes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"3\",\"fk_id_docente\":\"3\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:48:11', '2024-07-29 06:48:11'),
(1217, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:12', '2024-07-29 06:48:12'),
(1218, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:17', '2024-07-29 06:48:17'),
(1219, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:18', '2024-07-29 06:48:18'),
(1220, 1, 'admin/usuario_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"1\",\"fk_id_estudiante\":\"1\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:48:34', '2024-07-29 06:48:34'),
(1221, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:34', '2024-07-29 06:48:34'),
(1222, 1, 'admin/usuario_estudiantes/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:48:39', '2024-07-29 06:48:39'),
(1223, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:39', '2024-07-29 06:48:39'),
(1224, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:41', '2024-07-29 06:48:41'),
(1225, 1, 'admin/usuario_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"7\",\"fk_id_estudiante\":\"1\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:48:56', '2024-07-29 06:48:56'),
(1226, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:56', '2024-07-29 06:48:56'),
(1227, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:48:58', '2024-07-29 06:48:58'),
(1228, 1, 'admin/usuario_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"7\",\"fk_id_estudiante\":\"2\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:49:00', '2024-07-29 06:49:00'),
(1229, 1, 'admin/usuario_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"7\",\"fk_id_estudiante\":\"2\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:49:05', '2024-07-29 06:49:05'),
(1230, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:49:05', '2024-07-29 06:49:05'),
(1231, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:49:06', '2024-07-29 06:49:06'),
(1232, 1, 'admin/usuario_estudiantes', 'POST', '127.0.0.1', '{\"fk_id_usuario\":\"7\",\"fk_id_estudiante\":\"3\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:49:09', '2024-07-29 06:49:09'),
(1233, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:49:10', '2024-07-29 06:49:10'),
(1234, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:49:44', '2024-07-29 06:49:44'),
(1235, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:49:47', '2024-07-29 06:49:47'),
(1236, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:49:56', '2024-07-29 06:49:56'),
(1237, 1, 'admin/usuario_estudiantes/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:50:03', '2024-07-29 06:50:03'),
(1238, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:50:23', '2024-07-29 06:50:23'),
(1239, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:50:34', '2024-07-29 06:50:34'),
(1240, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:50:38', '2024-07-29 06:50:38'),
(1241, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"control_total_usuario_docente\",\"name\":\"control_total_usuario_docente\",\"http_method\":[\"DELETE\",\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/usuario_docente\\r\\n\\/usuario_docente\\/*\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:51:19', '2024-07-29 06:51:19'),
(1242, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:51:19', '2024-07-29 06:51:19'),
(1243, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-07-29 06:51:21', '2024-07-29 06:51:21'),
(1244, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"usuario_estudiante\",\"name\":\"usuario_estudiante\",\"http_method\":[\"DELETE\",\"GET\",\"OPTIONS\",\"HEAD\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/usuario_estudiantes\\/*\\r\\n\\/usuario_estudiantes\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:51:59', '2024-07-29 06:51:59'),
(1245, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:00', '2024-07-29 06:52:00'),
(1246, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:02', '2024-07-29 06:52:02'),
(1247, 1, 'admin/auth/roles/3/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:09', '2024-07-29 06:52:09'),
(1248, 1, 'admin/auth/roles/3', 'PUT', '127.0.0.1', '{\"slug\":\"jefe de carrera\",\"name\":\"jefe de carrera\",\"permissions\":[\"8\",\"9\",\"17\",\"20\",\"23\",\"24\",\"25\",null],\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\",\"_method\":\"PUT\"}', '2024-07-29 06:52:16', '2024-07-29 06:52:16'),
(1249, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:16', '2024-07-29 06:52:16'),
(1250, 1, 'admin/auth/roles/5/edit', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:20', '2024-07-29 06:52:20'),
(1251, 1, 'admin/auth/roles/5', 'PUT', '127.0.0.1', '{\"slug\":\"registro\",\"name\":\"registro\",\"permissions\":[\"10\",\"11\",\"13\",\"19\",\"24\",\"25\",null],\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\",\"_method\":\"PUT\"}', '2024-07-29 06:52:37', '2024-07-29 06:52:37'),
(1252, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:37', '2024-07-29 06:52:37'),
(1253, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:44', '2024-07-29 06:52:44'),
(1254, 1, 'admin/usuario_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:56', '2024-07-29 06:52:56');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1255, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:52:56', '2024-07-29 06:52:56'),
(1256, 1, 'admin/usuario_docentes/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:53:03', '2024-07-29 06:53:03'),
(1257, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:53:03', '2024-07-29 06:53:03'),
(1258, 1, 'admin/usuario_docentes/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"jnfoL3YmHzm1OTPImRqrRQQ7jo92zJFUyzTh1U7I\"}', '2024-07-29 06:53:06', '2024-07-29 06:53:06'),
(1259, 1, 'admin/usuario_docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 06:53:06', '2024-07-29 06:53:06'),
(1260, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 06:53:09', '2024-07-29 06:53:09'),
(1261, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 06:53:17', '2024-07-29 06:53:17'),
(1262, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-07-29 20:30:48', '2024-07-29 20:30:48'),
(1263, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 20:30:53', '2024-07-29 20:30:53'),
(1264, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-07-29 20:31:20', '2024-07-29 20:31:20'),
(1265, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-07-29 20:31:39', '2024-07-29 20:31:39'),
(1266, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 20:32:05', '2024-07-29 20:32:05'),
(1267, 1, 'admin/cursos', 'GET', '127.0.0.1', '[]', '2024-07-29 20:32:07', '2024-07-29 20:32:07'),
(1268, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 20:32:11', '2024-07-29 20:32:11'),
(1269, 1, 'admin/aulas', 'GET', '127.0.0.1', '[]', '2024-07-29 20:32:54', '2024-07-29 20:32:54'),
(1270, 1, 'admin/detalle_materia_estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:07', '2024-07-29 20:33:07'),
(1271, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:09', '2024-07-29 20:33:09'),
(1272, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:12', '2024-07-29 20:33:12'),
(1273, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:13', '2024-07-29 20:33:13'),
(1274, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:14', '2024-07-29 20:33:14'),
(1275, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:15', '2024-07-29 20:33:15'),
(1276, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:51', '2024-07-29 20:33:51'),
(1277, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:54', '2024-07-29 20:33:54'),
(1278, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:55', '2024-07-29 20:33:55'),
(1279, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:56', '2024-07-29 20:33:56'),
(1280, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:57', '2024-07-29 20:33:57'),
(1281, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:33:58', '2024-07-29 20:33:58'),
(1282, 1, 'admin/estudiantes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:34:03', '2024-07-29 20:34:03'),
(1283, 1, 'admin/docentes', 'GET', '127.0.0.1', '[]', '2024-07-29 20:34:04', '2024-07-29 20:34:04'),
(1284, 1, 'admin/materias', 'GET', '127.0.0.1', '[]', '2024-07-29 20:34:05', '2024-07-29 20:34:05'),
(1285, 1, 'admin/facultas', 'GET', '127.0.0.1', '[]', '2024-07-29 20:34:06', '2024-07-29 20:34:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-07-28 23:04:38', '2024-07-28 23:04:38'),
(7, 'registro facultad', 'registro facultad', 'GET', '/facultas', '2024-07-28 23:29:24', '2024-07-28 23:29:56'),
(8, 'control_total_materia', 'control_total_materia', 'DELETE,GET,PATCH,POST,PUT,HEAD,OPTIONS', '/materias/*\r\n/materias', '2024-07-29 04:19:34', '2024-07-29 05:58:46'),
(9, 'control_total_docentes', 'control_total_docentes', 'DELETE,GET,POST,PUT,HEAD,OPTIONS,PATCH', '/docentes/*\r\n/docentes', '2024-07-29 04:20:21', '2024-07-29 05:59:07'),
(10, 'control_total_estudiantes', 'control_total_estudiantes', 'DELETE,GET,POST,PUT,HEAD,OPTIONS,PATCH', '/estudiantes/*\r\n/estudiantes', '2024-07-29 04:21:02', '2024-07-29 05:59:26'),
(11, 'control_total_Detalle_E_M', 'control_total_Detalle_E_M', 'DELETE,GET,POST,PUT,HEAD,OPTIONS,PATCH', '/detalle_materia_estudiantes/*\r\n/detalle_materia_estudiantes', '2024-07-29 04:21:55', '2024-07-29 05:59:48'),
(12, 'control_total_notas', 'control_total_notas', 'DELETE,GET,PATCH,POST,PUT,HEAD,OPTIONS', '/notas_estudiantes\r\n/notas_estudiantes/*', '2024-07-29 04:22:37', '2024-07-29 06:00:00'),
(13, 'control_total_cursos', 'control_total_cursos', 'DELETE,GET,POST,PUT,HEAD,OPTIONS,PATCH', '/cursos\r\n/cursos/*', '2024-07-29 04:23:23', '2024-07-29 06:00:09'),
(14, 'modificar_materias', 'modificar_materias', 'GET,HEAD,OPTIONS,PATCH,PUT', '/materias\r\n/materias/*/edit\r\n/materias/*', '2024-07-29 04:24:49', '2024-07-29 06:01:36'),
(17, 'modificar_notas', 'modificar_notas', 'GET,HEAD,OPTIONS,PATCH,PUT', '/notas_estudiantes/*/edit\r\n/notas_estudiantes\r\n/notas_estudiantes/*', '2024-07-29 04:26:32', '2024-07-29 06:01:44'),
(18, 'ver_materias', 'ver_materias', 'GET', '/materias\r\n/materias/*', '2024-07-29 04:27:54', '2024-07-29 05:58:00'),
(19, 'ver_docentes', 'ver_docentes', 'GET', '/docentes\r\n/docentes/*', '2024-07-29 04:28:48', '2024-07-29 05:56:33'),
(20, 'ver_estudiantes', 'ver_estudiantes', 'GET', '/estudiantes/*\r\n/estudiantes', '2024-07-29 04:29:17', '2024-07-29 05:58:08'),
(21, 'ver_detalle_E_M', 'ver_detalle_E_M', 'GET', '/detalle_materia_estudiantes/*\r\n/detalle_materia_estudiantes', '2024-07-29 04:30:04', '2024-07-29 05:58:18'),
(22, 'ver_notas', 'ver_notas', 'GET', '/notas_estudiantes/*\r\n/notas_estudiantes', '2024-07-29 04:30:57', '2024-07-29 05:58:24'),
(23, 'ver_cursos', 'ver_cursos', 'GET', '/cursos', '2024-07-29 04:31:16', '2024-07-29 04:31:16'),
(24, 'control_total_usuario_docente', 'control_total_usuario_docente', 'DELETE,GET,HEAD,OPTIONS,PATCH,POST,PUT', '/usuario_docente\r\n/usuario_docente/*', '2024-07-29 06:51:19', '2024-07-29 06:51:19'),
(25, 'usuario_estudiante', 'usuario_estudiante', 'DELETE,GET,OPTIONS,HEAD,PATCH,POST,PUT', '/usuario_estudiantes/*\r\n/usuario_estudiantes', '2024-07-29 06:51:59', '2024-07-29 06:51:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-07-28 23:03:20', '2024-07-28 23:03:20'),
(3, 'jefe de carrera', 'jefe de carrera', '2024-07-29 04:33:23', '2024-07-29 04:33:23'),
(4, 'docentes', 'docentes', '2024-07-29 04:35:07', '2024-07-29 04:35:07'),
(5, 'registro', 'registro', '2024-07-29 04:36:11', '2024-07-29 04:36:11'),
(6, 'estudiantes', 'estudiantes', '2024-07-29 04:37:34', '2024-07-29 04:37:34'),
(7, 'invitado', 'invitado', '2024-07-29 04:37:54', '2024-07-29 04:37:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 8, NULL, NULL),
(3, 9, NULL, NULL),
(3, 17, NULL, NULL),
(3, 20, NULL, NULL),
(3, 23, NULL, NULL),
(4, 12, NULL, NULL),
(4, 14, NULL, NULL),
(4, 19, NULL, NULL),
(4, 20, NULL, NULL),
(4, 23, NULL, NULL),
(5, 10, NULL, NULL),
(5, 11, NULL, NULL),
(5, 13, NULL, NULL),
(5, 19, NULL, NULL),
(6, 18, NULL, NULL),
(6, 19, NULL, NULL),
(6, 21, NULL, NULL),
(6, 22, NULL, NULL),
(6, 23, NULL, NULL),
(7, 18, NULL, NULL),
(3, 24, NULL, NULL),
(3, 25, NULL, NULL),
(5, 24, NULL, NULL),
(5, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(4, 3, NULL, NULL),
(5, 4, NULL, NULL),
(3, 5, NULL, NULL),
(7, 6, NULL, NULL),
(6, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$wR.SqFvoESofEH1Jgl9TP.7w6bsLPKsHpwKXOI2tI7rr6UqYhF7ey', 'Administrator', NULL, NULL, '2024-07-28 23:03:19', '2024-07-28 23:03:19'),
(3, 'lic_pedro', '$2y$10$MrMOENdoFwBklN5IM7bW3eiqbyoJ1Iza92emo9GaKa9eRz/u/C7ui', 'pedro', NULL, NULL, '2024-07-29 04:40:17', '2024-07-29 04:40:17'),
(4, 'Re_laura', '$2y$10$N.OR5Rrcge5ZnrXpoc0.GOG5ouNNlMWAjjV1xaih92zfz86V1wlQC', 'laura', NULL, NULL, '2024-07-29 04:41:04', '2024-07-29 04:41:04'),
(5, 'JF_darius', '$2y$10$tLRJZnENXfWhiKBsChI05OSeJOF/jm2t/ofIyp/Fb6rfu9W6RA6vG', 'darius', NULL, NULL, '2024-07-29 04:42:25', '2024-07-29 04:42:25'),
(6, 'invitado', '$2y$10$yTmPbptjDLQm2.KPaEelHOY1MOd1oD19AqC8/2pKhqJRu4BtRsU5u', 'invitado', NULL, NULL, '2024-07-29 04:42:59', '2024-07-29 04:42:59'),
(7, 'Brandon', '$2y$10$n/.kdaKpUulY7mDngshmy.LtM9v6s6KO648IBJhO0iFJz7u.o2/WC', 'brandon', NULL, NULL, '2024-07-29 04:44:08', '2024-07-29 04:44:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(4, 10, NULL, NULL),
(4, 11, NULL, NULL),
(4, 13, NULL, NULL),
(4, 19, NULL, NULL),
(5, 9, NULL, NULL),
(5, 8, NULL, NULL),
(5, 17, NULL, NULL),
(5, 20, NULL, NULL),
(5, 23, NULL, NULL),
(6, 18, NULL, NULL),
(7, 18, NULL, NULL),
(7, 19, NULL, NULL),
(7, 21, NULL, NULL),
(7, 22, NULL, NULL),
(7, 23, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`id`, `nombre`, `capacidad`, `created_at`, `updated_at`) VALUES
(1, 'A001', 40, '2024-07-29 01:57:20', '2024-07-29 01:57:20'),
(2, 'B001', 50, '2024-07-29 01:57:32', '2024-07-29 01:57:32'),
(3, 'C001', 20, '2024-07-29 01:57:42', '2024-07-29 01:57:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `fk_id_docentes` int(10) UNSIGNED NOT NULL,
  `fk_id_materias` int(10) UNSIGNED NOT NULL,
  `fk_id_aulas` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `fecha_de_inicio`, `fecha_final`, `fk_id_docentes`, `fk_id_materias`, `fk_id_aulas`, `created_at`, `updated_at`) VALUES
(9, '2024-07-16', '2024-07-31', 1, 5, 1, '2024-07-29 02:30:34', '2024-07-29 02:30:34'),
(10, '2024-07-10', '2024-08-10', 2, 6, 2, '2024-07-29 03:40:51', '2024-07-29 03:40:51'),
(11, '2024-07-18', '2024-08-18', 3, 7, 3, '2024-07-29 03:41:11', '2024-07-29 03:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_materia_docente`
--

CREATE TABLE `detalle_materia_docente` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_id_docente` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_materia_estudiante`
--

CREATE TABLE `detalle_materia_estudiante` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_id_estudiante` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fk_id_curso` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_materia_estudiante`
--

INSERT INTO `detalle_materia_estudiante` (`id`, `fk_id_estudiante`, `created_at`, `updated_at`, `fk_id_curso`) VALUES
(1, 1, '2024-07-29 03:42:11', '2024-07-29 03:42:11', 9),
(2, 2, '2024-07-29 03:42:17', '2024-07-29 03:42:17', 10),
(3, 3, '2024-07-29 03:42:23', '2024-07-29 03:42:23', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `CI` int(11) NOT NULL,
  `fecha de contratación` date DEFAULT curdate(),
  `sueldo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fk_id_facultad` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id`, `nombre`, `apellido`, `telefono`, `CI`, `fecha de contratación`, `sueldo`, `created_at`, `updated_at`, `fk_id_facultad`) VALUES
(1, 'gustavo', 'tantani', '78945612', 123456, '2024-07-28', 5000, '2024-07-29 01:50:27', '2024-07-29 01:50:27', 5),
(2, 'maria rachell', 'peña', '98765432', 12345654, '2024-07-28', 2500, '2024-07-29 01:51:36', '2024-07-29 01:51:36', 2),
(3, 'ernesto', 'el molesto', '78956541', 125468, '2024-07-28', 3500, '2024-07-29 01:52:29', '2024-07-29 01:52:29', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `CI` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `telefono`, `CI`, `Email`, `created_at`, `updated_at`) VALUES
(1, 'brandon', 'saucedo', 71044259, 13428519, 'lortbrandon@gmial.com', '2024-07-29 01:53:23', '2024-07-29 01:53:23'),
(2, 'alex', 'guzman', 66666, 888888, 'alexmanrio@gmail.com', '2024-07-29 01:53:57', '2024-07-29 01:53:57'),
(3, 'diego', 'salvatierra', 7894562, 444666, 'barry@gmail.com', '2024-07-29 01:54:35', '2024-07-29 01:54:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 'Medicina', '2024-07-28 23:15:58', '2024-07-28 23:15:58'),
(4, 'derecho', '2024-07-28 23:38:15', '2024-07-28 23:38:15'),
(5, 'ingenieria', '2024-07-29 01:18:15', '2024-07-29 01:18:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fk_id_facultad` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `descripcion`, `fk_id_facultad`, `created_at`, `updated_at`) VALUES
(5, 'programacion', 'uso de programacion basica', 5, '2024-07-29 01:18:44', '2024-07-29 01:18:44'),
(6, 'embriologia', 'estudio de los embriones', 2, '2024-07-29 01:55:29', '2024-07-29 01:55:29'),
(7, 'ciencias politicas', 'estudio de los entes politicos', 4, '2024-07-29 01:55:57', '2024-07-29 01:55:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_07_28_190837_create_facultad_table', 3),
(7, '2024_07_28_192023_create_materias_table', 4),
(8, '2024_07_28_195813_create_docentes_table', 5),
(9, '2024_07_28_200034_create_estudiantes_table', 6),
(10, '2024_07_28_201504_create_detalle_materia_estudiante_table', 7),
(11, '2024_07_28_201655_create_detalle_materia_docente_table', 8),
(12, '2024_07_28_202030_create_notas_estudiantes_table', 9),
(13, '2024_07_28_203938_create_aula_table', 10),
(14, '2024_07_28_204712_create_cursos_table', 11),
(15, '2024_07_29_020909_create_usuario_docente_table', 12),
(16, '2024_07_29_021439_create_usuario_estudiante_table', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_estudiantes`
--

CREATE TABLE `notas_estudiantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `puntaje` int(11) DEFAULT NULL,
  `fk_id_estudiante_materia` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notas_estudiantes`
--

INSERT INTO `notas_estudiantes` (`id`, `puntaje`, `fk_id_estudiante_materia`, `created_at`, `updated_at`) VALUES
(1, 100, 1, '2024-07-29 03:43:20', '2024-07-29 03:43:20'),
(2, 51, 2, '2024-07-29 03:43:29', '2024-07-29 03:43:29'),
(3, 0, 3, '2024-07-29 03:43:50', '2024-07-29 03:43:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_docente`
--

CREATE TABLE `usuario_docente` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_id_usuario` int(10) UNSIGNED NOT NULL,
  `fk_id_docente` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_docente`
--

INSERT INTO `usuario_docente` (`id`, `fk_id_usuario`, `fk_id_docente`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2024-07-29 06:47:50', '2024-07-29 06:47:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_estudiante`
--

CREATE TABLE `usuario_estudiante` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_id_usuario` int(10) UNSIGNED NOT NULL,
  `fk_id_estudiante` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_estudiante`
--

INSERT INTO `usuario_estudiante` (`id`, `fk_id_usuario`, `fk_id_estudiante`, `created_at`, `updated_at`) VALUES
(2, 7, 1, '2024-07-29 06:48:56', '2024-07-29 06:48:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indices de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indices de la tabla `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indices de la tabla `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indices de la tabla `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indices de la tabla `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_docentes` (`fk_id_docentes`),
  ADD KEY `fk_id_materias` (`fk_id_materias`),
  ADD KEY `fk_id_aulas` (`fk_id_aulas`);

--
-- Indices de la tabla `detalle_materia_docente`
--
ALTER TABLE `detalle_materia_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_docente` (`fk_id_docente`);

--
-- Indices de la tabla `detalle_materia_estudiante`
--
ALTER TABLE `detalle_materia_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_estudiante` (`fk_id_estudiante`),
  ADD KEY `fk_id_curso` (`fk_id_curso`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `docentes_ci_unique` (`CI`),
  ADD KEY `fk_id_facultad_docente` (`fk_id_facultad`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estudiantes_ci_unique` (`CI`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_facultad` (`fk_id_facultad`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas_estudiantes`
--
ALTER TABLE `notas_estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario_docente`
--
ALTER TABLE `usuario_docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_estudiante`
--
ALTER TABLE `usuario_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_estudiante_fk_id_usuario_unique` (`fk_id_usuario`),
  ADD UNIQUE KEY `usuario_estudiante_fk_id_estudiante_unique` (`fk_id_estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1286;

--
-- AUTO_INCREMENT de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `aula`
--
ALTER TABLE `aula`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_materia_docente`
--
ALTER TABLE `detalle_materia_docente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_materia_estudiante`
--
ALTER TABLE `detalle_materia_estudiante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `notas_estudiantes`
--
ALTER TABLE `notas_estudiantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_docente`
--
ALTER TABLE `usuario_docente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_estudiante`
--
ALTER TABLE `usuario_estudiante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `fk_id_aulas` FOREIGN KEY (`fk_id_aulas`) REFERENCES `aula` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_id_docentes` FOREIGN KEY (`fk_id_docentes`) REFERENCES `docentes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_id_materias` FOREIGN KEY (`fk_id_materias`) REFERENCES `materias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_materia_docente`
--
ALTER TABLE `detalle_materia_docente`
  ADD CONSTRAINT `fk_id_docente` FOREIGN KEY (`fk_id_docente`) REFERENCES `docentes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle_materia_estudiante`
--
ALTER TABLE `detalle_materia_estudiante`
  ADD CONSTRAINT `fk_id_curso` FOREIGN KEY (`fk_id_curso`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_id_estudiante` FOREIGN KEY (`fk_id_estudiante`) REFERENCES `estudiantes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `fk_id_facultad_docente` FOREIGN KEY (`fk_id_facultad`) REFERENCES `facultad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `fk_id_facultad` FOREIGN KEY (`fk_id_facultad`) REFERENCES `facultad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_docente`
--
ALTER TABLE `usuario_docente`
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`fk_id_usuario`) REFERENCES `admin_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
