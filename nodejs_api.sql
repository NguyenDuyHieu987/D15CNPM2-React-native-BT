-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 05:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `danh_muc` varchar(1000) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `image` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `danh_muc`, `color`, `price`, `image`) VALUES
(1, 'Iphone X', 'Iphone', 'Black', '30000000', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQCRBvSGz41mA5tniardBgHfApowf8bQAu3AZTJFalXPW7i2hBDyQA7zPtR7n6H&usqp=CAc'),
(2, 'Samsung S9', 'Samsung', 'White', '24000000', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSsaxFtrScCvdXDwjfcftklZ9c_KTH3wWftx_NlI7iH9shdcBmYUdcG9K6R8jSAHD7r-TGDSG2cmBcVPQSmiW3PRyR5fkwGZBXn&usqp=CAc'),
(3, 'Oppo F5', 'Oppo', 'Red', '7000000', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSOQ1bGUuhjCmB5cMB_wxRj-XApZxSdUzjhyixEy4huR6fsgvivdHYI6O7cHUkKTw&usqp=CAc'),
(4, 'Iphone 11', 'Iphone', 'Black', '10000000', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTAeTL8eOyawjIuAPTmlnncYA2HXy6zgD9tDCp_OmPfqBk3oyRXbvY3J_xbJmWK-susah-LtvocvCOwZpSWSDDTbQE5QUvb66t1&usqp=CAc'),
(5, 'Iphone 12', 'Iphone', 'Black', '12000000', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTwXwyBviK_yQN-ePQwNFIjiCSEg0zUkuvRJDLREUK8-Asy8C2SFrArhHot5qQc5Af3Nc_5hmViqZP9qI2n405kQxm5PEcdGS8m&usqp=CAc'),
(6, 'Iphone 13', 'Iphone', 'Black', '15000000', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSmZh8CjOug2Q25O0YizieLlAsJckVF-IC6Jf-M7_BzQOkJDwWo4UtYLKenC_FYV7w9TP0t-fqAKX4Qh6tzECkkcfQyufh2pj-mMg&usqp=CAc'),
(7, 'Iphone 14', 'Iphone', 'Black', '10000000', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSGHLkd7dH4DZNzfSBATKZd10dsn3VZF88d-AESTwcl9zNFBMMXutADx96AVdDoLSJ_5AfLlnQUlE5mC3K1B0mA6qLaG9zbvBQ&usqp=CAc'),
(8, 'Iphone 14 pro', 'Iphone', 'Black', '25000000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/t/_/t_m_13.png'),
(9, 'Iphone 14 pro max', 'Iphone', 'Black', '45000000', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSafizc0wHPO1a86oFoAVuqGU09-Z6L-qJfYswnJRVIDs5dKUP0DcBUPy5uTj2ETb5Y2K-jh0JCxepMJksDOyYAvUJ7OaseeCs&usqp=CAc'),
(10, 'Iphone 11 pro max', 'Iphone', 'Black', '10000000', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSafizc0wHPO1a86oFoAVuqGU09-Z6L-qJfYswnJRVIDs5dKUP0DcBUPy5uTj2ETb5Y2K-jh0JCxepMJksDOyYAvUJ7OaseeCs&usqp=CAc'),
(11, 'Iphone 12 mini', 'Iphone', 'Black', '13000000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/3/_/3_224_1.jpg'),
(12, 'Samsung a52', 'Samsung', 'Black', '17000000', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQRwRYI_pW7LqZj3aGBtF_s6Rkej2atpG6Bwcl0kDF3j_njpvgfu45rWG_ZJ2kP&usqp=CAc'),
(13, 'Samsung a50', 'Samsung', 'Blue', '2000000', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSZa1nTEshGDtVnbX7yaFRIbSZUoPkADctVotz_EHd-k3cYaaAWFb6Szx6H5aqfnQIoF-_SRo4wyw74jX0NgTUS23zgZO41Hp8&usqp=CAc'),
(14, 'Samsung note 9', 'Samsung', 'Black', '17000000', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ8IpxED_uAx8bq4FxxgBDf12zd9hegVfyaFW77C2AvT8L7yVS7AI9lfFD_zdvzTUawysJGE1Vtk0Xrk2uVmdvzLyhn4JS4f8g&usqp=CAc'),
(15, 'Samsung galaxy zplip 1', 'Samsung', 'Black', '17000000', ''),
(16, 'Samsung galaxy zplip 2', 'Samsung', 'Black', '17000000', ''),
(17, 'Samsung galaxy zplip 3', 'Samsung', 'Black', '17000000', ''),
(18, 'Samsung galaxy s22 ultra', 'Samsung', 'Black', '17000000', ''),
(19, 'Samsung A03', 'Samsung', 'Black', '17000000', ''),
(20, 'Samsung galaxy s22', 'Samsung', 'Black', '17000000', ''),
(21, 'Samsung galaxy s21 5g', 'Samsung', 'Black', '17000000', ''),
(22, 'Oppo reno 6z', 'Oppo', 'Blue', '17000000', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS0eYCwcZQP8bCIM42ZAXBkrbc2nHY7tD7_WaZB2RQa9jm3k9bfnC1wLP0CnB9iFA&usqp=CAc'),
(23, 'Oppo reno 8', 'Oppo', 'Blue', '17000000', 'https://didonggiagoc.net/wp-content/uploads/2022/07/Ra-mat-Oppo-Reno-7Z-5G-camera-chup-anh-bat-trend-cho-gioi-tre-gsmarena_001-1646271960-452-width660height495.jpg'),
(24, 'Oppo reno 7z', 'Oppo', 'Black', '17000000', ''),
(25, 'Oppo find n', 'Oppo', 'Black', '17000000', ''),
(26, 'Oppo reno 5', 'Oppo', 'Black', '17000000', ''),
(27, 'Oppo a96', 'Oppo', 'Black', '17000000', ''),
(28, 'Oppo a55', 'Oppo', 'Black', '17000000', ''),
(29, 'Oppo a54', 'Oppo', 'Black', '17000000', ''),
(30, 'Oppo f21 pro', 'Oppo', 'Black', '17000000', ''),
(31, 'Oppo reno 8pro', 'Oppo', 'Black', '17000000', ''),
(32, 'Oppo a37', 'Oppo', 'Black', '17000000', ''),
(33, 'Oppo f9 pro', 'Oppo', 'Black', '17000000', ''),
(34, 'Oppo f9', 'Oppo', 'Black', '17000000', ''),
(35, 'Oppo a74', 'Oppo', 'Black', '17000000', ''),
(36, 'Oppo a9', 'Oppo', 'Black', '17000000', ''),
(37, 'Oppo reno 3', 'Oppo', 'Black', '17000000', ''),
(38, 'Oppo a16', 'Oppo', 'Black', '17000000', ''),
(39, 'Oppo k10', 'Oppo', 'Black', '17000000', ''),
(40, 'Oppo reno 6 5g', 'Oppo', 'Black', '17000000', ''),
(41, 'Iphone 8', 'Iphone', 'Black', '17000000', ''),
(42, 'Iphone 8 plus', 'Iphone', 'Black', '17000000', ''),
(43, 'Iphone 7', 'Iphone', 'Black', '17000000', ''),
(44, 'Iphone 7 plus', 'Iphone', 'Black', '17000000', ''),
(45, 'Iphone xr', 'Iphone', 'Black', '17000000', ''),
(46, 'Iphone xs', 'Iphone', 'Black', '17000000', ''),
(47, 'Iphone xs max', 'Iphone', 'Black', '17000000', ''),
(48, 'Iphone 11 pro', 'Iphone', 'Black', '17000000', ''),
(49, 'Iphone 13 pro', 'Iphone', 'Black', '17000000', ''),
(50, 'Iphone 13 pro max', 'Iphone', 'Black', '17000000', ''),
(51, 'Samsung a13', 'Samsung', 'Black', '17000000', ''),
(52, 'Samsung a50', 'Samsung', 'Black', '17000000', ''),
(53, 'Samsung m02', 'Samsung', 'Black', '17000000', ''),
(54, 'Samsung z fold 3', 'Samsung', 'Black', '17000000', ''),
(55, 'Samsung z fold 2', 'Samsung', 'Black', '17000000', ''),
(56, 'Samsung z fold 1', 'Samsung', 'Black', '17000000', ''),
(57, 'Samsung a51', 'Samsung', 'Black', '17000000', ''),
(58, 'Samsung a70', 'Samsung', 'Black', '17000000', ''),
(59, 'Samsung s10', 'Samsung', 'Black', '17000000', ''),
(60, 'Samsung galaxy zplip 4', 'Samsung', 'Black', '17000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(12) NOT NULL,
  `is_admin` tinyint(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `is_admin`) VALUES
(9, 'ddom6941@gmail.com', '123', 0),
(12, 'vaicut6941@gmail.com', '123', 0),
(13, 'nguyenngockimdung6941@gmail.com', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
