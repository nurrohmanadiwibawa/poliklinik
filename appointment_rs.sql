-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 06 Jan 2024 pada 04.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment_rs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarpolis`
--

CREATE TABLE `daftarpolis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `jadwalperiksa_id` bigint(20) UNSIGNED NOT NULL,
  `keluhan` text NOT NULL,
  `no_antrian` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `daftarpolis`
--

INSERT INTO `daftarpolis` (`id`, `pasien_id`, `jadwalperiksa_id`, `keluhan`, `no_antrian`, `created_at`, `updated_at`) VALUES
(34, 6, 19, 'Gusi Bengkak, Sariawan', 1, '2024-01-05 07:44:32', '2024-01-05 07:44:32'),
(35, 6, 20, 'Gusi Bengkak, Sariawan', 2, '2024-01-05 07:45:00', '2024-01-05 07:45:00'),
(36, 6, 21, 'Gusi Bengkak, Sariawan', 3, '2024-01-05 07:48:31', '2024-01-05 07:48:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_periksas`
--

CREATE TABLE `detail_periksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `periksa_id` bigint(20) UNSIGNED NOT NULL,
  `obat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_periksas`
--

INSERT INTO `detail_periksas` (`id`, `periksa_id`, `obat_id`, `created_at`, `updated_at`) VALUES
(61, 11, 2, '2024-01-05 07:49:38', '2024-01-05 07:49:38'),
(62, 11, 3, '2024-01-05 07:49:38', '2024-01-05 07:49:38'),
(63, 12, 3, '2024-01-05 07:55:05', '2024-01-05 07:55:05'),
(64, 12, 4, '2024-01-05 07:55:05', '2024-01-05 07:55:05'),
(65, 13, 5, '2024-01-05 07:59:03', '2024-01-05 07:59:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokters`
--

CREATE TABLE `dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `poli_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dokters`
--

INSERT INTO `dokters` (`id`, `nama`, `alamat`, `no_hp`, `poli_id`, `created_at`, `updated_at`) VALUES
(9, 'Erwan Munandar', 'Jl. Kembangarum', '0819111124234', 1, '2024-01-04 06:49:42', '2024-01-04 06:49:42'),
(10, 'Ernawati', 'Tegal', '087821345699', 3, '2024-01-05 07:37:14', '2024-01-05 07:37:14'),
(11, 'Tobing Sihotang', 'Cirebon', '08213334567', 2, '2024-01-05 07:40:30', '2024-01-05 07:40:30');

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
-- Struktur dari tabel `jadwalperiksas`
--

CREATE TABLE `jadwalperiksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwalperiksas`
--

INSERT INTO `jadwalperiksas` (`id`, `dokter_id`, `hari`, `jam_mulai`, `jam_selesai`, `created_at`, `updated_at`) VALUES
(19, 9, 'Rabu', '16:00:00', '20:00:00', '2024-01-04 06:51:40', '2024-01-04 06:51:40'),
(20, 10, 'Sabtu', '08:30:00', '12:00:00', '2024-01-05 07:38:27', '2024-01-05 07:38:27'),
(21, 11, 'Senin', '16:40:00', '21:00:00', '2024-01-05 07:41:28', '2024-01-05 07:41:28');

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
(4, '2021_07_26_020916_create_permission_tables', 1),
(5, '2023_10_02_061944_create_rumah_sakit_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `obats`
--

CREATE TABLE `obats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kemasan` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `obats`
--

INSERT INTO `obats` (`id`, `nama_obat`, `kemasan`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Mixagrip', 'Botol', 29000, '2023-12-31 08:55:36', '2023-12-31 08:55:36'),
(2, 'Bodrex', 'Obat batuk', 5000, '2024-01-01 00:15:56', '2024-01-01 00:15:56'),
(3, 'Ultraflu', 'Kapsul', 1000, '2024-01-01 00:16:33', '2024-01-01 00:16:33'),
(4, 'Oskasbon', 'Kapsul', 8000, '2024-01-01 00:17:11', '2024-01-01 00:17:11'),
(5, 'Komik', 'obat batuk', 1000, '2024-01-02 08:34:56', '2024-01-02 08:34:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `no_rm` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama`, `alamat`, `no_ktp`, `no_hp`, `no_rm`, `created_at`, `updated_at`) VALUES
(2, 'Wibawa', 'Bekasi', '3218080809900330', '089989989', '1', '2023-12-31 01:04:07', '2024-01-03 19:42:25'),
(4, 'Adi Wibawa', 'Brebes, Jawa Tengah', '33291734230100005', '081902660593', '202401-4', '2024-01-03 19:47:20', '2024-01-03 19:47:20'),
(5, 'Khansa', 'Brebes', '3329171122010003', '087872776532', '202401-5', '2024-01-05 07:03:30', '2024-01-05 07:03:30'),
(6, 'Laela', 'Slawi', '332189746473', '08138884374', '202401-6', '2024-01-05 07:43:37', '2024-01-05 07:43:37');

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
-- Struktur dari tabel `periksas`
--

CREATE TABLE `periksas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `daftarpoli_id` bigint(20) UNSIGNED NOT NULL,
  `catatan` text NOT NULL,
  `tgl_periksa` datetime NOT NULL,
  `biaya_periksa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `periksas`
--

INSERT INTO `periksas` (`id`, `daftarpoli_id`, `catatan`, `tgl_periksa`, `biaya_periksa`, `created_at`, `updated_at`) VALUES
(11, 34, 'Minum Air Hangat, Jangan Sering Minum Es', '2024-01-16 00:00:00', 156000, '2024-01-05 07:49:38', '2024-01-05 07:49:38'),
(12, 34, 'Sering Minum Air Hangat', '2024-01-27 00:00:00', 159000, '2024-01-05 07:55:05', '2024-01-05 07:55:05'),
(13, 36, 'Jangan Minum Es', '2024-01-16 00:00:00', 151000, '2024-01-05 07:59:03', '2024-01-05 07:59:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `polis`
--

CREATE TABLE `polis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_poli` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `polis`
--

INSERT INTO `polis` (`id`, `nama_poli`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Poli Gigi', 'Poli gigi tersedia sudah hampir lebih 10 tahun', '2023-12-29 08:38:38', '2023-12-29 08:39:08'),
(2, 'Poli Saraf', 'Poli spesialis saraf tubuh', '2023-12-30 20:08:11', '2023-12-30 20:08:11'),
(3, 'Poli Anak', 'Poli Spesialisasi untuk memerika anak', '2023-12-30 20:08:34', '2023-12-30 20:08:34'),
(4, 'Poli Mata', 'Poli Spesialisasi Pengecekan Mata', '2023-12-30 20:08:55', '2023-12-30 20:08:55'),
(5, 'Poli Telinga', 'Poli Spesialis Telinga', '2023-12-31 11:39:48', '2024-01-05 07:42:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-12-29 00:09:08', '2023-12-29 00:09:08'),
(2, 'Dokter', 'web', '2023-12-29 00:09:08', '2023-12-29 00:09:08'),
(3, 'Pasien', 'web', '2023-12-29 00:09:08', '2023-12-29 00:09:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `foto`, `jenis_kelamin`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'default.jpg', 'Laki laki', 'admin@gmail.com', NULL, '$2y$10$JrPFSpz89aW7jE4owef3m.gf/ZU5QnvVBfEnVIYFn8MNz6nRKktr2', NULL, '2023-12-29 00:09:08', '2023-12-29 00:09:08'),
(2, 'dokter', 'default.jpg', 'Laki laki', 'dokter@gmail.com', NULL, '$2y$10$rRzcaNSCATXAccd6vK5SoubOQO4cwEX2W/aypA.i6g63c5RTvL31u', NULL, '2023-12-29 00:09:08', '2023-12-29 00:09:08'),
(4, 'dodi setiawan', NULL, 'Laki laki', 'dokterdodi@gmail.com', NULL, '$2y$10$Cz4iIhwQg.eEIbrmGXmmvuxR6Afl1r2synbIlVUMJrplwZ.SCdT5y', NULL, '2023-12-31 10:45:18', '2024-01-03 19:40:37'),
(5, 'doktergizi', NULL, 'Laki laki', 'doktergizi@gmail.com', NULL, '$2y$10$qEg1/3ZmIrI3jqiQSQ0gz.7qOtbpEPjGmkhxGgYqfx1DQI7lF4RYm', NULL, '2023-12-31 11:19:44', '2024-01-02 08:58:52'),
(6, 'dokter3@gmail.com', NULL, 'Laki laki', 'dokter3@gmail.com', NULL, '$2y$10$AfUy98F8lQXOsk8OMiVi4ekWgWiZI5lUQPYdvD8igVvx3z2/Mkjn2', NULL, '2023-12-31 19:58:51', '2023-12-31 20:02:49'),
(7, 'dokter44', NULL, 'Laki laki', 'dokter4@gmail.com', NULL, '$2y$10$FPVT8E3R5oLl/0KJgBtJGe1GGPneEScSW0zVnr0a7h0EaAxFgERSS', NULL, '2023-12-31 20:07:57', '2023-12-31 20:08:14'),
(8, 'dokterumum', NULL, 'Laki-laki', 'dokterumum@gmail.com', NULL, '$2y$10$htjGNlWio2AJpUUPTE/uD.pi7rZ6tsiRMDjobeYo.6CVvuXq5SiV6', NULL, '2024-01-04 06:45:34', '2024-01-04 06:45:34'),
(9, 'Erwan Munandar', NULL, NULL, 'drerwan@gmail.com', NULL, '$2y$10$.hmz3ZPMoXp9BPXAySiG/uFBVLLbIVWdmixH/RqOw5aaY6NfnKMRK', NULL, '2024-01-04 06:49:42', '2024-01-04 06:49:42'),
(10, 'Ernawati', NULL, NULL, 'ernawati@gmaill.com', NULL, '$2y$10$RAU.rc1wXBFOwwgBHxO1QuAW/H03Ahdqf62AXnF/9wL509EU8nja2', NULL, '2024-01-05 07:37:14', '2024-01-05 07:37:14'),
(11, 'Tobing Sihotang', NULL, NULL, 'tobings@gmail.com', NULL, '$2y$10$ola89Hmb2d1vv7bATzSveucze07Z96PEV7OjrMx4P1jjx5NhHXpgK', NULL, '2024-01-05 07:40:30', '2024-01-05 07:40:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftarpolis`
--
ALTER TABLE `daftarpolis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daftarpolis_pasien_id_foreign` (`pasien_id`),
  ADD KEY `daftarpolis_jadwalperiksa_id_foreign` (`jadwalperiksa_id`);

--
-- Indeks untuk tabel `detail_periksas`
--
ALTER TABLE `detail_periksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_periksas_periksa_id_foreign` (`periksa_id`),
  ADD KEY `detail_periksas_obat_id_foreign` (`obat_id`);

--
-- Indeks untuk tabel `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokters_poli_id_foreign` (`poli_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwalperiksas`
--
ALTER TABLE `jadwalperiksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwalperiksas_dokter_id_foreign` (`dokter_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `obats`
--
ALTER TABLE `obats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `periksas`
--
ALTER TABLE `periksas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `periksas_daftarpoli_id_foreign` (`daftarpoli_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `polis`
--
ALTER TABLE `polis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT untuk tabel `daftarpolis`
--
ALTER TABLE `daftarpolis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `detail_periksas`
--
ALTER TABLE `detail_periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwalperiksas`
--
ALTER TABLE `jadwalperiksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `obats`
--
ALTER TABLE `obats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `periksas`
--
ALTER TABLE `periksas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `polis`
--
ALTER TABLE `polis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `daftarpolis`
--
ALTER TABLE `daftarpolis`
  ADD CONSTRAINT `daftarpolis_jadwalperiksa_id_foreign` FOREIGN KEY (`jadwalperiksa_id`) REFERENCES `jadwalperiksas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `daftarpolis_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasiens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_periksas`
--
ALTER TABLE `detail_periksas`
  ADD CONSTRAINT `detail_periksas_obat_id_foreign` FOREIGN KEY (`obat_id`) REFERENCES `obats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_periksas_periksa_id_foreign` FOREIGN KEY (`periksa_id`) REFERENCES `periksas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dokters`
--
ALTER TABLE `dokters`
  ADD CONSTRAINT `dokters_poli_id_foreign` FOREIGN KEY (`poli_id`) REFERENCES `polis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwalperiksas`
--
ALTER TABLE `jadwalperiksas`
  ADD CONSTRAINT `jadwalperiksas_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `dokters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `periksas`
--
ALTER TABLE `periksas`
  ADD CONSTRAINT `periksas_daftarpoli_id_foreign` FOREIGN KEY (`daftarpoli_id`) REFERENCES `daftarpolis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
