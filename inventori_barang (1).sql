-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2026 pada 07.28
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(6, 'K001', 'Fashion'),
(9, 'K004', 'Elektronik'),
(10, 'K005', 'Perlengkapan Olahraga'),
(11, 'K006', 'Peralatan Dapur'),
(12, 'K007', 'Perabot Rumah Tangga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 6, 'P001', 'Jaket Tracktop Adidas Hitam', 10, 5, 1000000, 'b3f7ddf52e963b47807df0a9c0ff53f4.png', '2026-05-16 12:01:13', NULL),
(2, 6, 'P002', 'Nike Dunk University Red', 10, 3, 2000000, '1a8d940d73b04ae7d4100eeb655a66b0.png', '2026-05-28 15:54:58', NULL),
(3, 6, 'P003', 'Nike Dunk Low SP White/Red', 11, 5, 2569999, '5d67c96e94d37786931947f56ba7eb71.png', '2026-05-28 15:57:28', NULL),
(4, 6, 'P004', 'Nike SB Air Jordan 1 UNC Low', 12, 7, 2299999, 'cd180af005fe3c9a1d561903366451a2.png', '2026-05-28 16:01:17', NULL),
(13, 9, 'P013', 'Iphone 14 Pro Max Gold Mockup', 10, 4, 19499000, '70e8409c538f43e09b06fc2dd3ef5cce.png', '2026-05-29 14:04:49', NULL),
(14, 9, 'P014', 'Apple Iphone 15', 15, 10, 12998999, '611a3b6fb40aa0b44c39991609612220.png', '2026-05-29 14:07:40', NULL),
(15, 9, 'P015', 'Apple Iphone 16', 15, 10, 16999000, '4613de9bae012fdfe7bb59edd7eb20a2.png', '2026-05-29 14:10:01', NULL),
(16, 9, 'P016', 'Apple Iphone 17 Pro', 10, 5, 24999000, 'f9979e77223935dfeb4af6cc115a2b83.png', '2026-05-29 14:12:41', NULL),
(17, 10, 'P017', 'Nike Air Zoom Mercurial Superfly', 10, 5, 4300000, 'b7e5e84c7800864500e15188fd7607cf.png', '2026-05-29 14:18:17', NULL),
(18, 10, 'P018', 'Adidas X Speedportal', 3, 4, 3500000, '538096963178accb03875a3839f1b3bc.png', '2026-05-29 14:20:29', NULL),
(19, 10, 'P019', 'Adidas X Crazyfast Elite SG', 10, 4, 3650000, '67f9738df697b8950c9426e6e152320f.png', '2026-05-29 14:22:22', NULL),
(20, 10, 'P020', 'Adidas F50 Elite FG', 10, 5, 6000000, '38259c84f0073cff062a0b56b98d2b33.png', '2026-05-29 14:24:34', NULL),
(21, 11, 'P021', 'Talenan Kayu', 30, 20, 25000, '38cdfaed2a9324459f3ec97dced45d81.png', '2026-05-31 12:16:14', NULL),
(22, 11, 'P022', 'Pisau', 40, 15, 30000, 'bbd5d482c89f7d2824f6f22014692968.png', '2026-05-31 12:17:38', NULL),
(23, 11, 'P023', 'Kompor', 19, 15, 359000, 'a47d0456454e537505a06e9a8bfae9d3.png', '2026-05-31 12:19:53', NULL),
(24, 11, 'P024', 'Panci', 47, 38, 140000, 'c7383a28f4c6d6df668bb5b94d9e0e8f.png', '2026-05-31 12:21:14', NULL),
(25, 12, 'P025', 'Sapu', 50, 30, 15000, 'bcffc8da63cb9f3791d00c00ac772475.png', '2026-05-31 12:23:28', NULL),
(26, 12, 'P026', 'Setrika Uap', 35, 20, 502000, 'c8567b9ba858ce5c053a3f2d841c4d47.png', '2026-05-31 12:24:58', NULL),
(27, 12, 'P027', 'Bak Air', 50, 40, 20000, '427dc5c3264f98d857ecc277dd30ddd8.png', '2026-05-31 12:26:16', NULL),
(28, 12, 'P028', 'Vacuum Cleaner', 15, 10, 650000, '42f178e03fdbff56a7a15c62755112e3.png', '2026-05-31 12:27:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 1, 'ADD', 5, 10, 15, '', '2026-05-16 12:02:15', 0),
(2, 1, 'REDUCE', -5, 15, 20, '', '2026-05-16 12:02:36', 0),
(3, 1, 'REDUCE', 10, 20, 10, '', '2026-05-28 14:39:18', 2),
(4, 2, 'ADD', 5, 5, 10, '', '2026-06-02 02:23:14', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(2, 'mahen', 'mahendrafathir9@gmail.com', '$2y$10$GwqgsZK2BIyqlubQ8n0z2.5MsdI5J..oipTiUKKyDmRr.mtd5WYRG', 'admin', 1, '2026-05-25 04:49:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
