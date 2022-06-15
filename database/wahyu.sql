-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2022 pada 10.04
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wahyu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_artikel` char(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'gambar_default.png',
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal`, `status`, `id_kategori`, `id_pengguna`) VALUES
(116, 'A0107', 'SepakBola', 'Sepak bola adalah merujuk pada permainan yang dilakukan oleh dua tim berbeda, dengan komposisi pemain yang berada lapangan sebanyak sebelas orang. Dimana masing-masing tim berupaya untuk menang dan mencetak gol ke gawang lawan.\r\n\r\nDalam pengertian sepak bola kemudian permainan ini melibatkan pergerakan unsur fisik, mental, motorik kasar dan motorik halus, serta di bangun dengan kekuatan tim yang solid. Pergerakan semua unsur tersebut dilakukan untuk menjaga pergerakan bola tetap dinamis dan melewati garis gawang.\r\n\r\nAdapun bola yang digunakan dalam permainan berbentuk oval, dimana setiap pergerakannya dilakukan setiap pemain menggunakan kaki dan hanya penjaga gawang (kiper) yang bisa menyentuh bola menggunakan tangan.\r\n\r\nMomen dan peristiwa dari pertandingan sepak bola memang memberikan kesan yang tidak terlupakan, dan selalu menarik perhatian untuk di lihat gerakan demi gerakannya. Tidak salah sepakbola menjadi salah satu olahraga favorit di dunia.\r\n\r\nOlahraga yang dimainkan oleh 250 juta orang di lebih dari 200 negara juga berkomitmen untuk menjadikan olahraga yang wajib dimiliki. Sehingga banyak suporter dan juga keluarga yang berkomitmen untuk tidak melewatkan pertandingan sepak bola, baik liga profesional maupun liga amatir.', 'bola.jpg', '2022-06-12 08:37:57', 1, 18, 0),
(121, 'A0117', 'Bulutangkis', 'Berapa Jumlah Fans Bulu Tangkis? Olahraga Terpopuler Nomor 3 di Dunia\r\nBulu tangkis adalah olahraga paling populer ketiga di dunia.\r\nBULU tangkis adalah olahraga terpopuler nomor tiga di dunia. Pamornya hanya kalah dari sepak bola dan basket. Namun demikian, kita tentu bertanya-tanya, berapakah jumlah fans olahraga ini di seluruh dunia pada dekade terakhir?\r\n\r\nMenurut Studi Bulu Tangkis Global tahun 2018 yang dilakukan oleh Nielsen Sports, basis penggemar olahraga ini diperkirakan mencapai 681 juta orang. Jumlah itu tersebar di tujuh wilayah berbeda. Penelitian itu didapatkan dari survei sampel yang dilakukan di 21 target pasar bulu tangkis secara global.', 'badminton.jpg', '2022-06-12 08:42:01', 1, 18, 0),
(122, 'A0122', 'Pantai Sulamdaha', 'Siapa yang tidak jatuh cinta dengan air laut jernih di pantai ini? Pantai Sulamadaha yang terletak di Ternate, Maluku Utara, ini memang memiliki air laut sangat jernih bagaikan kaca. Walaupun tidak memiliki pasir putih di pantainya, tapi kamu akan dibuat takjub oleh kejernihan air laut dan ikan-ikan cantik yang berenang di dalamnya. Untuk menuju pantai cantik ini, kamu setidaknya membutuhkan waktu satu jam perjalanan dengan kendaraan dari pusat Kota Ternate.', 'pantai sulamadaha.jpg', '2022-06-12 08:44:16', 1, 20, 0),
(124, 'A0124', 'Wisata Alam Gunung Pancar', 'Bogor bisa menjadi pilihan destinasi untuk menikmati suasana liburan, namun tak jauh dari ibu kota. Salah satu tempat yang bisa dikunjungi adalah wisata alam Gunung Pancar. Bagi kamu yang mencari tempat berlibur dengan pemandangan alam indah dan udara yang sejuk, tempat ini cocok untuk dijadikan alternatif.\r\nGunung Pancar ada di daerah Sentul, Bogor, tepatnya di Desa Karang Tengah, Babakan Madang, Bogor, Jawa Barat. Lokasinya dekat dengan tempat wisata Jungle Land, sehingga bisa dijadikan patokan. Wisatawan dari arah Jakarta bisa mengakses tol Jagorawi, lalu keluar di Sentul City atau Sentul Selatan.\r\n\r\nDikutip dari laman Instagram resminya, harga tiket masuk Wisata Alam Gunung Pancar adalah Rp 5.000 per orang. Tarif parkir mobil Rp 10.000 dan motor Rp 5.000. sementara harga tiket saat akhir pekan atau hari libur adalah Rp 7.500 per orang, serta tarif parkir mobil Rp 15.000 dan motor Rp 7.500. Saat memasuki area taman wisata ini, wisatawan bisa merasakan sejuknya udara karena jejeran pohon pinus yang menjulang tinggi.', '0921186tenda3780x390.jpg', '2022-06-12 08:50:24', 1, 20, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(200) NOT NULL DEFAULT 'gambar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(13, 'Edukasi', 'edukasi.png'),
(14, 'Kesehatan', 'kesehatan.png'),
(16, 'Teknologi', 'teknologi.png'),
(18, 'Olahraga', 'olahraga (2).png'),
(20, 'Wisata', 'wisata.png'),
(21, 'Makanan', 'makanan.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_artikel`, `nama`, `email`, `isi_komentar`, `status_komentar`) VALUES
(7, 101, 'Setiawan Dimas', 'arimurti295.sd@gmail.com', 'Saya terkagum membaca artikel ini karena setelah membaca artikel ini pikiran saya menjadi terbuka. Saya sadar, selama ini saya terlalu tertutup dengan hal-hal yang baru dan merasa sudah tahu. Hal ini berimbas kepada saya yakni saya menjadi orang yang Sok Tahu', 1),
(8, 105, 'Farhan', 'kerenlu740@gmail.com', 'dsfcgvhbjhgfdxcvbnkjj', 1),
(9, 116, 'Wahyudi Kurniawan', 'Wahyudik08@gmail.com', 'Football For Unity', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `nama_pengguna`, `email`, `no_telp`, `username`, `password`, `status`) VALUES
(19, 'U010', 'Dimas', 'arimurti95.sd@gmail.com', '082322230343', 'dimas', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(21, 'U021', 'WahyudiK', 'kerenlu740@gmail.com', '081219311663', '_guewahyu', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `nama_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`nama_website`) VALUES
('Portal Informasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `judul_artikel` (`judul_artikel`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
