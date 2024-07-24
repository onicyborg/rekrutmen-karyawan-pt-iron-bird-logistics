-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Jul 2024 pada 08.48
-- Versi server: 10.11.7-MariaDB-cll-lve
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1571056_recruitment`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('Pria','Wanita') DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Protestan','Katolik','Hindu','Buddha','Konghucu','lainnya') DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status` enum('Menikah','Belum Menikah') DEFAULT NULL,
  `pendidikan_terakhir` enum('SD (Sekolah Dasar)','SMP (Sekolah Menengah Pertama)','SMA (Sekolah Menengah Atas) / SMK (Sekolah Menengah Kejuruan)','D1 (Diploma 1)','D2 (Diploma 2)','D3 (Diploma 3)','D4 (Diploma 4)','Sarjana (S1)','Magister (S2)','Doktor (S3)') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nomor_hp` varchar(255) DEFAULT NULL,
  `cv` text DEFAULT NULL,
  `ijazah` text DEFAULT NULL,
  `ktp` text DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `surat_pengalaman_kerja` text DEFAULT NULL,
  `surat_keterangan_sehat` text DEFAULT NULL,
  `skck` text DEFAULT NULL,
  `transkrip_nilai` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `status`, `pendidikan_terakhir`, `email`, `nomor_hp`, `cv`, `ijazah`, `ktp`, `foto`, `surat_pengalaman_kerja`, `surat_keterangan_sehat`, `skck`, `transkrip_nilai`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '7745777457500001', 'Pria', 'Jakarta', '1990-03-27', 'Islam', 'Yogyakarta', 'Belum Menikah', 'Sarjana (S1)', 'Galihas@gmail.com', '085542554522', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2024-06-27 04:11:29', '2024-06-28 04:35:25'),
(2, '112545887782554', 'Pria', 'Yogyakarta', '1990-11-07', 'Islam', 'Yogyakarta', 'Belum Menikah', 'Sarjana (S1)', 'galihas@gmail.com', '08575558854577', 'b6a11a13-89bc-4b73-83d6-772de5ee58fb.docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2024-06-28 04:40:53', '2024-06-28 04:41:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `devisi`
--

CREATE TABLE `devisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_devisi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `devisi`
--

INSERT INTO `devisi` (`id`, `nama_devisi`, `created_at`, `updated_at`) VALUES
(1, 'Sales', '2024-06-27 04:08:09', '2024-06-27 04:08:09'),
(2, 'Produksi', '2024-06-28 04:42:03', '2024-06-28 04:42:03'),
(3, 'Pengiriman', '2024-07-01 20:47:58', '2024-07-01 20:47:58'),
(4, 'Customer Service', '2024-07-02 05:58:35', '2024-07-02 05:58:35'),
(5, 'Operasional', '2024-07-03 00:16:56', '2024-07-03 00:17:08');

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
-- Struktur dari tabel `lamaran`
--

CREATE TABLE `lamaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_lamaran` enum('seleksi','wawancara','diterima','ditolak') NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `loker_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lamaran`
--

INSERT INTO `lamaran` (`id`, `status_lamaran`, `user_id`, `loker_id`, `created_at`, `updated_at`) VALUES
(1, 'wawancara', 2, 1, '2024-06-27 04:09:37', '2024-07-01 07:28:42'),
(2, 'seleksi', 3, 1, '2024-06-28 04:41:41', '2024-06-28 04:41:41'),
(3, 'seleksi', 5, 3, '2024-07-02 05:45:23', '2024-07-02 05:45:23'),
(4, 'seleksi', 2, 4, '2024-07-02 08:45:35', '2024-07-02 08:45:35'),
(5, 'seleksi', 6, 1, '2024-07-17 18:05:11', '2024-07-17 18:05:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loker`
--

CREATE TABLE `loker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('Open','Close') NOT NULL,
  `devisi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `loker`
--

INSERT INTO `loker` (`id`, `title`, `deskripsi`, `status`, `devisi_id`, `created_at`, `updated_at`) VALUES
(1, 'Sales Eksekutif', '<table style=\"border-collapse: collapse; width: 100%; height: 71.7083px;\" border=\"1\"><colgroup><col style=\"width: 16.6667%;\"><col style=\"width: 16.6667%;\"><col style=\"width: 16.6667%;\"><col style=\"width: 16.6667%;\"><col style=\"width: 16.6667%;\"><col style=\"width: 16.6667%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 35.8542px;\">\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 35.8542px;\">\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Open', 1, '2024-06-27 04:08:55', '2024-06-27 04:08:55'),
(2, 'Admin Produksi', '<p>Dibutuhkan admin produksi dengan kriteria sebagai berikut<br>1. Bla&nbsp;<br>2. bl bla</p>\r\n<p>3. Bla bla bla</p>', 'Close', 2, '2024-06-28 04:42:49', '2024-07-03 00:16:11'),
(3, 'Admin Gudang', '<p>Dibutuhkan admin gudang logistik dengan kriteria sebagai berikut:</p>\r\n<ul>\r\n<li>Memiliki pengetahuan terhadap excel</li>\r\n<li>Berumur maksimal 25 tahun</li>\r\n</ul>', 'Open', 3, '2024-07-01 20:49:44', '2024-07-01 20:49:57'),
(4, 'Customer Service Care', '<p>Dibutuhkan customer service untuk melayani keluhan pelanggan melalui telepon dengan persyaratan sebagai berikut&nbsp;<br><br><br></p>\r\n<ul>\r\n<li>Usia Maksimal 25 Tahun</li>\r\n<li>Berbadan sehat dan memiliki skill komunikasi baik</li>\r\n</ul>\r\n<p>&nbsp;</p>', 'Open', 4, '2024-07-02 06:06:51', '2024-07-02 06:06:51'),
(5, 'Operasi', '<p>Dibutuhkan karyawan operasional</p>\r\n<ul>\r\n<li>sehat jasmani rohani</li>\r\n</ul>', 'Open', 5, '2024-07-03 00:20:58', '2024-07-03 00:20:58');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_17_044352_create_biodata_table', 1),
(6, '2024_06_17_045549_create_devisi_table', 1),
(7, '2024_06_17_045646_create_loker_table', 1),
(8, '2024_06_17_045930_create_lamaran_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','pelamar') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$12$dYLvVfA9ol2TnrszrQv.IeGaiwa./fZw4vpoW0RgKymEGT1MAp4ba', 'admin', 'U4X92gi4oAzZoxElG4rVPdq7cSDqYzA435uvSchbH8DD5K1NptE0p8OZS7kk', '2024-06-18 01:26:26', '2024-06-18 01:26:26'),
(2, 'Galihas', 'pelamar', '$2y$12$bZbzr3oi8eQailgPKljPc.JfgUUdT2b/T2gNWPkRPiCp82Z1UPzGi', 'pelamar', NULL, '2024-06-18 01:26:26', '2024-06-28 04:34:37'),
(3, 'Galih Andita', 'galihas', '$2y$12$6DFpVLelRXSuyutM.H51x.uMEvS0Rsb0iEJalWKax.9KiILX.X/xm', 'pelamar', NULL, '2024-06-28 04:39:30', '2024-06-28 04:39:30'),
(4, 'Iqbal Mahandika', 'Iqbal Mahandika', '$2y$12$JYGtEsIKUNTGVgHw1yeMaufW8SG8aqBnfWHiOrTb5JH2xtaP6ddMq', 'pelamar', NULL, '2024-07-01 06:07:17', '2024-07-01 06:07:17'),
(5, 'Iqbal Mahandika', 'Iqbalmahandika', '$2y$12$emkrUGLLl7K/vvXWDo6yeeV.FQxapcIUYyisDMbd4x8lyXOee72JW', 'pelamar', NULL, '2024-07-01 21:22:05', '2024-07-01 21:22:05'),
(6, 'Muhammad Fahri Syahbani', 'Syahbani24', '$2y$12$UW0F8uGiJ70t3a4bLlCJFeqrwRSCPuJfBB2COEG8Ll6tqdPd90upe', 'pelamar', NULL, '2024-07-15 07:15:58', '2024-07-15 07:15:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `devisi`
--
ALTER TABLE `devisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lamaran_user_id_foreign` (`user_id`),
  ADD KEY `lamaran_loker_id_foreign` (`loker_id`);

--
-- Indeks untuk tabel `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loker_devisi_id_foreign` (`devisi_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `devisi`
--
ALTER TABLE `devisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lamaran`
--
ALTER TABLE `lamaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `loker`
--
ALTER TABLE `loker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `biodata_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `lamaran`
--
ALTER TABLE `lamaran`
  ADD CONSTRAINT `lamaran_loker_id_foreign` FOREIGN KEY (`loker_id`) REFERENCES `loker` (`id`),
  ADD CONSTRAINT `lamaran_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `loker`
--
ALTER TABLE `loker`
  ADD CONSTRAINT `loker_devisi_id_foreign` FOREIGN KEY (`devisi_id`) REFERENCES `devisi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
