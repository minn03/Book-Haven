-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 09:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_haven`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `quantity`, `price`, `image`, `Product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'Min En', 'user@gmail.com', NULL, NULL, 'Midwife Marley\'s Guide For Everyone: Pregnancy, Birth And The 4th Trimester', '1', '101', '1717997811.png', '3', '3', '2024-06-09 22:45:51', '2024-06-09 22:45:51'),
(17, 'Min Ennnnnn', 'userrrrr@gmail.com', NULL, NULL, 'Life In Technicolor: A Celebration Of Coldplay', '6', '5400', '1718001452.png', '6', '6', '2024-06-10 23:28:53', '2024-06-10 23:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Comedy', '2024-06-09 21:33:07', '2024-06-09 21:33:07'),
(2, 'Educational', '2024-06-09 22:34:03', '2024-06-09 22:34:03'),
(3, 'Sci-fi', '2024-06-09 22:34:09', '2024-06-09 22:34:09'),
(4, 'Fantasy', '2024-06-09 22:34:14', '2024-06-09 22:34:14'),
(5, 'Realism', '2024-06-09 22:34:17', '2024-06-09 22:34:17'),
(6, 'Documentary', '2024-06-09 22:34:22', '2024-06-09 22:34:22'),
(7, 'Science', '2024-06-09 22:34:28', '2024-06-09 22:34:28'),
(8, 'Horror', '2024-06-09 22:35:01', '2024-06-09 22:35:01'),
(9, 'Action', '2024-06-09 22:35:11', '2024-06-09 22:35:11'),
(10, 'Romance', '2024-06-09 22:35:16', '2024-06-09 22:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_06_09_070010_create_sessions_table', 1),
(7, '2024_06_09_135841_create_categories_table', 1),
(8, '2024_06_09_150036_create_products_table', 1),
(9, '2024_06_10_055023_create_carts_table', 2),
(10, '2024_06_10_061034_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'Kevin Ho', 'kevin@gmail.com', NULL, NULL, '2', 'The Folding Lady: Tools & Tricks To Make The Most Of Your Space & Find After Value In Your Home', '1', '50', '1717997671.png', '1', 'cash on delivery', 'processing', '2024-06-09 22:11:26', '2024-06-09 22:11:26'),
(2, 'Kevin Ho', 'kevin@gmail.com', NULL, NULL, '2', 'Destination Anywhere', '1', '47', '1717997766.png', '2', 'cash on delivery', 'processing', '2024-06-09 22:11:26', '2024-06-09 22:11:26'),
(3, 'Kevin Ho', 'kevin@gmail.com', NULL, NULL, '2', 'The Folding Lady: Tools & Tricks To Make The Most Of Your Space & Find After Value In Your Home', '1', '50', '1717997671.png', '1', 'cash on delivery', 'processing', '2024-06-09 22:14:35', '2024-06-09 22:14:35'),
(4, 'Kevin Ho', 'kevin@gmail.com', NULL, NULL, '2', 'Destination Anywhere', '3', '141', '1717997766.png', '2', 'cash on delivery', 'processing', '2024-06-09 22:14:35', '2024-06-09 22:14:35'),
(5, 'Min En', 'user@gmail.com', NULL, NULL, '3', 'Search Through Time: Travel Through History To Find Lots Of Fun Things', '4', '288', '1718001396.png', '5', 'cash on delivery', 'processing', '2024-06-09 22:45:38', '2024-06-09 22:45:38'),
(6, 'Minnn', 'userr@gmail.com', NULL, NULL, '4', 'The Folding Lady: Tools & Tricks To Make The Most Of Your Space & Find After Value In Your Home', '1', '50', '1717997671.png', '1', 'cash on delivery', 'processing', '2024-06-10 04:05:43', '2024-06-10 04:05:43'),
(7, 'MINNN', 'userrrr@gmail.com', NULL, NULL, '5', 'The Folding Lady: Tools & Tricks To Make The Most Of Your Space & Find After Value In Your Home', '1', '50', '1717997671.png', '1', 'cash on delivery', 'processing', '2024-06-10 04:15:28', '2024-06-10 04:15:28'),
(8, 'Min Ennnnnn', 'userrrrr@gmail.com', NULL, NULL, '6', 'Destination Anywhere', '1', '47', '1717997766.png', '2', 'cash on delivery', 'processing', '2024-06-10 23:20:27', '2024-06-10 23:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'The Folding Lady: Tools & Tricks To Make The Most Of Your Space & Find After Value In Your Home', 'Launched in 2020 and already with over 4.3M TikTok followers and over half a million Instagram followers, thousands have fallen for The Folding Lady\'s realistic approach to making life easier through folding and organising.', '1717997671.png', 'Comedy', '39', '50', '2024-06-09 21:34:31', '2024-06-09 21:34:31'),
(2, 'Destination Anywhere', 'A breathtaking novel about finding yourself and finding a friend by the award-winning author of Beautiful Broken Things. Sometimes you have to leave your life behind to find your place in the world.', '1717997766.png', 'Comedy', '50', '47', '2024-06-09 21:36:06', '2024-06-09 21:36:06'),
(3, 'Midwife Marley\'s Guide For Everyone: Pregnancy, Birth And The 4th Trimester', 'Do you have questions? The Guide for Everyone has all the answers you need', '1717997811.png', 'Comedy', '90', '101', '2024-06-09 21:36:51', '2024-06-09 21:36:51'),
(4, 'Testing', 'Testing', '1718000278.png', 'Comedy', '20', '500', '2024-06-09 22:17:58', '2024-06-09 22:17:58'),
(5, 'Search Through Time: Travel Through History To Find Lots Of Fun Things', 'Sample description', '1718001396.png', 'Documentary', '20', '72', '2024-06-09 22:36:36', '2024-06-09 22:36:36'),
(6, 'Life In Technicolor: A Celebration Of Coldplay', 'Includes biographies of each Coldplay band members', '1718001452.png', 'Documentary', '5', '900', '2024-06-09 22:37:32', '2024-06-09 22:37:32'),
(7, 'The Gene: An Intimate History', ': The story begins in an Augustinian abbey in 1856, and takes the reader from Darwin? groundbreaking theory of evolution, to the horrors of Nazi eugenics, to present day and beyond', '1718001492.png', 'Science', '200', '50', '2024-06-09 22:38:12', '2024-06-09 22:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eckS0rAzpXc3Tf8dk2LCHrYZjGaZY6WsrIXBZ0ri', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNTVPSk5xREJLSk9GeWtGUDgyTm1BRUs5MlRQcjlGUmhuajZLbWJIOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93X2NhcnQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUU9BNjE1Q29aRHZLSTV0LmUvV296dVFCOHZIUG51TkVDWlNodmlXcHl1eU1SZmZxMUhacVciO30=', 1718090936),
('eelR4jeQOXoh2SoV7uyFb55Wt5Nw8VbhByPUOu7u', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlcwZk5GdHJpWXVEZVJtOHpGY2tycmN3VWhOQXhkc1ZkQXNocXdYWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1718021759),
('OOaW8QQbCo6tKElRyInGMtPQ4iFovLb7MDOtdz1M', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmNsTmdaT2t4Q0pRbkZOSU1Rd0V1VEh5bDdldmFrQ0ZVQUVrNHN2RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1718002935);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Elon Musk', 'elon@musk.com', '1', NULL, '$2y$10$27hvkCQe0D1Z51nyoB7cdOPy2JXweHuVNBQyaysC/ak98ykYEaBwu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-09 21:32:15', '2024-06-09 21:32:15'),
(2, 'Kevin Ho', 'kevin@gmail.com', '0', NULL, '$2y$10$tTn3XCcHiMpV/xNzLp7ujeQuSL.of/a0pfOjJe7z8ocEpAZrcF4oK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-09 21:59:30', '2024-06-09 21:59:30'),
(3, 'Min En', 'user@gmail.com', '0', NULL, '$2y$10$7GBwg42GRN5zUD70AYBwE.cy2JlRD7kQTHPCIw9MfEURrB1u/fRBm', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-09 22:43:05', '2024-06-09 22:43:05'),
(4, 'Minnn', 'userr@gmail.com', '0', NULL, '$2y$10$7qYHpivJoiodLtJoE/KU3eayTeBw6inKkqzyCzUnHO8KrLzBt5j76', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 04:03:36', '2024-06-10 04:03:36'),
(5, 'MINNN', 'userrrr@gmail.com', '0', NULL, '$2y$10$8GZGdk5m8Tkga8ffHDtg3uAU8/f42vsalZ0uKFbCdKoqVcRVLgJwS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 04:14:23', '2024-06-10 04:14:23'),
(6, 'Min Ennnnnn', 'userrrrr@gmail.com', '0', NULL, '$2y$10$QOA615CoZDvKI5t.e/WozuQB8vHPnuNECZShviWpyuyMRffq1HZqW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 23:19:13', '2024-06-10 23:19:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
