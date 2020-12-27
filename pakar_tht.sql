-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 04:45 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakar_tht`
--

-- --------------------------------------------------------

--
-- Table structure for table `basispengetahuan`
--

CREATE TABLE `basispengetahuan` (
  `id_basis` int(11) NOT NULL,
  `id_penyakit` varchar(11) NOT NULL,
  `id_gejala` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basispengetahuan`
--

INSERT INTO `basispengetahuan` (`id_basis`, `id_penyakit`, `id_gejala`) VALUES
(1, 'P01', 'G01'),
(3, 'P01', 'G011'),
(4, 'P01', 'G012'),
(5, 'P01', 'G013'),
(6, 'P01', 'G015'),
(7, 'P01', 'G016'),
(2, 'P01', 'G02'),
(8, 'P02', 'G01'),
(14, 'P02', 'G018'),
(15, 'P02', 'G019'),
(9, 'P02', 'G02'),
(10, 'P02', 'G03'),
(11, 'P02', 'G07'),
(12, 'P02', 'G08'),
(13, 'P02', 'G09'),
(16, 'P03', 'G01'),
(20, 'P03', 'G011'),
(21, 'P03', 'G014'),
(17, 'P03', 'G02'),
(22, 'P03', 'G020'),
(18, 'P03', 'G04'),
(19, 'P03', 'G05'),
(23, 'P04', 'G01'),
(29, 'P04', 'G017'),
(24, 'P04', 'G02'),
(25, 'P04', 'G03'),
(26, 'P04', 'G04'),
(27, 'P04', 'G05'),
(28, 'P04', 'G06'),
(30, 'P05', 'G01'),
(31, 'P05', 'G010'),
(32, 'P05', 'G014'),
(33, 'P05', 'G017'),
(34, 'P05', 'G020'),
(35, 'P05', 'G022'),
(37, 'P06', 'G015'),
(36, 'P06', 'G02'),
(38, 'P06', 'G021');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id_gejala` varchar(11) NOT NULL,
  `gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `gejala`) VALUES
('G01', 'Demam'),
('G010', 'Nyeri tenggorokan'),
('G011', 'Sakit pada telinga'),
('G012', 'Gatal pada telinga'),
('G013', 'Telinga keluar cairan'),
('G014', 'Sakit saat menelan'),
('G015', 'Kesulitan mendengar dengan jelas'),
('G016', 'Ada tanda-tanda radang liang telinga'),
('G017', 'Tenggorokan gatal'),
('G018', 'Selaput lendir merah dan bengkak'),
('G019', 'Mata bengkak'),
('G02', 'Sakit kepala'),
('G020', 'Kelenjar getah bening di leher'),
('G021', 'Telinga berdengung'),
('G022', 'Suara serak'),
('G03', 'Hidung tersumbat'),
('G04', 'Batuk'),
('G05', 'Pilek'),
('G06', 'Sesak nafas'),
('G07', 'Nyeri pinggir hidung'),
('G08', 'Nyeri antara mata'),
('G09', 'Berkurangnya daya penciuman');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `nama_penyakit`) VALUES
('P01', 'Otitis Eksterna'),
('P02', 'Sinusitis'),
('P03', 'Tonsilitis (Radang Amandel)'),
('P04', 'Influenza'),
('P05', 'Faringitis (Radang Tenggorokan)'),
('P06', 'Tinnitus');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `iduser` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basispengetahuan`
--
ALTER TABLE `basispengetahuan`
  ADD PRIMARY KEY (`id_basis`),
  ADD KEY `id_penyakit` (`id_penyakit`,`id_gejala`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basispengetahuan`
--
ALTER TABLE `basispengetahuan`
  MODIFY `id_basis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `iduser` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basispengetahuan`
--
ALTER TABLE `basispengetahuan`
  ADD CONSTRAINT `basispengetahuan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `tb_penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `basispengetahuan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `tb_gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
