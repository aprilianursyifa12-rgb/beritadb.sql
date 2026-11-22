-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2026 at 09:53 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beritadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_terbit` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `slug`, `ringkasan`, `isi`, `penulis`, `tanggal_terbit`, `created_at`, `updated_at`) VALUES
(1, 'Perkembangan Kecerdasan Buatan di Indonesia Tahun 2026', 'perkembangan-kecerdasan-buatan-di-indonesia-tahun-2026', 'Adopsi AI semakin pesat di berbagai sektor industri tanah air.', 'Kecerdasan buatan (AI) kini menjadi tulang punggung transformasi digital di Indonesia, mulai dari layanan keuangan hingga kesehatan.', 'Andi Pratama', '2026-11-10 08:30:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(2, 'Pertumbuhan Ekonomi Digital Asia Tenggara Meningkat Tajam', 'pertumbuhan-ekonomi-digital-asia-tenggara-meningkat-tajam', 'Nilai transaksi ekonomi digital kawasan ASEAN mencatat rekor baru.', 'Laporan terbaru menunjukkan sektor e-commerce dan pembayaran digital mendorong pertumbuhan ekonomi di Asia Tenggara secara signifikan.', 'Siti Rahmawati', '2026-11-11 09:15:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(3, 'Timnas Indonesia Bersiap Hadapi Kualifikasi Turnamen Asia', 'timnas-indonesia-bersiap-hadapi-kualifikasi-turnamen-asia', 'Pemusatan latihan intensif mulai digelar pekan ini.', 'Pelatih kepala memanggil 26 pemain terbaik untuk mengikuti pemusatan latihan menjelang laga penting tingkat Asia.', 'Budi Santoso', '2026-11-12 14:00:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(4, 'Tips Menjaga Pola Tidur Berkualitas bagi Pekerja Kantoran', 'tips-menjaga-pola-tidur-berkualitas-bagi-pekerja-kantoran', 'Kurang tidur dapat menurunkan produktivitas dan daya tahan tubuh.', 'Para pakar kesehatan menyarankan pembatasan penggunaan gawai satu jam sebelum tidur untuk menjaga kualitas istirahat malam.', 'Dr. Maya Lestari', '2026-11-13 07:45:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(5, 'Startup Fintech Lokal Raih Pendanaan Seri B untuk Ekspansi', 'startup-fintech-lokal-raih-pendanaan-seri-b-untuk-ekspansi', 'Suntikan dana segar akan digunakan untuk memperkuat keamanan sistem.', 'Perusahaan rintisan teknologi finansial asal Bandung berhasil mengamankan pendanaan baru guna memperluas layanan UMKM.', 'Rizky Hidayat', '2026-11-14 11:20:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(6, 'Teknologi Wearable Baru Bantu Pantau Detak Jantung Atlet', 'teknologi-wearable-baru-bantu-pantau-detak-jantung-atlet', 'Sensor biometrik generasi baru hadir untuk mencegah cedera olahraga.', 'Perangkat pintar berbasis IoT kini banyak digunakan tim olahraga profesional untuk memantau kondisi fisik pemain secara real-time.', 'Nadia Putri', '2026-11-15 16:10:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(7, 'Inflasi Terkendali, Daya Beli Masyarakat Diprediksi Stabil', 'inflasi-terkendali-daya-beli-masyarakat-diprediksi-stabil', 'Bank sentral menjaga suku bunga acuan demi stabilitas pasar.', 'Stabilitas harga pangan dan energi turut menjaga tingkat inflasi tetap berada dalam sasaran pemerintah hingga akhir tahun.', 'Siti Rahmawati', '2026-11-16 10:05:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(8, 'Manfaat Olahraga Lari Pagi untuk Kesehatan Jantung dan Mental', 'manfaat-olahraga-lari-pagi-untuk-kesehatan-jantung-dan-mental', 'Aktivitas fisik ringan selama 30 menit terbukti mengurangi stres.', 'Rutin berlari di pagi hari membantu melancarkan peredaran darah sekaligus meningkatkan hormon endorfin yang memperbaiki suasana hati.', 'Dr. Maya Lestari', '2026-11-17 06:30:00', '2026-11-18 01:42:03', '2026-11-18 01:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `id` int UNSIGNED NOT NULL,
  `berita_id` int UNSIGNED NOT NULL,
  `kategori_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita_kategori`
--

INSERT INTO `berita_kategori` (`id`, `berita_id`, `kategori_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 1),
(6, 5, 2),
(7, 6, 1),
(8, 6, 3),
(9, 6, 4),
(10, 7, 2),
(11, 8, 3),
(12, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(2, 'Ekonomi', 'ekonomi', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(3, 'Olahraga', 'olahraga', '2026-11-18 01:42:03', '2026-11-18 01:42:03'),
(4, 'Kesehatan', 'kesehatan', '2026-11-18 01:42:03', '2026-11-18 01:42:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_berita_kategori_berita` (`berita_id`),
  ADD KEY `fk_berita_kategori_kategori` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD CONSTRAINT `fk_berita_kategori_berita` FOREIGN KEY (`berita_id`) REFERENCES `berita` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_berita_kategori_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
