-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 12:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hexas`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_headers`
--

CREATE TABLE `about_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_headers`
--

INSERT INTO `about_headers` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'About us Hexa\'s gobindaganj', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '202309200630pexels-luciann-photography-3566191.jpg', '2023-09-20 00:30:27', '2023-09-20 00:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `about_progresses`
--

CREATE TABLE `about_progresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_progresses`
--

INSERT INTO `about_progresses` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Student Happy', '100', '2023-09-20 00:33:51', '2023-09-20 00:35:39'),
(2, 'Course Complete', '1200', '2023-09-20 00:36:04', '2023-09-20 00:36:04'),
(3, 'Extra Services', '22', '2023-09-20 00:36:17', '2023-09-20 00:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `about_services`
--

CREATE TABLE `about_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `title_1` varchar(255) NOT NULL,
  `description_1` mediumtext NOT NULL,
  `image_1` varchar(255) NOT NULL,
  `title_2` varchar(255) NOT NULL,
  `description_2` mediumtext NOT NULL,
  `image_2` varchar(255) NOT NULL,
  `title_3` varchar(255) NOT NULL,
  `description_3` mediumtext NOT NULL,
  `image_3` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_services`
--

INSERT INTO `about_services` (`id`, `title`, `description`, `title_1`, `description_1`, `image_1`, `title_2`, `description_2`, `image_2`, `title_3`, `description_3`, `image_3`, `created_at`, `updated_at`) VALUES
(1, 'Services we Provide', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', 'Best Education', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '202309200632istockphoto-1472007817-612x612.jpg', 'Best Education', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '202309200632istockphoto-1456769274-612x612.jpg', 'Best Education', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '202309200632istockphoto-1310903669-612x612.jpg', '2023-09-20 00:32:20', '2023-09-20 00:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `name`, `course`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Elliott Dickson', 'Hashim Dejesus', '+1 (384) 728-4048', '2023-09-20 04:39:18', '2023-09-20 04:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `best_students`
--

CREATE TABLE `best_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Life Skill English spoken course', 'Life Skill English spoken course', '2023-09-19 23:55:17', '2023-09-19 23:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_headers`
--

CREATE TABLE `blog_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description_1` text NOT NULL,
  `description_2` text NOT NULL,
  `description_3` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `title`, `description_1`, `description_2`, `description_3`, `image`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, '1', 'bytyn@mailinator.com', 'Minima voluptatem id', 'Unde cum qui enim co', 'Veritatis soluta vol', '202309200556istockphoto-1297022167-612x612.jpg', '0', 'mafijityjo@mailinator.com', 'lehoky@mailinator.com', 'Rerum qui eos evenie', '2023-09-19 23:56:04', '2023-09-19 23:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sn` varchar(255) NOT NULL,
  `s_id` varchar(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `result` varchar(255) DEFAULT NULL,
  `course_start_date` varchar(255) NOT NULL,
  `course_end_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_titles`
--

CREATE TABLE `certificate_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_titles`
--

INSERT INTO `certificate_titles` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Verify Your Certificate', '202309200702pexels-negative-space-34632.jpg', '2023-09-20 01:02:18', '2023-09-20 01:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Quail Clay', 'leluz@mailinator.com', '+1 (222) 252-4726', 'Modi minus aliquid e', '2023-09-20 04:33:11', '2023-09-20 04:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `student` varchar(255) DEFAULT NULL,
  `instructor_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cat_id`, `image`, `title`, `description`, `time`, `fee`, `student`, `instructor_name`, `icon`, `created_at`, `updated_at`) VALUES
(1, '4', '202309200651pexels-negative-space-34632.jpg', 'Life Skill English spoken course', '<span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(239, 242, 247);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</span>', '16:14', '5000', NULL, NULL, '202309200600working.png', '2023-09-20 00:00:12', '2023-09-20 01:11:53'),
(2, '4', '202309200652pexels-joaquin-carfagna-18111560.jpg', 'Life Skill English spoken course', '<p><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(239, 242, 247);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</span><br></p>', '12:51', '5000', NULL, NULL, '202309200652working.png', '2023-09-20 00:52:12', '2023-09-20 01:12:14'),
(3, '4', '202309200652pexels-luciann-photography-3566191.jpg', 'Life Skill English spoken course', '<p><span style=\"color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(239, 242, 247);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</span><br></p>', '12:52', '4000', NULL, NULL, '202309200652working.png', '2023-09-20 00:52:45', '2023-09-20 01:14:01'),
(4, '1', '202309200706pexels-negative-space-34632.jpg', 'suraka@mailinator.com', 'hrtyhsrthhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '10:08', '51', NULL, NULL, '202309200706belal.png', '2023-09-20 01:06:39', '2023-09-20 01:13:34'),
(5, '4', '202309200707alexandre-van-thuan-mr9FouttLGY-unsplash (1).jpg', 'rary@mailinator.com', '<span style=\"color: rgb(238, 238, 238); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.48px; background-color: rgb(1, 41, 73);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse..</span>', '18:56', '85', NULL, NULL, '202309200707working.png', '2023-09-20 01:07:17', '2023-09-20 01:12:01'),
(6, '4', '202309200707pexels-negative-space-34632.jpg', 'bobaf@mailinator.com', '<span style=\"color: rgb(238, 238, 238); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.48px; background-color: rgb(1, 41, 73);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse..</span>', '00:51', '53', NULL, NULL, '202309200707working.png', '2023-09-20 01:07:45', '2023-09-20 01:13:48'),
(7, '4', '202309200708pexels-bryce-carithers-11823038.jpg', 'befa@mailinator.com', '<span style=\"color: rgb(238, 238, 238); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.48px; background-color: rgb(1, 41, 73);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse..</span>', '22:57', '14', NULL, NULL, '202309200708belal.png', '2023-09-20 01:08:53', '2023-09-20 01:11:45'),
(8, '4', '202309200709pexels-negative-space-34632.jpg', 'dyqon@mailinator.com', '<span style=\"color: rgb(238, 238, 238); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.48px; background-color: rgb(1, 41, 73);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse..</span>', '05:53', '24', NULL, 'sojyjohysy@mailinator.com', '202309200709belal.png', '2023-09-20 01:09:39', '2023-09-20 01:09:39'),
(9, '4', '202309200710pexels-james-wheeler-2769072.jpg', 'tinyruzyd@mailinator.com', '<span style=\"color: rgb(238, 238, 238); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.48px; background-color: rgb(1, 41, 73);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse..</span>', '18:13', '94', NULL, NULL, '202309200710belal.png', '2023-09-20 01:10:18', '2023-09-20 01:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Speaking', 'Speaking', '2023-09-19 23:57:41', '2023-09-20 01:13:14'),
(2, 'IELTS Spoken', 'IELTS Spoken', '2023-09-20 00:49:07', '2023-09-20 01:04:06'),
(3, 'English Spoken', 'English Spoken', '2023-09-20 00:49:13', '2023-09-20 00:49:13'),
(4, 'Listening', 'Listening', '2023-09-20 01:04:37', '2023-09-20 01:04:37'),
(5, 'Writting', 'Writting', '2023-09-20 01:04:45', '2023-09-20 01:04:45'),
(6, 'aaaaaa', 'aaaaaa', '2023-09-20 01:04:56', '2023-09-20 01:04:56'),
(7, 'bbbbbbbb', 'bbbbbbbb', '2023-09-20 01:05:01', '2023-09-20 01:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `course_headers`
--

CREATE TABLE `course_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_headers`
--

INSERT INTO `course_headers` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'our popular course', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '202309200641alexandre-van-thuan-mr9FouttLGY-unsplash (1).jpg', '2023-09-20 00:38:54', '2023-09-20 00:41:52');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_id`, `image`, `created_at`, `updated_at`) VALUES
(1, '3', '202309200701pexels-negative-space-34632.jpg', '2023-09-20 01:01:00', '2023-09-20 01:01:00'),
(2, '2', '202309200701pexels-luciann-photography-3566191.jpg', '2023-09-20 01:01:08', '2023-09-20 01:01:08'),
(3, '1', '202309200701pexels-joaquin-carfagna-18111560.jpg', '2023-09-20 01:01:19', '2023-09-20 01:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Student', '2023-09-20 01:00:33', '2023-09-20 01:00:33'),
(2, 'Student', '2023-09-20 01:00:43', '2023-09-20 01:00:43'),
(3, 'Student', '2023-09-20 01:00:51', '2023-09-20 01:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_titles`
--

CREATE TABLE `gallery_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_titles`
--

INSERT INTO `gallery_titles` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'OUR GALLERY', '202309200659pexels-negative-space-34632.jpg', '2023-09-20 00:59:24', '2023-09-20 00:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `home_abouts`
--

CREATE TABLE `home_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_abouts`
--

INSERT INTO `home_abouts` (`id`, `title`, `sub_title`, `description`, `video`, `image`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'Hexa\'s Gobindaganj is one of the best IELTS center.', 'We are working in English language and computer education through a total of 14 campuses in Sylhet and Moulvibazar districts with the great objective of creating skilled human resources. We have Cambridge certified faculty and state-of the-art course materials. HEXA\'S EDUCATION received top performer award by British Council in IELTS course training in Bangladesh.', 'Know More', '202309200542istockphoto-1472007817-612x612.jpg', '2023-09-19 23:42:16', '2023-09-19 23:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `home_apps`
--

CREATE TABLE `home_apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `app_store` varchar(255) DEFAULT NULL,
  `google_play` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_apps`
--

INSERT INTO `home_apps` (`id`, `title`, `sub_title`, `description`, `app_store`, `google_play`, `image`, `created_at`, `updated_at`) VALUES
(1, 'DOWNLOAD APP', 'Hexa\'s Best English Solution Makes Your Better Skills', 'Nam ut hendrerit leo. Aenean vel ipsum nunc. Curabitur in tellus vitae nisi aliquet dapibus non et erat. Pellentesque porta sapien non accumsan dignissim curabitur sagittis nulla sit Pellentesque amet dolor feugiat.', 'App Store', 'GOOGLE PLAY', '202309200617istockphoto-1472007817-612x612.jpg', '2023-09-20 00:17:41', '2023-09-20 00:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `home_chooses`
--

CREATE TABLE `home_chooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `icon` varchar(255) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_1` varchar(255) NOT NULL,
  `icon_title_1` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_chooses`
--

INSERT INTO `home_chooses` (`id`, `title`, `description`, `icon`, `icon_title`, `icon_1`, `icon_title_1`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Why choose Heax\'s Gobindaganj?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '202309200553icon-1.jpg', 'Best Education', '202309200553icon-2.jpg', 'Top IELTS Center', '202309200553istockphoto-1595746023-612x612.jpg', '2023-09-19 23:53:44', '2023-09-19 23:53:44');

-- --------------------------------------------------------

--
-- Table structure for table `home_headers`
--

CREATE TABLE `home_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_headers`
--

INSERT INTO `home_headers` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(3, 'BEST ENGLISH IELTES', 'ENGLISH EDUCATION OF MANAGEMENT', '202309200532pexels-negative-space-34632.jpg', '2023-09-19 09:56:36', '2023-09-19 23:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `home_offer_contents`
--

CREATE TABLE `home_offer_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_offer_contents`
--

INSERT INTO `home_offer_contents` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ALL COURSE', 'Lorem ipsum dolor sit amet, cons ectetur adipiscing elit, sed do eius mod tempor incididunt', '202309200544working.png', '2023-09-19 23:44:31', '2023-09-19 23:44:31'),
(2, 'VIRTUAL CLASS', 'Lorem ipsum dolor sit amet, cons ectetur adipiscing elit, sed do eius mod tempor incididunt', '202309200550working.png', '2023-09-19 23:50:00', '2023-09-19 23:50:00'),
(3, 'REAL MEETING', 'Lorem ipsum dolor sit amet, cons ectetur adipiscing elit, sed do eius mod tempor incididunt', '202309200550working.png', '2023-09-19 23:50:21', '2023-09-19 23:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `home_offer_titles`
--

CREATE TABLE `home_offer_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_offer_titles`
--

INSERT INTO `home_offer_titles` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'What We Offer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', '2023-09-19 23:43:49', '2023-09-19 23:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonial_contents`
--

CREATE TABLE `home_testimonial_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_testimonial_contents`
--

INSERT INTO `home_testimonial_contents` (`id`, `description`, `name`, `position`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, con sectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'sayem', 'IELTS', '202309200620belal.png', '2023-09-20 00:20:38', '2023-09-20 00:20:38'),
(2, 'Lorem ipsum dolor sit amet, con sectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'sayem', 'IELTS', '202309200621belal.png', '2023-09-20 00:21:28', '2023-09-20 00:21:28'),
(3, 'Lorem ipsum dolor sit amet, con sectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'sunny', 'IELTS', '202309200622belal.png', '2023-09-20 00:22:01', '2023-09-20 00:22:01'),
(4, 'Lorem ipsum dolor sit amet, con sectetur adipiscing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Farhan', 'IELTS', '202309200622belal.png', '2023-09-20 00:22:34', '2023-09-20 00:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonial_titles`
--

CREATE TABLE `home_testimonial_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_testimonial_titles`
--

INSERT INTO `home_testimonial_titles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Some of Our Happy Student Saying', '2023-09-20 00:19:34', '2023-09-20 00:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `home_trainers`
--

CREATE TABLE `home_trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `name_1` varchar(255) NOT NULL,
  `fb_1` varchar(255) NOT NULL,
  `image_1` varchar(255) NOT NULL,
  `name_2` varchar(255) NOT NULL,
  `fb_2` varchar(255) NOT NULL,
  `image_2` varchar(255) NOT NULL,
  `name_3` varchar(255) NOT NULL,
  `fb_3` varchar(255) NOT NULL,
  `image_3` varchar(255) NOT NULL,
  `name_4` varchar(255) NOT NULL,
  `fb_4` varchar(255) NOT NULL,
  `image_4` varchar(255) NOT NULL,
  `name_5` varchar(255) NOT NULL,
  `fb_5` varchar(255) NOT NULL,
  `image_5` varchar(255) NOT NULL,
  `name_6` varchar(255) NOT NULL,
  `fb_6` varchar(255) NOT NULL,
  `image_6` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_05_083942_create_home_headers_table', 1),
(7, '2023_05_05_113155_create_home_abouts_table', 1),
(8, '2023_05_05_145727_create_home_offer_titles_table', 1),
(9, '2023_05_05_154047_create_home_offer_contents_table', 1),
(10, '2023_05_05_161427_create_home_chooses_table', 1),
(11, '2023_05_05_170755_create_home_apps_table', 1),
(12, '2023_05_05_185756_create_home_testimonial_titles_table', 1),
(13, '2023_05_05_185814_create_home_testimonial_contents_table', 1),
(14, '2023_05_06_061434_create_home_trainers_table', 1),
(15, '2023_05_06_072250_create_about_headers_table', 1),
(16, '2023_05_06_072309_create_about_services_table', 1),
(17, '2023_05_06_091824_create_about_progresses_table', 1),
(18, '2023_05_06_095356_create_team_headers_table', 1),
(19, '2023_05_06_095406_create_team_members_table', 1),
(20, '2023_05_06_110139_create_course_headers_table', 1),
(21, '2023_05_06_111927_create_courses_table', 1),
(22, '2023_05_06_121213_create_course_categories_table', 1),
(23, '2023_05_06_130441_create_site_settings_table', 1),
(24, '2023_05_21_110514_create_best_students_table', 1),
(25, '2023_05_21_112345_create_gallery_titles_table', 1),
(26, '2023_05_21_114519_create_gallery_categories_table', 1),
(27, '2023_05_21_114733_create_galleries_table', 1),
(28, '2023_05_21_121730_create_certificate_titles_table', 1),
(29, '2023_05_21_121736_create_certificates_table', 1),
(30, '2023_05_22_051150_create_blog_categories_table', 1),
(31, '2023_05_22_051203_create_blog_posts_table', 1),
(32, '2023_05_23_005533_create_blog_headers_table', 1),
(33, '2023_06_10_093727_create_comments_table', 1),
(34, '2023_06_10_112136_create_contacts_table', 1),
(35, '2023_06_10_121813_create_admissions_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `social_1` varchar(255) DEFAULT NULL,
  `social_2` varchar(255) DEFAULT NULL,
  `social_3` varchar(255) DEFAULT NULL,
  `copy` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone`, `email`, `address`, `description`, `social_1`, `social_2`, `social_3`, `copy`, `created_at`, `updated_at`) VALUES
(1, '202309200629logo.png', '1 716-344-2883', 'sunny7852@gmail.com', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse..', 'Facebook', 'Twitter', 'INSTAGRAM', 'Developed By Opstel IT © 2023', '2023-09-20 00:29:07', '2023-09-20 00:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `team_headers`
--

CREATE TABLE `team_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_headers`
--

INSERT INTO `team_headers` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Meet The Team Our Professionals', '202309200654img.png', '2023-09-20 00:53:31', '2023-09-20 00:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `social_1` varchar(255) DEFAULT NULL,
  `social_2` varchar(255) DEFAULT NULL,
  `social_3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `image`, `name`, `position`, `description`, `social_1`, `social_2`, `social_3`, `created_at`, `updated_at`) VALUES
(1, '202309200655belal.png', 'sunny', 'Backend Developer', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'FACEBOOK', 'FACEBOOK WHATSAPP', 'INSTAGRAM', '2023-09-20 00:55:28', '2023-09-20 00:55:28'),
(2, '202309200656belal.png', 'Farhan', 'Backend Developer', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Facebook', 'WHATSAPP', 'INSTAGRAM', '2023-09-20 00:56:04', '2023-09-20 00:56:04'),
(3, '202309200656belal.png', 'Tayef', 'Backend Developer', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Facebook', 'WHATSAPP', 'INSTAGRAM', '2023-09-20 00:56:43', '2023-09-20 00:56:43');

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
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'sayem7878@gmail.com', NULL, '$2y$10$cbRrrQ7cALUmaKqta1Wo3Oc7XBjgxrl45UkAOkFJxijp5.Myg6xsO', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_headers`
--
ALTER TABLE `about_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_progresses`
--
ALTER TABLE `about_progresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_services`
--
ALTER TABLE `about_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_students`
--
ALTER TABLE `best_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_headers`
--
ALTER TABLE `blog_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate_titles`
--
ALTER TABLE `certificate_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_headers`
--
ALTER TABLE `course_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_titles`
--
ALTER TABLE `gallery_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_abouts`
--
ALTER TABLE `home_abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_apps`
--
ALTER TABLE `home_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_chooses`
--
ALTER TABLE `home_chooses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_headers`
--
ALTER TABLE `home_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_offer_contents`
--
ALTER TABLE `home_offer_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_offer_titles`
--
ALTER TABLE `home_offer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_testimonial_contents`
--
ALTER TABLE `home_testimonial_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_testimonial_titles`
--
ALTER TABLE `home_testimonial_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_trainers`
--
ALTER TABLE `home_trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_headers`
--
ALTER TABLE `team_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about_headers`
--
ALTER TABLE `about_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_progresses`
--
ALTER TABLE `about_progresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `about_services`
--
ALTER TABLE `about_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `best_students`
--
ALTER TABLE `best_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_headers`
--
ALTER TABLE `blog_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_titles`
--
ALTER TABLE `certificate_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_headers`
--
ALTER TABLE `course_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_titles`
--
ALTER TABLE `gallery_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_abouts`
--
ALTER TABLE `home_abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_apps`
--
ALTER TABLE `home_apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_chooses`
--
ALTER TABLE `home_chooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_headers`
--
ALTER TABLE `home_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_offer_contents`
--
ALTER TABLE `home_offer_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_offer_titles`
--
ALTER TABLE `home_offer_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_testimonial_contents`
--
ALTER TABLE `home_testimonial_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_testimonial_titles`
--
ALTER TABLE `home_testimonial_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_trainers`
--
ALTER TABLE `home_trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_headers`
--
ALTER TABLE `team_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
