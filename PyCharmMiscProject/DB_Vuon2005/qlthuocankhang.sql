-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 05:20 AM
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
-- Database: `qlthuocankhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(100) NOT NULL,
  `mo_ta` text DEFAULT NULL,
  `trang_thai` tinyint(4) DEFAULT 1,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten_danh_muc`, `mo_ta`, `trang_thai`, `ngay_tao`) VALUES
(1, 'Hot Sale', NULL, 1, '2025-11-04 02:59:03'),
(2, 'Thuốc', NULL, 1, '2025-11-04 02:59:03'),
(3, 'Thực phẩm chức năng', NULL, 1, '2025-11-04 02:59:03'),
(4, 'Thiết bị y tế', NULL, 1, '2025-11-04 02:59:03'),
(5, 'Dược mỹ phẩm', NULL, 1, '2025-11-04 02:59:03'),
(6, 'Chăm sóc cá nhân', NULL, 1, '2025-11-04 02:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `gia_goc` decimal(10,2) NOT NULL,
  `gia_ban` decimal(10,2) NOT NULL,
  `phan_tram_giam` int(11) DEFAULT 0,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `so_luong_ton` int(11) DEFAULT 0,
  `danhmuc_id` int(11) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `trang_thai` tinyint(4) DEFAULT 1,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_san_pham`, `gia_goc`, `gia_ban`, `phan_tram_giam`, `hinh_anh`, `so_luong_ton`, `danhmuc_id`, `mo_ta`, `trang_thai`, `ngay_tao`) VALUES
(1, 'Nước tẩy trang Bioderma Sensibio', 535000.00, 398750.00, 25, 'bioderma.jpg', 0, 1, NULL, 1, '2025-11-04 02:59:03'),
(2, 'Tăm chỉ nha khoa Okamura 734503', 22000.00, 18000.00, 18, 'okamura.jpg', 0, 6, NULL, 1, '2025-11-04 02:59:03'),
(3, 'Nước súc miệng Listerine Cool Mint', 169000.00, 81000.00, 52, 'listerine.jpg', 0, 6, NULL, 1, '2025-11-04 02:59:03'),
(4, 'Nước yến Collagen Green Bird Nutrient', 30000.00, 22500.00, 25, 'greenbird.jpg', 0, 3, NULL, 1, '2025-11-04 02:59:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
