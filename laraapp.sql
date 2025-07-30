-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2025 a las 15:31:57
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laraapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_100000_create_workspaces_table', 1),
(5, '0001_01_01_110000_create_teams_table', 1),
(6, '0001_01_01_120000_create_team_user_table', 1),
(7, '0001_01_01_130000_create_tasks_table', 1),
(8, '2025_07_22_034535_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('adnieto.tecnm@gmail.com', '$2y$12$Qr.XdXptA6bqmrXNF9XBBO/xvKgvA4HNcJa/NMtReUkOsLUUid2be', '2025-07-29 21:58:54'),
('ains8sama@gmail.com', '$2y$12$N178KK91oGHvKW6dEHjoC.DHB2/TYBBZMu784eKKeB3Lr6lY1sY9O', '2025-07-29 22:00:30'),
('majocc012@gmail.com', '$2y$12$UfEJzHWBLmkVB6jeR7UND.dtnO4RM2pzoW8AE.UVLLLqoMbx2A/SW', '2025-07-25 20:32:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'd2fbcc3e1b5251e23d4e899efe9735ec50d2bca98ccdbe1d17f7b5ef02a2d008', '[\"*\"]', NULL, NULL, '2025-07-23 20:26:27', '2025-07-23 20:26:27'),
(2, 'App\\Models\\User', 2, 'auth_token', '482ad0ebdfb52deca247fe70f0370ca4120b5ffa32c1f6662d3accd695c88eef', '[\"*\"]', NULL, NULL, '2025-07-23 20:27:21', '2025-07-23 20:27:21'),
(3, 'App\\Models\\User', 2, 'auth_token', 'e059d8a970d846cc9290a8c884b8bed3a1220b472c3febe3a51f27c983d9ada3', '[\"*\"]', '2025-07-23 20:30:41', NULL, '2025-07-23 20:28:08', '2025-07-23 20:30:41'),
(4, 'App\\Models\\User', 2, 'auth_token', '5d319857be93f46a322b795c97e64c1aa64092f76fd193d31fd003f75a78c81e', '[\"*\"]', '2025-07-23 21:34:23', NULL, '2025-07-23 21:34:16', '2025-07-23 21:34:23'),
(5, 'App\\Models\\User', 2, 'auth_token', 'c18ad86ce52eb9f7b720cac01ee499f127bc83e9a47861cc01e8dfec915db6df', '[\"*\"]', '2025-07-23 21:36:31', NULL, '2025-07-23 21:34:18', '2025-07-23 21:36:31'),
(6, 'App\\Models\\User', 2, 'auth_token', '6b37a333d66ac613576b1698b98cda7d942738187825fce0d12da21a450e422e', '[\"*\"]', '2025-07-23 21:43:07', NULL, '2025-07-23 21:37:28', '2025-07-23 21:43:07'),
(7, 'App\\Models\\User', 2, 'auth_token', '8ffd4de0ffcbd21089e5bf759cdf00759bd2ee67091febaea48df5c2725709a6', '[\"*\"]', '2025-07-25 19:24:14', NULL, '2025-07-23 21:43:35', '2025-07-25 19:24:14'),
(8, 'App\\Models\\User', 2, 'auth_token', 'b011c06baa3368b4a115305aa27fe4778ec9b3308f4ce942fdbc8c8a32405f88', '[\"*\"]', '2025-07-25 13:10:33', NULL, '2025-07-25 08:56:18', '2025-07-25 13:10:33'),
(9, 'App\\Models\\User', 3, 'auth_token', '9e12c4471b478075fd6a5d63031d5a61a5cbf0dc65e2cb28538970728fd6da0a', '[\"*\"]', '2025-07-25 19:35:14', NULL, '2025-07-25 19:34:20', '2025-07-25 19:35:14'),
(10, 'App\\Models\\User', 3, 'auth_token', '85f7712c42b6674b8c29ad67fca3632fa6a19a7480716fe8f4e9c4cfd0b81625', '[\"*\"]', '2025-07-25 20:25:55', NULL, '2025-07-25 20:25:53', '2025-07-25 20:25:55'),
(11, 'App\\Models\\User', 3, 'auth_token', '6ae5b7048eefc7e56a52c27e4025806023652974426d901162552f37a0058b96', '[\"*\"]', '2025-07-25 20:31:58', NULL, '2025-07-25 20:31:42', '2025-07-25 20:31:58'),
(12, 'App\\Models\\User', 4, 'auth_token', '8d992506d44421c88c2728d02ef01709ada555151ef3129c98dd2534e64e2d08', '[\"*\"]', '2025-07-25 21:05:02', NULL, '2025-07-25 21:04:59', '2025-07-25 21:05:02'),
(13, 'App\\Models\\User', 3, 'auth_token', 'e550586d3c68fae43dc533e10d5f17de49b36e21d8243b76a5f04ab2bb7986cf', '[\"*\"]', '2025-07-28 06:52:38', NULL, '2025-07-25 21:07:41', '2025-07-28 06:52:38'),
(14, 'App\\Models\\User', 4, 'auth_token', 'fccb5c1e39e92cc73c58cab7f48db8987658de426e7ee04bbcbf9600f99cf721', '[\"*\"]', '2025-07-26 03:11:06', NULL, '2025-07-25 21:13:43', '2025-07-26 03:11:06'),
(15, 'App\\Models\\User', 3, 'auth_token', 'd9332e651046f191149d5c0e370c3c4cad72daa7e435cf039f2e56b706856cb8', '[\"*\"]', '2025-07-28 06:52:47', NULL, '2025-07-28 06:52:43', '2025-07-28 06:52:47'),
(16, 'App\\Models\\User', 3, 'auth_token', '6cd322605adb450c972f5073975a0ecfce62c6f3951417ce5739de9b78af5c66', '[\"*\"]', '2025-07-28 06:53:48', NULL, '2025-07-28 06:52:44', '2025-07-28 06:53:48'),
(17, 'App\\Models\\User', 4, 'auth_token', '80d5d44b00b34839b18e68d73a65f9b683fb5183eed5818f303b5cfd18cbad7d', '[\"*\"]', '2025-07-28 07:41:52', NULL, '2025-07-28 06:54:14', '2025-07-28 07:41:52'),
(18, 'App\\Models\\User', 3, 'auth_token', 'f048e50a24663c45e0dd5889f634b41639e772c3dc6dd13c30f5b8a9f753f723', '[\"*\"]', NULL, NULL, '2025-07-28 07:42:28', '2025-07-28 07:42:28'),
(19, 'App\\Models\\User', 3, 'auth_token', '67d1680358bc8b39edfeeff6cb0abf53dce92c56c75b896ae772cf692b624454', '[\"*\"]', NULL, NULL, '2025-07-28 07:42:32', '2025-07-28 07:42:32'),
(20, 'App\\Models\\User', 3, 'auth_token', '2cc590f0e6ecf2e207e168a2dd4fa7087aa019510ac77420988d55a7e9f4adcf', '[\"*\"]', NULL, NULL, '2025-07-28 07:42:38', '2025-07-28 07:42:38'),
(21, 'App\\Models\\User', 3, 'auth_token', '18103508a58622958ead22e58205a3da74f6f64dd2d48127553653dcbedb3744', '[\"*\"]', NULL, NULL, '2025-07-28 07:42:50', '2025-07-28 07:42:50'),
(22, 'App\\Models\\User', 3, 'auth_token', '0349023240ac27ec5c6c13e8ca611034d2ee3f83b489c33951e425ed581b38d6', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:04', '2025-07-28 07:43:04'),
(23, 'App\\Models\\User', 3, 'auth_token', '4400d344c4dd5d84168ce7e4bb218decf077dbec0c3e3fd07f880f00cbeb5e3b', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:07', '2025-07-28 07:43:07'),
(24, 'App\\Models\\User', 3, 'auth_token', '25a36af0c17b9fa0204d137115982de100cba7c8886587ec8c39e7baad8504b1', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:08', '2025-07-28 07:43:08'),
(25, 'App\\Models\\User', 3, 'auth_token', 'abb5619dbb66b32ca99d78374dbbab32239e4bb125b173f316cc33e286125f10', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:10', '2025-07-28 07:43:10'),
(26, 'App\\Models\\User', 3, 'auth_token', '579752f947398f4a01051530b114e7f786642195defe0f3a62e2ff295f039f5b', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:12', '2025-07-28 07:43:12'),
(27, 'App\\Models\\User', 3, 'auth_token', '8f5699851c375e88626f13a9ec0b24e2a50e6eaa80dae17f81e6fbe1259b989d', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:13', '2025-07-28 07:43:13'),
(28, 'App\\Models\\User', 3, 'auth_token', 'a53f78135fc5499571acb10542c1ec5c09fb1b2194b78ff9af0496c2038705f4', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:13', '2025-07-28 07:43:13'),
(29, 'App\\Models\\User', 3, 'auth_token', '7309143f1357da45003075c76060242f775c21de3368bd3e725f93cca6fcbd5d', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:13', '2025-07-28 07:43:13'),
(30, 'App\\Models\\User', 3, 'auth_token', 'bd4ce5809bb3bc8efdeeeb526c7586aeb0cf70b5a99babd98dc61d311505df2d', '[\"*\"]', NULL, NULL, '2025-07-28 07:43:14', '2025-07-28 07:43:14'),
(31, 'App\\Models\\User', 3, 'auth_token', '1ab182bf8b058a5ed64311efc5dbea7930baf7870d3581a18198707769d69e3c', '[\"*\"]', NULL, NULL, '2025-07-28 07:46:17', '2025-07-28 07:46:17'),
(32, 'App\\Models\\User', 3, 'auth_token', '2e37203259abf3c87188007be51a98f21ae3071137abc3c91f2e7b6ed042b7f6', '[\"*\"]', NULL, NULL, '2025-07-28 07:46:22', '2025-07-28 07:46:22'),
(33, 'App\\Models\\User', 3, 'auth_token', 'f97b421b6745462db58f7272007e158bad13169008043d78a86e8fd4e5a3a0f4', '[\"*\"]', NULL, NULL, '2025-07-28 07:46:24', '2025-07-28 07:46:24'),
(34, 'App\\Models\\User', 3, 'auth_token', 'cdd26a5d18b304dabfc241be99a276c8900a4925c4d124d2223ab2c912e20ac0', '[\"*\"]', NULL, NULL, '2025-07-28 07:46:25', '2025-07-28 07:46:25'),
(35, 'App\\Models\\User', 3, 'auth_token', '7c400ea092616da559a5713636be790a8480378ecb79826b28c3637cbbfbffca', '[\"*\"]', NULL, NULL, '2025-07-28 07:46:32', '2025-07-28 07:46:32'),
(36, 'App\\Models\\User', 3, 'auth_token', '2ce08b00b61595c9fc1f892afbeb9414086281b5bd90fa3a5f3706f171228dde', '[\"*\"]', NULL, NULL, '2025-07-28 07:46:48', '2025-07-28 07:46:48'),
(37, 'App\\Models\\User', 3, 'auth_token', 'dde0efb4e447023039763fb8e54eef8a69c2e1f7d7ca32d23e799e9147cc8f1f', '[\"*\"]', NULL, NULL, '2025-07-28 07:50:33', '2025-07-28 07:50:33'),
(38, 'App\\Models\\User', 3, 'auth_token', 'becbcba358dd876bf0f683b145c1d84782fbe842a86894c357e198ef60c9a355', '[\"*\"]', NULL, NULL, '2025-07-28 07:51:54', '2025-07-28 07:51:54'),
(39, 'App\\Models\\User', 3, 'auth_token', '13d992c76660552e8b401b9964ab9efcb5118b45b72c37754551d06db7849956', '[\"*\"]', NULL, NULL, '2025-07-28 07:52:26', '2025-07-28 07:52:26'),
(40, 'App\\Models\\User', 3, 'auth_token', '0c27bbbf0c9213447c4461dbe3f0ef3df42835e1ec6f698ca56c92963d03e7eb', '[\"*\"]', NULL, NULL, '2025-07-28 07:53:31', '2025-07-28 07:53:31'),
(41, 'App\\Models\\User', 3, 'auth_token', '6ad2c97005b0ace18740cec63906b0109518626d9a179586a4420803d0a98405', '[\"*\"]', '2025-07-28 07:58:26', NULL, '2025-07-28 07:54:58', '2025-07-28 07:58:26'),
(42, 'App\\Models\\User', 3, 'auth_token', 'c3a9002dc8fabe00adcdcd293d5cb48374c8b692dc5aa061040f18893dc23037', '[\"*\"]', NULL, NULL, '2025-07-28 07:58:47', '2025-07-28 07:58:47'),
(43, 'App\\Models\\User', 3, 'auth_token', 'a868e32f5e0742b1b2e20b330c40d88ddb74d1163bfdd0c8d09ce1ef3ff717b6', '[\"*\"]', NULL, NULL, '2025-07-28 07:58:52', '2025-07-28 07:58:52'),
(44, 'App\\Models\\User', 3, 'auth_token', '757749115aa919b52b7c447401e0ce09117b523fb15b84f9ca7255e2446e1926', '[\"*\"]', NULL, NULL, '2025-07-28 07:58:56', '2025-07-28 07:58:56'),
(45, 'App\\Models\\User', 3, 'auth_token', 'c20d3789bebb319be3727499c9dbb4a1c3505ddb1f9a788c4b04feb0f3c592fe', '[\"*\"]', NULL, NULL, '2025-07-28 07:59:19', '2025-07-28 07:59:19'),
(46, 'App\\Models\\User', 3, 'auth_token', 'c742b8dde4e3851a288d964daa262188eac5e6e3b9019a9275941e5bd1027217', '[\"*\"]', NULL, NULL, '2025-07-28 07:59:25', '2025-07-28 07:59:25'),
(47, 'App\\Models\\User', 3, 'auth_token', '663dd91475b8cd76c37acc3988e9b0a8ed1cecddfa929e501feef962619e54c2', '[\"*\"]', NULL, NULL, '2025-07-28 07:59:26', '2025-07-28 07:59:26'),
(48, 'App\\Models\\User', 3, 'auth_token', '6d3e74695c453ab69efb551b05d426f8b20d9a2ee356dc16425547e0f1f33b98', '[\"*\"]', NULL, NULL, '2025-07-28 07:59:57', '2025-07-28 07:59:57'),
(49, 'App\\Models\\User', 3, 'auth_token', 'c8d5481def072ca096611bafcb58ecdaf6e38cc2738bf7e25735555c891f2a8c', '[\"*\"]', NULL, NULL, '2025-07-28 08:00:09', '2025-07-28 08:00:09'),
(50, 'App\\Models\\User', 3, 'auth_token', '18672dcbe5b506841b99833840e48d2cce19b6bf4ede63b8ce829c184b063255', '[\"*\"]', NULL, NULL, '2025-07-28 08:00:53', '2025-07-28 08:00:53'),
(51, 'App\\Models\\User', 3, 'auth_token', '7505b5cd84f8a413f220b34ef66c9687c30ea8543e39047ca3be15496dd8e31d', '[\"*\"]', NULL, NULL, '2025-07-28 08:09:37', '2025-07-28 08:09:37'),
(52, 'App\\Models\\User', 3, 'auth_token', '59560f25b6a03e801d451ec5727a7b42d0667bcf27ce2620617957e86cb8fd92', '[\"*\"]', '2025-07-28 08:15:32', NULL, '2025-07-28 08:15:07', '2025-07-28 08:15:32'),
(53, 'App\\Models\\User', 3, 'auth_token', 'ca97b9f4253fa59743a998062b0d32b903452c8cac71d2ac4de9e98488b9a6ff', '[\"*\"]', '2025-07-28 08:17:09', NULL, '2025-07-28 08:15:42', '2025-07-28 08:17:09'),
(54, 'App\\Models\\User', 4, 'auth_token', '1b4791da55b37c253bc54e13caba15f3e063f542c7c06a09d23dfb417bdaa279', '[\"*\"]', '2025-07-28 08:18:44', NULL, '2025-07-28 08:17:27', '2025-07-28 08:18:44'),
(55, 'App\\Models\\User', 3, 'auth_token', 'caae756dd4e4968839ae771b86061c3e524a940c02f82d9f7c5d10097ddf7285', '[\"*\"]', '2025-07-28 08:47:58', NULL, '2025-07-28 08:19:00', '2025-07-28 08:47:58'),
(56, 'App\\Models\\User', 5, 'auth_token', 'ca6983113775ae8ea5006bb67f0efe537ba3261c60ebd7ea69219ce55b00ec59', '[\"*\"]', '2025-07-28 08:50:18', NULL, '2025-07-28 08:49:12', '2025-07-28 08:50:18'),
(57, 'App\\Models\\User', 3, 'auth_token', '9357360ee4eee8f64df08613fb3f86f66c29f7de1c8b4f809f9166487d315056', '[\"*\"]', '2025-07-28 09:11:18', NULL, '2025-07-28 08:50:36', '2025-07-28 09:11:18'),
(58, 'App\\Models\\User', 4, 'auth_token', '9d359b29fccd00f30be4d3a338a14c000663de94bceeda8986cb0f3498e0fe25', '[\"*\"]', '2025-07-28 09:22:30', NULL, '2025-07-28 09:12:46', '2025-07-28 09:22:30'),
(59, 'App\\Models\\User', 3, 'auth_token', '54f3011e122f05ffe6d5bd417168a60460b05785538621650a3192e6b25edc95', '[\"*\"]', '2025-07-28 10:02:17', NULL, '2025-07-28 09:22:35', '2025-07-28 10:02:17'),
(60, 'App\\Models\\User', 4, 'auth_token', 'c3847baa2ba38af24dd8e4ef1f86d3ae7a295aaa83f9b0beb900a1a2d3bf2976', '[\"*\"]', '2025-07-28 10:09:26', NULL, '2025-07-28 10:02:37', '2025-07-28 10:09:26'),
(61, 'App\\Models\\User', 3, 'auth_token', '5d8cdd9f67dfa56e48a43bac1d03911d2e6fcd310476c92d5800daa6af4bdaff', '[\"*\"]', '2025-07-28 22:04:06', NULL, '2025-07-28 10:09:30', '2025-07-28 22:04:06'),
(62, 'App\\Models\\User', 4, 'auth_token', 'a07a03f2c1a3d159c45fe4c64f705b8d5b105d67a9ef5eea63181c8d758fa07f', '[\"*\"]', '2025-07-28 22:04:28', NULL, '2025-07-28 22:04:27', '2025-07-28 22:04:28'),
(63, 'App\\Models\\User', 4, 'auth_token', 'b15a49ef0d9dc7c0ada00ec4596821c2a337ab20cf446ea9e5b56755ac029c06', '[\"*\"]', '2025-07-29 03:48:36', NULL, '2025-07-28 22:04:28', '2025-07-29 03:48:36'),
(64, 'App\\Models\\User', 3, 'auth_token', 'a2c5bbb8f008a7d72b1496efb0b812011af14b16f0339b171adfdd0c7ef9e01a', '[\"*\"]', '2025-07-29 03:59:00', NULL, '2025-07-29 03:48:45', '2025-07-29 03:59:00'),
(65, 'App\\Models\\User', 4, 'auth_token', 'bbe5ab790d29ad1f1e2d608a159a11d60c5f4c2ed2bf33dac40b5ce0db5279d7', '[\"*\"]', '2025-07-29 04:01:17', NULL, '2025-07-29 03:59:24', '2025-07-29 04:01:17'),
(66, 'App\\Models\\User', 3, 'auth_token', 'ebcca5a4d811f54bb41035973bdd10f5d48ce3cf6374e0467e48e2af3742f56b', '[\"*\"]', '2025-07-29 12:38:09', NULL, '2025-07-29 04:01:22', '2025-07-29 12:38:09'),
(67, 'App\\Models\\User', 4, 'auth_token', '66975c893be632f223cb8e1ebb512afd6c06792a79a76fa41b88f1a4c0ac7e82', '[\"*\"]', '2025-07-29 21:47:56', NULL, '2025-07-29 12:39:35', '2025-07-29 21:47:56'),
(68, 'App\\Models\\User', 3, 'auth_token', '3f4eda4ac17e1c57b3df0e6ce1f8be6b54fa39d05664227032bb3b8f162ac992', '[\"*\"]', '2025-07-29 21:48:18', NULL, '2025-07-29 21:48:15', '2025-07-29 21:48:18'),
(69, 'App\\Models\\User', 3, 'auth_token', 'c93d6531ad1bbeddbfc590bc066fbaabd2d8aacfbe666ea9f62b4bbedbd50267', '[\"*\"]', '2025-07-29 21:56:47', NULL, '2025-07-29 21:48:18', '2025-07-29 21:56:47'),
(70, 'App\\Models\\User', 3, 'auth_token', 'e9db903d2b9d59af28f43bba6f5d54ba61ff4b8fdbf7617ee8153695c13b7f27', '[\"*\"]', '2025-07-30 18:41:28', NULL, '2025-07-30 18:40:49', '2025-07-30 18:41:28'),
(71, 'App\\Models\\User', 4, 'auth_token', 'f1080b96d6291f25f7128d717bcae985a793acde29b537d96a18c9913cd2732b', '[\"*\"]', '2025-07-30 18:59:49', NULL, '2025-07-30 18:44:01', '2025-07-30 18:59:49'),
(72, 'App\\Models\\User', 3, 'auth_token', '57806c82384d149b59dad502dcce8e6afc69061625ba54bbb37b19bf1d35af1f', '[\"*\"]', '2025-07-30 19:04:36', NULL, '2025-07-30 19:00:08', '2025-07-30 19:04:36'),
(73, 'App\\Models\\User', 4, 'auth_token', 'ee826e127e86159803711be035f92d9966eed08220edb10e97fb64dca097f251', '[\"*\"]', '2025-07-30 19:11:11', NULL, '2025-07-30 19:11:08', '2025-07-30 19:11:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `progress` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_done` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `progress`, `is_done`, `workspace_id`, `assigned_to`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'dtftfy', 'ygyugugug', 0, 0, 3, 1, 2, '2025-07-25 09:01:42', '2025-07-25 09:01:42'),
(2, 'tarea 1', 'asdawe', 100, 1, 7, 4, 3, '2025-07-25 21:15:14', '2025-07-28 08:18:19'),
(3, 'tarea 2', 'gyugugu', 0, 0, 7, 4, 3, '2025-07-28 09:11:17', '2025-07-28 09:11:17'),
(4, 'tarea 3', 'qweweqe', 0, 0, 7, 4, 3, '2025-07-28 10:01:56', '2025-07-28 10:01:56'),
(5, 'tarea 3', 'fsdsfe', 0, 0, 8, 4, 3, '2025-07-29 21:52:14', '2025-07-29 21:56:46'),
(6, 'tarea 2', 'dfaeae', 0, 0, 8, 3, 3, '2025-07-29 21:52:43', '2025-07-29 21:52:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `name`, `workspace_id`, `created_at`, `updated_at`) VALUES
(1, 'equipo 1', 3, '2025-07-25 09:01:06', '2025-07-25 09:01:06'),
(2, 'equioi pop', 6, '2025-07-25 13:04:44', '2025-07-25 13:04:44'),
(3, 'equipo 1', 7, '2025-07-25 21:11:40', '2025-07-25 21:11:40'),
(4, 'equipo 1', 8, '2025-07-28 08:47:57', '2025-07-28 08:47:57'),
(5, 'equipo2', 9, '2025-07-28 08:50:16', '2025-07-28 08:50:16'),
(6, 'equipo 1', 13, '2025-07-29 04:52:01', '2025-07-29 04:52:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('leader','member') NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'leader', '2025-07-25 09:01:06', '2025-07-25 09:01:06'),
(2, 1, 1, 'member', '2025-07-25 09:01:18', '2025-07-25 09:01:18'),
(3, 2, 2, 'leader', '2025-07-25 13:04:44', '2025-07-25 13:04:44'),
(4, 3, 3, 'leader', '2025-07-25 21:11:40', '2025-07-25 21:11:40'),
(5, 3, 4, 'member', '2025-07-25 21:12:30', '2025-07-25 21:12:30'),
(6, 4, 3, 'leader', '2025-07-28 08:47:57', '2025-07-28 08:47:57'),
(7, 5, 5, 'leader', '2025-07-28 08:50:16', '2025-07-28 08:50:16'),
(8, 6, 3, 'leader', '2025-07-29 04:52:01', '2025-07-29 04:52:01'),
(10, 4, 4, 'member', '2025-07-29 21:56:12', '2025-07-29 21:56:12'),
(11, 4, 5, 'leader', '2025-07-29 21:56:23', '2025-07-29 21:56:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alejandro', 'Valencia', '123456789', 'alejandro@mail.com', NULL, '$2y$12$9b/PHVEc5hLwD2gqmkDDt.Dq6bgHMuDwTP.mt/3KbEz4M8vmsWuFW', NULL, '2025-07-23 20:26:27', '2025-07-23 20:26:27'),
(2, 'Juan', 'Pérez', '5551234567', 'juan@example.com', NULL, '$2y$12$XGCKlPIDU9mHmbSZAVx./uD5znv1hfXn8/9yGhkT.y5UqDSubaju2', NULL, '2025-07-23 20:27:21', '2025-07-23 20:27:21'),
(3, 'Manuel', 'Cristales', '9512765521', 'majocc012@gmail.com', NULL, '$2y$12$tVSq2yzCgP.Jzbl8c51ogu3BfWWuRSK.TypXk9Z6N9M4ZqzmAixZO', NULL, '2025-07-25 19:34:20', '2025-07-25 20:25:28'),
(4, 'Alejandro', 'Valencia', '9512345678', 'papuendo12@gmail.com', NULL, '$2y$12$mqJQOhmUhFhWc2qn7o5utuAfIERXfbvKHe8zQQLyedGC2YH9UOmw.', NULL, '2025-07-25 21:04:59', '2025-07-29 12:39:14'),
(5, 'Valencia', 'Tenorio', '2134555432', 'ains8sama@gmail.com', NULL, '$2y$12$M0pgxIiXW7dqwQpss3UhgOkJAny3ZlfiqRpfUxR7/3rSMHS6qz1Wm', NULL, '2025-07-28 08:49:12', '2025-07-28 08:49:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `workspaces`
--

INSERT INTO `workspaces` (`id`, `name`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Proyecto Marketing', 'Espacio de trabajo para el área de marketing', 2, '2025-07-23 20:30:41', '2025-07-23 20:30:41'),
(2, 'SEMANA 2', 'tareas', 2, '2025-07-23 21:35:21', '2025-07-23 21:35:21'),
(3, 'semana 1', 'hacerce wey', 2, '2025-07-23 21:38:00', '2025-07-23 21:38:00'),
(4, 'semqana3', 'rerref', 2, '2025-07-23 21:44:12', '2025-07-23 21:44:12'),
(5, '234324', 'fdrgree', 2, '2025-07-23 21:44:44', '2025-07-23 21:44:44'),
(6, 'semana 1', 'holaaaaaaaaaaaa', 2, '2025-07-25 13:04:12', '2025-07-25 13:04:12'),
(7, 'semana 1', 'hola 1', 3, '2025-07-25 21:11:12', '2025-07-25 21:11:12'),
(8, 'espacio 2', 'prueba', 3, '2025-07-28 08:47:32', '2025-07-28 08:47:32'),
(9, 'espacio 4', 'prueba 3', 5, '2025-07-28 08:49:51', '2025-07-28 08:49:51'),
(10, 'ejemplo 1', 'ajdkdjkasdw', 4, '2025-07-29 03:48:18', '2025-07-29 03:48:18'),
(12, 'ejemplo 1000', 'dajidwoajdiw', 3, '2025-07-29 04:05:22', '2025-07-29 04:05:22'),
(13, 'ejemplo 1002', 'jksjwksw', 3, '2025-07-29 04:38:41', '2025-07-29 04:38:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
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
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_workspace_id_foreign` (`workspace_id`),
  ADD KEY `tasks_assigned_to_foreign` (`assigned_to`),
  ADD KEY `tasks_created_by_foreign` (`created_by`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_workspace_id_foreign` (`workspace_id`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_user_team_id_foreign` (`team_id`),
  ADD KEY `team_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspaces_created_by_foreign` (`created_by`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `team_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `workspaces`
--
ALTER TABLE `workspaces`
  ADD CONSTRAINT `workspaces_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
