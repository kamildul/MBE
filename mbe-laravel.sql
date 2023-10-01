-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 01, 2023 at 06:14 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbe-laravel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shortcode` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `remote` tinyint(1) NOT NULL,
  `country` varchar(255) NOT NULL,
  `countryCode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`locations`)),
  `state` varchar(255) NOT NULL,
  `isInternal` tinyint(1) NOT NULL,
  `code` varchar(255) NOT NULL,
  `published` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `department` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`department`)),
  `accountUid` varchar(255) NOT NULL,
  `approvalStatus` varchar(255) NOT NULL,
  `workplace` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `shortcode`, `title`, `remote`, `country`, `countryCode`, `city`, `region`, `locations`, `state`, `isInternal`, `code`, `published`, `type`, `language`, `department`, `accountUid`, `approvalStatus`, `workplace`, `created_at`, `updated_at`) VALUES
(3080348, '04EA1ADB23', 'OTT Manual Tester', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'full', 'en', '[\"Film & Television\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3325499, 'CAC908EC64', 'Video Game Tester - Serbia', 0, 'Serbia', 'RS', 'Belgrade', 'Vojvodina', '[]', 'published', 0, '', '2023-07-23 22:00:00', 'full', 'en', '[\"Quality Assurance\",\"Functionality Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3353802, '9EE995F97F', 'Office Assistant', 0, 'Romania', 'RO', 'Bucharest', 'Bucharest', '[{\"country\":\"Romania\",\"countryCode\":\"RO\",\"city\":\"Bucharest\",\"region\":\"Bucharest\",\"hidden\":false}]', 'published', 0, '', '2023-08-22 22:00:00', 'full', 'en', '[\"Operations\",\"Administration & Facilities Management\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3380797, 'DC60DB50AB', 'Translation Job for a Hebrew Language Student', 1, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-08-20 22:00:00', 'contract', 'en', '[\"Translation\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'remote', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3412974, '6FC9AA7262', 'Video Game Tester - LATAM Spanish Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3413104, '8164E42A86', 'Video Game Tester - Spanish Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3413159, 'D11CD0E76C', 'Video Game Tester - Italian Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3413175, '663C185638', 'Video Game Tester - German Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3413252, 'C5B3E7E697', 'Video Game Tester - Korean Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3413285, 'AF20AACCD7', 'Video Game Tester - Japanese Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3413350, '03B1268965', 'Video Game Tester - Danish Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3413426, 'D2EC18AA28', 'IT Technician', 0, 'United Kingdom', 'GB', 'London', 'England', '[{\"country\":\"United Kingdom\",\"countryCode\":\"GB\",\"city\":\"London\",\"region\":\"England\",\"hidden\":false}]', 'published', 0, '', '2023-09-07 22:00:00', 'full', 'en', '[\"Operations\",\"Information Technology\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:26', '2023-10-01 11:58:26'),
(3413459, '0814DDA925', 'Video Game Tester - Swedish Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-05 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:28', '2023-10-01 11:58:28'),
(3415375, 'FC2911004A', 'Video Game Tester - French Localization (English Knowledge required)', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3415852, '28E0901ED8', 'Video Game Tester - German Localization (English Knowledge required)', 0, 'Portugal', 'PT', 'Lisbon', 'Lisbon', '[{\"country\":\"Portugal\",\"countryCode\":\"PT\",\"city\":\"Lisbon\",\"region\":\"Lisbon\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3415890, '0C921833A2', 'Video Game Tester - Japanese Localization (English Knowledge required)', 0, 'Portugal', 'PT', 'Lisbon', 'Lisbon', '[{\"country\":\"Portugal\",\"countryCode\":\"PT\",\"city\":\"Lisbon\",\"region\":\"Lisbon\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3415903, '4B404D98E1', 'Video Game Tester - Korean Localization (English Knowledge required)', 0, 'Portugal', 'PT', 'Lisbon', 'Lisbon', '[{\"country\":\"Portugal\",\"countryCode\":\"PT\",\"city\":\"Lisbon\",\"region\":\"Lisbon\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3415919, '511FC0BEF0', 'Video Game Tester - Turkish Localization (English Knowledge required)', 0, 'Portugal', 'PT', 'Lisbon', 'Lisbon', '[{\"country\":\"Portugal\",\"countryCode\":\"PT\",\"city\":\"Lisbon\",\"region\":\"Lisbon\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3415927, '6DF4B39070', 'Video Game Tester -Traditional Chinese Localization (English Knowledge required)', 0, 'Portugal', 'PT', 'Lisbon', 'Lisbon', '[{\"country\":\"Portugal\",\"countryCode\":\"PT\",\"city\":\"Lisbon\",\"region\":\"Lisbon\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3415940, '353A243F0F', 'Video Game Tester - Simplified Chinese Localization (English Knowledge required)', 0, 'Portugal', 'PT', 'Lisbon', 'Lisbon', '[{\"country\":\"Portugal\",\"countryCode\":\"PT\",\"city\":\"Lisbon\",\"region\":\"Lisbon\",\"hidden\":false}]', 'published', 0, '', '2023-09-06 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:27', '2023-10-01 11:58:27'),
(3418532, '40A61B2079', 'Video Game Tester', 0, 'Romania', 'RO', 'Bucharest', 'Bucharest', '[{\"country\":\"Romania\",\"countryCode\":\"RO\",\"city\":\"Bucharest\",\"region\":\"Bucharest\",\"hidden\":false}]', 'published', 0, '', '2023-09-07 22:00:00', 'full', 'en', '[\"Quality Assurance\",\"Functionality Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:26', '2023-10-01 11:58:26'),
(3421615, '060D50B55D', 'Translator - German', 1, 'Germany', 'DE', 'Berlin', 'Berlin', '[{\"country\":\"Germany\",\"countryCode\":\"DE\",\"city\":\"Berlin\",\"region\":\"Berlin\",\"hidden\":false}]', 'published', 0, '', '2023-09-10 22:00:00', 'contract', 'en', '[\"Translation\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'remote', '2023-10-01 11:58:26', '2023-10-01 11:58:26'),
(3430109, '35BCE55E8F', 'Video Game Tester - Warsaw', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-13 22:00:00', '', 'en', '[\"Quality Assurance\",\"Functionality Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:26', '2023-10-01 11:58:26'),
(3430786, 'F40BE8FE34', 'Video Game Tester- Brazilian Portuguese Localization |English Knowledge required', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-13 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:58:26', '2023-10-01 11:58:26'),
(3448379, 'EFA5C44B3F', 'QA Project Lead (On-Site)', 0, 'United States', 'US', 'Kenner', 'Louisiana', '[{\"country\":\"United States\",\"countryCode\":\"US\",\"city\":\"Kenner\",\"region\":\"Louisiana\",\"hidden\":false}]', 'published', 0, '', '2023-09-27 22:00:00', 'full', 'en', '[\"Quality Assurance\",\"Functionality Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:55:28', '2023-10-01 11:55:28'),
(3449993, '3F1383A058', 'QA Project Lead (Remote)', 1, 'United States', 'US', 'Kenner', 'Louisiana', '[{\"country\":\"United States\",\"countryCode\":\"US\",\"city\":\"Kenner\",\"region\":\"Louisiana\",\"hidden\":false}]', 'published', 0, '', '2023-09-27 22:00:00', 'full', 'en', '[\"Quality Assurance\",\"Functionality Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'remote', '2023-10-01 11:55:28', '2023-10-01 11:55:28'),
(3461744, 'B7C5C46F20', 'Video Game Tester - Simplified Chinese Localization (English Knowledge required', 0, 'Poland', 'PL', 'Warsaw', 'Masovian Voivodeship', '[{\"country\":\"Poland\",\"countryCode\":\"PL\",\"city\":\"Warsaw\",\"region\":\"Masovian Voivodeship\",\"hidden\":false}]', 'published', 0, '', '2023-09-27 22:00:00', 'temporary', 'en', '[\"Quality Assurance\",\"Localisation Quality Assurance\"]', '779ff3ac-a71e-4249-b044-83c1bbd01278', 'approved', 'on_site', '2023-10-01 11:55:28', '2023-10-01 11:55:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_01_132506_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3461745;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
