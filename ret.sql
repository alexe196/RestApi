/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `ret` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ret`;

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_04_14_153748_create_posts_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT IGNORE INTO `posts` (`id`, `title`, `link`, `created_at`, `updated_at`) VALUES
	(2, 'dfddfd', 33, '2024-04-14 17:09:00', '2024-04-14 17:09:00'),
	(3, 'qwew', 30, '2024-04-14 17:09:09', '2024-04-14 17:09:09'),
	(4, 'sumer', 457, '2024-04-15 20:57:55', '2024-04-15 20:57:55'),
	(5, 'Some title', 333, '2024-04-15 21:09:40', '2024-04-15 21:09:40');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Esmeralda McClure', 'pschinner@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jxv87ZlhEU', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(2, 'Hadley Hartmann MD', 'mayert.margaret@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CetbAakcr2', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(3, 'Frederick Crooks', 'river36@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dv3Qf3lRLa', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(4, 'Dr. Branson Trantow', 'yraynor@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wIh74HaNlK', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(5, 'Neil Leuschke', 'swaniawski.augusta@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fqyioUJnTn', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(6, 'Madge Hagenes', 'uritchie@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jSZwVsyTzq', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(7, 'Caesar Marquardt PhD', 'lhoeger@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mhy2oxvw5j', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(8, 'Zoe Weissnat', 'nona65@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CHUaARncmV', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(9, 'Prof. Emiliano Dach', 'gutmann.zora@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y3RMHR57wa', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(10, 'Hugh Bosco Jr.', 'viva.tillman@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4kxyLLhmoa', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(11, 'Elmore Schaefer', 'vkautzer@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8nGJAVrSUo', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(12, 'Jayde Walter', 'kamryn06@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KQiTJcCRar', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(13, 'Maybelle Daniel', 'clarissa.carter@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X0X9GRDIeY', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(14, 'Prof. Darron Vandervort', 'kaya78@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rmcYIOtfeB', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(15, 'Mr. Orion Nicolas', 'vanessa02@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k02w2w5mJB', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(16, 'Sterling Leuschke', 'schiller.tyra@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6flvRasi0S', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(17, 'Mrs. Augustine DuBuque DVM', 'lroob@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'svULHHxCmf', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(18, 'Adolfo Dickinson', 'chelsea.hills@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DLU9i3zd6s', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(19, 'Maddison Schmeler', 'gulgowski.korey@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tdVdVz3jHi', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(20, 'Ivah Sporer', 'joan.cronin@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YKoD7CrEmQ', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(21, 'Jett Prosacco', 'willms.schuyler@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xgn5MZIK0j', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(22, 'Dr. Camden Gerlach', 'bergstrom.jabari@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pLU0vm6n9N', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(23, 'Winifred Ziemann', 'soconner@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oHwq8dEOTG', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(24, 'Eric Roberts', 'upton.dexter@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hB7KcpVawR', '2024-04-15 22:08:24', '2024-04-15 22:08:24'),
	(25, 'Amie Collins III', 'dario.vonrueden@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YG684Pdcfw', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(26, 'Rodrigo Emmerich', 'danika.streich@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iBXzacHQ6N', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(27, 'Clifford Doyle II', 'albina.thiel@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KDt4lRNMrj', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(28, 'Edyth Feest', 'morissette.arlene@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0hc1B3ZhMD', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(29, 'Wilson Streich', 'rolando.wisoky@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iRkqYTYiNx', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(30, 'Maverick Skiles', 'adonnelly@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NaaincUmNf', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(31, 'Hunter Anderson', 'zlubowitz@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xBR02WU5pP', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(32, 'Freeda Crist', 'esmith@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N7NWXewOc7', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(33, 'Mr. Kennedy Treutel DVM', 'runolfsdottir.rhett@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1z16YgvZz9', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(34, 'Jarrell Rutherford DDS', 'hsimonis@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D3TEEFploU', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(35, 'Wendy Hickle V', 'oral23@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4z7S4P2Zwz', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(36, 'Prof. Nichole Cole', 'mblick@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZDXtZf851C', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(37, 'Vena Mraz', 'mae27@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o4hiulZW2y', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(38, 'Ms. Loraine Howe IV', 'ari98@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p3tOnOtKF6', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(39, 'Antwan Bailey', 'bobbie25@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9iXsqxSQB4', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(40, 'Daron Mayer', 'herzog.ivory@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JqgUmWxw8C', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(41, 'Lavonne Stiedemann', 'queen.nikolaus@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wH8wTP1DzX', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(42, 'Heber Heidenreich', 'hagenes.kasandra@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DcJ4larc7r', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(43, 'Merlin Walker', 'fvolkman@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vpc75xhu6G', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(44, 'Napoleon Larkin', 'ziemann.hazel@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3Wc7fQXQj9', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(45, 'Rhoda Durgan', 'baron25@example.net', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'stf1JkYUNd', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(46, 'Sasha Parisian', 'cole31@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WgNxupbC7U', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(47, 'Karley Torphy MD', 'weldon15@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LkQXFAzqD3', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(48, 'Bethany Hessel', 'jaida08@example.org', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5hKYrqWaIO', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(49, 'Lenny Hoppe I', 'kbogan@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jpda8rWRR6', '2024-04-15 22:08:25', '2024-04-15 22:08:25'),
	(50, 'Mr. Brycen Steuber', 'john.jaskolski@example.com', '2024-04-15 22:08:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KfXLDP3Ugw', '2024-04-15 22:08:25', '2024-04-15 22:08:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
