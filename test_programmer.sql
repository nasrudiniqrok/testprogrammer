-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 13.47
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_programmer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kategories`
--

CREATE TABLE `kategories` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategories`
--

INSERT INTO `kategories` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'L QUEENLY', '2023-12-19 22:03:52', '2023-12-19 22:03:52'),
(2, 'L MTH AKSESORIS (IM)', '2023-12-19 22:04:58', '2023-12-19 22:04:58'),
(3, 'L MTH TABUNG (LK)', '2023-12-19 22:04:58', '2023-12-19 22:04:58'),
(4, 'SP MTH SPAREPART (LK)', '2023-12-19 22:04:58', '2023-12-19 22:04:58'),
(5, 'CI MTH TINTA LAIN (IM)', '2023-12-19 22:04:58', '2023-12-19 22:04:58'),
(6, 'S MTH STEMPEL (IM)', '2023-12-19 22:04:58', '2023-12-19 22:04:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_17_182420_create_kategories_table', 1),
(6, '2023_12_17_182610_create_status_table', 1),
(7, '2023_12_17_184028_create_produks_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id_produk`, `nama_produk`, `harga`, `kategori_id`, `status_id`, `created_at`, `updated_at`) VALUES
(6, 'ALCOHOL GEL POLISH CLEANSER GP-CLN01', 12500, 1, 1, '2023-12-19 22:22:23', '2023-12-19 22:22:23'),
(9, 'ALUMUNIUM FOIL ALL IN ONE BULAT 23mm IM\r\n', 1000, 2, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(11, 'ALUMUNIUM FOIL ALL IN ONE BULAT 30mm IM', 1000, 2, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(12, 'ALUMUNIUM FOIL ALL IN ONE SHEET 250mm IM', 12500, 2, 1, '2023-12-19 22:56:45', '2023-12-19 22:56:45'),
(15, 'ALUMUNIUM FOIL HDPE/PE BULAT 23mm IM', 12500, 2, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(17, 'ALUMUNIUM FOIL HDPE/PE BULAT 30mm IM', 1000, 2, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(18, 'ALUMUNIUM FOIL HDPE/PE SHEET 250mm IM', 13000, 2, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(19, 'ALUMUNIUM FOIL PET SHEET 250mm IM', 1000, 2, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(22, 'ARM PENDEK MODEL U', 13000, 2, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(23, 'ARM SUPPORT KECIL', 13000, 3, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(24, 'ARM SUPPORT KOTAK PUTIH', 13000, 2, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(26, 'ARM SUPPORT PENDEK POLOS', 13000, 3, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(27, 'ARM SUPPORT S IM', 1000, 2, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(28, 'ARM SUPPORT T (IMPORT)', 13000, 2, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(29, 'ARM SUPPORT T - MODEL 1 ( LOKAL )', 10000, 3, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(50, 'BLACK LASER TONER FP-T3 (100gr)', 13000, 2, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(56, 'BODY PRINTER CANON IP2770', 500, 4, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(58, 'BODY PRINTER T13X', 15000, 4, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(59, 'BOTOL 1000ML BLUE KHUSUS UNTUK EPSON R1800/R800 - 4180 IM (T054920)', 10000, 5, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(60, 'BOTOL 1000ML CYAN KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4120 IM (T054220)', 10000, 5, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(61, 'BOTOL 1000ML GLOSS OPTIMIZER KHUSUS UNTUK EPSON R1800/R800/R1900/R2000/IX7000/MG6170 - 4100 IM (T054', 1500, 5, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(62, 'BOTOL 1000ML L.LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0599 IM', 1500, 5, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(63, 'BOTOL 1000ML LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0597 IM', 1500, 5, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(64, 'BOTOL 1000ML MAGENTA KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4140 IM (T054320)', 1000, 5, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(65, 'BOTOL 1000ML MATTE BLACK KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 3503 IM (T054820)', 1500, 5, 2, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(66, 'BOTOL 1000ML ORANGE KHUSUS UNTUK EPSON R1900/R2000 IM - 4190 (T087920)', 1500, 5, 1, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(67, 'BOTOL 1000ML RED KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4170 IM (T054720)', 10000, 5, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(68, 'BOTOL 1000ML YELLOW KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4160 IM (T054420)', 1500, 5, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(70, 'BOTOL KOTAK 100ML LK', 1000, 2, 1, '2023-12-19 22:24:31', '2023-12-19 22:24:31'),
(71, 'BOTOL 10ML IM', 1000, 6, 2, '2023-12-18 22:10:50', '2023-12-18 22:10:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` bigint(20) UNSIGNED NOT NULL,
  `nama_status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `nama_status`, `created_at`, `updated_at`) VALUES
(1, 'bisa dijual', '2023-12-18 22:10:50', '2023-12-18 22:10:50'),
(2, 'tidak bisa dijual', '2023-12-18 22:10:50', '2023-12-18 22:10:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategories`
--
ALTER TABLE `kategories`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `produks_kategori_id_foreign` (`kategori_id`),
  ADD KEY `produks_status_id_foreign` (`status_id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategories`
--
ALTER TABLE `kategories`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id_produk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produks_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategories` (`id_kategori`) ON DELETE CASCADE,
  ADD CONSTRAINT `produks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id_status`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
