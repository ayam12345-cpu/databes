-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2025 at 05:36 AM
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
-- Database: `ukk_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_penjualan`
--

CREATE TABLE `tb_detail_penjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` varchar(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `SubTotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detail_penjualan`
--

INSERT INTO `tb_detail_penjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `SubTotal`) VALUES
(1, '20241128800', 3, 333, 29928708.00),
(2, '20241128888', 4, 4, 120.00),
(3, '20241128888', 4, 4, 120.00),
(4, '20241128888', 4, 3, 90.00),
(5, '20241128888', 4, 3, 90.00),
(6, '20241128888', 4, 4, 120.00),
(7, '20241129888', 4, 22, 660.00),
(8, '20241129888', 4, 33, 990.00),
(9, '20241129888', 3, 1, 89876.00),
(10, '20241129888', 3, 2, 20000.00),
(11, '20241129988', 3, 3, 30000.00),
(12, '20241129998', 4, 3, 135000.00),
(13, '20250113399', 5, 1, 1000.00),
(14, '20250113399', 5, 2, 0.00),
(15, '20250113399', 5, 1, 0.00),
(16, '20250113399', 5, 1, 0.00),
(17, '20250113888', 6, 2, 100000.00),
(18, '20250113388', 6, 1, 50000.00),
(19, '20250113388', 7, 2, 179752.00),
(20, '20250113388', 6, 1, 50000.00),
(21, '2501133891', 6, 1, 50000.00),
(22, '2501133891', 7, 3, 269628.00),
(23, '2501133891', 7, 4, 359504.00),
(24, '2501133892', 7, 6, 539256.00),
(25, '2501133893', 7, 5, 449380.00),
(31, '2501153895', 8, 10, 600000.00),
(32, '2501153896', 7, 1, 89876.00),
(33, '2501163897', 12, 5, 75000.00),
(34, '2501163897', 13, 5, 250000.00),
(35, '2501163898', 12, 3, 45000.00),
(36, '2501163898', 13, 5, 250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `NomerTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`PelangganID`, `NamaPelanggan`, `alamat`, `NomerTelepon`) VALUES
(16, 'aji', 'plumbon', '0899764563'),
(17, 'tomi', 'kalimati', '0988746563'),
(18, 'iyan', 'plumbon', '0998746632');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `PenjualanID` varchar(12) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`, `UserID`) VALUES
('20241128000', '2024-11-28', 0.00, 0, 1),
('20241128800', '2024-11-28', 0.00, 0, 1),
('20241128880', '2024-11-28', 0.00, 6, 1),
('20241128888', '2024-11-28', 0.00, 0, 1),
('20250113388', '0000-00-00', 0.00, 0, 1),
('20250113888', '0000-00-00', 0.00, 0, 1),
('2501133889', '0000-00-00', 0.00, 0, 1),
('2501133890', '0000-00-00', 0.00, 0, 1),
('2501133891', '2025-01-13', 679132.00, 0, 1),
('2501133892', '2025-01-13', 539256.00, 14, 1),
('2501133893', '2025-01-13', 449380.00, 14, 1),
('2501133894', '2025-01-13', 0.00, 0, 1),
('2501153895', '2025-01-15', 600000.00, 15, 1),
('2501153896', '2025-01-15', 89876.00, 0, 1),
('2501163897', '2025-01-16', 325000.00, 0, 1),
('2501163898', '2025-01-16', 295000.00, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(25) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`) VALUES
(12, 'sempak', 15000.00, 92),
(13, 'baju', 50000.00, 70),
(14, 'celana', 60000.00, 90),
(15, 'kutang', 40000.00, 80);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `UserID` int(11) NOT NULL,
  `NamaUser` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`UserID`, `NamaUser`, `username`, `password`, `role`) VALUES
(1, 'dani', 'dani', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(20, 'dapongs', 'dani', 'ec6a6536ca304edf844d1d248a4f08dc', 'Admin'),
(22, 'dapongs', 'dani', 'd41d8cd98f00b204e9800998ecf8427e', 'Admin'),
(27, 'danixxxx', 'dani', '827ccb0eea8a706c4c34a16891f84e7b', 'Petugas'),
(28, 'dapongxx', 'dapa', '00c66aaf5f2c3f49946f15c1ad2ea0d3', 'Petugas'),
(29, 'petugas', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'Petugas'),
(30, 'gas', 'gas', '827ccb0eea8a706c4c34a16891f84e7b', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail_penjualan`
--
ALTER TABLE `tb_detail_penjualan`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`PenjualanID`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail_penjualan`
--
ALTER TABLE `tb_detail_penjualan`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `ProdukID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
