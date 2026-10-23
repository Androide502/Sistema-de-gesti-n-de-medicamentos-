-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2026 at 07:11 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediuni_control`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `expiration_date` date NOT NULL,
  `lot_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `category`, `stock`, `expiration_date`, `lot_number`, `created_at`) VALUES
(1, 'Paracetamol 500mg', 'Analgésico / Antipirético', 25, '2027-05-15', 'LOTE-2026-A', '2026-10-23 19:01:16'),
(2, 'Ibuprofeno 400mg', 'Antiinflamatorio', 4, '2026-10-26', 'LOTE-2026-B', '2026-10-23 19:01:16'),
(3, 'Amoxicilina 500mg', 'Antibiótico', 12, '2026-10-20', 'LOTE-2025-C', '2026-10-23 19:01:16'),
(4, 'Omeprazol 20mg', 'Protector Gástrico', 30, '2027-11-30', 'LOTE-2026-D', '2026-10-23 19:01:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
