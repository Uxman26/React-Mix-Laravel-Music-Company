-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 27. kvě 2024, 11:31
-- Verze serveru: 10.4.28-MariaDB
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `deil_apps.beatboss`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `active_sessions`
--

CREATE TABLE `active_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `active_sessions`
--

INSERT INTO `active_sessions` (`id`, `session_id`, `token`, `user_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 'GxokOGkUiM42rQOLgrACH43IODleHlStfoVMuRiE', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-11 20:27:12', '2024-04-11 20:27:12'),
(2, 'sQQ9DrhQR6a7Pw3xqPsKgBlCKceEEuchmF5XHciu', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-11 20:40:53', '2024-04-11 21:25:22'),
(3, 'ymSjK5dofQHyLB6qk1Pangp1onVMwqNcIMUDv1XE', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-11 21:26:14', '2024-04-11 21:26:14'),
(4, 'z6GsgKLuskOpKLwq20Oi6Fl7at4fbNuxcxm7HGRj', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-17 09:21:19', '2024-04-17 09:21:19'),
(5, 'DFSTOP6h2UefrJcViFyG7lWdU4D84S85nfbCwWtd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-18 08:38:03', '2024-04-18 08:38:04'),
(6, '5dIODlfbCtwe9eHZ6kMZbeRnwdGXmjOP6H9uivGc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-19 21:57:34', '2024-04-19 21:57:36'),
(7, 'tBryD7uTUiL7cg51gN4mbEBmkUIFRlaOFHBxt19S', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-21 07:33:12', '2024-04-21 07:34:05'),
(8, 'onT99oSrCQzAT5LHU9p05r13ExC3zn7LovJ3W7Tj', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-21 07:40:01', '2024-04-21 07:40:01'),
(9, 'TrCPR40EM6PKOxLx2GlX61SzO43GkhVCCWOgoHZP', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-21 07:44:24', '2024-04-21 08:32:18'),
(10, '4CxTADgzrWRA6bkk7fNJWd6Z5hBa60AdHIrtimMB', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-25 20:14:42', '2024-04-25 20:30:15'),
(11, 'tSBAcuNAzPUdkk8ihLI7nn4Pk4oa7qTzQ5rutMFG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-26 05:07:25', '2024-04-26 07:23:37'),
(12, 'esTb5Fzp9jpYUdbl3RfOEfeeODMddxRHdXZZC7Tn', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-26 06:49:37', '2024-04-26 06:49:37'),
(13, 'jNgO2pIXX1Rj9Fax2542kKPM0g8bpoi7oC5ZHz00', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-26 18:47:10', '2024-04-26 21:33:55'),
(14, 'FTLk4A644iefWwKdWAcv36tAYnjEdAGItaRcAxBh', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-27 14:11:11', '2024-04-27 19:53:38'),
(15, 'NQhnWEOpYjaYfdwl3iIzdt8nC4aPZ2QyGPUFCpOJ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-27 19:55:44', '2024-04-27 23:47:03'),
(16, 'rjgHDKXUY5pfNsXQnIOncCYqpIcqyOyby2EsQaQT', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-27 20:37:13', '2024-04-27 21:06:10'),
(17, 'C9vLeBH0PDfcPT7Y3qZchYONqDJFVGODqIa5kQBb', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-27 23:18:11', '2024-04-27 23:19:23'),
(18, 'V0HJ94PfiakwanfWl2rT0wE4A0ZryWe0FUsM6dV3', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-28 00:09:18', '2024-04-28 06:52:59'),
(19, 'ON4DZp3IgRr8zTxtfP850o3gP6wHS49TZhgW1onM', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-28 00:46:13', '2024-04-28 00:46:13'),
(20, 'KPIsaf4Ia6SllZCt52casbTE6i2zaKwIlgFBDaeA', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-28 12:40:03', '2024-04-28 16:50:29'),
(21, 'ii1xYxfDX8GOvzm5QJUL4nhRDmV7qiLKeNWiKjWr', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 04:00:25', '2024-04-29 04:01:21'),
(22, 'Nzx8aHgTjLfvz9HIVqNDkcsZPwRcitVXT84Zlp3z', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 06:59:49', '2024-04-29 19:01:11'),
(23, 'S4hnVyVpv9i7hq9yxHrzh5cumOdmw4lQpljC0kDs', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 07:18:13', '2024-04-29 10:55:30'),
(24, 'FToQMuOIVy1SkHixplXcfD7CXfiZk01HxuR5GC6M', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 12:46:28', '2024-04-29 13:05:53'),
(25, '1gSjc3zsG94CMW0VbQsWFQYbWgxPProi5FxO5PSS', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 13:22:49', '2024-04-29 13:26:18'),
(26, 'ZzxDbdS0ssjmrYC8OfNWJWakXEQf0ApxZkRWWuDK', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 16:09:51', '2024-04-29 16:40:00'),
(27, 'jFujIOwXfIti2a5mXLon8OaoomfteEQQ1WH8Fqr7', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 18:55:59', '2024-04-29 19:01:02'),
(28, 'lvX8LaRNy133QhvcgtXzmPQvabWPuuJGprk3KACZ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 19:33:42', '2024-04-29 21:10:51'),
(29, 'lCyqxm3dNROLgSQNYl40DvZfBfwRUZO4s7dQy8ft', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 19:33:42', '2024-04-29 21:08:09'),
(30, 'lvX8LaRNy133QhvcgtXzmPQvabWPuuJGprk3KACZ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 19:33:42', '2024-04-29 19:33:42'),
(31, 'LF4II8uWrtC4otRwSv9j06h32UXDHPaiIuAncQna', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-29 21:29:49', '2024-04-29 23:08:53'),
(32, 'z6pShx0rJJ4qreVp0hjfb9EDMXWSDUeJxUr2wBFi', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 21:29:50', '2024-04-29 21:32:56'),
(33, 'GzKa5T8V6W7OTZ6LSp8N8sl4s2XLmnjSVHn0VodX', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-29 23:03:32', '2024-04-29 23:17:32'),
(34, 'FobiQMjXY4K05d49RFHCdoatrrhmnM5oSzxdMAUY', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-30 05:29:12', '2024-04-30 05:29:43'),
(35, 'aeKwlPjz0gi3drYIBKPb3gJ3i5R6fnowoZnalFBP', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-30 05:29:22', '2024-04-30 07:43:27'),
(36, 'lp60hhLg4mH8LQdDEYhow2hQaj6AarUv2OlpjnX5', NULL, 1, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '2024-04-30 10:36:05', '2024-04-30 10:44:35'),
(37, 'H2Q2ynwPguWBQwICZUBHv49OcqPEyxVNCO8lRCyZ', NULL, 2, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-30 10:45:06', '2024-04-30 10:45:06'),
(38, 'aRGf9uEpoIwwWfiUpt6i0u0AfXjYXuaF4XBYBfoM', NULL, 1, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '2024-04-30 10:46:04', '2024-04-30 10:52:13'),
(39, 'y72mJyoFwhyLnynPnGDkGd6V8ZyMhu2PWaNfxDdy', NULL, 2, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-30 10:47:24', '2024-04-30 10:50:05'),
(40, 'AavOwES7JXVVse4FlPm9ja72g25EnM1vVZB8HbEi', NULL, 2, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-30 10:56:08', '2024-04-30 10:56:17'),
(41, 'wtU1keHta3FMNKFOBshckw7Ne94zKGYmiEIQ51aT', NULL, 2, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-04-30 10:57:20', '2024-04-30 10:58:13'),
(42, 'Qo6Z6aZtAGDGZO3PADOleNqsN8T9leotSk70eNGQ', NULL, 1, '178.255.168.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 OPR/96.0.0.0', '2024-04-30 11:00:20', '2024-04-30 11:00:20'),
(43, 'Y27PGXiIUciFVXrCyEyZ3xOfAxS9SCdvvZZ9ldgQ', NULL, 2, '178.255.168.204', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '2024-04-30 11:05:27', '2024-04-30 11:05:27'),
(44, 'P5dZLUNaA07kzTft8hWuCDCBdsrxx2r1XkIiiiny', NULL, 2, '178.255.168.204', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '2024-04-30 11:09:52', '2024-04-30 11:12:11'),
(45, 'pV9R4uApOXYnb6bABkAjzUKKJNMN4TvAZFMAsNW2', NULL, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-04-30 09:24:44', '2024-04-30 10:18:07'),
(46, 'hFl15jUGkqmzTcWYp26EpBnDcNnCwx62UJVYLXbd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 06:04:57', '2024-05-01 07:19:23'),
(47, 'sZ1aJSnmrOzTgFDYm8bAsdEHRrdifkVYHEkG4Kpj', NULL, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 07:23:37', '2024-05-01 07:24:08'),
(48, 'xcWTu4ZBQLTIBZDY5NgxiwZuHmqCyI6DhUJhV0Sg', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 16:02:11', '2024-05-01 18:51:35'),
(49, '9QA85K1pSvDLQDlTCp5tKMDFFVuYI4jwUw1nqVQl', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-01 18:57:24', '2024-05-01 21:43:13'),
(50, 'q28zc8HbVE3iJ8aecT8IdQiH6aH8r1mUNaoaSGFB', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-02 04:49:17', '2024-05-02 08:43:22'),
(51, 'BoZbou4XAneFzjzHUlaZPEY3V8Qegi1NR6CBWIs7', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-03 05:32:46', '2024-05-03 09:12:44'),
(52, 'dXQR4z3kkGRag40RHMShRjRjo2FxjTITSLra5vcq', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-03 19:11:30', '2024-05-03 20:15:14'),
(53, 'SvQQt3Xuf5gklHgEgDYcbwXoZKEQugY4Tje0dCjs', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-04 04:38:31', '2024-05-04 04:38:31'),
(54, 'aZNvtMnp9BXdKPj4yAjaeljz2o5unGzDtNJPzFjJ', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-04 06:59:39', '2024-05-04 06:59:39'),
(55, 'pdgZawI4sPupaDqwzJQmtp2wGiZkFWBIgqigs3mu', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-06 15:49:46', '2024-05-06 20:42:59'),
(56, 'NdJPLQ3u4OtR9K053pWnsLMcVmKvZs9zbXgapQoH', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-06 19:24:57', '2024-05-06 19:37:09'),
(57, '6Tb1J2eCtfF9GJoNiRZ3iKm3Xa0Fb9a8OzJ41s6C', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-06 20:31:02', '2024-05-06 20:43:16'),
(58, 'BKqphZRNIE9qSnBhyaJMqwLHgkYKg5k0xzh0TlPC', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-06 20:51:30', '2024-05-06 21:16:41'),
(59, 'bFYKBU0wfVJrX9q9SaWRAhLXdFRK6fkyr7yG0UQO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-07 11:23:49', '2024-05-07 14:48:22'),
(60, 'FKBZJnSV4HaYRZRhmsJUkqZIx3nZx31k0PFiHOdA', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-07 12:29:07', '2024-05-07 13:59:32'),
(61, 'j8ZIUuOvwFCKTC6AirLgLLiuSoMOnLp6pAXGoisG', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-07 16:49:30', '2024-05-07 17:27:15'),
(62, '7DxfhIIABvBdiiNW5jpcRvXMESkz35Gfl2o0EnVN', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-09 16:16:34', '2024-05-09 19:17:22'),
(63, 'n1Ol7jvClsgZfaecOvidAkCF1KJ4AtqvckmDD356', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 15:01:11', '2024-05-10 15:01:18'),
(64, 'n1Ol7jvClsgZfaecOvidAkCF1KJ4AtqvckmDD356', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 15:01:11', '2024-05-10 15:01:11'),
(65, 'n1Ol7jvClsgZfaecOvidAkCF1KJ4AtqvckmDD356', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 15:01:11', '2024-05-10 15:01:11'),
(66, 'kduug8FyGIWZhhgG5nQwqPQ1HhFM20elKcRXIs7R', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-10 19:15:43', '2024-05-10 20:39:28'),
(67, '4ourXq32DczfQCOgIkE240S8Uf0EKcOf5AaPmcYS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 06:04:17', '2024-05-11 07:52:38'),
(68, '4ourXq32DczfQCOgIkE240S8Uf0EKcOf5AaPmcYS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 06:04:17', '2024-05-11 06:04:17'),
(69, '4ourXq32DczfQCOgIkE240S8Uf0EKcOf5AaPmcYS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 06:04:17', '2024-05-11 06:04:17'),
(70, 'NR62dHkc4suMXEsXaU2lzoBezeC6qvWAC1INXxIS', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-11 06:23:42', '2024-05-11 07:55:44'),
(71, '84ldc2DP5ip6JUYoi0bKjeW78orRo3lpKfFVey3N', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-11 17:28:04', '2024-05-11 17:28:04'),
(72, 'MsM8ay60VO9Whv4oo3RwzwRFXWNOmvv2ZU9A8mba', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-11 17:28:05', '2024-05-11 17:28:05'),
(73, 'DfMx9Qe2KV4Nmm1r1Gs95ALOQvkhXUq0MNwvQ0gQ', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-11 17:28:17', '2024-05-11 18:31:19'),
(74, 'XyMRsGRk8KvbKsVapeLatTQ3E11UH5QH3nCgrZ5n', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-11 20:59:22', '2024-05-11 23:23:17'),
(75, 'qEK96rZDxqSsF7yMHX39ZVxgkbazXlV9PmFEnMQO', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-11 21:11:55', '2024-05-11 23:17:50'),
(76, 'Dk85bzxDJDrY86o11PkLeZLLtpeKpu2OnfaZyO9C', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 09:42:20', '2024-05-12 11:07:17'),
(77, 'ta2gJ0SM0IFzN4mHqXgzeUnhmGjHmAXwErIBaZ8I', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 13:38:26', '2024-05-12 21:31:57'),
(78, 'YYPzcHLEYDEbnOKvUpVmxn8ErOnQDYqOEQH7i6yH', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-12 13:40:50', '2024-05-12 21:28:23'),
(79, 'Pu7xAWiAjCms1qd3VopkbOPHxpIxJzr6IcbtHRes', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 04:16:57', '2024-05-13 09:11:24'),
(80, 'hhqCoegKjn6gYP6ba1O5CmtrMzSqEVPcaCeEEjvh', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-13 04:53:50', '2024-05-13 07:52:10'),
(81, '7rWMMmOu63m8UOhSGxXbcx4PctWw79gkc0wOQ376', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 12:23:55', '2024-05-13 12:24:19'),
(82, 'wW3HNalWhRinwRhvxMDRqGzLyn8Bm7aDXgcp9HP4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 18:53:46', '2024-05-13 20:34:37'),
(83, 'uKzx5nuAKL0MTFxBpUssESANhXBrGmu7dm4lShve', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-13 18:53:57', '2024-05-13 18:54:01'),
(84, 'lAiGOMBRaKYGg8qaECLQqejrJIhxwmLbTIYmMpD5', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-14 04:13:19', '2024-05-14 05:09:03'),
(85, 'h9CiVuWTJaLsvLT8lCXZtDZGVQmaZxeo41kssuRI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-14 04:18:22', '2024-05-14 04:18:30'),
(87, 'PIYRXFKNS6eHm8S55JBfVAhwPhUfarINpaxq5CyK', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-14 19:13:17', '2024-05-14 20:04:45'),
(88, 'MynUO61dMLPacH5lMbrnR2HABgin48snmtBK5Q8V', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-14 19:22:44', '2024-05-14 20:03:46'),
(89, 'v2R3JNpgeNzD8VXrsbPj0BF4hmq02AJGw063qPsx', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 04:19:38', '2024-05-15 06:50:38'),
(90, 'v2R3JNpgeNzD8VXrsbPj0BF4hmq02AJGw063qPsx', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 04:19:38', '2024-05-15 04:19:38'),
(91, 'dkLxWXMwco9xyjSS8Ub6fL1VUgTYbppNPspoe84T', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 04:22:41', '2024-05-15 07:12:48'),
(92, 'xhIfZHttDASNYiMCIyZX3rPYt1fg5inusUyw5yTL', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 12:51:36', '2024-05-15 12:51:36'),
(93, 'ruIOZJC3W3LLcH8BwffDjTOrJHWEFCmD5iEPE5WM', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:19', '2024-05-15 19:07:19'),
(94, 'UaWbaLSYS8U5wv1bFrjL4G9DNttNwfoLc3ohpwSD', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:26', '2024-05-15 19:07:26'),
(95, 'VBTQRs0i4urAV9m291WeMOX7bfQ2rCyQDMweNcFS', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:26', '2024-05-15 19:07:26'),
(96, 'S7ZcT2x4JffO3MipgE20tvyfA91pPksXhwEo2ZZ5', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:27', '2024-05-15 19:07:27'),
(97, 'HbyobDm3Fc4G3k7stU9hyaDHi3lXTudCw8Q3aXNr', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:27', '2024-05-15 19:07:27'),
(98, 'cJuOXRfvHoJ3zLm9umt6mn2BgyHhpa5PZQEJRIAd', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:07:28', '2024-05-15 19:07:33'),
(99, 'aTsJkQ1jtU2YhXOCwUC4xoM3AvDxV59pLKwOPks4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 19:08:34', '2024-05-15 19:08:34'),
(100, 'W2X5icNRHHBfoVAbThY1rTXGVz30RoWipYXUhgeh', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 19:08:34', '2024-05-15 19:08:34'),
(101, 'F3RBOdSCy2qR1a42Qk4ndfSxoMUfcl03wfAyHGR9', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 19:08:34', '2024-05-15 19:08:34'),
(102, 'o2Rt9BLyLyCL5P4UYINWD4mUOayURqrKp2OleTgL', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:08:34', '2024-05-15 20:15:48'),
(103, 'o2Rt9BLyLyCL5P4UYINWD4mUOayURqrKp2OleTgL', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-15 19:08:34', '2024-05-15 19:08:34'),
(104, 'wGn5dYL03gmiXBI8qBGq7ahQ1DsOSI8NMGD1rDw5', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 19:08:34', '2024-05-15 19:08:34'),
(105, 'cHtOyEwQxRfCNKeqWJ5HeBIlvztzI6IcY8mgc1FM', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15 19:52:10', '2024-05-15 20:07:41'),
(106, 'rYkcSlSp4g7xEPCUadICiXaiqLSxUna65lE35PR4', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:06:03', '2024-05-16 06:27:15'),
(107, '6XAfpnYYXmAuLNrt93jei60SxHRnWQg9MbLhwSec', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16 05:06:03', '2024-05-16 05:06:03'),
(108, 'p7IDYVr2cCOu4XhsiHcYPXQU6a3PuBfYyd0xdHlc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-16 05:55:11', '2024-05-16 06:36:59'),
(109, 'WK7lIKVp1JLCTnIXiUSEn4ghiLINSMUt2wXtB34W', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-19 22:29:32', '2024-05-19 22:34:52'),
(110, 'nEnsKBstVBMR28fj2mAJ4SWYLztYo4IO33mnK6zR', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-19 22:41:36', '2024-05-19 22:41:44'),
(111, 'DqtpTfFQHwq82NhKtxgg7xpTPHD6eQBS1aT8dz9E', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-20 16:09:49', '2024-05-20 19:39:39'),
(112, 'P3XrUwLYv4MyAIHH4sxXIDROj5W84g09wVoLo5Mw', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-20 16:34:12', '2024-05-20 19:36:31'),
(113, 'xoik6h62JFEsOh41nbUNvJei64MO5b2sHPWfSxGI', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-20 16:59:33', '2024-05-20 16:59:33'),
(114, 'wHzDjM4v1GVIwS2MUbvUsDFoNgdiGOFroN7cUXWE', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-21 07:08:28', '2024-05-21 07:08:42'),
(115, 'tv5kGXyL9z1AEFl1pktblrXsZocjBLsxRsCXeDAr', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-21 14:08:00', '2024-05-21 14:08:10'),
(116, 'fIikxgMEmbEiCltypmVQXRF8ssvJY5lrgN1ILj1E', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-22 09:23:56', '2024-05-22 21:57:23'),
(117, 'Bt1MjZs8KZDPsGMgmiats0QaKDliM9a0zvT3iRhU', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-22 12:12:05', '2024-05-22 21:59:16'),
(118, 'QA3fcDoT6oyCBUhUoBsGbtPLoLR3p2thGbttOMMo', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-23 17:07:25', '2024-05-23 21:24:23'),
(119, 'I5TtSAUisuQZ6GFuSOmyHuEo3VHlKJf3v5vOTKbA', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-23 17:07:26', '2024-05-23 17:07:26'),
(120, 'EO5KM3cgjsBpljMr72bZEUx7thrNI6bqCPvfk4Sy', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-23 19:30:48', '2024-05-23 19:53:47'),
(121, 'MAt6PUsqbzYnR7afkRSAgXZFEIVBPAL02VvwVLeT', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-24 13:21:54', '2024-05-24 15:22:18'),
(122, 'AwjH519LXO2bh7pxGtYFs7ebfDRo1Kh40HKUVlTn', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-24 17:52:18', '2024-05-24 20:32:08'),
(123, 'B9J8dr3kIwjEQU9pOaIdrawGynsD02IrCBJ4KInx', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-25 13:46:53', '2024-05-25 18:14:36'),
(124, 'HiazPTDxLW6uxYvP0Pp5oqbG8eIg7uKYuXCed1xY', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-25 13:52:49', '2024-05-25 16:18:58'),
(125, 'MMeEaR8clAHJqBoT34dmiSmeK3LP5EHHgSZUs3YO', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-25 16:28:12', '2024-05-25 16:28:12'),
(126, 'Yy7sHEOFbq1GtXNcc8nvyacHwVpjJOxCK38XtQqy', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-26 16:00:51', '2024-05-26 16:00:51'),
(127, 'qskh8UurbzFVx6WsKUDACybvxIXXuy2GMVFkTnmD', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-26 16:00:55', '2024-05-26 20:55:10'),
(128, 'g70QvlZJHzz2CKYMm6RxHrw64dwEyD1pglaTUJzc', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-26 16:06:04', '2024-05-26 19:35:37'),
(129, 'x2UnWialFjNtUf3aaSI8ShObrjPS4uaOjK1yPnuW', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-26 19:01:02', '2024-05-26 19:01:02'),
(130, 'LsLwu9cv2pksoAfcfrOGkjJ0IeCflYXxwQEnGesl', NULL, 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-05-27 04:51:13', '2024-05-27 07:23:15'),
(131, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:29:39'),
(132, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:28:13'),
(133, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:28:13'),
(134, 'YQTYVny0oQsw7Vl2NlBvOecjgqWROtNKW2OCyn43', NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-05-27 06:28:13', '2024-05-27 06:28:13');

-- --------------------------------------------------------

--
-- Struktura tabulky `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `spotify_popularity` tinyint(4) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fully_scraped` tinyint(1) NOT NULL DEFAULT 0,
  `temp_id` varchar(8) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `spotify_id` char(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `albums`
--

INSERT INTO `albums` (`id`, `name`, `release_date`, `image`, `spotify_popularity`, `owner_id`, `fully_scraped`, `temp_id`, `views`, `spotify_id`, `created_at`, `updated_at`, `description`, `plays`) VALUES
(42, 'Touchdowner', '2024-04-30 00:00:00', 'storage/album_images/f6f57752-db76-41e0-a489-81c6037f6861.png', NULL, 1, 0, NULL, 9, NULL, '2024-04-29 23:01:36', '2024-05-27 05:54:30', 'Touchdowner (BLACK)', 47);

-- --------------------------------------------------------

--
-- Struktura tabulky `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `spotify_followers` int(10) UNSIGNED DEFAULT NULL,
  `spotify_popularity` tinyint(3) UNSIGNED DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `fully_scraped` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `spotify_id` char(22) DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `artists`
--

INSERT INTO `artists` (`id`, `name`, `spotify_followers`, `spotify_popularity`, `image_small`, `fully_scraped`, `updated_at`, `created_at`, `views`, `spotify_id`, `plays`, `verified`) VALUES
(1, 'beatboss', NULL, NULL, 'https://www.gravatar.com/avatar/5bacc266aee0f53a244987e783c4381c?s=&d=retro', 1, '2024-05-22 20:37:05', '2024-04-21 08:28:05', 6, NULL, 18, 0),
(2, 'Deil', NULL, NULL, 'https://www.gravatar.com/avatar/d599d6b5e54de5ac3893ed8b0e6c9ff6?s=&d=retro', 1, '2024-05-27 05:54:30', '2024-04-29 13:04:40', 35, NULL, 47, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `artist_album`
--

CREATE TABLE `artist_album` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `artist_album`
--

INSERT INTO `artist_album` (`id`, `artist_id`, `album_id`, `primary`) VALUES
(47, 2, 42, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `artist_bios`
--

CREATE TABLE `artist_bios` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `artist_track`
--

CREATE TABLE `artist_track` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `artist_track`
--

INSERT INTO `artist_track` (`id`, `artist_id`, `track_id`, `primary`) VALUES
(702, 2, 533, 1),
(704, 2, 534, 1),
(705, 1, 535, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `backstage_requests`
--

CREATE TABLE `backstage_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'become-artist',
  `artist_name` varchar(255) DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `backstage_requests`
--

INSERT INTO `backstage_requests` (`id`, `type`, `artist_name`, `artist_id`, `data`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'verify-artist', 'touchdownrecords201', 2, '{\"first_name\":\"Dalibor\",\"last_name\":\"Kolomp\\u00e1r\",\"image\":\"https:\\/\\/www.gravatar.com\\/avatar\\/d599d6b5e54de5ac3893ed8b0e6c9ff6?s=&d=retro\",\"company\":\"Deilonthebeat\"}', 2, 'approved', '2024-05-22 16:48:09', '2024-05-22 16:48:43');

-- --------------------------------------------------------

--
-- Struktura tabulky `bans`
--

CREATE TABLE `bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `bannable_type` varchar(255) NOT NULL,
  `bannable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_type` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `billing_plans`
--

CREATE TABLE `billing_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL DEFAULT '$',
  `interval` varchar(255) NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `paypal_id` varchar(50) DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `show_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `features` text DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `channelables`
--

CREATE TABLE `channelables` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(11) NOT NULL,
  `channelable_type` varchar(20) NOT NULL,
  `channelable_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `channelables`
--

INSERT INTO `channelables` (`id`, `channel_id`, `channelable_type`, `channelable_id`, `order`, `created_at`) VALUES
(1, 5, 'channel', 6, 1, NULL),
(2, 5, 'channel', 8, 2, NULL),
(3, 5, 'channel', 7, 3, NULL),
(8, 10, 'channel', 5, 6, NULL),
(60, 9, 'channel', 3, 0, '2024-05-01 16:48:47'),
(61, 9, 'channel', 13, 1, '2024-05-01 16:48:47'),
(62, 9, 'channel', 14, 2, '2024-05-01 16:48:47'),
(63, 9, 'channel', 10, 3, '2024-05-01 16:48:47'),
(64, 9, 'channel', 2, 4, '2024-05-01 16:48:47'),
(65, 9, 'channel', 4, 5, '2024-05-01 16:48:47');

-- --------------------------------------------------------

--
-- Struktura tabulky `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'channel',
  `slug` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `config` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `channels`
--

INSERT INTO `channels` (`id`, `name`, `internal`, `description`, `type`, `slug`, `user_id`, `created_at`, `updated_at`, `config`) VALUES
(1, 'Popular Albums', 0, NULL, 'channel', 'popular-albums', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"contentType\":\"listAll\",\"contentModel\":\"album\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Popular Albums\",\"seoDescription\":\"Most popular albums from hottest artists today.\"}'),
(2, 'New Releases', 0, NULL, 'channel', 'new-releases', 1, '2024-04-11 17:25:04', '2024-04-29 15:49:48', '{\"contentType\":\"listAll\",\"contentModel\":\"track\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Latest Releases\",\"seoDescription\":\"Browse and listen to newest releases from popular artists.\",\"restriction\":false,\"restrictionModelId\":\"urlParam\",\"hideTitle\":false}'),
(3, 'Top Charts', 0, 'Top Charts', 'channel', 'charts', 1, '2024-04-11 17:25:04', '2024-04-29 15:49:25', '{\"contentType\":\"listAll\",\"contentModel\":\"track\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Top Charts\",\"seoDescription\":\"Global Top charts of most popular songs.\"}'),
(4, 'Genres', 0, NULL, 'channel', 'genres', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"contentType\":\"listAll\",\"contentModel\":\"genre\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"nestedLayout\":\"grid\",\"seoTitle\":\"Popular Genres\",\"seo_description\":\"Browse popular genres to discover new music.\"}'),
(5, '{{channel.restriction.display_name}}', 0, NULL, 'channel', 'genre', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"manual\",\"contentModel\":\"channel\",\"contentOrder\":\"channelables.order:asc\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} artists, albums and tracks.\"}'),
(6, '{{channel.restriction.display_name}} Artists', 0, NULL, 'channel', 'genre-artists', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"artist\",\"nestedLayout\":\"carousel\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} artists.\"}'),
(7, '{{channel.restriction.display_name}} Albums', 0, NULL, 'channel', 'genre-albums', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"album\",\"nestedLayout\":\"carousel\",\"contentOrder\":\"popularity:desc\",\"layout\":\"grid\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} albums.\"}'),
(8, '{{channel.restriction.display_name}} Tracks', 0, NULL, 'channel', 'genre-tracks', 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', '{\"restriction\":\"genre\",\"restrictionModelId\":\"urlParam\",\"lockSlug\":true,\"preventDeletion\":true,\"contentType\":\"listAll\",\"contentModel\":\"track\",\"nestedLayout\":\"trackTable\",\"contentOrder\":\"popularity:desc\",\"layout\":\"trackTable\",\"seoTitle\":\"{{channel.restriction.display_name}} - {{site_name}}\",\"seoDescription\":\"Popular {{channel.restriction.display_name}} tracks.\"}'),
(9, 'Discover', 0, NULL, 'channel', 'discover', 1, '2024-04-11 17:25:04', '2024-05-01 18:51:26', '{\"contentType\":\"manual\",\"contentModel\":\"channel\",\"hideTitle\":true,\"contentOrder\":\"channelables.order:asc\",\"layout\":\"list\",\"nestedLayout\":\"list\",\"seoTitle\":\"{{site_name}} - Listen to music for free\",\"seoDescription\":\"Find and listen to millions of songs, albums and artists, all completely free on {{SITE_NAME}}.\"}'),
(10, 'Public Playlists', 0, 'Public Playlists', 'channel', 'public-playlists', 1, '2024-04-29 15:30:11', '2024-05-01 18:51:26', '{\"contentType\":\"listAll\",\"contentModel\":\"playlist\",\"contentOrder\":\"created_at:desc\",\"layout\":\"grid\",\"nestedLayout\":\"carousel\",\"seoTitle\":\"Public Playlists\",\"seoDescription\":\"Public Playlists\"}'),
(13, 'Free Beats', 0, 'Free Beats', 'channel', 'free-beats', 1, '2024-04-29 15:43:52', '2024-04-29 15:43:52', '{\"contentType\":\"listAll\",\"contentOrder\":\"created_at:desc\",\"nestedLayout\":\"carousel\",\"contentModel\":\"track\",\"layout\":\"trackTable\",\"seoTitle\":\"Free Beats\",\"seoDescription\":\"Free Beats\"}'),
(14, 'Exclusive Only', 0, 'Exclusive Only', 'channel', 'exclusive-only', 1, '2024-04-29 15:44:44', '2024-04-29 15:44:44', '{\"contentType\":\"listAll\",\"contentOrder\":\"created_at:desc\",\"nestedLayout\":\"carousel\",\"contentModel\":\"track\",\"layout\":\"trackTable\",\"seoTitle\":\"Exclusive Only\",\"seoDescription\":\"Exclusive Only\"}');

-- --------------------------------------------------------

--
-- Struktura tabulky `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `upvotes` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `downvotes` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `comment_reports`
--

CREATE TABLE `comment_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `comment_votes`
--

CREATE TABLE `comment_votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `vote_type` varchar(10) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `css_themes`
--

CREATE TABLE `css_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT 0,
  `default_light` tinyint(1) NOT NULL DEFAULT 0,
  `default_dark` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `values` text NOT NULL,
  `font` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `css_themes`
--

INSERT INTO `css_themes` (`id`, `name`, `is_dark`, `default_light`, `default_dark`, `user_id`, `values`, `font`, `created_at`, `updated_at`) VALUES
(1, 'Dark', 1, 0, 1, 1, '{\"--be-foreground-base\":\"255 255 255\",\"--be-primary-light\":\"248 231 137\",\"--be-primary\":\"255 215 0\",\"--be-primary-dark\":\"255 215 0\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"0 0 0\",\"--be-background-alt\":\"0 0 0\",\"--be-background-chip\":\"255 215 0\",\"--be-paper\":\"35 35 44\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"30%\",\"--be-hover-opacity\":\"8%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"16%\",\"--be-text-main-opacity\":\"100%\",\"--be-text-muted-opacity\":\"70%\",\"--be-divider-opacity\":\"12%\",\"--be-navbar-color\":\"bg\",\"--be-input-radius\":\"0px\",\"--be-button-radius\":\"0px\",\"--be-panel-radius\":\"0px\"}', '{\"family\":\"Cantata One\",\"category\":\"serif\",\"google\":true}', '2024-04-11 17:25:03', '2024-04-29 21:29:40'),
(2, 'Light', 0, 1, 0, 1, '{\"--be-foreground-base\":\"0 0 0\",\"--be-primary-light\":\"248 231 137\",\"--be-primary\":\"255 215 0\",\"--be-primary-dark\":\"255 215 0\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"255 255 255\",\"--be-background-alt\":\"255 255 255\",\"--be-background-chip\":\"255 215 0\",\"--be-paper\":\"255 255 255\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"26%\",\"--be-hover-opacity\":\"4%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"8%\",\"--be-text-main-opacity\":\"87%\",\"--be-text-muted-opacity\":\"60%\",\"--be-divider-opacity\":\"12%\",\"--be-navbar-color\":\"bg\"}', '{\"family\":\"Cantata One\",\"category\":\"serif\",\"google\":true}', '2024-04-11 17:25:03', '2024-04-29 21:29:40');

-- --------------------------------------------------------

--
-- Struktura tabulky `csv_exports`
--

CREATE TABLE `csv_exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cache_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `download_name` varchar(50) NOT NULL,
  `uuid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `custom_domains`
--

CREATE TABLE `custom_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `resource_id` int(10) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(20) DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta` text DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `body`, `slug`, `meta`, `type`, `created_at`, `updated_at`, `user_id`, `hide_nav`, `workspace_id`) VALUES
(1, 'Privacy Policy', '<p></p>', 'privacy-policy', NULL, 'default', '2024-04-11 17:25:03', '2024-04-29 15:55:21', NULL, 0, NULL),
(2, 'Terms of Service', '<p></p>', 'terms-of-service', NULL, 'default', '2024-04-11 17:25:03', '2024-04-29 15:55:14', NULL, 0, NULL),
(3, 'About Us', '<p></p>', 'about-us', NULL, 'default', '2024-04-11 17:25:04', '2024-04-29 15:55:27', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `failed_jobs`
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
-- Struktura tabulky `file_entries`
--

CREATE TABLE `file_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `disk_prefix` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `preview_token` varchar(15) DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `workspace_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `file_entries`
--

INSERT INTO `file_entries` (`id`, `name`, `file_name`, `file_size`, `mime`, `extension`, `user_id`, `created_at`, `updated_at`, `public`, `disk_prefix`, `parent_id`, `description`, `password`, `type`, `deleted_at`, `path`, `preview_token`, `thumbnail`, `workspace_id`, `owner_id`) VALUES
(1, 'deil.png', '59b82ff1-12b5-4014-b60d-e271e7ac1264.png', 35694, 'image/png', 'png', NULL, '2024-04-21 08:25:51', '2024-04-21 08:25:51', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(2, 'mona-lisa_TK12561251.mp3.mp3', '1cd6da66-dd03-46c8-9df1-06b8194793ca.mp3', 7766643, 'audio/mpeg', 'mp3', NULL, '2024-04-21 08:26:12', '2024-04-21 08:26:12', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(6, 'hero.png', 'b7997897-7220-4b72-a503-870762d9acd3.png', 1043966, 'image/png', 'png', NULL, '2024-04-29 15:15:39', '2024-04-29 15:15:39', 1, 'playlist_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(7, 'hiphop.jpg', 'cd40fb92-ea71-49a9-9ea1-1034fab96e0c.jpg', 106298, 'image/jpeg', 'jpg', NULL, '2024-04-29 23:00:37', '2024-04-29 23:00:37', 1, 'genre_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(8, 'deil.png', '5321d09e-7d85-45ca-a876-612dab9e924b.png', 35694, 'image/png', 'png', NULL, '2024-04-29 23:01:06', '2024-04-29 23:01:06', 1, 'album_images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(9, 'Mona_Lisa.mp3', 'c4ed0198-a7f3-4d1f-9959-bf38458fd120.mp3', 7771043, 'audio/mpeg', 'mp3', NULL, '2024-04-29 23:10:44', '2024-04-29 23:10:44', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 2),
(10, 'hero.png', 'bd6dbc3f-fb78-46a8-911e-fb19a8d16458.png', 1043966, 'image/png', 'png', NULL, '2024-04-29 23:11:05', '2024-04-29 23:11:05', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 2),
(11, 'headphones.jpg', 'c40c263f-29b4-4441-8e0c-32abf1384506.jpg', 254842, 'image/jpeg', 'jpg', NULL, '2024-04-30 07:36:43', '2024-04-30 07:36:43', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(12, 'monitors.jpg', '7c13d2e8-feeb-4872-9386-d8a10dd96fc1.jpg', 1920592, 'image/jpeg', 'jpg', NULL, '2024-04-30 07:38:55', '2024-04-30 07:38:55', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(13, 'Beatboss.png', 'eca3cc51-7409-4625-b861-164ceab7041b.png', 6345, 'image/png', 'png', NULL, '2024-04-30 07:40:38', '2024-04-30 07:40:38', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(14, 'Beatboss.png', '12f2267c-4fdb-4cab-8a13-d31ea686d3a5.png', 6345, 'image/png', 'png', NULL, '2024-04-30 07:40:45', '2024-04-30 07:40:45', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(15, 'Beatboss.png', '4289b568-dca5-4828-ab76-95be7ac189f6.png', 6345, 'image/png', 'png', NULL, '2024-04-30 07:40:50', '2024-04-30 07:40:50', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(16, 'Beatboss.png', 'a0206f61-04a8-4e30-b3c1-8db67cc123e0.png', 6345, 'image/png', 'png', NULL, '2024-04-30 07:40:54', '2024-04-30 07:40:54', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(17, 'Beatboss.png', 'd39ae40f-04f3-42cd-a329-7efc29af341d.png', 6345, 'image/png', 'png', NULL, '2024-04-30 07:40:59', '2024-04-30 07:40:59', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(18, 'monitors.jpg', 'd5e4ad56-0669-4cf4-a880-7f0d248c31d6.jpg', 1920592, 'image/jpeg', 'jpg', NULL, '2024-04-30 10:36:53', '2024-04-30 10:36:53', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(19, 'Beatboss.png', '79a57ae6-c62e-44d4-af8f-0e03048a9fa5.png', 6345, 'image/png', 'png', NULL, '2024-04-30 10:37:11', '2024-04-30 10:37:11', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(20, 'Beatboss.png', '4ef715d7-fb50-4270-a636-4435d499703f.png', 6345, 'image/png', 'png', NULL, '2024-04-30 10:37:15', '2024-04-30 10:37:15', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(21, 'Beatboss.png', '061def60-b6e8-430d-a12c-ad2f8e949e1d.png', 6345, 'image/png', 'png', NULL, '2024-04-30 10:37:20', '2024-04-30 10:37:20', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(22, 'Beatboss.png', '0fdc5546-42b1-4946-9c1d-5c865c881f67.png', 6345, 'image/png', 'png', NULL, '2024-04-30 10:37:24', '2024-04-30 10:37:24', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(23, 'deil.png', '1ac0f27b-744a-40af-9216-164e43590c3a.png', 35694, 'image/png', 'png', NULL, '2024-04-30 10:40:22', '2024-04-30 10:40:22', 1, 'album_images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(24, 'hero.png', '7db7a811-eb95-4960-8296-dfef76318307.png', 1043966, 'image/png', 'png', NULL, '2024-04-30 10:40:35', '2024-04-30 10:40:35', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(25, 'hiphop.jpg', 'a7fedad8-2310-48bb-ac57-772bb51e0169.jpg', 106298, 'image/jpeg', 'jpg', NULL, '2024-04-30 10:41:17', '2024-04-30 10:41:17', 1, 'genre_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(26, 'Mona_Lisa.mp3', '63cb672a-afba-4963-b592-3df7d9045177.mp3', 7771043, 'audio/mpeg', 'mp3', NULL, '2024-04-30 10:49:11', '2024-04-30 10:49:11', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(27, '87f44d76--Selfmade.mp3', '9efa813e-94fd-45cb-9d9b-d48a9ff19ff4.mp3', 5702008, 'audio/mpeg', 'mp3', NULL, '2024-05-01 07:19:18', '2024-05-01 07:19:18', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(28, 'Beatboss.png', '4711f272-0f64-4d3d-80c8-d5ea4310a425.png', 6345, 'image/png', 'png', NULL, '2024-05-01 16:53:59', '2024-05-01 16:53:59', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(29, 'Beatboss.png', '3468e63e-5ad7-4a5c-9d4d-1463e8b4688c.png', 6345, 'image/png', 'png', NULL, '2024-05-01 16:54:02', '2024-05-01 16:54:02', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(30, 'Beatboss.png', 'fa19ef21-33fc-4cc0-a548-1913d7de6838.png', 6345, 'image/png', 'png', NULL, '2024-05-01 16:54:05', '2024-05-01 16:54:05', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(31, 'Beatboss.png', 'bb44343b-d660-4662-a542-7a8185e5f28f.png', 6345, 'image/png', 'png', NULL, '2024-05-01 16:54:07', '2024-05-01 16:54:07', 1, 'branding_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(32, 'hiphop.jpg', '126d4702-7a0b-4c5a-929b-6b7d78d4752b.jpg', 106298, 'image/jpeg', 'jpg', NULL, '2024-05-01 16:55:22', '2024-05-01 16:55:22', 1, 'genre_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(33, 'hero.png', '1e80b14a-6a22-4af6-bb47-62ddbfa85528.png', 1043966, 'image/png', 'png', NULL, '2024-05-01 16:55:35', '2024-05-01 16:55:35', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(34, 'Touchdowner Black.png', 'f6f57752-db76-41e0-a489-81c6037f6861.png', 187816, 'image/png', 'png', NULL, '2024-05-01 16:56:13', '2024-05-01 16:56:13', 1, 'album_images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(35, 'headphones.jpg', '29267b03-4e41-4340-b757-080f4bceb0fd.jpg', 254842, 'image/jpeg', 'jpg', NULL, '2024-05-01 18:48:29', '2024-05-01 18:48:29', 1, 'playlist_media', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(36, 'Mona_Lisa.mp3', 'cff169ea-efca-4fff-be8d-1ceb62171867.mp3', 7771043, 'audio/mpeg', 'mp3', NULL, '2024-05-01 18:50:02', '2024-05-01 18:50:02', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(37, 'monitors.jpg', '82a37f59-2654-4618-94bf-09209fc26cc5.jpg', 1920592, 'image/jpeg', 'jpg', NULL, '2024-05-01 18:57:45', '2024-05-01 18:57:45', 1, 'homepage', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(38, 'hero.png', 'c90a1cdc-55bf-4852-93ae-4fe5dba16549.png', 1043966, 'image/png', 'png', NULL, '2024-05-12 21:00:14', '2024-05-12 21:00:14', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(39, 'lost-in-you---buy-1-get-9-free---kanye-west-x-swae-lee_TK16574004.mp3.mp3', '5caeabbb-25f8-498b-8a9c-6376b2327650.mp3', 7366447, 'audio/mpeg', 'mp3', NULL, '2024-05-12 21:00:46', '2024-05-12 21:00:46', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(40, 'lost-in-you---buy-1-get-9-free---kanye-west-x-swae-lee_TK16574004.mp3.mp3', 'a5950324-0514-41d0-86e7-85f9de99f510.mp3', 7366447, 'audio/mpeg', 'mp3', NULL, '2024-05-12 21:10:16', '2024-05-12 21:10:16', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 2),
(41, 'hero.png', 'ea5ea83f-6655-4d52-8fbd-f1afe6c0ef80.png', 1043966, 'image/png', 'png', NULL, '2024-05-12 21:11:03', '2024-05-12 21:11:03', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 2),
(42, 'lost-in-you---buy-1-get-9-free---kanye-west-x-swae-lee_TK16574004.mp3.mp3', '234df92a-41b6-4851-a597-1df6f159bfd6.mp3', 7366447, 'audio/mpeg', 'mp3', NULL, '2024-05-12 21:11:28', '2024-05-12 21:11:28', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 2),
(43, 'Mona_Lisa.mp3', '64ea04d0-efa0-4f81-ac06-2abdade34b02.mp3', 7771043, 'audio/mpeg', 'mp3', NULL, '2024-05-12 21:15:25', '2024-05-12 21:15:25', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 2),
(44, 'icon---40-off---_TK10023137.mp3.mp3', '041cc5c0-e833-4dae-bcee-bdfa72d2a25d.mp3', 7349882, 'audio/mpeg', 'mp3', NULL, '2024-05-12 21:16:53', '2024-05-12 21:16:53', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 2),
(45, 'download.pdf', 'dd1863cd-9ef0-4c7a-ba7d-c0e9e88a3eda.pdf', 1740127, 'application/pdf', 'pdf', NULL, '2024-05-12 21:18:20', '2024-05-12 21:18:20', 1, 'track_image', NULL, NULL, NULL, 'pdf', NULL, NULL, NULL, 0, 12, 2),
(46, '4-am---50-unlimited_TK15210930.mp3.mp3', '6dedf038-2f4e-42ad-b7c9-1f4b1a3c476b.mp3', 7526317, 'audio/mpeg', 'mp3', NULL, '2024-05-14 04:18:04', '2024-05-14 04:18:04', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 2),
(47, 'hero.png', '3542fbe2-a470-4995-ab6b-e15ae3842d26.png', 1043966, 'image/png', 'png', NULL, '2024-05-20 17:45:15', '2024-05-20 17:45:15', 1, 'artist_images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(48, 'hero.png', '4bebeecc-f34d-46cd-afdf-fd3f2a52dc4e.png', 1043966, 'image/png', 'png', NULL, '2024-05-20 17:46:17', '2024-05-20 17:46:17', 1, 'artist_images', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(49, '-show-off---30-unlimited---drake-x-lil-baby-x-travis_TK18238383.mp3.mp3', '66eda056-ffc1-47d2-98fe-7aa5e0bedb4a.mp3', 6326774, 'audio/mpeg', 'mp3', NULL, '2024-05-22 18:43:39', '2024-05-22 18:43:39', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(50, '-playoff---30-unlimited---obladaet-x-ace-hood-x-logic_TK18582668.mp3.mp3', 'dccca875-de7c-4641-a87f-18c54825b211.mp3', 5126186, 'audio/mpeg', 'mp3', NULL, '2024-05-22 19:37:02', '2024-05-22 19:37:02', 1, 'track_media', NULL, NULL, NULL, 'audio', NULL, NULL, NULL, 0, 0, 1),
(51, 'monitors.jpg', '3e2764a1-9b85-494f-a256-5ac8f41ab274.jpg', 1920592, 'image/jpeg', 'jpg', NULL, '2024-05-22 19:37:43', '2024-05-22 19:37:43', 1, 'track_image', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1),
(52, 'Beatboss.png', '4cb1d766-9fe9-46d3-aadc-c282e5dfa842.png', 6345, 'image/png', 'png', NULL, '2024-05-22 19:39:33', '2024-05-22 19:39:33', 1, 'avatars', NULL, NULL, NULL, 'image', NULL, NULL, NULL, 0, 12, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `file_entry_models`
--

CREATE TABLE `file_entry_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_entry_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `file_entry_models`
--

INSERT INTO `file_entry_models` (`id`, `file_entry_id`, `model_id`, `model_type`, `created_at`, `updated_at`, `owner`, `permissions`) VALUES
(1, 1, 1, 'user', '2024-04-21 08:25:51', '2024-04-21 08:25:51', 1, NULL),
(2, 2, 1, 'user', '2024-04-21 08:26:12', '2024-04-21 08:26:12', 1, NULL),
(6, 6, 1, 'user', '2024-04-29 15:15:39', '2024-04-29 15:15:39', 1, NULL),
(7, 7, 1, 'user', '2024-04-29 23:00:37', '2024-04-29 23:00:37', 1, NULL),
(8, 8, 1, 'user', '2024-04-29 23:01:06', '2024-04-29 23:01:06', 1, NULL),
(9, 9, 2, 'user', '2024-04-29 23:10:44', '2024-04-29 23:10:44', 1, NULL),
(10, 10, 2, 'user', '2024-04-29 23:11:05', '2024-04-29 23:11:05', 1, NULL),
(11, 11, 1, 'user', '2024-04-30 07:36:43', '2024-04-30 07:36:43', 1, NULL),
(12, 12, 1, 'user', '2024-04-30 07:38:55', '2024-04-30 07:38:55', 1, NULL),
(13, 13, 1, 'user', '2024-04-30 07:40:38', '2024-04-30 07:40:38', 1, NULL),
(14, 14, 1, 'user', '2024-04-30 07:40:45', '2024-04-30 07:40:45', 1, NULL),
(15, 15, 1, 'user', '2024-04-30 07:40:50', '2024-04-30 07:40:50', 1, NULL),
(16, 16, 1, 'user', '2024-04-30 07:40:54', '2024-04-30 07:40:54', 1, NULL),
(17, 17, 1, 'user', '2024-04-30 07:41:00', '2024-04-30 07:41:00', 1, NULL),
(18, 18, 1, 'user', '2024-04-30 10:36:53', '2024-04-30 10:36:53', 1, NULL),
(19, 19, 1, 'user', '2024-04-30 10:37:11', '2024-04-30 10:37:11', 1, NULL),
(20, 20, 1, 'user', '2024-04-30 10:37:15', '2024-04-30 10:37:15', 1, NULL),
(21, 21, 1, 'user', '2024-04-30 10:37:20', '2024-04-30 10:37:20', 1, NULL),
(22, 22, 1, 'user', '2024-04-30 10:37:24', '2024-04-30 10:37:24', 1, NULL),
(23, 23, 1, 'user', '2024-04-30 10:40:22', '2024-04-30 10:40:22', 1, NULL),
(24, 24, 1, 'user', '2024-04-30 10:40:35', '2024-04-30 10:40:35', 1, NULL),
(25, 25, 1, 'user', '2024-04-30 10:41:17', '2024-04-30 10:41:17', 1, NULL),
(26, 26, 1, 'user', '2024-04-30 10:49:11', '2024-04-30 10:49:11', 1, NULL),
(27, 27, 1, 'user', '2024-05-01 07:19:18', '2024-05-01 07:19:18', 1, NULL),
(28, 28, 1, 'user', '2024-05-01 16:53:59', '2024-05-01 16:53:59', 1, NULL),
(29, 29, 1, 'user', '2024-05-01 16:54:02', '2024-05-01 16:54:02', 1, NULL),
(30, 30, 1, 'user', '2024-05-01 16:54:05', '2024-05-01 16:54:05', 1, NULL),
(31, 31, 1, 'user', '2024-05-01 16:54:07', '2024-05-01 16:54:07', 1, NULL),
(32, 32, 1, 'user', '2024-05-01 16:55:22', '2024-05-01 16:55:22', 1, NULL),
(33, 33, 1, 'user', '2024-05-01 16:55:35', '2024-05-01 16:55:35', 1, NULL),
(34, 34, 1, 'user', '2024-05-01 16:56:13', '2024-05-01 16:56:13', 1, NULL),
(35, 35, 1, 'user', '2024-05-01 18:48:29', '2024-05-01 18:48:29', 1, NULL),
(36, 36, 1, 'user', '2024-05-01 18:50:02', '2024-05-01 18:50:02', 1, NULL),
(37, 37, 1, 'user', '2024-05-01 18:57:45', '2024-05-01 18:57:45', 1, NULL),
(38, 38, 1, 'user', '2024-05-12 21:00:15', '2024-05-12 21:00:15', 1, NULL),
(39, 39, 1, 'user', '2024-05-12 21:00:46', '2024-05-12 21:00:46', 1, NULL),
(40, 40, 2, 'user', '2024-05-12 21:10:16', '2024-05-12 21:10:16', 1, NULL),
(41, 41, 2, 'user', '2024-05-12 21:11:03', '2024-05-12 21:11:03', 1, NULL),
(42, 42, 2, 'user', '2024-05-12 21:11:28', '2024-05-12 21:11:28', 1, NULL),
(43, 43, 2, 'user', '2024-05-12 21:15:25', '2024-05-12 21:15:25', 1, NULL),
(44, 44, 2, 'user', '2024-05-12 21:16:53', '2024-05-12 21:16:53', 1, NULL),
(45, 45, 2, 'user', '2024-05-12 21:18:20', '2024-05-12 21:18:20', 1, NULL),
(46, 46, 2, 'user', '2024-05-14 04:18:04', '2024-05-14 04:18:04', 1, NULL),
(47, 47, 1, 'user', '2024-05-20 17:45:15', '2024-05-20 17:45:15', 1, NULL),
(48, 48, 1, 'user', '2024-05-20 17:46:17', '2024-05-20 17:46:17', 1, NULL),
(49, 49, 1, 'user', '2024-05-22 18:43:39', '2024-05-22 18:43:39', 1, NULL),
(50, 50, 1, 'user', '2024-05-22 19:37:02', '2024-05-22 19:37:02', 1, NULL),
(51, 51, 1, 'user', '2024-05-22 19:37:43', '2024-05-22 19:37:43', 1, NULL),
(52, 52, 1, 'user', '2024-05-22 19:39:33', '2024-05-22 19:39:33', 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `follows`
--

INSERT INTO `follows` (`id`, `follower_id`, `followed_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `genreables`
--

CREATE TABLE `genreables` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(11) NOT NULL,
  `genreable_id` int(11) NOT NULL,
  `genreable_type` varchar(10) NOT NULL DEFAULT 'App\\Artist'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `genreables`
--

INSERT INTO `genreables` (`id`, `genre_id`, `genreable_id`, `genreable_type`) VALUES
(4, 1, 2, 'artist'),
(1, 1, 42, 'album'),
(2, 1, 533, 'track'),
(3, 1, 534, 'track');

-- --------------------------------------------------------

--
-- Struktura tabulky `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `popularity` int(10) UNSIGNED DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `image`, `popularity`, `display_name`) VALUES
(1, 'hip-hop', '2024-04-29 23:00:46', '2024-05-01 16:55:24', 'storage/genre_media/126d4702-7a0b-4c5a-929b-6b7d78d4752b.jpg', NULL, 'Hip Hop');

-- --------------------------------------------------------

--
-- Struktura tabulky `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `jobs`
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
-- Struktura tabulky `licenses`
--

CREATE TABLE `licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `track_id` int(11) NOT NULL,
  `all_tracks` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `allow_offer` tinyint(1) DEFAULT 0,
  `min_offer` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `highlighted` tinyint(1) DEFAULT 0,
  `is_non_exclusive` tinyint(1) DEFAULT 0,
  `is_exclusive` tinyint(1) DEFAULT 0,
  `has_tagged_mp3` tinyint(1) DEFAULT 0,
  `has_untagged_mp3` tinyint(1) DEFAULT 0,
  `has_wav` tinyint(1) DEFAULT 0,
  `has_stems` tinyint(1) DEFAULT 0,
  `has_pdf` tinyint(1) DEFAULT 0,
  `brief` varchar(255) DEFAULT NULL,
  `feature_list` varchar(255) DEFAULT NULL,
  `recording` tinyint(1) DEFAULT 0,
  `distribution` varchar(255) DEFAULT NULL,
  `audio_streams` varchar(255) DEFAULT NULL,
  `video_streams` varchar(255) DEFAULT NULL,
  `broadcast` tinyint(1) DEFAULT 0,
  `stations` varchar(255) DEFAULT NULL,
  `profit` tinyint(1) DEFAULT 0,
  `license_info` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `licenses`
--

INSERT INTO `licenses` (`id`, `track_id`, `all_tracks`, `name`, `price`, `allow_offer`, `min_offer`, `enable`, `highlighted`, `is_non_exclusive`, `is_exclusive`, `has_tagged_mp3`, `has_untagged_mp3`, `has_wav`, `has_stems`, `has_pdf`, `brief`, `feature_list`, `recording`, `distribution`, `audio_streams`, `video_streams`, `broadcast`, `stations`, `profit`, `license_info`, `created_at`, `updated_at`) VALUES
(2, 535, NULL, 'beatboss', '200', 1, '200', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Best beatboss', 'New list', 1, '500', '500', '500', 1, '500', 1, 'Best beatboss', '2024-05-22 20:01:55', '2024-05-22 20:01:55'),
(5, 533, NULL, 'Winner License', '250', 1, '250', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Winner brief', 'Winner feeature', 1, '120', '120', '120', 1, '120', 1, 'Winner license', '2024-05-22 20:35:18', '2024-05-22 20:35:18');

-- --------------------------------------------------------

--
-- Struktura tabulky `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `likeable_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(20) NOT NULL DEFAULT 'App\\Models\\Track',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `likes`
--

INSERT INTO `likes` (`id`, `likeable_id`, `likeable_type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'artist', 2, '2024-05-20 17:47:29', NULL),
(3, 42, 'album', 2, '2024-05-22 17:02:41', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `localizations`
--

CREATE TABLE `localizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `localizations`
--

INSERT INTO `localizations` (`id`, `name`, `created_at`, `updated_at`, `language`) VALUES
(1, 'English', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 'en');

-- --------------------------------------------------------

--
-- Struktura tabulky `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `track_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_synced` tinyint(1) NOT NULL DEFAULT 0,
  `duration` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `lyrics`
--

INSERT INTO `lyrics` (`id`, `text`, `track_id`, `created_at`, `updated_at`, `is_synced`, `duration`) VALUES
(1, 'IconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon\nIconIconIconIconIconIconIconIconIconIconIconIconIcon', 534, '2024-05-20 18:04:52', '2024-05-20 18:06:05', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_127_156842_create_social_profiles_table', 1),
(4, '2015_04_127_156842_create_users_oauth_table', 1),
(5, '2015_05_29_131549_create_settings_table', 1),
(6, '2015_09_04_155015_create_artists_table', 1),
(7, '2015_09_06_161342_create_albums_table', 1),
(8, '2015_09_06_161348_create_tracks_table', 1),
(9, '2015_09_11_145318_create_similar_artists_table', 1),
(10, '2015_09_17_135717_create_track_user_table', 1),
(11, '2015_09_26_124652_create_playlists_table', 1),
(12, '2015_09_26_131215_create_playlist_track_table', 1),
(13, '2015_09_26_135719_create_playlist_user_table', 1),
(14, '2015_10_16_135253_create_genres_table', 1),
(15, '2015_10_16_135754_create_genre_artist', 1),
(16, '2015_10_23_164355_create_follows_table', 1),
(17, '2015_11_18_134303_add_temp_id_to_albums', 1),
(18, '2015_11_18_134303_add_temp_id_to_tracks', 1),
(19, '2015_11_19_134203_change_fully_scraped_default', 1),
(20, '2016_03_03_143235_add_position_to_playlist_track_table', 1),
(21, '2016_03_14_143858_add_url_to_tracks_table', 1),
(22, '2016_03_24_148503_add_fully_scraped_index_to_albums_table', 1),
(23, '2016_03_24_148503_add_fully_scraped_index_to_artists_table', 1),
(24, '2016_03_24_148503_add_public_index_to_playlists_table', 1),
(25, '2016_03_28_150334_add_image_and_description_to_playlists_table', 1),
(26, '2016_05_02_150429_change_artists_fully_scraped_default', 1),
(27, '2016_05_12_190852_create_tags_table', 1),
(28, '2016_05_12_190958_create_taggables_table', 1),
(29, '2016_05_26_170044_create_uploads_table', 1),
(30, '2016_05_27_143158_create_uploadables_table', 1),
(31, '2016_07_14_153703_create_groups_table', 1),
(32, '2016_07_14_153921_create_user_group_table', 1),
(33, '2017_07_02_120142_create_pages_table', 1),
(34, '2017_07_11_122825_create_localizations_table', 1),
(35, '2017_08_26_131330_add_private_field_to_settings_table', 1),
(36, '2017_08_26_155115_add_timestamps_to_artists_table', 1),
(37, '2017_09_12_134214_set_playlist_user_owner_column_default_to_zero', 1),
(38, '2017_09_16_155557_create_lyrics_table', 1),
(39, '2017_09_17_144728_add_columns_to_users_table', 1),
(40, '2017_09_17_152854_make_password_column_nullable', 1),
(41, '2017_09_30_152855_make_settings_value_column_nullable', 1),
(42, '2017_10_01_152856_add_views_column_to_artists_table', 1),
(43, '2017_10_01_152857_add_views_column_to_albums_table', 1),
(44, '2017_10_01_152858_add_plays_column_to_tracks_table', 1),
(45, '2017_10_01_152859_add_views_column_to_playlists_table', 1),
(46, '2017_10_01_152897_add_public_column_to_uploads_table', 1),
(47, '2017_12_04_132911_add_avatar_column_to_users_table', 1),
(48, '2018_01_10_140732_create_subscriptions_table', 1),
(49, '2018_01_10_140746_add_billing_to_users_table', 1),
(50, '2018_01_10_161706_create_billing_plans_table', 1),
(51, '2018_07_24_113757_add_available_space_to_billing_plans_table', 1),
(52, '2018_07_24_124254_add_available_space_to_users_table', 1),
(53, '2018_07_26_142339_rename_groups_to_roles', 1),
(54, '2018_07_26_142842_rename_user_role_table_columns_to_roles', 1),
(55, '2018_08_07_124200_rename_uploads_to_file_entries', 1),
(56, '2018_08_07_124327_refactor_file_entries_columns', 1),
(57, '2018_08_07_130653_add_folder_path_column_to_file_entries_table', 1),
(58, '2018_08_07_140440_migrate_file_entry_users_to_many_to_many', 1),
(59, '2018_08_15_132225_move_uploads_into_subfolders', 1),
(60, '2018_08_31_104145_rename_uploadables_table', 1),
(61, '2018_08_31_104325_rename_file_entry_models_table_columns', 1),
(62, '2018_10_01_090754_add_image_and_popularity_columns_to_genres_table', 1),
(63, '2018_11_26_171703_add_type_and_title_columns_to_pages_table', 1),
(64, '2018_12_01_144233_change_unique_index_on_tags_table', 1),
(65, '2019_02_16_150049_delete_old_seo_settings', 1),
(66, '2019_02_24_141457_create_jobs_table', 1),
(67, '2019_03_11_162627_add_preview_token_to_file_entries_table', 1),
(68, '2019_03_12_160803_add_thumbnail_column_to_file_entries_table', 1),
(69, '2019_03_16_161836_add_paypal_id_column_to_billing_plans_table', 1),
(70, '2019_05_14_120930_index_description_column_in_file_entries_table', 1),
(71, '2019_06_08_120504_create_custom_domains_table', 1),
(72, '2019_06_13_140318_add_user_id_column_to_pages_table', 1),
(73, '2019_06_15_114320_rename_pages_table_to_custom_pages', 1),
(74, '2019_06_18_133933_create_permissions_table', 1),
(75, '2019_06_18_134203_create_permissionables_table', 1),
(76, '2019_06_18_135822_rename_permissions_columns', 1),
(77, '2019_07_08_122001_create_css_themes_table', 1),
(78, '2019_07_20_141752_create_invoices_table', 1),
(79, '2019_08_19_121112_add_global_column_to_custom_domains_table', 1),
(80, '2019_09_13_141123_change_plan_amount_to_float', 1),
(81, '2019_09_17_134818_rename_track_artists_legacy_column', 1),
(82, '2019_09_18_131640_create_artist_track_table', 1),
(83, '2019_09_18_131837_migrate_inline_artists_to_pivot', 1),
(84, '2019_09_19_123359_add_spotify_id_to_tracks_table', 1),
(85, '2019_09_19_161230_add_spotify_id_to_artists_table', 1),
(86, '2019_09_19_161305_add_spotify_id_to_albums_table', 1),
(87, '2019_09_21_134409_add_timestamps_to_artists_albums_tracks', 1),
(88, '2019_09_22_131629_add_user_id_columns_to_tracks_table', 1),
(89, '2019_09_22_131758_rename_track_user_table_to_liked_tracks', 1),
(90, '2019_09_26_144547_update_albums_to_v2', 1),
(91, '2019_09_30_152608_update_genre_artist_table_to_v2', 1),
(92, '2019_10_02_192908_create_reposts_table', 1),
(93, '2019_10_04_140608_create_user_profiles_table', 1),
(94, '2019_10_04_140907_create_user_links_table', 1),
(95, '2019_10_06_122651_create_channels_table', 1),
(96, '2019_10_06_132717_create_channelables_table', 1),
(97, '2019_10_14_171943_add_index_to_username_column', 1),
(98, '2019_10_15_171019_create_plays_table', 1),
(99, '2019_10_20_143522_create_comments_table', 1),
(100, '2019_10_20_150654_add_columns_to_comments_table', 1),
(101, '2019_10_23_134520_create_notifications_table', 1),
(102, '2019_10_31_154623_artist_bios', 1),
(103, '2019_10_31_154730_create_bio_images_table', 1),
(104, '2019_11_02_151404_move_inline_artist_bios_to_separate_tables', 1),
(105, '2019_11_14_195518_add_name_index_to_artists_table', 1),
(106, '2019_11_15_183635_add_display_name_column_to_genres_table', 1),
(107, '2019_11_16_150409_add_indexes_to_genreables_table', 1),
(108, '2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table', 1),
(109, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(110, '2019_12_14_194512_rename_public_path_column_to_disk_prefix', 1),
(111, '2019_12_24_165237_change_file_size_column_default_value_to_0', 1),
(112, '2019_12_28_190836_update_file_entry_models_table_to_v2', 1),
(113, '2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models', 1),
(114, '2020_01_26_143733_create_notification_subscriptions_table', 1),
(115, '2020_03_03_140720_add_language_col_to_localizations_table', 1),
(116, '2020_03_03_143142_add_lang_code_to_existing_localizations', 1),
(117, '2020_03_30_150052_index_created_at_in_tracks_table', 1),
(118, '2020_04_09_154139_delete_old_notifications', 1),
(119, '2020_04_14_163347_add_hidden_column_to_plans_table', 1),
(120, '2020_06_27_180040_add_verified_at_column_to_users_table', 1),
(121, '2020_06_27_180253_move_confirmed_column_to_email_verified_at', 1),
(122, '2020_07_15_144024_fix_issues_with_migration_to_laravel_7', 1),
(123, '2020_07_22_165126_create_workspaces_table', 1),
(124, '2020_07_23_145652_create_workspace_invites_table', 1),
(125, '2020_07_23_164502_create_workspace_user_table', 1),
(126, '2020_07_26_165349_add_columns_to_roles_table', 1),
(127, '2020_07_29_141418_add_workspace_id_column_to_workspaceable_models', 1),
(128, '2020_07_30_152330_add_type_column_to_permissions_table', 1),
(129, '2020_08_29_165057_add_hide_nav_column_to_custom_pages_table', 1),
(130, '2021_04_16_184910_add_artist_id_column_to_user_profiles_table', 1),
(131, '2021_04_16_185035_move_artist_bios_to_user_profiles', 1),
(132, '2021_04_17_175627_rename_bio_images_table_to_profile_images', 1),
(133, '2021_04_22_163240_create_backStage_requests_table', 1),
(134, '2021_04_22_172459_add_internal_columm_to_roles_table', 1),
(135, '2021_04_22_174550_add_artists_column_to_roles_table', 1),
(136, '2021_04_24_164138_create_user_artist_table', 1),
(137, '2021_04_25_173110_add_verified_column_to_artists_table', 1),
(138, '2021_04_28_153802_create_artist_album_table', 1),
(139, '2021_04_28_153950_migrate_albums_to_many_to_many_artist_relation', 1),
(140, '2021_05_01_174819_add_collaborative_column_to_playlists_table', 1),
(141, '2021_05_02_172541_add_added_by_column_to_playlist_track_table', 1),
(142, '2021_05_02_174158_add_owner_id_column_to_playlists_table', 1),
(143, '2021_05_02_174256_hydrate_empty_owner_id_column_in_playlist_table', 1),
(144, '2021_05_02_194925_rename_owner_column_to_editor_in_playlist_user_table', 1),
(145, '2021_05_03_173446_add_deleted_column_to_comments_table', 1),
(146, '2021_05_03_174006_hydrate_added_by_column_in_playlist_track_table', 1),
(147, '2021_05_05_195829_add_spotify_id_column_to_playlists_table', 1),
(148, '2021_05_07_165545_add_config_column_to_channels_table', 1),
(149, '2021_05_07_165903_move_channel_settings_into_config_column', 1),
(150, '2021_05_09_180332_rename_user_links_table_to_profile_links', 1),
(151, '2021_05_09_180652_add_columns_to_profile_links_table', 1),
(152, '2021_05_10_162145_migrate_user_artist_type_albums', 1),
(153, '2021_05_10_164700_migrate_user_artist_type_tracks', 1),
(154, '2021_05_12_164940_add_advanced_column_to_permissions_table', 1),
(155, '2021_05_12_170639_replace_album_artist_track_permission_with_music_one', 1),
(156, '2021_05_18_163931_add_plays_column_to_albums_table', 1),
(157, '2021_05_20_190631_create_failed_jobs_table', 1),
(158, '2021_05_22_143750_add_owner_id_column_to_tracks_and_albums_table', 1),
(159, '2021_06_04_143405_add_workspace_id_col_to_custom_domains_table', 1),
(160, '2021_06_04_143406_add_workspace_id_col_to_custom_pages_table', 1),
(161, '2021_06_04_143406_add_workspace_id_col_to_file_entries_table', 1),
(162, '2021_06_05_182202_create_csv_exports_table', 1),
(163, '2021_06_18_161030_rename_gateway_col_in_subscriptions_table', 1),
(164, '2021_06_19_111939_add_owner_id_column_to_file_entries_table', 1),
(165, '2021_06_19_112035_materialize_owner_id_in_file_entries_table', 1),
(166, '2021_07_17_093454_add_created_at_col_to_user_role_table', 1),
(167, '2021_09_30_123758_slugify_tag_name_column', 1),
(168, '2021_10_13_132915_add_token_cols_to_social_profiles_table', 1),
(169, '2022_04_08_122553_change_default_workspace_id_from_null_to_zero', 1),
(170, '2022_04_23_115027_add_id_to_all_menus', 1),
(171, '2022_08_10_200344_add_produce_id_column_to_subscriptions_table', 1),
(172, '2022_08_11_160401_create_prices_table', 1),
(173, '2022_08_11_170041_create_products_table', 1),
(174, '2022_08_11_170117_move_billing_plans_to_products_and_prices_tables', 1),
(175, '2022_08_17_184337_add_card_expires_column_to_users_table', 1),
(176, '2022_08_24_192127_migrate_common_settings_to_v3', 1),
(177, '2022_09_03_164633_add_expires_at_column_to_personal_access_tokens_table', 1),
(178, '2022_09_27_124344_change_available_space_column_to_big_int', 1),
(179, '2022_09_28_121423_migrate_notif_settings_from_array_to_obj', 1),
(180, '2022_11_06_115107_increase_file_name_column_length', 1),
(181, '2023_02_01_172721_add_admin_sorting_indexes', 1),
(182, '2023_03_10_165309_index_created_at_column_in_artists_table', 1),
(183, '2023_03_17_175502_add_user_id_to_tags_table', 1),
(184, '2023_03_17_180355_change_name_index_to_name_user_id_in_tags_table', 1),
(185, '2023_03_27_124108_slugify_genre_name_column', 1),
(186, '2023_04_23_103944_rename_url_field_to_src_in_tracks_table', 1),
(187, '2023_04_23_104050_move_youtube_id_column_to_src', 1),
(188, '2023_05_09_124348_create_bans_table', 1),
(189, '2023_05_09_133514_add_banned_at_column_to_users_table', 1),
(190, '2023_05_11_200001_add_two_factor_columns_to_users_table', 1),
(191, '2023_05_13_132948_active_sessions_table', 1),
(192, '2023_05_16_150805_change_social_profiles_token_length', 1),
(193, '2023_06_10_131615_add_pos_and_neg_votes_to_comments_table', 1),
(194, '2023_06_10_132135_add_comment_ratings_table', 1),
(195, '2023_06_11_124655_create_comment_reports_table', 1),
(196, '2023_08_08_103123_add_timestamp_indexes_to_comments_table', 1),
(197, '2023_08_31_124910_update_model_types_from_namespace_to_string', 1),
(198, '2023_11_04_110555_add_type_column_to_channels_table', 1),
(199, '2023_11_04_125528_add_created_at_column_to_channelables_tables', 1),
(200, '2023_11_04_132126_migrate_channel_config_to_common', 1),
(201, '2023_12_10_124446_upgrade_css_themes_table_to_v3', 1),
(202, '2023_12_18_141540_add_search_indices_to_users_table', 1),
(203, '2023_12_19_122804_add_uuid_column_to_failed_jobs_table', 1),
(204, '2023_12_23_121618_encrypt_secret_settings', 1),
(205, '2024_02_05_103042_change_avatar_column_to_text', 1),
(206, '2024_03_21_140247_add_is_synced_field_to_lyrics_table', 1),
(207, '2024_03_25_134922_add_duration_to_lyrics_table', 1),
(208, '2024_04_25_220337_create_maintenance_mode_table', 2),
(209, '2024_04_27_110155_add_columns_to_tracks', 3),
(210, '2024_05_14_223157_create_licenses_table', 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('27721faf-e4bd-4383-97f7-89fe298a6715', 'App\\Notifications\\BackstageRequestWasHandled', 'user', 2, '{\"mainAction\":{\"action\":\"http:\\/\\/beatboss.localhost\\/artist\\/2\\/deil\",\"label\":\"Open artist profile\"},\"lines\":[{\"content\":\"Your backstage request was approved.\",\"type\":\"primary\"}]}', '2024-05-12 21:09:00', '2024-05-12 21:08:16', '2024-05-12 21:09:00'),
('66da5ff5-8052-41df-bc31-b905ae59301c', 'App\\Notifications\\BackstageRequestWasHandled', 'user', 2, '{\"mainAction\":{\"action\":\"http:\\/\\/deilonthebeat.localhost\\/artist\\/2\\/deil\",\"label\":\"Open artist profile\"},\"lines\":[{\"content\":\"Your backstage request was approved.\",\"type\":\"primary\"}]}', '2024-04-29 13:05:06', '2024-04-29 13:04:46', '2024-04-29 13:05:06'),
('8fbd5171-504b-4fc2-9c4d-0a718090b332', 'App\\Notifications\\BackstageRequestWasHandled', 'user', 2, '{\"mainAction\":{\"action\":\"http:\\/\\/beatboss.localhost\\/artist\\/2\\/deil\",\"label\":\"Open artist profile\"},\"lines\":[{\"content\":\"Your backstage request was approved.\",\"type\":\"primary\"}]}', '2024-05-22 16:49:13', '2024-05-22 16:48:47', '2024-05-22 16:49:13');

-- --------------------------------------------------------

--
-- Struktura tabulky `notification_subscriptions`
--

CREATE TABLE `notification_subscriptions` (
  `id` char(36) NOT NULL,
  `notif_id` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `channels` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'touchdownrecords201@gmail.com', '$2y$10$Ea8xSiq3E.CNP4jSjgrKhOdovB.vXFNdhfMwvuRfpBlNK.IYvXCNm', '2024-04-30 10:55:18');

-- --------------------------------------------------------

--
-- Struktura tabulky `permissionables`
--

CREATE TABLE `permissionables` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `permissionable_id` int(11) NOT NULL,
  `permissionable_type` varchar(40) NOT NULL,
  `restrictions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `permissionables`
--

INSERT INTO `permissionables` (`id`, `permission_id`, `permissionable_id`, `permissionable_type`, `restrictions`) VALUES
(1, 3, 1, 'user', NULL),
(2, 9, 1, 'role', '[]'),
(3, 18, 1, 'role', '[]'),
(4, 22, 1, 'role', '[]'),
(5, 26, 1, 'role', '[]'),
(6, 32, 1, 'role', '[]'),
(7, 37, 1, 'role', '[]'),
(9, 49, 1, 'role', '[]'),
(10, 51, 1, 'role', '[]'),
(11, 55, 1, 'role', '[]'),
(12, 56, 1, 'role', '[]'),
(13, 59, 1, 'role', '[]'),
(14, 60, 1, 'role', '[]'),
(15, 79, 1, 'role', '[]'),
(16, 88, 1, 'role', '[]'),
(17, 9, 2, 'role', '[]'),
(18, 22, 2, 'role', '[]'),
(19, 26, 2, 'role', '[]'),
(20, 32, 2, 'role', '[]'),
(21, 37, 2, 'role', '[]'),
(22, 48, 2, 'role', '[]'),
(23, 49, 2, 'role', '[]'),
(24, 51, 2, 'role', '[]'),
(25, 55, 2, 'role', '[]'),
(26, 59, 2, 'role', '[]'),
(27, 79, 2, 'role', '[]'),
(28, 52, 3, 'role', '[]'),
(29, 18, 1, 'product', '[]'),
(30, 52, 1, 'product', '[]'),
(31, 18, 2, 'product', '[]'),
(32, 52, 2, 'product', '[]'),
(33, 52, 3, 'product', '[]'),
(34, 18, 3, 'product', '[]'),
(35, 52, 4, 'product', '[]'),
(36, 18, 4, 'product', '[]'),
(37, 50, 2, 'product', '[]'),
(39, 91, 2, 'product', '[]'),
(42, 21, 2, 'product', '[]'),
(43, 92, 2, 'product', '[]'),
(44, 93, 2, 'product', '[]'),
(45, 80, 2, 'product', '[]'),
(46, 95, 3, 'role', '[]'),
(50, 95, 2, 'product', '[]'),
(56, 51, 2, 'product', '[]'),
(57, 51, 3, 'role', '[]'),
(58, 50, 3, 'role', '[]'),
(59, 49, 3, 'role', '[]'),
(62, 49, 2, 'product', '[]'),
(63, 94, 2, 'product', '[]'),
(64, 94, 3, 'role', '[]'),
(65, 48, 2, 'product', '[]'),
(66, 48, 3, 'role', '[]'),
(67, 48, 1, 'role', '[]');

-- --------------------------------------------------------

--
-- Struktura tabulky `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `group` varchar(30) NOT NULL,
  `restrictions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group`, `restrictions`, `created_at`, `updated_at`, `type`, `advanced`) VALUES
(1, 'admin.access', 'Access Admin', 'Required in order to access any admin area page.', 'admin', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(2, 'appearance.update', 'Update Appearance', 'Allows access to appearance editor.', 'admin', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(3, 'admin', 'Super Admin', 'Give all permissions to user.', 'admin', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(4, 'api.access', 'Access Api', 'Allow users to use the API and access API section in their account settings page.', 'api', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(5, 'roles.view', 'View Roles', 'Allow viewing ALL roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(6, 'roles.create', 'Create Roles', 'Allow creating new roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(7, 'roles.update', 'Update Roles', 'Allow updating ALL roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(8, 'roles.delete', 'Delete Roles', 'Allow deleting ALL roles, regardless of who is the owner.', 'roles', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(9, 'custom_pages.view', 'View Custom Pages', 'Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.', 'custom_pages', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(10, 'custom_pages.create', 'Create Custom Pages', 'Allow creating new custom pages, regardless of who is the owner.', 'custom_pages', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of pages user will be able to create. Leave empty for unlimited.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(11, 'custom_pages.update', 'Update Custom Pages', 'Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.', 'custom_pages', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(12, 'custom_pages.delete', 'Delete Custom Pages', 'Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.', 'custom_pages', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(13, 'custom_domains.view', 'View Custom Domains', 'Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.', 'custom_domains', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(14, 'custom_domains.create', 'Create Custom Domains', 'Allow user to connect their own custom domains.', 'custom_domains', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of domains user will be able to create. Leave empty for unlimited.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(15, 'custom_domains.update', 'Update Custom Domains', 'Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.', 'custom_domains', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(16, 'custom_domains.delete', 'Delete Custom Domains', 'Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.', 'custom_domains', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(17, 'files.view', 'View Files', 'Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(18, 'files.create', 'Create Files', 'Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(19, 'files.update', 'Update Files', 'Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(20, 'files.delete', 'Delete Files', 'Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(21, 'files.download.mp3', 'Download MP3 Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(22, 'users.view', 'View Users', 'Allow viewing user profile pages on the site. User can view their own profile without this permission.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(23, 'users.create', 'Create Users', 'Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(24, 'users.update', 'Update Users', 'Allow editing details of any user on the site. User can edit their own details without this permission.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(25, 'users.delete', 'Delete Users', 'Allow deleting any user on the site. User can request deletion of their own account without this permission.', 'users', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(26, 'localizations.view', 'View Localizations', 'Allow viewing ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(27, 'localizations.create', 'Create Localizations', 'Allow creating new localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(28, 'localizations.update', 'Update Localizations', 'Allow updating ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(29, 'localizations.delete', 'Delete Localizations', 'Allow deleting ALL localizations, regardless of who is the owner.', 'localizations', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(30, 'settings.view', 'View Settings', 'Allow viewing ALL settings, regardless of who is the owner.', 'settings', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(31, 'settings.update', 'Update Settings', 'Allow updating ALL settings, regardless of who is the owner.', 'settings', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(32, 'plans.view', 'View Plans', 'Allow viewing ALL plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(33, 'plans.create', 'Create Plans', 'Allow creating new plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(34, 'plans.update', 'Update Plans', 'Allow updating ALL plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(35, 'plans.delete', 'Delete Plans', 'Allow deleting ALL plans, regardless of who is the owner.', 'plans', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(36, 'invoices.view', 'View Invoices', 'Allow viewing ALL invoices, regardless of who is the owner.', 'invoices', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(37, 'tags.view', 'View Tags', 'Allow viewing ALL tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(38, 'tags.create', 'Create Tags', 'Allow creating new tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(39, 'tags.update', 'Update Tags', 'Allow updating ALL tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(40, 'tags.delete', 'Delete Tags', 'Allow deleting ALL tags, regardless of who is the owner.', 'tags', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(41, 'workspaces.view', 'View Workspaces', 'Allow viewing ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(42, 'workspaces.create', 'Create Workspaces', 'Allow creating new workspaces, regardless of who is the owner.', 'workspaces', '[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of workspaces user will be able to create. Leave empty for unlimited.\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(43, 'workspaces.update', 'Update Workspaces', 'Allow updating ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(44, 'workspaces.delete', 'Delete Workspaces', 'Allow deleting ALL workspaces, regardless of who is the owner.', 'workspaces', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(45, 'workspace_members.invite', 'Invite Members', 'Allow user to invite new members into a workspace.', 'workspace_members', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'workspace', 0),
(46, 'workspace_members.update', 'Update Members', 'Allow user to change role of other members.', 'workspace_members', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'workspace', 0),
(47, 'workspace_members.delete', 'Delete Members', 'Allow user to remove members from workspace.', 'workspace_members', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'workspace', 0),
(48, 'music.view', 'View Music', 'Allows viewing of music content on the site (tracks, albums, artists, channels etc.)', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(49, 'music.play', 'Play Music', 'Allows playback of music and video on the site.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(50, 'music.download', 'Download Music', 'Allows download of music and video on the site.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(51, 'music.embed', 'Embed Music', 'Allows embedding of tracks, albums and playlists on external sites.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(52, 'music.create', 'Create Music', 'Allows uploading and creating new tracks and albums on the site.', 'music', '[{\"name\":\"minutes\",\"type\":\"number\",\"description\":\"How many minutes all user tracks are allowed to take up. Leave empty for unlimited.\"},{\"name\":\"artist_selection\",\"type\":\"bool\",\"description\":\"Allows attaching track or album to any artist that exists on the site, instead of only the ones managed by current user.\"}]', '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(53, 'music.update', 'Update Music', 'Allows editing all media (album, track, artist etc.) on the site, even if user did not create them initially. User can edit their own media without this permission.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(54, 'music.delete', 'Delete Music', 'Allows deleting any media item on the site, even if user did not create them initially. User can delete their own media without this permission.', 'music', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(55, 'playlists.view', 'View Playlists', 'Allow viewing and searching for playlists marked as public.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(56, 'playlists.create', 'Create Playlists', 'Allow creating new playlists.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(57, 'playlists.update', 'Update Playlists', 'Allow editing of all playlists, whether user is the owner or not. User can edit their own playlists without this permission.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(58, 'playlists.delete', 'Delete Playlists', 'Allow deleting any playlist, whether user is the owner or not. User can delete their own playlists without this permission.', 'playlists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(59, 'comments.view', 'View Comments', 'Allow viewing a single comment or list of comments on the site.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(60, 'comments.create', 'Create Comments', 'Allow creating new comments.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(61, 'comments.update', 'Update Comments', 'Allow editing of all comments, whether user created that comment or not. User can edit their own comments without this permission.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(62, 'comments.delete', 'Delete Comments', 'Allow deleting any comment, whether user created that comment or not. User can delete their own comments without this permission.', 'comments', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 0),
(63, 'artists.view', 'View Artists', 'Allow viewing artist page and searching for artists.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(64, 'artists.create', 'Create Artists', 'Allow creating new artists.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(65, 'artists.update', 'Update Artists', 'Allow editing of all artists, whether user has created them or not.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(66, 'artists.delete', 'Delete Artists', 'Allow deleting any artist, whether user has created them or not.', 'artists', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(67, 'albums.view', 'View Albums', 'Allow viewing album pages and searching for albums.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(68, 'albums.create', 'Create Albums', 'Allow creating new albums.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(69, 'albums.update', 'Update Albums', 'Allow editing of all albums, whether user has created them or not.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(70, 'albums.delete', 'Delete Albums', 'Allow deleting any album, whether user has created them or not.', 'albums', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(71, 'tracks.view', 'View Tracks', 'Allow viewing track page and searching for tracks.', 'tracks', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(72, 'tracks.create', 'Create Tracks', 'Allow creating new tracks.', 'tracks', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(73, 'tracks.update', 'Update Tracks', 'Allow editing of all tracks, whether user has created them or not.', 'tracks', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(74, 'tracks.delete', 'Delete Tracks', 'Allow deleting any track, whether user has created them or not.', 'tracks', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(75, 'genres.view', 'View Genres', 'Allow viewing genre pages and searching for genres.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(76, 'genres.create', 'Create Genres', 'Allow creating new genres.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(77, 'genres.update', 'Update Genres', 'Allow editing of all genres, whether user has created them or not.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(78, 'genres.delete', 'Delete Genres', 'Allow deleting any genre, whether user has created them or not.', 'genres', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(79, 'lyrics.view', 'View Lyrics', 'Allow viewing and searching for lyrics.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(80, 'lyrics.create', 'Create Lyrics', 'Allow creating new lyrics.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(81, 'lyrics.update', 'Update Lyrics', 'Allow editing of all lyrics, whether user has created them or not.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(82, 'lyrics.delete', 'Delete Lyrics', 'Allow deleting any lyric, whether user has created them or not.', 'lyrics', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(83, 'channels.view', 'View Channels', 'Allow viewing channels on the site.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(84, 'channels.create', 'Create Channels', 'Allow creating new channels in admin area.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(85, 'channels.update', 'Update Channels', 'Allow editing of all channels in admin area.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(86, 'channels.delete', 'Delete Channels', 'Allow deleting of all channels in admin area.', 'channels', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(87, 'backstageRequests.view', 'View BackstageRequests', 'Allow viewing backstage requests.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(88, 'backstageRequests.create', 'Create BackstageRequests', 'Allow creating new backstage requests.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(89, 'backstageRequests.update', 'Update BackstageRequests', 'Allow editing of all backstage requests, whether user has created them or not.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(90, 'backstageRequests.delete', 'Delete BackstageRequests', 'Allow deleting any backstage request, whether user has created them or not.', 'backstage_requests', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(91, 'files.download.wav', 'Download WAV Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(92, 'files.download.zip', 'Download ZIP Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(93, 'files.download.pdf', 'Download PDF Files', 'Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.', 'files', NULL, '2024-04-11 17:24:52', '2024-04-11 17:24:52', 'sitewide', 1),
(94, 'licenses.view', 'View Licenses', 'Allow viewing and searching for licenses.', 'licenses', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(95, 'licenses.create', 'Create Licenses', 'Allow creating new licenses.', 'licenses', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(96, 'licenses.update', 'Update Licenses', 'Allow editing of all licenses, whether user has created them or not.', 'licenses', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1),
(97, 'licenses.delete', 'Delete Licenses', 'Allow deleting any license, whether user has created them or not.', 'licenses', NULL, '2024-04-11 17:24:53', '2024-04-11 17:24:53', 'sitewide', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `playlists`
--

CREATE TABLE `playlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `collaborative` tinyint(1) NOT NULL DEFAULT 0,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `spotify_id` char(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `public`, `created_at`, `updated_at`, `image`, `description`, `views`, `collaborative`, `plays`, `owner_id`, `spotify_id`) VALUES
(2, 'My playlist', 1, '2024-05-01 18:49:00', '2024-05-01 18:49:00', 'storage/playlist_media/29267b03-4e41-4340-b757-080f4bceb0fd.jpg', 'The best of top of music i love', 1, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist_track`
--

CREATE TABLE `playlist_track` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `track_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `playlist_track`
--

INSERT INTO `playlist_track` (`id`, `playlist_id`, `track_id`, `position`, `added_by`) VALUES
(1, 2, 533, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `playlist_user`
--

CREATE TABLE `playlist_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `playlist_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `editor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `playlist_user`
--

INSERT INTO `playlist_user` (`id`, `playlist_id`, `user_id`, `editor`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_position` tinyint(1) NOT NULL DEFAULT 1,
  `interval` varchar(255) NOT NULL DEFAULT 'month',
  `interval_count` int(11) NOT NULL DEFAULT 1,
  `product_id` int(11) NOT NULL,
  `stripe_id` varchar(50) DEFAULT NULL,
  `paypal_id` varchar(50) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `prices`
--

INSERT INTO `prices` (`id`, `amount`, `currency`, `currency_position`, `interval`, `interval_count`, `product_id`, `stripe_id`, `paypal_id`, `default`, `created_at`, `updated_at`) VALUES
(1, 22410.00, 'CZK', 0, 'year', 1, 2, 'price_1PFbo2HbhwwwUI19XjzKeXtd', NULL, 0, '2024-04-11 17:25:04', '2024-05-22 21:34:01'),
(3, 2490.00, 'CZK', 0, 'month', 1, 2, 'price_1PFbo1HbhwwwUI19Al6iiSY2', NULL, 0, '2024-04-11 17:25:04', '2024-05-22 21:34:01'),
(4, 11610.00, 'CZK', 0, 'year', 1, 3, 'price_1PFbo4HbhwwwUI19TYWrn7kK', NULL, 0, '2024-05-02 05:35:36', '2024-05-12 14:35:05'),
(5, 1290.00, 'CZK', 0, 'month', 1, 3, 'price_1PFbo3HbhwwwUI196JvjbzCX', NULL, 0, '2024-05-02 05:35:36', '2024-05-12 14:35:05'),
(6, 8.00, 'CZK', 0, 'year', 1, 4, 'price_1PFbo5HbhwwwUI1905LzjF2S', NULL, 0, '2024-05-11 06:25:39', '2024-05-12 10:47:13'),
(7, 10.00, 'CZK', 0, 'month', 1, 4, 'price_1PFbo5HbhwwwUI19yHo1Er2k', NULL, 0, '2024-05-11 06:25:39', '2024-05-12 10:47:13');

-- --------------------------------------------------------

--
-- Struktura tabulky `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `uuid` char(36) NOT NULL,
  `feature_list` text DEFAULT NULL,
  `position` smallint(6) NOT NULL DEFAULT 0,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `free` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `uuid`, `feature_list`, `position`, `recommended`, `free`, `hidden`, `available_space`, `created_at`, `updated_at`) VALUES
(1, 'LISTENER', 'Ideal for listeners or buyers who appreciate the artistry of music and want easy access to premium tracks', '0a49d770-afce-4fa4-bbde-489f6472904b', '[\"Listen beats you like\",\"Create your own playlists\",\"Buy beats for your music\"]', 0, 0, 1, 1, NULL, '2024-04-11 17:25:04', '2024-05-02 05:36:56'),
(2, 'BOSS', 'Elevate your music career. Access premium tools, analytics for growth.', '384eeac0-c070-402d-9060-5f81b0d858af', '[\"Upload UNLIMITED Beats\",\"Instant payments\",\"Accept credit card payments by Stripe\",\"0% marketplace seller commission\",\"Premium analytics & sales statistics\",\"Unlimited license agreements\",\"Custom Boss Page website & domain name\",\"Advanced Coupons & Discounts\",\"AI Mastering (UNLIMITED)\",\"Email Marketing Integration\",\"Google Analytics integration\",\"Facebook Pixel integration\",\"TikTok Pixel integration\",\"BOSS badge included\",\"Cancel anytime\"]', 2, 1, 0, 0, 1073741824, '2024-04-11 17:25:04', '2024-05-03 05:38:02'),
(3, 'STARTED', 'Embrace your dreams.  Sell your beats, live your passion.', '8e40aa50-2c4b-4853-9734-8a4df6967e18', '[\"Upload UNLIMITED Beats\",\"Instant payments\",\"Accept credit card payments by Stripe\",\"0% marketplace seller commission\",\"Premium analytics & sales statistics\",\"Unlimited license agreements\",\"Custom Boss Page website & domain name\",\"Advanced Coupons & Discounts\",\"AI Mastering (UNLIMITED)\",\"Email Marketing Integration\",\"Google Analytics integration\",\"Facebook Pixel integration\",\"TikTok Pixel integration\",\"BOSS badge included\",\"Cancel anytime\"]', 1, 0, 0, 0, NULL, '2024-05-02 05:35:36', '2024-05-06 20:10:10');

-- --------------------------------------------------------

--
-- Struktura tabulky `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `profile_images`
--

INSERT INTO `profile_images` (`id`, `url`, `artist_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'storage/artist_images/4bebeecc-f34d-46cd-afdf-fd3f2a52dc4e.png', 2, '2024-05-20 17:46:21', '2024-05-20 17:46:21', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `profile_links`
--

CREATE TABLE `profile_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `linkeable_id` int(11) NOT NULL,
  `linkeable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `profile_links`
--

INSERT INTO `profile_links` (`id`, `url`, `title`, `linkeable_id`, `linkeable_type`, `created_at`, `updated_at`) VALUES
(1, 'https://facebook.com', 'facebook', 2, 'artist', '2024-05-20 17:46:21', '2024-05-20 17:46:21'),
(2, 'https://youtube.com', 'youtube', 2, 'artist', '2024-05-20 17:46:21', '2024-05-20 17:46:21');

-- --------------------------------------------------------

--
-- Struktura tabulky `reposts`
--

CREATE TABLE `reposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `repostable_id` int(11) NOT NULL,
  `repostable_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `guests` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `artists` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `roles`
--

INSERT INTO `roles` (`id`, `name`, `legacy_permissions`, `default`, `guests`, `created_at`, `updated_at`, `description`, `type`, `internal`, `artists`) VALUES
(1, 'users', NULL, 1, 0, '2024-04-11 17:25:04', '2024-04-11 17:25:04', NULL, 'sitewide', 1, 0),
(2, 'guests', NULL, 0, 1, '2024-04-11 17:25:04', '2024-04-11 17:25:04', NULL, 'sitewide', 1, 0),
(3, 'artists', NULL, 0, 0, '2024-04-11 17:25:04', '2024-04-11 17:25:04', 'Role assigned to a user when their \"become artist request\" is approved.', 'sitewide', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`, `private`) VALUES
(1, 'dates.format', 'long', '2024-04-11 17:25:04', '2024-04-28 05:35:21', 0),
(2, 'dates.locale', 'en_US', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(3, 'dates.default_timezone', 'auto', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(4, 'locale.default', 'auto', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(5, 'social.google.enable', 'false', '2024-04-11 17:25:04', '2024-04-28 00:25:55', 0),
(6, 'social.twitter.enable', 'false', '2024-04-11 17:25:04', '2024-04-28 00:25:55', 0),
(7, 'social.facebook.enable', 'false', '2024-04-11 17:25:04', '2024-04-28 00:25:55', 0),
(8, 'social.compact_buttons', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(9, 'realtime.enable', 'false', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(10, 'registration.disable', 'false', '2024-04-11 17:25:04', '2024-05-14 05:22:38', 0),
(11, 'i18n.default_localization', 'en', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(12, 'i18n.enable', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(13, 'logging.sentry_public', '', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(14, 'realtime.pusher_key', '', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(15, 'themes.user_change', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(16, 'themes.default_id', '1', '2024-04-11 17:25:04', '2024-04-30 10:39:20', 0),
(17, 'billing.enable', 'true', '2024-04-11 17:25:04', '2024-04-29 07:37:06', 0),
(18, 'billing.paypal_test_mode', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(19, 'billing.stripe_test_mode', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(20, 'billing.stripe.enable', 'true', '2024-04-11 17:25:04', '2024-04-29 07:37:06', 0),
(21, 'billing.paypal.enable', 'false', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(22, 'billing.accepted_cards', '[\"visa\",\"mastercard\"]', '2024-04-11 17:25:04', '2024-05-12 10:47:56', 0),
(23, 'uploads.chunk', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(24, 'uploads.chunk_size', '5242880', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(25, 'cookie_notice.enable', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(26, 'cookie_notice.position', 'bottom', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(27, 'branding.logo_dark', 'storage/branding_media/3468e63e-5ad7-4a5c-9d4d-1463e8b4688c.png', '2024-04-11 17:25:04', '2024-05-01 16:54:11', 0),
(28, 'branding.logo_light', 'storage/branding_media/4711f272-0f64-4d3d-80c8-d5ea4310a425.png', '2024-04-11 17:25:04', '2024-05-01 16:54:11', 0),
(29, 'homepage.type', 'landingPage', '2024-04-11 17:25:04', '2024-04-29 10:55:07', 0),
(30, 'homepage.value', '9', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(31, 'cache.report_minutes', '60', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(32, 'cache.homepage_days', '1', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(33, 'automation.artist_interval', '7', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(34, 'artist_bio_provider', 'wikipedia', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(35, 'wikipedia_language', 'en', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(36, 'youtube.suggested_quality', 'default', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(37, 'youtube.region_code', 'us', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(38, 'youtube.search_method', 'site', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(39, 'youtube.store_id', 'false', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(40, 'player.default_volume', '50', '2024-04-11 17:25:04', '2024-04-28 05:35:05', 0),
(41, 'player.hide_queue', 'true', '2024-04-11 17:25:04', '2024-04-30 10:38:38', 0),
(42, 'player.hide_video', 'true', '2024-04-11 17:25:04', '2024-04-28 05:30:06', 0),
(43, 'player.hide_video_button', '0', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(44, 'player.hide_lyrics', '0', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(45, 'player.lyrics_automate', '0', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(46, 'player.mobile.auto_open_overlay', '1', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(47, 'player.enable_download', 'true', '2024-04-11 17:25:04', '2024-04-21 08:25:17', 0),
(48, 'player.sort_method', 'local', '2024-04-11 17:25:04', '2024-04-28 05:35:05', 0),
(49, 'player.seekbar_type', 'waveform', '2024-04-11 17:25:04', '2024-04-28 04:23:38', 0),
(50, 'player.track_comments', 'true', '2024-04-11 17:25:04', '2024-04-28 05:30:06', 0),
(51, 'player.show_upload_btn', 'true', '2024-04-11 17:25:04', '2024-04-29 13:05:32', 0),
(52, 'uploads.autoMatch', 'true', '2024-04-11 17:25:04', '2024-04-11 17:25:04', 0),
(53, 'player.default_artist_view', 'grid', '2024-04-11 17:25:04', '2024-04-28 05:35:05', 0),
(54, 'player.enable_repost', 'true', '2024-04-11 17:25:04', '2024-04-28 05:30:06', 0),
(55, 'artistPage.tabs', '[{\"id\":1,\"active\":true},{\"id\":2,\"active\":true},{\"id\":3,\"active\":true},{\"id\":4,\"active\":true},{\"id\":5,\"active\":true},{\"id\":6,\"active\":true},{\"id\":7,\"active\":true}]', '2024-04-11 17:25:04', '2024-05-19 22:29:04', 0),
(56, 'menus', '[{\"name\":\"Sidebar Main\",\"id\":\"wGixKn\",\"positions\":[\"home-on-sidebar\"],\"items\":[{\"id\":\"pYY0cm\",\"label\":\"Home\",\"action\":\"\\/\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 5.69 5 4.5V18h-2v-6H9v6H7v-7.81l5-4.5M12 3 2 12h3v8h6v-6h2v6h6v-8h3L12 3z\"}}]},{\"label\":\"Top Charts\",\"action\":\"\\/charts\",\"type\":\"route\",\"model_id\":3,\"id\":\"6Ob_9X\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 17.27 18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27z\"}}]},{\"label\":\"Free Beats\",\"action\":\"\\/free-beats\",\"type\":\"route\",\"model_id\":13,\"id\":\"iUF1iU\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M20 4H4c-1.1 0-2 .9-2 2v3h2V6h16v3h2V6c0-1.1-.9-2-2-2zm0 14H4v-3H2v3c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-3h-2v3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14.89 7.55c-.34-.68-1.45-.68-1.79 0L10 13.76l-1.11-2.21A.988.988 0 0 0 8 11H2v2h5.38l1.72 3.45c.18.34.52.55.9.55s.72-.21.89-.55L14 10.24l1.11 2.21c.17.34.51.55.89.55h6v-2h-5.38l-1.73-3.45z\"}}]},{\"label\":\"Exclusive Only\",\"action\":\"\\/exclusive-only\",\"type\":\"route\",\"model_id\":14,\"id\":\"v_avs-\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5L2 9l10 12L22 9l-3-6zM9.62 8l1.5-3h1.76l1.5 3H9.62zM11 10v6.68L5.44 10H11zm2 0h5.56L13 16.68V10zm6.26-2h-2.65l-1.5-3h2.65l1.5 3zM6.24 5h2.65l-1.5 3H4.74l1.5-3z\"}}]},{\"label\":\"Public Playlists\",\"action\":\"\\/public-playlists\",\"type\":\"route\",\"model_id\":10,\"id\":\"yOEca-\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 4c4.41 0 8 3.59 8 8s-3.59 8-8 8-8-3.59-8-8 3.59-8 8-8zm0-2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm2 8H7v2h7v-2zm0-3H7v2h7V7zm-7 8h3v-2H7v2zm12-1.59L17.59 12l-3.54 3.54-1.41-1.41-1.41 1.41 2.83 2.83L19 13.41z\"}}]},{\"label\":\"New Releases\",\"action\":\"\\/new-releases\",\"type\":\"route\",\"model_id\":2,\"id\":\"F-k5zo\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m23 12-2.44-2.78.34-3.68-3.61-.82-1.89-3.18L12 3 8.6 1.54 6.71 4.72l-3.61.81.34 3.68L1 12l2.44 2.78-.34 3.69 3.61.82 1.89 3.18L12 21l3.4 1.46 1.89-3.18 3.61-.82-.34-3.68L23 12zm-4.51 2.11.26 2.79-2.74.62-1.43 2.41L12 18.82l-2.58 1.11-1.43-2.41-2.74-.62.26-2.8L3.66 12l1.85-2.12-.26-2.78 2.74-.61 1.43-2.41L12 5.18l2.58-1.11 1.43 2.41 2.74.62-.26 2.79L20.34 12l-1.85 2.11zM11 15h2v2h-2zm0-8h2v6h-2z\"}}]}]},{\"name\":\"Sidebar Account\",\"id\":\"NODtKW\",\"positions\":[\"account-on-sidebar\"],\"items\":[{\"id\":878,\"type\":\"route\",\"label\":\"Songs\",\"action\":\"\\/library\\/songs\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M10 21q-1.65 0-2.825-1.175Q6 18.65 6 17q0-1.65 1.175-2.825Q8.35 13 10 13q.575 0 1.062.137.488.138.938.413V3h6v4h-4v10q0 1.65-1.175 2.825Q11.65 21 10 21Z\"}}]},{\"id\":574,\"type\":\"route\",\"label\":\"Albums\",\"action\":\"\\/library\\/albums\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 16.5q1.875 0 3.188-1.312Q16.5 13.875 16.5 12q0-1.875-1.312-3.188Q13.875 7.5 12 7.5q-1.875 0-3.188 1.312Q7.5 10.125 7.5 12q0 1.875 1.312 3.188Q10.125 16.5 12 16.5Zm0-3.5q-.425 0-.712-.288Q11 12.425 11 12t.288-.713Q11.575 11 12 11t.713.287Q13 11.575 13 12t-.287.712Q12.425 13 12 13Zm0 9q-2.075 0-3.9-.788-1.825-.787-3.175-2.137-1.35-1.35-2.137-3.175Q2 14.075 2 12t.788-3.9q.787-1.825 2.137-3.175 1.35-1.35 3.175-2.138Q9.925 2 12 2t3.9.787q1.825.788 3.175 2.138 1.35 1.35 2.137 3.175Q22 9.925 22 12t-.788 3.9q-.787 1.825-2.137 3.175-1.35 1.35-3.175 2.137Q14.075 22 12 22Zm0-2q3.35 0 5.675-2.325Q20 15.35 20 12q0-3.35-2.325-5.675Q15.35 4 12 4 8.65 4 6.325 6.325 4 8.65 4 12q0 3.35 2.325 5.675Q8.65 20 12 20Zm0-8Z\"}}]},{\"id\":933,\"type\":\"route\",\"label\":\"Artists\",\"action\":\"\\/library\\/artists\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14q-1.25 0-2.125-.875T9 11V5q0-1.25.875-2.125T12 2q1.25 0 2.125.875T15 5v6q0 1.25-.875 2.125T12 14Zm0-6Zm-1 13v-3.075q-2.6-.35-4.3-2.325Q5 13.625 5 11h2q0 2.075 1.463 3.537Q9.925 16 12 16t3.538-1.463Q17 13.075 17 11h2q0 2.625-1.7 4.6-1.7 1.975-4.3 2.325V21Zm1-9q.425 0 .713-.288Q13 11.425 13 11V5q0-.425-.287-.713Q12.425 4 12 4t-.712.287Q11 4.575 11 5v6q0 .425.288.712.287.288.712.288Z\"}}]},{\"id\":775,\"type\":\"route\",\"label\":\"History\",\"action\":\"\\/library\\/history\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 21q-3.45 0-6.012-2.288Q3.425 16.425 3.05 13H5.1q.35 2.6 2.312 4.3Q9.375 19 12 19q2.925 0 4.962-2.038Q19 14.925 19 12t-2.038-4.963Q14.925 5 12 5q-1.725 0-3.225.8T6.25 8H9v2H3V4h2v2.35q1.275-1.6 3.113-2.475Q9.95 3 12 3q1.875 0 3.513.712 1.637.713 2.85 1.925 1.212 1.213 1.925 2.85Q21 10.125 21 12t-.712 3.512q-.713 1.638-1.925 2.85-1.213 1.213-2.85 1.926Q13.875 21 12 21Zm2.8-4.8L11 12.4V7h2v4.6l3.2 3.2Z\"}}]}]},{\"name\":\"Mobile\",\"id\":\"nKRHXG\",\"positions\":[\"mobile-bottom\"],\"items\":[{\"type\":\"route\",\"label\":\"Discover\",\"action\":\"\\/\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 5.69 5 4.5V18h-2v-6H9v6H7v-7.81l5-4.5M12 3 2 12h3v8h6v-6h2v6h6v-8h3L12 3z\"}}],\"id\":554},{\"type\":\"route\",\"label\":\"Search\",\"action\":\"\\/search\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m19.6 21-6.3-6.3q-.75.6-1.725.95Q10.6 16 9.5 16q-2.725 0-4.612-1.887Q3 12.225 3 9.5q0-2.725 1.888-4.613Q6.775 3 9.5 3t4.613 1.887Q16 6.775 16 9.5q0 1.1-.35 2.075-.35.975-.95 1.725l6.3 6.3ZM9.5 14q1.875 0 3.188-1.312Q14 11.375 14 9.5q0-1.875-1.312-3.188Q11.375 5 9.5 5 7.625 5 6.312 6.312 5 7.625 5 9.5q0 1.875 1.312 3.188Q7.625 14 9.5 14Z\"}}],\"id\":849},{\"type\":\"route\",\"label\":\"Your Music\",\"action\":\"\\/library\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12.5 15q1.05 0 1.775-.725Q15 13.55 15 12.5V7h3V5h-4v5.5q-.325-.25-.7-.375-.375-.125-.8-.125-1.05 0-1.775.725Q10 11.45 10 12.5q0 1.05.725 1.775Q11.45 15 12.5 15ZM8 18q-.825 0-1.412-.587Q6 16.825 6 16V4q0-.825.588-1.413Q7.175 2 8 2h12q.825 0 1.413.587Q22 3.175 22 4v12q0 .825-.587 1.413Q20.825 18 20 18Zm0-2h12V4H8v12Zm-4 6q-.825 0-1.412-.587Q2 20.825 2 20V6h2v14h14v2ZM8 4v12V4Z\"}}],\"id\":669}]},{\"name\":\"Auth Dropdown\",\"id\":\"h8r6vg\",\"items\":[{\"label\":\"Admin area\",\"id\":\"upm1rv\",\"action\":\"\\/admin\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v2h-4V5h4M9 5v6H5V5h4m10 8v6h-4v-6h4M9 17v2H5v-2h4M21 3h-8v6h8V3zM11 3H3v10h8V3zm10 8h-8v10h8V11zm-10 4H3v6h8v-6z\"}}],\"permissions\":[\"admin.access\"]},{\"label\":\"Web player\",\"id\":\"ehj0uk\",\"action\":\"\\/\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M10 21q-1.65 0-2.825-1.175Q6 18.65 6 17q0-1.65 1.175-2.825Q8.35 13 10 13q.575 0 1.062.137.488.138.938.413V3h6v4h-4v10q0 1.65-1.175 2.825Q11.65 21 10 21Z\"}}]},{\"label\":\"Account settings\",\"id\":\"6a89z5\",\"action\":\"\\/account-settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]},{\"id\":\"fH6Djt\",\"label\":\"Become an author\",\"action\":\"\\/backstage\\/requests\",\"type\":\"route\",\"target\":\"_self\",\"roles\":[1],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M17 11c0 2.76-2.24 5-5 5s-5-2.24-5-5H5c0 3.53 2.61 6.43 6 6.92V21h2v-3.08c3.39-.49 6-3.39 6-6.92h-2z\"}}]}],\"positions\":[\"auth-dropdown\"]},{\"name\":\"Admin Sidebar\",\"id\":\"2d43u1\",\"items\":[{\"label\":\"Analytics\",\"id\":\"886nz4\",\"action\":\"\\/admin\",\"type\":\"route\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V5h14v14z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M7 12h2v5H7zm8-5h2v10h-2zm-4 7h2v3h-2zm0-4h2v2h-2z\"}}],\"role\":1,\"permissions\":[\"admin.access\"],\"roles\":[]},{\"label\":\"Appearance\",\"id\":\"slcqm0\",\"action\":\"\\/admin\\/appearance\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m2.53 19.65 1.34.56v-9.03l-2.43 5.86c-.41 1.02.08 2.19 1.09 2.61zm19.5-3.7L17.07 3.98c-.31-.75-1.04-1.21-1.81-1.23-.26 0-.53.04-.79.15L7.1 5.95c-.75.31-1.21 1.03-1.23 1.8-.01.27.04.54.15.8l4.96 11.97c.31.76 1.05 1.22 1.83 1.23.26 0 .52-.05.77-.15l7.36-3.05c1.02-.42 1.51-1.59 1.09-2.6zm-9.2 3.8L7.87 7.79l7.35-3.04h.01l4.95 11.95-7.35 3.05z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"11\",\"cy\":\"9\",\"r\":\"1\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M5.88 19.75c0 1.1.9 2 2 2h1.45l-3.45-8.34v6.34z\"}}],\"permissions\":[\"appearance.update\"]},{\"label\":\"Settings\",\"id\":\"x5k484\",\"action\":\"\\/admin\\/settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}],\"permissions\":[\"settings.update\"]},{\"label\":\"Plans\",\"id\":\"7o42rt\",\"action\":\"\\/admin\\/plans\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M7 15h7v2H7zm0-4h10v2H7zm0-4h10v2H7zm12-4h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-.14 0-.27.01-.4.04-.39.08-.74.28-1.01.55-.18.18-.33.4-.43.64-.1.23-.16.49-.16.77v14c0 .27.06.54.16.78s.25.45.43.64c.27.27.62.47 1.01.55.13.02.26.03.4.03h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7-.25c.41 0 .75.34.75.75s-.34.75-.75.75-.75-.34-.75-.75.34-.75.75-.75zM19 19H5V5h14v14z\"}}],\"permissions\":[\"plans.update\"]},{\"label\":\"Subscriptions\",\"action\":\"\\/admin\\/subscriptions\",\"type\":\"route\",\"id\":\"sdcb5a\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M4 6h16v2H4zm2-4h12v2H6zm14 8H4c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-8c0-1.1-.9-2-2-2zm0 10H4v-8h16v8zm-10-7.27v6.53L16 16z\"}}],\"permissions\":[\"subscriptions.update\"]},{\"label\":\"Users\",\"action\":\"\\/admin\\/users\",\"type\":\"route\",\"id\":\"fzfb45\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 6c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2m0 10c2.7 0 5.8 1.29 6 2H6c.23-.72 3.31-2 6-2m0-12C9.79 4 8 5.79 8 8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 10c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z\"}}],\"permissions\":[\"users.update\"]},{\"label\":\"Roles\",\"action\":\"\\/admin\\/roles\",\"type\":\"route\",\"id\":\"mwdkf0\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M9 13.75c-2.34 0-7 1.17-7 3.5V19h14v-1.75c0-2.33-4.66-3.5-7-3.5zM4.34 17c.84-.58 2.87-1.25 4.66-1.25s3.82.67 4.66 1.25H4.34zM9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm7.04 6.81c1.16.84 1.96 1.96 1.96 3.44V19h4v-1.75c0-2.02-3.5-3.17-5.96-3.44zM15 12c1.93 0 3.5-1.57 3.5-3.5S16.93 5 15 5c-.54 0-1.04.13-1.5.35.63.89 1 1.98 1 3.15s-.37 2.26-1 3.15c.46.22.96.35 1.5.35z\"}}],\"permissions\":[\"roles.update\"]},{\"id\":\"O3I9eJ\",\"label\":\"Upload\",\"action\":\"\\/admin\\/upload\",\"type\":\"route\",\"target\":\"_self\",\"permissions\":[\"music.create\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M18 15v3H6v-3H4v3c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2v-3h-2zM7 9l1.41 1.41L11 7.83V16h2V7.83l2.59 2.58L17 9l-5-5-5 5z\"}}]},{\"id\":\"303113a\",\"type\":\"route\",\"label\":\"Channels\",\"action\":\"\\/admin\\/channels\",\"permissions\":[\"channels.update\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M22 6h-5v8.18c-.31-.11-.65-.18-1-.18-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3V8h3V6zm-7 0H3v2h12V6zm0 4H3v2h12v-2zm-4 4H3v2h8v-2z\"}}]},{\"id\":\"nVKg0I\",\"label\":\"Artists\",\"action\":\"\\/admin\\/artists\",\"permissions\":[\"artists.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M17 11c0 2.76-2.24 5-5 5s-5-2.24-5-5H5c0 3.53 2.61 6.43 6 6.92V21h2v-3.08c3.39-.49 6-3.39 6-6.92h-2z\"}}]},{\"id\":\"Qq7wh9\",\"label\":\"Albums\",\"action\":\"\\/admin\\/albums\",\"permissions\":[\"albums.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-12.5c-2.49 0-4.5 2.01-4.5 4.5s2.01 4.5 4.5 4.5 4.5-2.01 4.5-4.5-2.01-4.5-4.5-4.5zm0 5.5c-.55 0-1-.45-1-1s.45-1 1-1 1 .45 1 1-.45 1-1 1z\"}}]},{\"id\":\"9_7Uip\",\"label\":\"Tracks\",\"permissions\":[\"tracks.update\"],\"action\":\"\\/admin\\/tracks\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 3 .01 10.55c-.59-.34-1.27-.55-2-.55C7.79 13 6 14.79 6 17s1.79 4 4.01 4S14 19.21 14 17V7h4V3h-6zm-1.99 16c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]},{\"id\":\"57IFvN\",\"label\":\"Genres\",\"permissions\":[\"genres.update\"],\"action\":\"\\/admin\\/genres\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m21.41 11.58-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58s1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41s-.23-1.06-.59-1.42zM13 20.01 4 11V4h7v-.01l9 9-7 7.02z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"6.5\",\"cy\":\"6.5\",\"r\":\"1.5\"}}]},{\"id\":\"5eGJwT\",\"label\":\"Lyrics\",\"permissions\":[\"lyrics.update\"],\"action\":\"\\/admin\\/lyrics\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M2.5 4v3h5v12h3V7h5V4h-13zm19 5h-9v3h3v7h3v-7h3V9z\"}}]},{\"id\":\"pu90Rv\",\"label\":\"Licenses\",\"action\":\"\\/admin\\/licenses\",\"type\":\"route\",\"target\":\"_self\",\"permissions\":[\"license.update\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M9.68 13.69 12 11.93l2.31 1.76-.88-2.85L15.75 9h-2.84L12 6.19 11.09 9H8.25l2.31 1.84-.88 2.85zM20 10c0-4.42-3.58-8-8-8s-8 3.58-8 8c0 2.03.76 3.87 2 5.28V23l6-2 6 2v-7.72c1.24-1.41 2-3.25 2-5.28zm-8-6c3.31 0 6 2.69 6 6s-2.69 6-6 6-6-2.69-6-6 2.69-6 6-6zm0 15-4 1.02v-3.1c1.18.68 2.54 1.08 4 1.08s2.82-.4 4-1.08v3.1L12 19z\"}}]},{\"id\":\"zl5XVb\",\"label\":\"Playlists\",\"permissions\":[\"playlists.update\"],\"action\":\"\\/admin\\/playlists\",\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M3 10h11v2H3zm0-4h11v2H3zm0 8h7v2H3zm13-1v8l6-4z\"}}]},{\"id\":\"UXtCU9\",\"label\":\"Requests\",\"action\":\"\\/admin\\/backstage-requests\",\"permissions\":[\"requests.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M14 2H6c-1.1 0-1.99.9-1.99 2L4 20c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11zm-9.18-6.95L7.4 14.46 10.94 18l5.66-5.66-1.41-1.41-4.24 4.24-2.13-2.12z\"}}]},{\"id\":\"31pLaw\",\"label\":\"Comments\",\"action\":\"\\/admin\\/comments\",\"permissions\":[\"comments.update\"],\"type\":\"route\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M21.99 4c0-1.1-.89-2-1.99-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h14l4 4-.01-18zM20 4v13.17L18.83 16H4V4h16zM6 12h12v2H6zm0-3h12v2H6zm0-3h12v2H6z\"}}]},{\"label\":\"Pages\",\"action\":\"\\/admin\\/custom-pages\",\"type\":\"route\",\"id\":\"63bwv9\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v14H5V5h14m0-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14 17H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z\"}}],\"permissions\":[\"custom_pages.update\"]},{\"label\":\"Tags\",\"action\":\"\\/admin\\/tags\",\"type\":\"route\",\"id\":\"2x0pzq\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M17.63 5.84C17.27 5.33 16.67 5 16 5L5 5.01C3.9 5.01 3 5.9 3 7v10c0 1.1.9 1.99 2 1.99L16 19c.67 0 1.27-.33 1.63-.84L22 12l-4.37-6.16zM16 17H5V7h11l3.55 5L16 17z\"}}],\"permissions\":[\"tags.update\"]},{\"label\":\"Files\",\"action\":\"\\/admin\\/files\",\"type\":\"route\",\"id\":\"vguvti\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm-1 4H8c-1.1 0-1.99.9-1.99 2L6 21c0 1.1.89 2 1.99 2H19c1.1 0 2-.9 2-2V11l-6-6zM8 21V7h6v5h5v9H8z\"}}],\"permissions\":[\"files.update\"]},{\"label\":\"Localizations\",\"action\":\"\\/admin\\/localizations\",\"type\":\"route\",\"id\":\"w91yql\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12.87 15.07-2.54-2.51.03-.03c1.74-1.94 2.98-4.17 3.71-6.53H17V4h-7V2H8v2H1v1.99h11.17C11.5 7.92 10.44 9.75 9 11.35 8.07 10.32 7.3 9.19 6.69 8h-2c.73 1.63 1.73 3.17 2.98 4.56l-5.09 5.02L4 19l5-5 3.11 3.11.76-2.04zM18.5 10h-2L12 22h2l1.12-3h4.75L21 22h2l-4.5-12zm-2.62 7 1.62-4.33L19.12 17h-3.24z\"}}],\"permissions\":[\"localizations.update\"]},{\"label\":\"Ads\",\"action\":\"\\/admin\\/ads\",\"type\":\"route\",\"id\":\"ohj4qk\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M17 1H7c-1.1 0-2 .9-2 2v18c0 1.1.9 2 2 2h10c1.1 0 2-.9 2-2V3c0-1.1-.9-2-2-2zM7 4V3h10v1H7zm0 14V6h10v12H7zm0 3v-1h10v1H7z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M16 7H8v2h8V7z\"}}],\"permissions\":[\"settings.update\"]}],\"positions\":[\"admin-sidebar\"]},{\"name\":\"Sidebar Studio\",\"id\":\"YYekpgZC89\",\"positions\":[\"studio-on-sidebar\"],\"items\":[{\"id\":\"tFLhjC\",\"label\":\"Tracks\",\"action\":\"\\/backstage\\/tracks\",\"type\":\"route\",\"target\":\"_self\",\"roles\":[3],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m12 3 .01 10.55c-.59-.34-1.27-.55-2-.55C7.79 13 6 14.79 6 17s1.79 4 4.01 4S14 19.21 14 17V7h4V3h-6zm-1.99 16c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]},{\"id\":\"5tIGgp\",\"type\":\"route\",\"target\":\"_self\",\"label\":\"Licenses & Contacts\",\"action\":\"\\/backstage\\/licenses\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m16.66 4.52 2.83 2.83-2.83 2.83-2.83-2.83 2.83-2.83M9 5v4H5V5h4m10 10v4h-4v-4h4M9 15v4H5v-4h4m7.66-13.31L11 7.34 16.66 13l5.66-5.66-5.66-5.65zM11 3H3v8h8V3zm10 10h-8v8h8v-8zm-10 0H3v8h8v-8z\"}}],\"roles\":[3]},{\"id\":\"XKA0rt\",\"label\":\"Upload Preferences\",\"action\":\"https:\\/\\/beatboss.cz\\/backstage\\/upload\",\"type\":\"link\",\"target\":\"_self\",\"roles\":[],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M20 4H4c-1.1 0-2 .9-2 2v3h2V6h16v3h2V6c0-1.1-.9-2-2-2zm0 14H4v-3H2v3c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-3h-2v3z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M14.89 7.55c-.34-.68-1.45-.68-1.79 0L10 13.76l-1.11-2.21A.988.988 0 0 0 8 11H2v2h5.38l1.72 3.45c.18.34.52.55.9.55s.72-.21.89-.55L14 10.24l1.11 2.21c.17.34.51.55.89.55h6v-2h-5.38l-1.73-3.45z\"}}]},{\"id\":\"aYRyAK\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Store Builder\",\"action\":\"https:\\/\\/beatboss.cz\\/store\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m21.9 8.89-1.05-4.37c-.22-.9-1-1.52-1.91-1.52H5.05c-.9 0-1.69.63-1.9 1.52L2.1 8.89c-.24 1.02-.02 2.06.62 2.88.08.11.19.19.28.29V19c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-6.94c.09-.09.2-.18.28-.28.64-.82.87-1.87.62-2.89zm-2.99-3.9 1.05 4.37c.1.42.01.84-.25 1.17-.14.18-.44.47-.94.47-.61 0-1.14-.49-1.21-1.14L16.98 5l1.93-.01zM13 5h1.96l.54 4.52c.05.39-.07.78-.33 1.07-.22.26-.54.41-.95.41-.67 0-1.22-.59-1.22-1.31V5zM8.49 9.52 9.04 5H11v4.69c0 .72-.55 1.31-1.29 1.31-.34 0-.65-.15-.89-.41-.25-.29-.37-.68-.33-1.07zm-4.45-.16L5.05 5h1.97l-.58 4.86c-.08.65-.6 1.14-1.21 1.14-.49 0-.8-.29-.93-.47-.27-.32-.36-.75-.26-1.17zM5 19v-6.03c.08.01.15.03.23.03.87 0 1.66-.36 2.24-.95.6.6 1.4.95 2.31.95.87 0 1.65-.36 2.23-.93.59.57 1.39.93 2.29.93.84 0 1.64-.35 2.24-.95.58.59 1.37.95 2.24.95.08 0 .15-.02.23-.03V19H5z\"}}]}]},{\"name\":\"Sidebar Settings\",\"id\":\"aip3iAuBg2\",\"positions\":[\"settings-on-sidebar\"],\"items\":[{\"id\":\"ApoffS\",\"label\":\"Help Center\",\"action\":\"https:\\/\\/support.beatboss.cz\\/\",\"type\":\"link\",\"target\":\"_self\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M21 12.22C21 6.73 16.74 3 12 3c-4.69 0-9 3.65-9 9.28-.6.34-1 .98-1 1.72v2c0 1.1.9 2 2 2h1v-6.1c0-3.87 3.13-7 7-7s7 3.13 7 7V19h-8v2h8c1.1 0 2-.9 2-2v-1.22c.59-.31 1-.92 1-1.64v-2.3c0-.7-.41-1.31-1-1.62z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"9\",\"cy\":\"13\",\"r\":\"1\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"15\",\"cy\":\"13\",\"r\":\"1\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M18 11.03C17.52 8.18 15.04 6 12.05 6c-3.03 0-6.29 2.51-6.03 6.45 2.47-1.01 4.33-3.21 4.86-5.89 1.31 2.63 4 4.44 7.12 4.47z\"}}]}]},{\"name\":\"Sidebar Footer\",\"id\":\"6EzZtnw36S\",\"positions\":[\"footer-on-sidebar\"],\"items\":[{\"id\":\"05N9iB\",\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/privacy-policy\",\"model_id\":1,\"type\":\"customPage\"},{\"id\":\"mnOBoQ\",\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/terms-of-service\",\"model_id\":2,\"type\":\"customPage\"}]},{\"name\":\"Footer Company\",\"id\":\"KE4eJHWGHM\",\"positions\":[\"footer-company\"],\"items\":[{\"id\":\"w9hgU2\",\"label\":\"About us\",\"action\":\"\\/pages\\/about-us\",\"model_id\":3,\"type\":\"customPage\"}]},{\"name\":\"Footer Support\",\"id\":\"dHjhtejPNo\",\"positions\":[\"footer-support\"],\"items\":[{\"id\":\"oiHM2a\",\"label\":\"Contact us\",\"action\":\"\\/contact\",\"type\":\"route\",\"target\":\"_self\"}]},{\"name\":\"Footer Extra\",\"id\":\"fFVlb0oLlR\",\"positions\":[\"footer-extra\"],\"items\":[{\"id\":\"WTcS7u\",\"label\":\"News\",\"action\":\"\\/\",\"type\":\"route\",\"target\":\"_self\"}]},{\"name\":\"Footer Social Media\",\"id\":\"gE7QlGB1oI\",\"positions\":[\"footer-media\"],\"items\":[{\"id\":\"XUyRSr\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Facebook\",\"action\":\"https:\\/\\/facebook.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3v3h-3v6.95c5.05-.5 9-4.76 9-9.95z\"}}]},{\"id\":\"Ibk2Yb\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Instagram\",\"action\":\"https:\\/\\/instagram.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717 1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335 1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.319 1.347 20.651.935 19.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074 4.85c-.061 1.17-.256 1.805-.421 2.227-.224.562-.479.96-.899 1.382-.419.419-.824.679-1.38.896-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211 0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421-.569-.224-.96-.479-1.379-.899-.421-.419-.69-.824-.9-1.38-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421 1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678c-3.405 0-6.162 2.76-6.162 6.162 0 3.405 2.76 6.162 6.162 6.162 3.405 0 6.162-2.76 6.162-6.162 0-3.405-2.76-6.162-6.162-6.162zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405c0 .795-.646 1.44-1.44 1.44-.795 0-1.44-.646-1.44-1.44 0-.794.646-1.439 1.44-1.439.793-.001 1.44.645 1.44 1.439z\"}}]},{\"id\":\"bgt6WR\",\"type\":\"link\",\"target\":\"_blank\",\"label\":\"Youtube\",\"action\":\"https:\\/\\/youtube.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M 5.6796875 2 L 7.1582031 7.34375 L 7.1582031 9.90625 L 8.4394531 9.90625 L 8.4394531 7.34375 L 9.9375 2 L 8.6464844 2 L 8.109375 4.4316406 C 7.958375 5.1416406 7.8623594 5.6462656 7.8183594 5.9472656 L 7.7792969 5.9472656 C 7.7162969 5.5262656 7.6202813 5.017875 7.4882812 4.421875 L 6.9707031 2 L 5.6796875 2 z M 11.431641 4.0175781 C 10.997641 4.0175781 10.647859 4.1023906 10.380859 4.2753906 C 10.113859 4.4473906 9.9170156 4.7226094 9.7910156 5.0996094 C 9.6660156 5.4766094 9.6035156 5.9756563 9.6035156 6.5976562 L 9.6035156 7.4375 C 9.6035156 8.0525 9.6575781 8.5450156 9.7675781 8.9160156 C 9.8775781 9.2870156 10.063219 9.5603281 10.324219 9.7363281 C 10.585219 9.9123281 10.944344 10 11.402344 10 C 11.848344 10 12.202891 9.9132344 12.462891 9.7402344 C 12.722891 9.5672344 12.911344 9.295875 13.027344 8.921875 C 13.143344 8.547875 13.201172 8.0535 13.201172 7.4375 L 13.201172 6.5976562 C 13.201172 5.9766562 13.142437 5.4794687 13.023438 5.1054688 C 12.904438 4.7324687 12.715031 4.45725 12.457031 4.28125 C 12.199031 4.10525 11.858641 4.0175781 11.431641 4.0175781 z M 13.878906 4.1308594 L 13.878906 8.4453125 C 13.878906 8.9793125 13.968391 9.3720469 14.150391 9.6230469 C 14.332391 9.8740469 14.615047 10 14.998047 10 C 15.550047 10 15.966187 9.7332188 16.242188 9.1992188 L 16.269531 9.1992188 L 16.382812 9.90625 L 17.400391 9.90625 L 17.400391 4.1308594 L 16.101562 4.1308594 L 16.101562 8.71875 C 16.051563 8.82575 15.975094 8.9134219 15.871094 8.9824219 C 15.767094 9.0524219 15.659875 9.0859375 15.546875 9.0859375 C 15.414875 9.0859375 15.320672 9.031875 15.263672 8.921875 C 15.206672 8.811875 15.177734 8.6271406 15.177734 8.3691406 L 15.177734 4.1308594 L 13.878906 4.1308594 z M 11.402344 4.9121094 C 11.584344 4.9121094 11.713156 5.0072187 11.785156 5.1992188 C 11.857156 5.3902187 11.892578 5.694375 11.892578 6.109375 L 11.892578 7.9082031 C 11.892578 8.3352031 11.857156 8.6440312 11.785156 8.8320312 C 11.713156 9.0200312 11.585297 9.1142344 11.404297 9.1152344 C 11.222297 9.1152344 11.096344 9.0200313 11.027344 8.8320312 C 10.957344 8.6440313 10.923828 8.3352031 10.923828 7.9082031 L 10.923828 6.109375 C 10.923828 5.695375 10.95925 5.3912188 11.03125 5.1992188 C 11.10325 5.0082187 11.226344 4.9121094 11.402344 4.9121094 z M 5 11 C 3.9 11 3 11.9 3 13 L 3 20 C 3 21.1 3.9 22 5 22 L 19 22 C 20.1 22 21 21.1 21 20 L 21 13 C 21 11.9 20.1 11 19 11 L 5 11 z M 12.048828 13 L 13.105469 13 L 13.105469 15.568359 L 13.113281 15.568359 C 13.208281 15.382359 13.344531 15.233141 13.519531 15.119141 C 13.694531 15.005141 13.883938 14.949219 14.085938 14.949219 C 14.345937 14.949219 14.549266 15.01825 14.697266 15.15625 C 14.845266 15.29425 14.953531 15.517219 15.019531 15.824219 C 15.085531 16.132219 15.117187 16.559469 15.117188 17.105469 L 15.117188 17.876953 L 15.119141 17.876953 C 15.119141 18.603953 15.030469 19.136516 14.855469 19.478516 C 14.680469 19.820516 14.408109 19.992188 14.037109 19.992188 C 13.830109 19.992188 13.642656 19.944609 13.472656 19.849609 C 13.302656 19.754609 13.174844 19.623984 13.089844 19.458984 L 13.066406 19.458984 L 12.955078 19.919922 L 12.048828 19.919922 L 12.048828 13 z M 5.4863281 13.246094 L 8.7382812 13.246094 L 8.7382812 14.130859 L 7.6484375 14.130859 L 7.6484375 19.919922 L 6.5761719 19.919922 L 6.5761719 14.130859 L 5.4863281 14.130859 L 5.4863281 13.246094 z M 17.097656 14.951172 C 17.473656 14.951172 17.762844 15.020203 17.964844 15.158203 C 18.165844 15.296203 18.307625 15.511734 18.390625 15.802734 C 18.472625 16.094734 18.513672 16.497719 18.513672 17.011719 L 18.513672 17.847656 L 16.677734 17.847656 L 16.677734 18.095703 C 16.677734 18.408703 16.686078 18.642828 16.705078 18.798828 C 16.724078 18.954828 16.762312 19.069625 16.820312 19.140625 C 16.878312 19.212625 16.967844 19.248047 17.089844 19.248047 C 17.253844 19.248047 17.366734 19.183641 17.427734 19.056641 C 17.488734 18.929641 17.522344 18.718875 17.527344 18.421875 L 18.474609 18.476562 C 18.479609 18.518563 18.482422 18.578344 18.482422 18.652344 C 18.482422 19.103344 18.358328 19.440109 18.111328 19.662109 C 17.864328 19.885109 17.517406 19.996094 17.066406 19.996094 C 16.525406 19.996094 16.145734 19.825328 15.927734 19.486328 C 15.709734 19.147328 15.601562 18.623109 15.601562 17.912109 L 15.601562 17.060547 C 15.601562 16.328547 15.714453 15.794031 15.939453 15.457031 C 16.164453 15.120031 16.551656 14.951172 17.097656 14.951172 z M 8.4101562 15.044922 L 9.5097656 15.044922 L 9.5097656 18.625 C 9.5097656 18.842 9.5340312 18.997844 9.5820312 19.089844 C 9.6300313 19.182844 9.7083125 19.228516 9.8203125 19.228516 C 9.9153125 19.228516 10.008703 19.199625 10.095703 19.140625 C 10.183703 19.082625 10.246062 19.007969 10.289062 18.917969 L 10.289062 15.044922 L 11.388672 15.044922 L 11.388672 19.919922 L 11.386719 19.919922 L 10.527344 19.919922 L 10.433594 19.322266 L 10.408203 19.322266 C 10.174203 19.774266 9.8244219 20 9.3574219 20 C 9.0334219 20 8.7965781 19.893641 8.6425781 19.681641 C 8.4885781 19.469641 8.4101563 19.1375 8.4101562 18.6875 L 8.4101562 15.044922 z M 17.074219 15.693359 C 16.957219 15.693359 16.870453 15.728875 16.814453 15.796875 C 16.758453 15.865875 16.721125 15.978766 16.703125 16.134766 C 16.684125 16.290766 16.675781 16.527703 16.675781 16.845703 L 16.675781 17.195312 L 17.478516 17.195312 L 17.478516 16.845703 C 17.478516 16.532703 17.468266 16.296766 17.447266 16.134766 C 17.427266 15.972766 17.388031 15.858969 17.332031 15.792969 C 17.276031 15.726969 17.191219 15.693359 17.074219 15.693359 z M 13.591797 15.728516 C 13.485797 15.728516 13.388828 15.770469 13.298828 15.855469 C 13.208828 15.940469 13.144422 16.049641 13.107422 16.181641 L 13.107422 18.949219 C 13.155422 19.034219 13.217922 19.097625 13.294922 19.140625 C 13.371922 19.182625 13.453922 19.205078 13.544922 19.205078 C 13.661922 19.205078 13.753266 19.163125 13.822266 19.078125 C 13.891266 18.993125 13.941703 18.850437 13.970703 18.648438 C 13.999703 18.447437 14.013672 18.1675 14.013672 17.8125 L 14.013672 17.185547 C 14.013672 16.803547 14.002516 16.509734 13.978516 16.302734 C 13.954516 16.095734 13.911562 15.946375 13.851562 15.859375 C 13.790563 15.772375 13.703797 15.728516 13.591797 15.728516 z\"}}]}]},{\"name\":\"Footer Copyright Left\",\"id\":\"9IROTJ8Wvs\",\"positions\":[\"footer-terms-two\"],\"items\":[{\"id\":\"vgHXGu\",\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/privacy-policy\",\"model_id\":1,\"type\":\"customPage\"},{\"id\":\"d32JXI\",\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/terms-of-service\",\"model_id\":2,\"type\":\"customPage\"}]},{\"name\":\"Footer Copyright Right\",\"id\":\"ZDfLZKzjic\",\"positions\":[\"footer-terms-two\"],\"items\":[]}]', '2024-04-11 17:25:04', '2024-05-22 20:12:29', 0),
(57, 'homepage.trending', 'false', '2024-04-11 17:25:04', '2024-04-29 20:33:36', 0),
(58, 'homepage.appearance', '{\"headerTitle\":\"Next-Level Beats for Next-Level Artists.\",\"headerSubtitle\":\"\\\"Elevate your music career today! Take the next step towards success and unlock your full potential as a artist.\\\"\",\"headerImage\":\"storage\\/homepage\\/82a37f59-2654-4618-94bf-09209fc26cc5.jpg\",\"headerOverlayColor1\":\"#FFD700\",\"headerOverlayColor2\":\"#000000\",\"headerImageOpacity\":0.2,\"footerTitle\":\"Need beats? Or Looking for seling beats?\",\"footerSubtitle\":\"Level Up Your Fanbase with BeatBoss: Connect and Expand Your Potencial!\",\"footerImage\":\"images\\/landing\\/landing-footer-bg.jpg\",\"actions\":{\"inputText\":\"Search for artists, albums and tracks...\",\"inputButton\":\"Search\",\"cta1\":{\"label\":\"Signup Now\",\"type\":\"route\",\"action\":\"\\/register\"},\"cta2\":{\"label\":\"Explore\",\"type\":\"route\",\"action\":\"\\/discover\"},\"cta3\":{\"label\":\"Sign up for free\",\"type\":\"route\",\"action\":\"\\/register\"}},\"primaryFeatures\":[],\"secondaryFeatures\":[{\"title\":\"Stream Anytime, Anywhere. From Any Device.\",\"subtitle\":\"Complete Freedom\",\"image\":\"images\\/landing\\/landing-feature-1.jpg\",\"description\":\"Stream music in the browser, on Phone, Tablet, Smart TVs, Consoles, Chromecast, Apple TV and more.\"},{\"title\":\"Get More From Bemusic With Pro\",\"subtitle\":\"BeMusic Pro\",\"image\":\"images\\/landing\\/landing-feature-2.jpg\",\"description\":\"Subscribe to BeMusic pro to hide ads, increase upload time and get access to other exclusive features.\"}],\"pricingTitle\":\"Simple pricing, for everyone.\",\"pricingSubtitle\":\"\\\"Choose the plan that suits your lifestyle. No commitments, cancel whenever you wish.\\\"\",\"channelIds\":[1]}', '2024-04-11 17:25:04', '2024-05-01 18:57:47', 0),
(59, 'maintenance.enable', 'false', '2024-04-11 17:25:04', '2024-05-07 11:24:02', 0),
(63, 'player.show_become_artist_btn', 'true', '2024-04-28 05:30:06', '2024-04-28 05:30:06', 0),
(64, 'artistPage.showDescription', 'true', '2024-04-28 05:30:06', '2024-04-28 05:30:06', 0),
(65, 'mail.contact_page_address', 'info@beatboss.cz', '2024-04-28 05:34:02', '2024-04-30 10:43:43', 0),
(66, 'require_email_confirmation', 'true', '2024-04-28 05:34:16', '2024-05-14 19:53:45', 0),
(67, 'cookie_notice.button', '{\"label\":\"Cookies\",\"type\":\"customPage\",\"target\":\"_self\",\"action\":\"/pages/privacy-policy\"}', '2024-04-28 05:36:00', '2024-05-22 20:20:04', 0),
(68, 'registration.policies', '[{\"id\":\"zweIHi\",\"label\":\"Privacy Policy\",\"action\":\"/pages/privacy-policy\",\"model_id\":1,\"type\":\"customPage\"},{\"id\":\"kL4bYc\",\"label\":\"Terms of Service\",\"action\":\"/pages/terms-of-service\",\"model_id\":2,\"type\":\"customPage\"}]', '2024-04-28 05:36:00', '2024-05-22 20:20:04', 0),
(69, 'billing.invoice.address', 'Mušlov 12\n69201 Mikulov\nCzech Republic', '2024-04-29 07:27:06', '2024-04-29 07:27:06', 0),
(70, 'billing.invoice.notes', 'Thanks for your order!\n\n#TeamBeatBoss', '2024-04-29 07:27:06', '2024-04-29 07:27:06', 0),
(71, 'uploads.max_size', '41943040', '2024-04-29 15:28:50', '2024-04-29 15:28:50', 0),
(72, 'uploads.available_space', '1073741824', '2024-04-29 15:28:50', '2024-04-29 15:28:50', 0),
(73, 'branding.site_description', 'Take Your Music to the Next Level', '2024-04-29 19:33:11', '2024-04-30 10:37:49', 0),
(74, 'homepage.pricing', 'true', '2024-04-29 20:33:36', '2024-04-29 20:33:36', 0),
(75, 'branding.favicon', 'favicon/icon-144x144.png?v=1714470067', '2024-04-30 07:41:07', '2024-04-30 07:41:07', 0),
(76, 'branding.logo_light_mobile', 'storage/branding_media/fa19ef21-33fc-4cc0-a548-1913d7de6838.png', '2024-04-30 07:41:07', '2024-05-01 16:54:11', 0),
(77, 'branding.logo_dark_mobile', 'storage/branding_media/bb44343b-d660-4662-a542-7a8185e5f28f.png', '2024-04-30 07:41:07', '2024-05-01 16:54:11', 0),
(78, 'player.hide_radio_button', 'true', '2024-05-01 16:51:34', '2024-05-01 16:51:34', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `similar_artists`
--

CREATE TABLE `similar_artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `similar_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_name` varchar(20) NOT NULL,
  `user_service_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `access_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_id` varchar(255) NOT NULL,
  `gateway_name` varchar(255) NOT NULL DEFAULT 'none',
  `gateway_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `price_id`, `gateway_name`, `gateway_id`, `quantity`, `description`, `trial_ends_at`, `ends_at`, `renews_at`, `created_at`, `updated_at`, `product_id`) VALUES
(2, 2, '1', 'stripe', 'sub_1PFee7HbhwwwUI19KxY3LVYM', 1, NULL, NULL, NULL, '2025-05-12 14:14:23', '2024-05-12 14:14:23', '2024-05-12 17:44:48', 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(80) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `tracks`
--

CREATE TABLE `tracks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `youtube_id` varchar(255) DEFAULT NULL,
  `spotify_popularity` tinyint(3) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_id` varchar(8) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `plays` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `spotify_id` char(22) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mp3_file` varchar(255) DEFAULT NULL,
  `wav_file` varchar(255) DEFAULT NULL,
  `zip_file` varchar(255) DEFAULT NULL,
  `pdf_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `tracks`
--

INSERT INTO `tracks` (`id`, `name`, `album_id`, `number`, `duration`, `youtube_id`, `spotify_popularity`, `owner_id`, `temp_id`, `src`, `plays`, `spotify_id`, `created_at`, `updated_at`, `description`, `image`, `mp3_file`, `wav_file`, `zip_file`, `pdf_file`) VALUES
(533, 'Winner', 42, 1, 194000, NULL, NULL, 2, NULL, 'storage/track_media/cff169ea-efca-4fff-be8d-1ceb62171867.mp3', 35, NULL, '2024-04-29 23:11:25', '2024-05-27 05:54:30', 'Winner', 'storage/track_image/1e80b14a-6a22-4af6-bb47-62ddbfa85528.png', NULL, NULL, NULL, NULL),
(534, 'Icon', 42, 0, 183000, NULL, NULL, 2, NULL, 'storage/track_media/041cc5c0-e833-4dae-bcee-bdfa72d2a25d.mp3', 12, NULL, '2024-05-12 21:18:42', '2024-05-25 17:37:39', NULL, 'storage/track_image/ea5ea83f-6655-4d52-8fbd-f1afe6c0ef80.png', NULL, NULL, NULL, 'storage/track_image/dd1863cd-9ef0-4c7a-ba7d-c0e9e88a3eda.pdf'),
(535, 'All in', NULL, 0, 128000, NULL, NULL, 1, NULL, 'storage/track_media/dccca875-de7c-4641-a87f-18c54825b211.mp3', 7, NULL, '2024-05-22 19:38:42', '2024-05-22 20:37:05', 'All in by Beatboss', 'storage/track_image/3e2764a1-9b85-494f-a256-5ac8f41ab274.jpg', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `track_plays`
--

CREATE TABLE `track_plays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `track_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `platform` varchar(30) DEFAULT NULL,
  `device` varchar(30) DEFAULT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `track_plays`
--

INSERT INTO `track_plays` (`id`, `user_id`, `track_id`, `created_at`, `platform`, `device`, `browser`, `location`) VALUES
(12, 2, 533, '2024-04-29 23:12:06', 'windows', 'desktop', 'chrome', 'us'),
(13, 2, 533, '2024-04-30 10:50:09', 'windows', 'desktop', 'chrome', 'us'),
(14, 2, 533, '2024-04-30 10:56:10', 'windows', 'desktop', 'chrome', 'us'),
(15, 2, 533, '2024-04-30 10:57:22', 'windows', 'desktop', 'chrome', 'us'),
(16, 2, 533, '2024-04-30 11:05:37', 'androidos', 'mobile', 'chrome', 'us'),
(17, 2, 533, '2024-04-30 11:09:54', 'androidos', 'mobile', 'chrome', 'us'),
(18, 2, 533, '2024-04-30 11:11:23', 'androidos', 'mobile', 'chrome', 'us'),
(19, 1, 533, '2024-05-01 06:05:03', 'windows', 'desktop', 'firefox', 'us'),
(20, 1, 533, '2024-05-01 06:07:01', 'windows', 'desktop', 'firefox', 'us'),
(21, 1, 533, '2024-05-01 18:50:52', 'windows', 'desktop', 'firefox', 'us'),
(22, 1, 533, '2024-05-02 07:02:20', 'windows', 'desktop', 'firefox', 'us'),
(23, 1, 533, '2024-05-03 19:17:01', 'windows', 'desktop', 'firefox', 'us'),
(24, 1, 533, '2024-05-06 21:07:44', 'windows', 'desktop', 'firefox', 'us'),
(25, 2, 533, '2024-05-12 20:55:11', 'windows', 'desktop', 'chrome', 'us'),
(26, 2, 533, '2024-05-12 21:09:21', 'windows', 'desktop', 'chrome', 'us'),
(27, 2, 534, '2024-05-12 21:18:52', 'windows', 'desktop', 'chrome', 'us'),
(28, 1, 534, '2024-05-12 21:24:01', 'windows', 'desktop', 'firefox', 'us'),
(29, 1, 533, '2024-05-12 21:24:09', 'windows', 'desktop', 'firefox', 'us'),
(30, 2, 533, '2024-05-12 21:26:02', 'windows', 'desktop', 'chrome', 'us'),
(31, 2, 534, '2024-05-13 05:22:07', 'windows', 'desktop', 'chrome', 'us'),
(32, 2, 533, '2024-05-13 05:26:50', 'windows', 'desktop', 'chrome', 'us'),
(33, 2, 534, '2024-05-13 05:30:04', 'windows', 'desktop', 'chrome', 'us'),
(34, 2, 533, '2024-05-13 05:33:32', 'windows', 'desktop', 'chrome', 'us'),
(35, 2, 533, '2024-05-13 05:36:44', 'windows', 'desktop', 'chrome', 'us'),
(36, 2, 534, '2024-05-13 08:56:20', 'windows', 'desktop', 'chrome', 'us'),
(37, NULL, 533, '2024-05-14 05:16:14', 'windows', 'desktop', 'opera', 'us'),
(38, NULL, 534, '2024-05-14 05:16:39', 'windows', 'desktop', 'opera', 'us'),
(39, 2, 533, '2024-05-15 04:37:42', 'windows', 'desktop', 'chrome', 'us'),
(40, 2, 533, '2024-05-22 17:01:01', 'windows', 'desktop', 'chrome', 'us'),
(41, 2, 534, '2024-05-22 17:02:27', 'windows', 'desktop', 'chrome', 'us'),
(42, 2, 535, '2024-05-22 20:24:15', 'windows', 'desktop', 'chrome', 'us'),
(43, 2, 535, '2024-05-22 20:26:24', 'windows', 'desktop', 'chrome', 'us'),
(44, 2, 535, '2024-05-22 20:28:33', 'windows', 'desktop', 'chrome', 'us'),
(45, 2, 535, '2024-05-22 20:30:40', 'windows', 'desktop', 'chrome', 'us'),
(46, 2, 535, '2024-05-22 20:32:50', 'windows', 'desktop', 'chrome', 'us'),
(47, 2, 535, '2024-05-22 20:34:58', 'windows', 'desktop', 'chrome', 'us'),
(48, 2, 535, '2024-05-22 20:37:05', 'windows', 'desktop', 'chrome', 'us'),
(49, 2, 533, '2024-05-23 20:07:58', 'windows', 'desktop', 'chrome', 'us'),
(50, 2, 534, '2024-05-23 20:09:43', 'windows', 'desktop', 'chrome', 'us'),
(51, 2, 534, '2024-05-23 20:48:31', 'windows', 'desktop', 'chrome', 'us'),
(52, 2, 534, '2024-05-23 21:23:55', 'windows', 'desktop', 'chrome', 'us'),
(53, 2, 534, '2024-05-25 15:20:54', 'windows', 'desktop', 'chrome', 'us'),
(54, 2, 533, '2024-05-25 15:22:31', 'windows', 'desktop', 'chrome', 'us'),
(55, 2, 533, '2024-05-25 15:28:50', 'windows', 'desktop', 'chrome', 'us'),
(56, 2, 533, '2024-05-25 15:35:10', 'windows', 'desktop', 'chrome', 'us'),
(57, 2, 533, '2024-05-25 15:41:39', 'windows', 'desktop', 'chrome', 'us'),
(58, 2, 533, '2024-05-25 17:37:37', 'windows', 'desktop', 'chrome', 'us'),
(59, 2, 534, '2024-05-25 17:37:39', 'windows', 'desktop', 'chrome', 'us'),
(60, 2, 533, '2024-05-26 19:53:18', 'windows', 'desktop', 'chrome', 'us'),
(61, 2, 533, '2024-05-26 20:14:58', 'windows', 'desktop', 'chrome', 'us'),
(62, 2, 533, '2024-05-27 05:16:38', 'windows', 'desktop', 'chrome', 'us'),
(63, 2, 533, '2024-05-27 05:27:08', 'windows', 'desktop', 'chrome', 'us'),
(64, 2, 533, '2024-05-27 05:33:18', 'windows', 'desktop', 'chrome', 'us'),
(65, 2, 533, '2024-05-27 05:54:30', 'windows', 'desktop', 'chrome', 'us');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `legacy_permissions` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `card_brand` varchar(30) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(6) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `timezone` varchar(30) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `available_space` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `card_expires` varchar(10) DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `avatar_url`, `gender`, `legacy_permissions`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `card_brand`, `card_last_four`, `remember_token`, `created_at`, `updated_at`, `language`, `country`, `timezone`, `avatar`, `stripe_id`, `available_space`, `email_verified_at`, `card_expires`, `banned_at`) VALUES
(1, 'deil', NULL, NULL, NULL, NULL, NULL, 'info@beatboss.cz', '$2y$10$TyyJ/SNeBnh.SosrGk9vAe6cIoN5xGB7qTxYhPbOxpzLUvtf0Jl6.', NULL, NULL, NULL, NULL, NULL, 'gavLYpeduYg1Ibmn6c7nII6FvyNOh4h73siJKZOXBzakqapoq31AW2AyAYAq', '2024-04-11 17:25:03', '2024-05-22 19:39:34', NULL, NULL, NULL, 'storage/avatars/4cb1d766-9fe9-46d3-aadc-c282e5dfa842.png', 'cus_Q5vDhhQco6Y9sD', NULL, '2024-04-11 17:25:03', NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'touchdownrecords201@gmail.com', '$2y$10$p4RLh/21.f9VV1d9L6xFF.V4wpPlNuGCUZc1K7eVDn7Q90mYhKuGy', NULL, NULL, NULL, NULL, NULL, 'lhyrGudOvuEBs83UxuUOzuNLFOqC2jYoZWHaTvZgAb8RWD89iaWUwrT9DcEC', '2024-04-27 20:37:13', '2024-05-12 10:48:12', 'en', 'US', 'America/New_York', NULL, 'cus_Q5nPheZOaWid61', NULL, '2024-04-27 20:37:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `users_oauth`
--

CREATE TABLE `users_oauth` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `user_artist`
--

CREATE TABLE `user_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'artist',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `user_artist`
--

INSERT INTO `user_artist` (`id`, `user_id`, `artist_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'artist', NULL, NULL),
(2, 2, 2, 'artist', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `artist_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `description`, `city`, `country`, `user_id`, `created_at`, `updated_at`, `artist_id`) VALUES
(1, 'Artist, producer & more', 'Mikulov', 'Czech Republic', NULL, '2024-05-20 17:46:21', '2024-05-20 17:46:21', 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 2, 1, NULL),
(2, 2, 3, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `workspace_invites`
--

CREATE TABLE `workspace_invites` (
  `id` char(36) NOT NULL,
  `avatar` varchar(80) DEFAULT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `workspace_user`
--

CREATE TABLE `workspace_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `workspace_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `active_sessions`
--
ALTER TABLE `active_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active_sessions_session_id_index` (`session_id`),
  ADD KEY `active_sessions_token_index` (`token`),
  ADD KEY `active_sessions_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_spotify_id_unique` (`spotify_id`),
  ADD KEY `albums_release_date_index` (`release_date`),
  ADD KEY `albums_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `albums_owner_id_index` (`owner_id`),
  ADD KEY `albums_temp_id_index` (`temp_id`),
  ADD KEY `albums_fully_scraped_index` (`fully_scraped`),
  ADD KEY `albums_views_index` (`views`),
  ADD KEY `albums_plays_index` (`plays`),
  ADD KEY `albums_updated_at_index` (`updated_at`);

--
-- Indexy pro tabulku `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artists_spotify_id_unique` (`spotify_id`),
  ADD KEY `artists_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `artists_fully_scraped_index` (`fully_scraped`),
  ADD KEY `artists_views_index` (`views`),
  ADD KEY `artists_plays_index` (`plays`),
  ADD KEY `artists_verified_index` (`verified`),
  ADD KEY `artists_updated_at_index` (`updated_at`),
  ADD KEY `artists_created_at_index` (`created_at`),
  ADD KEY `artists_image_small_index` (`image_small`);

--
-- Indexy pro tabulku `artist_album`
--
ALTER TABLE `artist_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_album_artist_id_album_id_unique` (`artist_id`,`album_id`),
  ADD KEY `artist_album_artist_id_index` (`artist_id`),
  ADD KEY `artist_album_album_id_index` (`album_id`),
  ADD KEY `artist_album_primary_index` (`primary`);

--
-- Indexy pro tabulku `artist_bios`
--
ALTER TABLE `artist_bios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_bios_artist_id_unique` (`artist_id`);

--
-- Indexy pro tabulku `artist_track`
--
ALTER TABLE `artist_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artist_track_artist_id_track_id_unique` (`artist_id`,`track_id`),
  ADD KEY `artist_track_artist_id_index` (`artist_id`),
  ADD KEY `artist_track_track_id_index` (`track_id`),
  ADD KEY `artist_track_primary_index` (`primary`);

--
-- Indexy pro tabulku `backstage_requests`
--
ALTER TABLE `backstage_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backstage_requests_type_index` (`type`),
  ADD KEY `backstage_requests_user_id_index` (`user_id`),
  ADD KEY `backstage_requests_status_index` (`status`);

--
-- Indexy pro tabulku `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_bannable_type_bannable_id_index` (`bannable_type`,`bannable_id`),
  ADD KEY `bans_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  ADD KEY `bans_expired_at_index` (`expired_at`);

--
-- Indexy pro tabulku `billing_plans`
--
ALTER TABLE `billing_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_plans_hidden_index` (`hidden`);

--
-- Indexy pro tabulku `channelables`
--
ALTER TABLE `channelables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channelables_unique` (`channelable_type`,`channelable_id`,`channel_id`),
  ADD KEY `channelables_channel_id_index` (`channel_id`),
  ADD KEY `channelables_channelable_type_index` (`channelable_type`),
  ADD KEY `channelables_channelable_id_index` (`channelable_id`),
  ADD KEY `channelables_order_index` (`order`);

--
-- Indexy pro tabulku `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`),
  ADD KEY `channels_internal_index` (`internal`),
  ADD KEY `channels_type_index` (`type`);

--
-- Indexy pro tabulku `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_path_index` (`path`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_commentable_type_index` (`commentable_type`),
  ADD KEY `comments_deleted_index` (`deleted`),
  ADD KEY `comments_upvotes_index` (`upvotes`),
  ADD KEY `comments_downvotes_index` (`downvotes`),
  ADD KEY `comments_created_at_index` (`created_at`),
  ADD KEY `comments_updated_at_index` (`updated_at`);

--
-- Indexy pro tabulku `comment_reports`
--
ALTER TABLE `comment_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_reports_user_id_index` (`user_id`),
  ADD KEY `comment_reports_comment_id_index` (`comment_id`);

--
-- Indexy pro tabulku `comment_votes`
--
ALTER TABLE `comment_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_votes_user_ip_comment_id_unique` (`user_ip`,`comment_id`),
  ADD UNIQUE KEY `comment_votes_user_id_comment_id_unique` (`user_id`,`comment_id`),
  ADD KEY `comment_votes_user_id_index` (`user_id`),
  ADD KEY `comment_votes_comment_id_index` (`comment_id`),
  ADD KEY `comment_votes_user_ip_index` (`user_ip`);

--
-- Indexy pro tabulku `css_themes`
--
ALTER TABLE `css_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `css_themes_name_unique` (`name`),
  ADD KEY `css_themes_default_light_index` (`default_light`),
  ADD KEY `css_themes_default_dark_index` (`default_dark`),
  ADD KEY `css_themes_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `csv_exports`
--
ALTER TABLE `csv_exports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `csv_exports_cache_name_unique` (`cache_name`),
  ADD KEY `csv_exports_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `custom_domains`
--
ALTER TABLE `custom_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_domains_host_unique` (`host`),
  ADD KEY `custom_domains_user_id_index` (`user_id`),
  ADD KEY `custom_domains_created_at_index` (`created_at`),
  ADD KEY `custom_domains_updated_at_index` (`updated_at`),
  ADD KEY `custom_domains_global_index` (`global`),
  ADD KEY `custom_domains_resource_id_index` (`resource_id`),
  ADD KEY `custom_domains_resource_type_index` (`resource_type`),
  ADD KEY `custom_domains_workspace_id_index` (`workspace_id`);

--
-- Indexy pro tabulku `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_type_index` (`type`),
  ADD KEY `pages_user_id_index` (`user_id`),
  ADD KEY `custom_pages_workspace_id_index` (`workspace_id`);

--
-- Indexy pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexy pro tabulku `file_entries`
--
ALTER TABLE `file_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploads_file_name_unique` (`file_name`),
  ADD KEY `uploads_name_index` (`name`),
  ADD KEY `uploads_user_id_index` (`user_id`),
  ADD KEY `uploads_public_index` (`public`),
  ADD KEY `file_entries_updated_at_index` (`updated_at`),
  ADD KEY `file_entries_parent_id_index` (`parent_id`),
  ADD KEY `file_entries_type_index` (`type`),
  ADD KEY `file_entries_deleted_at_index` (`deleted_at`),
  ADD KEY `file_entries_user_id_index` (`user_id`),
  ADD KEY `file_entries_path_index` (`path`),
  ADD KEY `file_entries_description_index` (`description`),
  ADD KEY `file_entries_workspace_id_index` (`workspace_id`),
  ADD KEY `file_entries_owner_id_index` (`owner_id`);

--
-- Indexy pro tabulku `file_entry_models`
--
ALTER TABLE `file_entry_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploadable_unique` (`file_entry_id`,`model_id`,`model_type`),
  ADD KEY `file_entry_models_owner_index` (`owner`);

--
-- Indexy pro tabulku `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `follows_follower_id_followed_id_unique` (`follower_id`,`followed_id`);

--
-- Indexy pro tabulku `genreables`
--
ALTER TABLE `genreables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_artist_genreable_id_genreable_type_genre_id_unique` (`genreable_id`,`genreable_type`,`genre_id`),
  ADD KEY `genre_artist_genreable_type_index` (`genreable_type`),
  ADD KEY `genreables_genreable_id_index` (`genreable_id`),
  ADD KEY `genreables_genre_id_index` (`genre_id`);

--
-- Indexy pro tabulku `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`);

--
-- Indexy pro tabulku `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_subscription_id_index` (`subscription_id`),
  ADD KEY `invoices_uuid_index` (`uuid`);

--
-- Indexy pro tabulku `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexy pro tabulku `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `licenses_track_id_unique` (`track_id`);

--
-- Indexy pro tabulku `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_likeable_id_likeable_type_user_id_unique` (`likeable_id`,`likeable_type`,`user_id`),
  ADD KEY `track_user_track_id_index` (`likeable_id`),
  ADD KEY `track_user_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `localizations`
--
ALTER TABLE `localizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localizations_name_index` (`name`),
  ADD KEY `localizations_language_index` (`language`);

--
-- Indexy pro tabulku `lyrics`
--
ALTER TABLE `lyrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lyrics_track_id_unique` (`track_id`);

--
-- Indexy pro tabulku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexy pro tabulku `notification_subscriptions`
--
ALTER TABLE `notification_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_subscriptions_notif_id_index` (`notif_id`),
  ADD KEY `notification_subscriptions_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexy pro tabulku `permissionables`
--
ALTER TABLE `permissionables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissionable_unique` (`permission_id`,`permissionable_id`,`permissionable_type`),
  ADD KEY `permissionables_permission_id_index` (`permission_id`),
  ADD KEY `permissionables_permissionable_id_index` (`permissionable_id`),
  ADD KEY `permissionables_permissionable_type_index` (`permissionable_type`);

--
-- Indexy pro tabulku `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_advanced_index` (`advanced`);

--
-- Indexy pro tabulku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexy pro tabulku `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlists_spotify_id_unique` (`spotify_id`),
  ADD KEY `playlists_public_index` (`public`),
  ADD KEY `playlists_views_index` (`views`),
  ADD KEY `playlists_collaborative_index` (`collaborative`),
  ADD KEY `playlists_plays_index` (`plays`),
  ADD KEY `playlists_owner_id_index` (`owner_id`);

--
-- Indexy pro tabulku `playlist_track`
--
ALTER TABLE `playlist_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlist_track_track_id_playlist_id_unique` (`track_id`,`playlist_id`),
  ADD KEY `playlist_track_added_by_index` (`added_by`);

--
-- Indexy pro tabulku `playlist_user`
--
ALTER TABLE `playlist_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playlist_user_playlist_id_user_id_unique` (`playlist_id`,`user_id`),
  ADD KEY `playlist_user_owner_index` (`editor`);

--
-- Indexy pro tabulku `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_product_id_index` (`product_id`);

--
-- Indexy pro tabulku `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_position_index` (`position`),
  ADD KEY `products_free_index` (`free`),
  ADD KEY `products_hidden_index` (`hidden`);

--
-- Indexy pro tabulku `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bio_images_artist_id_index` (`artist_id`),
  ADD KEY `profile_images_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `profile_links`
--
ALTER TABLE `profile_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_links_user_id_index` (`linkeable_id`),
  ADD KEY `profile_links_linkeable_type_index` (`linkeable_type`);

--
-- Indexy pro tabulku `reposts`
--
ALTER TABLE `reposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reposts_repostable_id_repostable_type_user_id_unique` (`repostable_id`,`repostable_type`,`user_id`),
  ADD KEY `reposts_repostable_id_index` (`repostable_id`),
  ADD KEY `reposts_repostable_type_index` (`repostable_type`),
  ADD KEY `reposts_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`),
  ADD KEY `groups_default_index` (`default`),
  ADD KEY `groups_guests_index` (`guests`),
  ADD KEY `roles_internal_index` (`internal`),
  ADD KEY `roles_artists_index` (`artists`);

--
-- Indexy pro tabulku `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`),
  ADD KEY `settings_private_index` (`private`);

--
-- Indexy pro tabulku `similar_artists`
--
ALTER TABLE `similar_artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `similar_artists_artist_id_similar_id_unique` (`artist_id`,`similar_id`);

--
-- Indexy pro tabulku `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_profiles_user_id_service_name_unique` (`user_id`,`service_name`),
  ADD UNIQUE KEY `social_profiles_service_name_user_service_id_unique` (`service_name`,`user_service_id`),
  ADD KEY `social_profiles_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_gateway_id_unique` (`gateway_id`),
  ADD KEY `subscriptions_user_id_index` (`user_id`),
  ADD KEY `subscriptions_plan_id_index` (`price_id`),
  ADD KEY `subscriptions_gateway_index` (`gateway_name`),
  ADD KEY `subscriptions_product_id_index` (`product_id`);

--
-- Indexy pro tabulku `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggable_unique` (`tag_id`,`taggable_id`,`user_id`,`taggable_type`),
  ADD KEY `taggables_tag_id_index` (`tag_id`),
  ADD KEY `taggables_taggable_id_index` (`taggable_id`),
  ADD KEY `taggables_taggable_type_index` (`taggable_type`),
  ADD KEY `taggables_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_user_id_type_unique` (`name`,`user_id`,`type`),
  ADD KEY `tags_type_index` (`type`),
  ADD KEY `tags_created_at_index` (`created_at`),
  ADD KEY `tags_updated_at_index` (`updated_at`),
  ADD KEY `tags_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracks_spotify_id_unique` (`spotify_id`),
  ADD KEY `tracks_album_id_index` (`album_id`),
  ADD KEY `tracks_number_index` (`number`),
  ADD KEY `tracks_youtube_id_index` (`youtube_id`),
  ADD KEY `tracks_spotify_popularity_index` (`spotify_popularity`),
  ADD KEY `tracks_owner_id_index` (`owner_id`),
  ADD KEY `tracks_temp_id_index` (`temp_id`),
  ADD KEY `tracks_plays_index` (`plays`),
  ADD KEY `tracks_created_at_index` (`created_at`),
  ADD KEY `tracks_updated_at_index` (`updated_at`),
  ADD KEY `tracks_name_index` (`name`);

--
-- Indexy pro tabulku `track_plays`
--
ALTER TABLE `track_plays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `track_plays_user_id_index` (`user_id`),
  ADD KEY `track_plays_track_id_index` (`track_id`),
  ADD KEY `track_plays_platform_index` (`platform`),
  ADD KEY `track_plays_device_index` (`device`),
  ADD KEY `track_plays_browser_index` (`browser`),
  ADD KEY `track_plays_location_index` (`location`),
  ADD KEY `track_plays_created_at_index` (`created_at`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_at_index` (`created_at`),
  ADD KEY `users_updated_at_index` (`updated_at`),
  ADD KEY `users_username_index` (`username`),
  ADD KEY `users_first_name_index` (`first_name`),
  ADD KEY `users_last_name_index` (`last_name`);

--
-- Indexy pro tabulku `users_oauth`
--
ALTER TABLE `users_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_oauth_user_id_service_unique` (`user_id`,`service`),
  ADD UNIQUE KEY `users_oauth_token_unique` (`token`),
  ADD KEY `users_oauth_user_id_index` (`user_id`);

--
-- Indexy pro tabulku `user_artist`
--
ALTER TABLE `user_artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_artist_user_id_artist_id_unique` (`user_id`,`artist_id`),
  ADD KEY `user_artist_user_id_index` (`user_id`),
  ADD KEY `user_artist_artist_id_index` (`artist_id`),
  ADD KEY `user_artist_role_index` (`role`);

--
-- Indexy pro tabulku `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_profiles_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `user_profiles_artist_id_unique` (`artist_id`);

--
-- Indexy pro tabulku `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_group_user_id_group_id_unique` (`user_id`,`role_id`);

--
-- Indexy pro tabulku `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspaces_owner_id_index` (`owner_id`),
  ADD KEY `workspaces_created_at_index` (`created_at`),
  ADD KEY `workspaces_updated_at_index` (`updated_at`);

--
-- Indexy pro tabulku `workspace_invites`
--
ALTER TABLE `workspace_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_invites_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_invites_user_id_index` (`user_id`),
  ADD KEY `workspace_invites_email_index` (`email`),
  ADD KEY `workspace_invites_role_id_index` (`role_id`);

--
-- Indexy pro tabulku `workspace_user`
--
ALTER TABLE `workspace_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workspace_user_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `workspace_user_user_id_index` (`user_id`),
  ADD KEY `workspace_user_workspace_id_index` (`workspace_id`),
  ADD KEY `workspace_user_role_id_index` (`role_id`),
  ADD KEY `workspace_user_is_owner_index` (`is_owner`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `active_sessions`
--
ALTER TABLE `active_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT pro tabulku `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pro tabulku `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pro tabulku `artist_bios`
--
ALTER TABLE `artist_bios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `artist_track`
--
ALTER TABLE `artist_track`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT pro tabulku `backstage_requests`
--
ALTER TABLE `backstage_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `billing_plans`
--
ALTER TABLE `billing_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `channelables`
--
ALTER TABLE `channelables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pro tabulku `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pro tabulku `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `comment_reports`
--
ALTER TABLE `comment_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `comment_votes`
--
ALTER TABLE `comment_votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `css_themes`
--
ALTER TABLE `css_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `csv_exports`
--
ALTER TABLE `csv_exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `custom_domains`
--
ALTER TABLE `custom_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `file_entries`
--
ALTER TABLE `file_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pro tabulku `file_entry_models`
--
ALTER TABLE `file_entry_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pro tabulku `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `genreables`
--
ALTER TABLE `genreables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `localizations`
--
ALTER TABLE `localizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT pro tabulku `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `permissionables`
--
ALTER TABLE `permissionables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pro tabulku `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pro tabulku `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `playlist_track`
--
ALTER TABLE `playlist_track`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `playlist_user`
--
ALTER TABLE `playlist_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `profile_links`
--
ALTER TABLE `profile_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `reposts`
--
ALTER TABLE `reposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pro tabulku `similar_artists`
--
ALTER TABLE `similar_artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT pro tabulku `track_plays`
--
ALTER TABLE `track_plays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `users_oauth`
--
ALTER TABLE `users_oauth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `user_artist`
--
ALTER TABLE `user_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `workspace_user`
--
ALTER TABLE `workspace_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
