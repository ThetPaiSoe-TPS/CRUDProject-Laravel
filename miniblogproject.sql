-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 01:09 PM
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
-- Database: `miniblogproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `writer` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `writer`, `created_at`, `updated_at`) VALUES
(5, 'Red bird', 'The northern cardinal, known colloquially as the common cardinal, red cardinal, or just cardinal, is a bird in the genus Cardinalis', '66dae6172b3684.jpg', 'Wikipidia', '2024-09-06 04:53:03', '2024-09-06 04:53:03'),
(8, 'couple bird', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '66db0d19e72ce8.jpeg', 'ccccccccccccccccccc', '2024-09-06 07:39:29', '2024-09-08 11:12:08'),
(10, 'Squirrel Nature', 'Squirrels are fascinating creatures with a variety of behaviors and adaptations that help them thrive in diverse environments. Here are some key aspects of their nature and behavior:\n\nHabitat and Distribution\nSquirrels are found in almost every habitat, from tropical rainforests to semi-arid deserts. They are native to the Americas, Africa, and Eurasia1. They are highly adaptable and can live in urban areas as well as in the wild.\n\nDiet\nSquirrels are primarily herbivores, feeding on seeds, nuts, fruits, and vegetables. However, they can also be omnivorous, eating insects, small vertebrates, and bird eggs when food is scarce2.\n\nBehavior\nActivity Patterns: Most squirrels are diurnal, meaning they are active during the day. Some species, like flying squirrels, are nocturnal and active at night2.\nForaging and Food Storage: Squirrels are known for their habit of storing food. They bury nuts and seeds to eat later, which helps them survive during times when food is scarce3.\nCommunication: Squirrels communicate through vocalizations and tail movements. They use these signals to warn others of predators, establish territory, and interact socially3.\nTerritoriality: Squirrels can be quite territorial, especially when it comes to defending their food sources from competitors3.\nAdaptations\nClimbing Skills: Squirrels have strong hind legs and sharp claws that make them excellent climbers. This helps them escape predators and access food in trees2.\nTeeth: Like all rodents, squirrels have teeth that grow continuously. This allows them to gnaw on hard objects without wearing down their teeth2.\nHibernation: Some squirrel species, particularly ground squirrels, hibernate during the winter months to conserve energy when food is scarce3.', '66db11081a6656.jpeg', 'Lydia Greenwood', '2024-09-06 07:56:16', '2024-09-06 07:56:16'),
(11, 'Road', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt laudantium ullam dolor perspiciatis sed nihil voluptatibus aperiam facilis architecto. In perferendis iure voluptatem minima temporibus eum atque, delectus excepturi, ea repudiandae culpa provident sed tempore quaerat blanditiis eius ex. Tenetur, accusantium cum aliquid iusto quos eligendi. Aut qui in ut nam id quasi animi alias blanditiis distinctio! Veniam deserunt molestiae facere accusantium magnam doloremque fugiat non atque? Itaque repellendus quibusdam debitis nihil optio! Tempore atque ut quae fuga quidem modi dolor cumque praesentium sequi recusandae, possimus id accusamus et dignissimos hic nisi quasi quod quis tempora aut blanditiis facere. Enim?', '66db11d7c7df15.jpeg', 'ddddddd', '2024-09-06 07:59:43', '2024-09-06 07:59:43'),
(12, 'The Photographer’s Eye', 'In the stillness of a moment, Through the lens, a world is caught, A fleeting glance, a silent whisper, In each frame, a story’s wrought.\r\n\r\nLight and shadow dance together, Painting scenes both near and far, Capturing the unseen beauty, In the glow of a distant star.\r\n\r\nWith a click, time stands still, Memories frozen, yet alive, A silent witness to life’s journey, In each photograph, we thrive.\r\n\r\nThe photographer, a silent poet, With a camera as their pen, Writes the tales of joy and sorrow, In the hearts of women and men.', '66dc8280afa247.jpeg', 'Liam Harper', '2024-09-07 10:12:40', '2024-09-07 10:12:40'),
(13, 'Ice Mountains', 'In the heart of winter’s embrace, Where icy peaks touch the sky, A mountain stands in silent grace, Its whispers echoing high.\r\n\r\nCrystals glisten in the sun, A frozen world, serene and still, Where time and nature are as one, And dreams ascend the chill.\r\n\r\nSnowflakes dance on frosty air, A ballet of the purest white, Each flake a story, delicate and rare, In the mountain’s tranquil light.\r\n\r\nBeneath the ice, secrets lie, Of ages past and tales untold, A silent witness to the sky, In its beauty, fierce and bold.', '66ddd3dc080042.jpeg', 'Elena Frost', '2024-09-07 10:18:23', '2024-09-08 11:11:47'),
(17, 'Mountain', 'In the realm where eagles soar, Above the clouds, forevermore, Stands a peak, both fierce and grand, A sentinel of the land.\r\n\r\nIts summit pierces azure skies, A silent guardian, wise and high. Veiled in mist, it keeps its lore, Echoes of ages, tales of yore.\r\n\r\nRugged cliffs and craggy spires, Touched by dawn’s first golden fires, In its shadow, valleys sleep, Secrets in their silence keep.\r\n\r\nWhispers of the wind’s embrace, Caress the mountain’s ancient face. In its heights, dreams take flight, A symphony of nature’s might.', '66ddd536008831.jpeg', 'Lysander Thorne', '2024-09-08 10:17:50', '2024-09-08 11:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
(4, '0001_01_01_000000_create_users_table', 1),
(5, '0001_01_01_000001_create_cache_table', 1),
(6, '0001_01_01_000002_create_jobs_table', 1),
(7, '2024_09_05_180158_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('dBDS82Yhw83jAJ0DqEwwLpGaKXwFsyfbKVNjhnns', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3hRNXZ3aXhuM1ZCNXk3U1dRWnlETnJSaW40YzNTRHcwU1ZEM2hSUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXN0P190b2tlbj03eFE1dndpeG4zVkI1eTdTV1FaeUROclJpbjRjM1NEdzBTVkQzaFJRJnNlYXJjaEtleT0lMjAlMjBiaXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725841453),
('V2LV02C3mJWJBbJU3RRjtyenjLAg41DGkhQk8q99', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVBIWk9DZEFJMTI0OGc3N3pWM1Z1SWVFRGFERFlmWG41TUV1TzFaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXN0P190b2tlbj1FUEhaT0NkQUkxMjQ4Zzc3elYzVnVJZUVEYUREWWZYbjVNRXVPMVpOJnNlYXJjaEtleT0xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToiYWxlcnQiO2E6MDp7fX0=', 1725821226);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
