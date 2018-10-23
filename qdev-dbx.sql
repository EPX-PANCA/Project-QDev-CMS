-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 07:07 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qdev-dbx`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(10) NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `id_user` int(5) NOT NULL,
  `kategori` int(5) NOT NULL,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `hits` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id_halaman` int(10) NOT NULL,
  `judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `id_modul` int(5) NOT NULL,
  `gambar` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `id_user` int(5) NOT NULL,
  `hits` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_halaman`, `judul`, `judul_seo`, `isi`, `id_modul`, `gambar`, `hari`, `tanggal`, `jam`, `id_user`, `hits`) VALUES
(2, 'About Us', 'about-us', '<p>This is about us</p>', 0, '2.jpg', 'Minggu', '2016-06-12', '08:09:16', 1, 0),
(3, 'Advertise', 'advertise', '', 0, '', 'Jumat', '2016-01-22', '14:32:18', 1, 0),
(4, 'FAQ', 'faq', '', 0, '', 'Jumat', '2016-01-22', '14:32:29', 1, 0),
(9, 'Galeri Foto', 'galeri-foto', '', 20, '', 'Jumat', '2016-06-03', '07:59:21', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `kategori_seo`) VALUES
(5, 'Movie', 'movie'),
(8, 'Entertainment', 'entertainment'),
(9, 'How To', 'how-to'),
(10, 'Health', 'health'),
(11, 'Science', 'science'),
(12, 'Technology', 'technology'),
(13, 'Relationship', 'relationship'),
(14, 'Business', 'business');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(10) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `komentar` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `id_artikel` int(10) NOT NULL,
  `dibaca` enum('N','Y') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `md_galeri_foto`
--

CREATE TABLE `md_galeri_foto` (
  `id_galeri` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `judul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_menu` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jenis_link` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `induk` int(5) NOT NULL,
  `urut` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `judul`, `kategori_menu`, `jenis_link`, `link`, `induk`, `urut`) VALUES
(33, 'Movie', 'main', 'kategori', '5', 32, 1),
(34, 'Entertainment', 'main', 'kategori', '8', 32, 2),
(6, 'Contoh menu sidebar', '4', 'halaman', '1', 0, 1),
(7, 'Contoh lagi', '4', 'kategori', '1', 0, 1),
(36, 'Galeri', 'main', 'halaman', '9', 0, 5),
(35, 'Health', 'main', 'kategori', '10', 32, 3),
(31, 'About Us', 'main', 'halaman', '2', 0, 3),
(32, 'Berita', 'main', 'url', '#', 0, 4),
(29, 'Home', 'main', 'url', 'http://localhost/cmsku', 0, 1),
(18, 'About Us', 'secondary', 'halaman', '2', 0, 1),
(19, 'Advertise', 'secondary', 'halaman', '3', 0, 0),
(20, 'FAQ', 'secondary', 'halaman', '4', 0, 3),
(21, 'Help', 'secondary', 'halaman', '5', 0, 6),
(22, 'Privacy Policy', 'secondary', 'halaman', '6', 0, 5),
(23, 'Term of Use', 'secondary', 'halaman', '7', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `judul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `menu` enum('N','Y') COLLATE latin1_general_ci NOT NULL,
  `konten` enum('N','Y') COLLATE latin1_general_ci NOT NULL,
  `widget` enum('N','Y') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `judul`, `folder`, `menu`, `konten`, `widget`, `aktif`) VALUES
(20, 'Galeri Foto', 'galeri_foto', 'Y', 'Y', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(5) NOT NULL,
  `parameter` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nilai` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `parameter`, `nilai`) VALUES
(1, 'judul', 'QDev-CMS'),
(2, 'deskripsi', 'QDev-CMS - Bangun Websitemu sendiri'),
(3, 'url', 'http://localhost/QDev-CMS/'),
(4, 'ikon', 'Q logo.png'),
(5, 'keyword', 'Personal Web'),
(6, 'folder', '/cmsku'),
(7, 'homepage', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `tag` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `tag`, `tag_seo`) VALUES
(5, 'Movie', 'movie'),
(8, 'Entertainment', 'entertainment'),
(9, 'How To', 'how-to'),
(10, 'Health', 'health'),
(11, 'Science', 'science'),
(12, 'Technology', 'technology'),
(13, 'Relationship', 'relationship'),
(14, 'Business', 'business');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id_template` int(5) NOT NULL,
  `judul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id_template`, `judul`, `folder`, `aktif`) VALUES
(9, 'Default', 'default', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'QDev-CMS@GMAIL.COM', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `id_widget` int(5) NOT NULL,
  `judul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tipe` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `konten` text COLLATE latin1_general_ci NOT NULL,
  `posisi` int(2) NOT NULL,
  `urut` int(2) NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`id_widget`, `judul`, `tipe`, `konten`, `posisi`, `urut`, `aktif`) VALUES
(3, 'Trending News', 'terbaru', '', 1, 2, 'Y'),
(14, 'Category', 'kategori', '', 1, 3, 'Y'),
(13, 'Popular News', 'populer', '', 1, 1, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `md_galeri_foto`
--
ALTER TABLE `md_galeri_foto`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id_template`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`id_widget`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_halaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `md_galeri_foto`
--
ALTER TABLE `md_galeri_foto`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id_template` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `id_widget` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
