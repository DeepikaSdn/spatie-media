-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 08:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-spatie-media`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test', 'sdsd@e.yu', '2023-08-02 03:21:45', '2023-08-02 03:21:45'),
(2, 'sfsd', 'sdf@dd.yu', '2023-08-02 03:31:43', '2023-08-02 03:31:43'),
(3, 'sdfd', 'cx@rew.iy', '2023-08-02 03:33:23', '2023-08-02 03:33:23'),
(4, 'fsdf', 'dfsd@rewr.ui', '2023-08-02 03:38:35', '2023-08-02 03:38:35'),
(5, 'dfsd', 'df@htr.yu', '2023-08-02 03:42:09', '2023-08-02 03:42:09'),
(6, 'dfsd', 'df@htr.yu', '2023-08-02 03:42:34', '2023-08-02 03:42:34'),
(7, 'sdf', 'sdf@ew.y', '2023-08-02 03:42:48', '2023-08-02 03:42:48'),
(8, 'xd', 'sds@ew.hu', '2023-08-02 03:46:13', '2023-08-02 03:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(12, 'App\\Models\\Client', 8, '2053d428-97e2-41c1-9955-f87789626760', 'avatar', 'flower-purple-lical-blosso', 'flower-purple-lical-blosso.jpg', 'image/jpeg', 'public', 'public', 854653, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 03:46:14', '2023-08-02 03:46:16'),
(13, 'App\\Models\\Client', 6, '572aab83-abd9-46f6-8a63-bf4fd4b802dd', 'avatar', 'flower-purple-lical-blosso', 'flower-purple-lical-blosso.jpg', 'image/jpeg', 'public', 'public', 854653, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:35:40', '2023-08-02 04:35:42'),
(14, 'App\\Models\\Client', 1, 'a4a69bd6-3d58-4f38-ab0f-e2f964d431c3', 'avatar', '81UO53jRl3L', '81UO53jRl3L.jpg', 'image/jpeg', 'public', 'public', 317589, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:36:07', '2023-08-02 04:36:08'),
(15, 'App\\Models\\Client', 2, '10543ad8-8c26-48bc-9c18-ef09aef0b62a', 'avatar', '81UO53jRl3L', '81UO53jRl3L.jpg', 'image/jpeg', 'public', 'public', 317589, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:36:36', '2023-08-02 04:36:37'),
(16, 'App\\Models\\Client', 7, '42f125f6-385e-4b7c-9960-b95568afec2f', 'avatar', 'flower-purple-lical-blosso', 'flower-purple-lical-blosso.jpg', 'image/jpeg', 'public', 'public', 854653, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:36:53', '2023-08-02 04:36:53'),
(17, 'App\\Models\\Client', 5, 'd5ed5389-b9d7-461d-8521-3ddf82a0ba73', 'avatar', '81UO53jRl3L', '81UO53jRl3L.jpg', 'image/jpeg', 'public', 'public', 317589, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:37:07', '2023-08-02 04:37:08'),
(19, 'App\\Models\\Client', 4, '5fbcb8a2-3335-4c0d-ae78-64d17d8a938d', 'avatar', '81UO53jRl3L', '81UO53jRl3L.jpg', 'image/jpeg', 'public', 'public', 317589, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:37:36', '2023-08-02 04:37:36'),
(20, 'App\\Models\\Client', 3, '17a5a900-0934-468d-a208-ec40f135a493', 'avatar', 'flower-purple-lical-blosso', 'flower-purple-lical-blosso.jpg', 'image/jpeg', 'public', 'public', 854653, '[]', '[]', '{\"thumb\":true}', '[]', 1, '2023-08-02 04:37:50', '2023-08-02 04:37:50');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
