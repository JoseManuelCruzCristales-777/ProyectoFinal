-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2025 a las 15:21:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

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
(8, '2025_07_22_034535_create_personal_access_tokens_table', 1),
(9, '2025_07_25_000000_create_password_reset_tokens_table', 1);

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
('majocc012@gmail.com', '$2y$12$kj9Bk6ALqzIGZUBXUukcsepzVzCxsg9NMIbnV3UUfCWkOWmWPscRi', '2025-07-29 19:14:44');

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
(1, 'App\\Models\\User', 1, 'auth_token', 'cd3aa9efa8b5a5a44edaad11d155c2bcd0df2a46e48201738664c57cb84bbf3f', '[\"*\"]', '2025-07-24 23:19:05', NULL, '2025-07-24 19:33:14', '2025-07-24 23:19:05'),
(2, 'App\\Models\\User', 1, 'auth_token', 'e159195595f1660f90608048abf9c1549be7b0294ec6a85164b337f30dd68c10', '[\"*\"]', '2025-07-24 19:57:06', NULL, '2025-07-24 19:56:47', '2025-07-24 19:57:06'),
(3, 'App\\Models\\User', 1, 'auth_token', 'bdd490db78ec77ac8585c989caaf315043457502cf1b5833090250fce64d51b4', '[\"*\"]', '2025-07-24 20:52:14', NULL, '2025-07-24 20:40:18', '2025-07-24 20:52:14'),
(4, 'App\\Models\\User', 2, 'auth_token', '805d41cbf835a390a954d818aedacfc2c324e5ae9f6bedad837f17c935a81747', '[\"*\"]', '2025-07-24 20:53:24', NULL, '2025-07-24 20:53:20', '2025-07-24 20:53:24'),
(5, 'App\\Models\\User', 1, 'auth_token', '522c820a2c5e11f4510892bf9c6a3e9bbc4e7fac01436e3d62a10f9b042ecce3', '[\"*\"]', '2025-07-24 20:54:43', NULL, '2025-07-24 20:54:39', '2025-07-24 20:54:43'),
(6, 'App\\Models\\User', 1, 'auth_token', 'c7f7d0620e611e0720b60c294d0d3a4652e727fa3a4e3bf4bd86fef95a69bb63', '[\"*\"]', '2025-07-24 20:55:56', NULL, '2025-07-24 20:54:40', '2025-07-24 20:55:56'),
(7, 'App\\Models\\User', 1, 'auth_token', '0a7c20252f6d4d4b8db4ca22c796844e22596ebee2df7f5bf18e35efe9080d1b', '[\"*\"]', '2025-07-24 21:08:20', NULL, '2025-07-24 21:01:44', '2025-07-24 21:08:20'),
(8, 'App\\Models\\User', 1, 'auth_token', '1c3c05d35baeb183fe16337c24b027088c580ce626848dbd22405c623884a5c3', '[\"*\"]', '2025-07-24 23:05:47', NULL, '2025-07-24 21:09:07', '2025-07-24 23:05:47'),
(9, 'App\\Models\\User', 2, 'auth_token', '15a2490cb5514925620d036c48bff94b458efc9ee6d08df4ffb8f313e694a7fb', '[\"*\"]', '2025-07-24 21:49:49', NULL, '2025-07-24 21:22:19', '2025-07-24 21:49:49'),
(10, 'App\\Models\\User', 2, 'auth_token', '5a34b5bc0828fad35c22d8876371b9d3166ad3a5b7e9d12dc86551b106bc463c', '[\"*\"]', '2025-07-24 22:10:55', NULL, '2025-07-24 21:52:23', '2025-07-24 22:10:55'),
(11, 'App\\Models\\User', 1, 'auth_token', '72c2567ef290679859a51d75b5fd8eb0946df1eae126d46b6a043318321334c6', '[\"*\"]', '2025-07-24 23:06:48', NULL, '2025-07-24 23:06:02', '2025-07-24 23:06:48'),
(12, 'App\\Models\\User', 1, 'auth_token', '92738a20cf62b1ea1d4cb3c109271e7f4151d222ab685f69f6310cf949e02693', '[\"*\"]', '2025-07-24 23:08:25', NULL, '2025-07-24 23:07:05', '2025-07-24 23:08:25'),
(13, 'App\\Models\\User', 1, 'auth_token', '6d493ea7a146f9a67afea3a9744d95d34e375819debbeeee1de8a50e1c3df11f', '[\"*\"]', '2025-07-24 23:09:45', NULL, '2025-07-24 23:09:42', '2025-07-24 23:09:45'),
(14, 'App\\Models\\User', 1, 'auth_token', 'fca5d1f431edc4601a13bfe1cc3bc4ce85603478ec64cdf4b8a17057b7a14195', '[\"*\"]', '2025-07-25 21:37:48', NULL, '2025-07-25 21:37:44', '2025-07-25 21:37:48'),
(15, 'App\\Models\\User', 3, 'auth_token', '6216b9acfd75e76e37a87dbf82d90fd885fecd7c8e459cf21055100cffedf463', '[\"*\"]', '2025-07-28 04:06:33', NULL, '2025-07-28 04:00:37', '2025-07-28 04:06:33'),
(16, 'App\\Models\\User', 4, 'auth_token', 'cc79304c9d99d8921201d08bfbc78bbec2b537bab56a493bb8a46f648fa8534b', '[\"*\"]', '2025-07-28 06:28:58', NULL, '2025-07-28 06:28:54', '2025-07-28 06:28:58'),
(17, 'App\\Models\\User', 4, 'auth_token', 'b2a73e343ee6ae676525d56e10602ca692e571a736652e074ed8f05b7e4ed4d9', '[\"*\"]', '2025-07-28 06:35:56', NULL, '2025-07-28 06:29:11', '2025-07-28 06:35:56'),
(18, 'App\\Models\\User', 1, 'auth_token', 'cd094714465dc9bd6a25e499ecb6f307e908b132ed7faa99c4e40bb4aee5e725', '[\"*\"]', '2025-07-28 22:33:36', NULL, '2025-07-28 22:33:35', '2025-07-28 22:33:36'),
(19, 'App\\Models\\User', 1, 'auth_token', 'c3cdc0adb4ecd00ae3226810865e743469c84e696ec99a4eed4e9bc60f9a8e72', '[\"*\"]', '2025-07-28 22:35:54', NULL, '2025-07-28 22:34:08', '2025-07-28 22:35:54'),
(20, 'App\\Models\\User', 1, 'auth_token', '8ba8a5f79daccd5f76c671a829610617161555c3db3a284bc85e6dfd724d520c', '[\"*\"]', '2025-07-28 22:36:08', NULL, '2025-07-28 22:36:07', '2025-07-28 22:36:08'),
(21, 'App\\Models\\User', 1, 'auth_token', '3d66ea8afaf8ea7a13b3de847822dc5c97fb67f36cf224867e6380a0ccfbd224', '[\"*\"]', '2025-07-28 22:37:18', NULL, '2025-07-28 22:36:57', '2025-07-28 22:37:18'),
(22, 'App\\Models\\User', 1, 'auth_token', 'fdcbc6f56b2e53eaed0053604ed7d23412c9fdf35f170ffcc1542b0e94aa9a8c', '[\"*\"]', '2025-07-28 22:44:24', NULL, '2025-07-28 22:42:21', '2025-07-28 22:44:24'),
(23, 'App\\Models\\User', 1, 'auth_token', '83d5bcef845eca235850f20bc1ecfd0284fcad53545a331dffd643a1de48ee29', '[\"*\"]', '2025-07-29 00:25:00', NULL, '2025-07-29 00:25:00', '2025-07-29 00:25:00'),
(24, 'App\\Models\\User', 1, 'auth_token', 'dd254a9383a31a801e8a62ca9f8304963e229812a6d69a22c6726c4b7b75467a', '[\"*\"]', '2025-07-29 00:32:58', NULL, '2025-07-29 00:25:25', '2025-07-29 00:32:58'),
(25, 'App\\Models\\User', 1, 'auth_token', '925ec97e2b80702afacc154cfbedee3f9b64229890bd1e551a70c7dae9bcb3dd', '[\"*\"]', '2025-07-29 01:23:26', NULL, '2025-07-29 01:23:08', '2025-07-29 01:23:26'),
(26, 'App\\Models\\User', 3, 'auth_token', '0825faac3b5f1c09a3955989d13fc93f399d9b31dd797bbd2f9f86db2ec992bf', '[\"*\"]', '2025-07-29 01:25:22', NULL, '2025-07-29 01:23:38', '2025-07-29 01:25:22'),
(27, 'App\\Models\\User', 1, 'auth_token', 'f31e3c7afeb5b5e17b24baf8c2f803f6b7b67a0163492810eb1df6061c4f23c2', '[\"*\"]', '2025-07-29 01:43:34', NULL, '2025-07-29 01:43:31', '2025-07-29 01:43:34'),
(28, 'App\\Models\\User', 1, 'auth_token', '55181d3411a044641adbcbef2b9d1c7bd219ac94c403f276e769776d531cac89', '[\"*\"]', '2025-07-29 01:43:36', NULL, '2025-07-29 01:43:33', '2025-07-29 01:43:36'),
(29, 'App\\Models\\User', 1, 'auth_token', '8e559a441a1c2f8b988f64f64340d010c26186f8b5d183e0999b04b115cc4279', '[\"*\"]', '2025-07-29 01:43:59', NULL, '2025-07-29 01:43:43', '2025-07-29 01:43:59'),
(30, 'App\\Models\\User', 5, 'auth_token', '9befc9ac25f39e6752a6b9b850a242435d8a954434a710a7afa8046058374f9d', '[\"*\"]', '2025-07-29 01:48:49', NULL, '2025-07-29 01:45:16', '2025-07-29 01:48:49'),
(31, 'App\\Models\\User', 1, 'auth_token', 'c7b11036967e0841762685f6f0514c01f8a8bed06a374e1879f2f5a16bf1fb90', '[\"*\"]', '2025-07-29 02:11:57', NULL, '2025-07-29 02:11:03', '2025-07-29 02:11:57'),
(32, 'App\\Models\\User', 1, 'auth_token', 'b5886b8ef3dfeb91d15204f9cfc33e0a1fb5e6f4e262df077e65795784eaadbe', '[\"*\"]', '2025-07-29 10:04:48', NULL, '2025-07-29 10:03:03', '2025-07-29 10:04:48'),
(33, 'App\\Models\\User', 5, 'auth_token', '41dae4a41cb653e0c64905f5821c126a233cd5b5f92c766d65d5a0346d85193f', '[\"*\"]', '2025-07-29 21:08:28', NULL, '2025-07-29 10:05:19', '2025-07-29 21:08:28'),
(34, 'App\\Models\\User', 1, 'auth_token', '344592a29dc043962d4cc5963ee0d365f3ecf963c52baed1f1811d2c7124d8a9', '[\"*\"]', '2025-07-29 12:27:07', NULL, '2025-07-29 12:06:40', '2025-07-29 12:27:07'),
(35, 'App\\Models\\User', 3, 'auth_token', '9646fa3501aaf7f22d17b51329b68dcbcc4055c77133e4ed2ac52c5b5094bd67', '[\"*\"]', '2025-07-29 12:27:32', NULL, '2025-07-29 12:27:27', '2025-07-29 12:27:32'),
(36, 'App\\Models\\User', 1, 'auth_token', '954a522f055c8c0e8488f6ab2bf9efd2bf2dd27d493f39ce394108f90f3a61b7', '[\"*\"]', '2025-07-29 12:28:14', NULL, '2025-07-29 12:27:57', '2025-07-29 12:28:14'),
(37, 'App\\Models\\User', 1, 'auth_token', 'd363b88dc852eedaded71905d86d8ec341df1757abbc40d2aed4561dda96ad99', '[\"*\"]', '2025-07-29 19:10:16', NULL, '2025-07-29 19:03:03', '2025-07-29 19:10:16'),
(38, 'App\\Models\\User', 1, 'auth_token', 'e3ee87d3bed9ffca1c1f11333fbc5da3d486bd3f36a05be315c7cebe1434ec90', '[\"*\"]', '2025-07-29 21:26:47', NULL, '2025-07-29 19:42:44', '2025-07-29 21:26:47'),
(39, 'App\\Models\\User', 1, 'auth_token', 'ccc79352188a01fdee248332a2440beea640bf0c85d4bd2fbaa4c886be96f706', '[\"*\"]', '2025-07-29 21:47:54', NULL, '2025-07-29 21:26:59', '2025-07-29 21:47:54'),
(40, 'App\\Models\\User', 1, 'auth_token', '368674c65a35c82b50de31c4008ae4eb9fd47cf1910528fbf691057fdf35249b', '[\"*\"]', '2025-07-29 23:18:06', NULL, '2025-07-29 23:15:34', '2025-07-29 23:18:06'),
(41, 'App\\Models\\User', 1, 'auth_token', '81fe0110a26024d9672b28172b934ea5c1ae4821f553b5b0951fa5ba771d46c9', '[\"*\"]', '2025-07-30 19:17:10', NULL, '2025-07-30 19:03:26', '2025-07-30 19:17:10');

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

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0ZDwJiXSC4sNgrMeYLqekPxUr6JUL4MErLeyiXqD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVWRicmRWTTNUTndZNllHNHBRN1hrdFlrc0FjclZQdlNkVXE0UWlDZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753731364),
('1HvQaZZmu9uOKpuKXB81R42GmTLhgwcKXOoYBADn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTEJyQktRdHdYV0M3OGpDQ3BCbUV1cU1jTGw3WUxFRlMzcm5HYnY5YyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753730902),
('4D1UPvOCrrGmBWP2xGKiJyNkrD2YVFoNFzvlyxUv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibkdzdHZURThweFVqdEtwQXczMG5mdmN5NDZ1UG1pSGNJekJidXJSdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753731346),
('8w2jfOVAxZVSrZKMC58UA82sDfgKqzm3VgH72CKK', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnZFaWVBS2xOQm9LbEhBTTljV1Nqb1JKbzk5QVhxcHRNWE9BTmdVeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvd29ya3NwYWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753730719),
('9spBt6aAJgM5joyjR5eD2coHu0Wokp6AqW07hKKN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTTRKMk51NElzZ1pHZDBrYzR5WFVmOUI5YUlNdE9iVTRqNXROVkRtbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753731208),
('dI0iPlr8LptAjVn2pKv1XAmsCH2EZVR1VZPGx41u', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY21VdnVncjlNRXZhRXlCZkVmTkxldDZhaUJCUUdBdk43TXBRV01vSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753730996),
('DWz1llxjnzWKrUfdpPhewApsqLHEukemv56YjL7O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRFFvZVhpemVUbGc0WWZ5UHQ2R2c1MEZQV29OdzZoSElJWnhESGU1aiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753731209),
('h38fSGCtpuyuQ4yTlpsM9GDDWMyB6P3P1J6PNnLb', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak50eFdzeEZuMHpaMU5mMThIblNxUWE2a01MaGZjMTBGcmRvdWN2WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdXNlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753730722),
('iHMF9UDQMZLyOHOGqitXAGYhd2BOR7sbVomYxHx4', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid015cFpSOHJjNHE2eFlQeUF5WjYwN0tqY0dqT1A4OFJMd05XQUtIUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdXNlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753730713),
('jXc7cvwLzrMc5smSg5F6XRd54eRDBNPJ13I7AQX2', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE9jVlRYb1BldTROQmFpRWlackt0YXFQSVhyanRybHkzZ252cTZlOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhbXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753730713),
('kfuCvZ8cSyyKBlLP2CUePH3gb9f2EKSNHEaVSqOf', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSngzWDJPaUpreE4zTVlDWGJyVnU2aUdPOU1kZVkyYXR2SVVZZDBSaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdXNlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753730718),
('mKZKSJREsIbRFizkX4p8ahZihiTkkCCc1iTEShsm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTGs4anFTb1VYSVhaeUJCTUpEMWhNR1lzV2pwbTJOY2JGbmh3THJmOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753730889),
('wPOC9TcIiFqrzHiS51GR4KU5ygMiVplWtx8C1LgA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2ttYXRpcE1iUGgzTkZ5V00wVHhYQW1KTzRSVk1BWGc3d3NoSGlDdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753731229),
('WqUNqhzghY8uP70mvcP4gurFg5uE1hAcsq8Ldfs5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVEdTM2RhZ200THBkejE2S1NnaGtRZVdhdHpZdlRBU0syWVBBMW5EcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753730732),
('xoSE7viIiAakgYNh1dhKY2NjOhVgmDTYKajWUk51', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnRxSFJmRVVweHA5V3RzcFFieXZrUGJHVDVUcklIUUtZNm53TXJkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhbXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1753730720);

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
(2, 'TAREA1', 'Terminar back', 0, 0, 6, 5, 1, '2025-07-29 10:04:25', '2025-07-29 10:04:32'),
(3, 'FRONT', 'TERMINAR', 100, 0, 12, 5, 1, '2025-07-29 23:17:15', '2025-07-29 23:17:42'),
(4, 'acabarsgssdf', 'dfsdfsd', 0, 0, 13, 1, 1, '2025-07-30 19:11:34', '2025-07-30 19:11:34'),
(5, 'tarea 2', '', 0, 0, 13, 1, 1, '2025-07-30 19:12:58', '2025-07-30 19:12:58'),
(6, 'tarea 4', 'fdsfs', 0, 0, 13, 1, 1, '2025-07-30 19:13:10', '2025-07-30 19:13:10');

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
(5, 'EQUIPO UNICO', 6, '2025-07-29 10:03:39', '2025-07-29 10:03:39'),
(6, 'EQUIPO10', 12, '2025-07-29 23:16:21', '2025-07-29 23:16:21'),
(7, 'EQUIPO10', 13, '2025-07-30 19:11:17', '2025-07-30 19:11:17');

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
(7, 5, 1, 'leader', '2025-07-29 10:03:39', '2025-07-29 10:03:39'),
(8, 5, 5, 'member', '2025-07-29 10:03:53', '2025-07-29 10:03:53'),
(9, 6, 1, 'leader', '2025-07-29 23:16:21', '2025-07-29 23:16:21'),
(10, 6, 4, 'member', '2025-07-29 23:16:31', '2025-07-29 23:16:31'),
(11, 6, 5, 'member', '2025-07-29 23:16:50', '2025-07-29 23:16:50'),
(12, 7, 1, 'leader', '2025-07-30 19:11:17', '2025-07-30 19:11:17');

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
(1, 'Jose', 'Cristales', '9512765521', 'majocc012@gmail.com', NULL, '$2y$12$0kqtycgFIrXPuNYMr/4jW.enwJ113l47BkbnQf7ZS2pNhoE.H4Z9C', NULL, '2025-07-24 19:33:14', '2025-07-24 19:33:14'),
(2, 'Alejandro', 'Valencia', '9511234567', 'alejandro@gmail.com', NULL, '$2y$12$AwbX4c8eVOTD0pS.Vxrb9ukn2P3ZEobLSwvvW8u//FDNEjLPVR5Em', NULL, '2025-07-24 20:53:20', '2025-07-24 20:53:20'),
(3, 'Jessica', 'Preciado', '9512765521', 'jessica@gmail.com', NULL, '$2y$12$SBmm5brdwGvbQ8BImHSd8ektc9USBp2t2PaZOPJlkocDsRF3.JxLi', NULL, '2025-07-28 04:00:36', '2025-07-28 04:00:36'),
(4, 'Manuel', 'Cruz', '9514966778', 'alguien@gmail.com', NULL, '$2y$12$JeXlblwo.0jUtpFApLEf6eSVHJ/hGXgnvTn6PuLqTrU1jI4BO3F7a', NULL, '2025-07-28 06:28:54', '2025-07-28 06:28:54'),
(5, 'Jorge', 'rojas', '9512765521', 'jorge@gmail.com', NULL, '$2y$12$qXh5J8EAvoEh3id4pNb2HuFgVydt7AkB62PxCKfpqBvaqRVo9zD1.', NULL, '2025-07-29 01:45:16', '2025-07-29 01:45:16'),
(6, 'Test', 'User', NULL, 'test@example.com', NULL, '$2y$12$gPt6JxxY2PNTJqN3uE3UI.E8oQ7.qByxhq4pq3SjCnwl8fod6tuOO', NULL, '2025-07-29 19:14:25', '2025-07-29 19:14:25');

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
(6, 'Semana Final', 'Actividades Fin de Curso', 1, '2025-07-28 22:35:18', '2025-07-28 22:35:18'),
(8, 'Semana1', 'hola', 3, '2025-07-29 01:23:51', '2025-07-29 01:23:51'),
(9, 'Semana1', 'sdfsdfsd', 5, '2025-07-29 01:48:18', '2025-07-29 01:48:18'),
(10, 'Semana10', 'jdf;asdjf', 5, '2025-07-29 01:48:34', '2025-07-29 01:48:34'),
(11, 'Semana3', 'fjds;f', 1, '2025-07-29 19:03:21', '2025-07-29 19:03:21'),
(12, 'SEMANA6', 'ACABAR GRAFICA', 1, '2025-07-29 23:15:55', '2025-07-29 23:15:55'),
(13, 'HOLA', 'fsdfsd', 1, '2025-07-30 19:10:52', '2025-07-30 19:10:52');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
