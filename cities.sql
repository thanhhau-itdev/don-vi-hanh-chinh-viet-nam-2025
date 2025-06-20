-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2025 at 04:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dronediy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `slug`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'An Giang', 'an-giang', 'Kiên Giang, An Giang', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(2, 'Bắc Ninh', 'bac-ninh', 'Bắc Giang, Bắc Ninh', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(3, 'Cà Mau', 'ca-mau', 'Bạc Liêu, Cà Mau', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(4, 'Cao Bằng', 'cao-bang', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(5, 'Cần Thơ', 'can-tho', 'Sóc Trăng, Hậu Giang, TP. Cần Thơ', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(6, 'Đà Nẵng', 'da-nang', 'Quảng Nam, TP. Đà Nẵng', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(7, 'Đắk Lắk', 'dak-lak', 'Phú Yên, Đắk Lắk', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(8, 'Điện Biên', 'dien-bien', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(9, 'Đồng Nai', 'dong-nai', 'Bình Phước, Đồng Nai', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(10, 'Đồng Tháp', 'dong-thap', 'Tiền Giang, Đồng Tháp', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(11, 'Gia Lai', 'gia-lai', 'Gia Lai, Bình Định', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(12, 'Hà Nội', 'ha-noi', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(13, 'Hà Tĩnh', 'ha-tinh', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(14, 'Hải Phòng', 'hai-phong', 'Hải Dương, TP. Hải Phòng', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(15, 'Huế', 'hue', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(16, 'Hưng Yên', 'hung-yen', 'Thái Bình, Hưng Yên', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(17, 'Khánh Hòa', 'khanh-hoa', 'Khánh Hòa, Ninh Thuận', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(18, 'Lai Châu', 'lai-chau', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(19, 'Lạng Sơn', 'lang-son', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(20, 'Lào Cai', 'lao-cai', 'Lào Cai, Yên Bái', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(21, 'Lâm Đồng', 'lam-dong', 'Đắk Nông, Lâm Đồng, Bình Thuận', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(22, 'Nghệ An', 'nghe-an', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(23, 'Ninh Bình', 'ninh-binh', 'Hà Nam, Ninh Bình, Nam Định', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(24, 'Phú Thọ', 'phu-tho', 'Hòa Bình, Vĩnh Phúc, Phú Thọ', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(25, 'Quảng Ngãi', 'quang-ngai', 'Quảng Ngãi, Kon Tum', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(26, 'Quảng Ninh', 'quang-ninh', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(27, 'Quảng Trị', 'quang-tri', 'Quảng Bình, Quảng Trị', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(28, 'Sơn La', 'son-la', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(29, 'Tây Ninh', 'tay-ninh', 'Long An, Tây Ninh', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(30, 'Thái Nguyên', 'thai-nguyen', 'Bắc Kạn, Thái Nguyên', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(31, 'Thanh Hóa', 'thanh-hoa', NULL, NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(32, 'TP HCM', 'tp-hcm', 'Bình Dương, TPHCM, Bà Rịa - Vũng Tàu', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(33, 'Tuyên Quang', 'tuyen-quang', 'Hà Giang, Tuyên Quang', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55'),
(34, 'Vĩnh Long', 'vinh-long', 'Bến Tre, Vĩnh Long, Trà Vinh', NULL, '2025-06-20 16:08:55', '2025-06-20 16:08:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
