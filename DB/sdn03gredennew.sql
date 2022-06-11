-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 02:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdn03gredennew`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` int(30) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_siswa`
--

CREATE TABLE `absensi_siswa` (
  `id` int(30) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_tu`
--

CREATE TABLE `absensi_tu` (
  `id` int(30) NOT NULL,
  `nip` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `nip` int(30) NOT NULL,
  `alamat_guru` varchar(30) NOT NULL,
  `guru_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id`, `username`, `password`, `nama_lengkap`, `nip`, `alamat_guru`, `guru_mapel`) VALUES
(1, 'Amanda', '123', 'Amanda Ghishella Alfina', 557878, 'Jember', 'IPA'),
(2, 'Andhi', '123', 'Andhien Raseukina Zahra', 557879, 'Jember', 'IPS'),
(3, 'Nisa', '123', 'Annisa Solehah', 557876, 'Jember', 'B. Indo'),
(4, 'Aril', '123', 'Aril Apriansyah', 557880, 'Jember', 'B. Jawa'),
(5, 'Desi', '123', 'Desi Damayanti', 557881, 'Jember', 'B.Inggris'),
(6, 'Nadia', '123', 'Nadia Lestari', 557882, 'Jember', 'MTK'),
(7, 'Fadly', '123', 'Muhammad Fadly', 557884, 'Jember', 'PJOK'),
(8, 'Alvi', '123', 'Muhammad Alvi', 557885, 'Jember', 'Agama'),
(9, 'Lusi', '123', 'Lusi Sukma Ningsih', 557886, 'Jember', 'PKN');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `nis` int(30) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `alamat_siswa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `username`, `password`, `nama_lengkap`, `nis`, `kelas`, `alamat_siswa`) VALUES
(1, 'Andika', '123', 'Andika Panji', 343456, '6', 'Kapuran'),
(2, 'Ridho', '123', 'Maulana Ridho', 343457, '6', 'Kapuran'),
(3, 'Zidni', '345', 'M.Zidnie', 343458, '6', 'Kapuran'),
(4, 'Faisal', '456', 'M.Abdul Faisal', 343459, '6', 'Kapuran'),
(5, 'Adi', '567', 'Galang Adi', 343460, '6', 'Kapuran'),
(6, 'Lily', '678', 'Nisrina Lovely', 343461, '6', 'Kapuran'),
(7, 'Novin', '789', 'Rayend Novin', 343462, '6', 'Kapuran'),
(8, 'Fisa', '890', 'Nafisa', 343463, '6', 'Kapuran'),
(9, 'Putri', '123', 'Putri Rahmanita', 343464, '6', 'Kapuran'),
(10, 'Safa', '134', 'Siti Ainul Safa', 343465, '6', 'Kapuran'),
(11, 'Fino', '692', 'Ahmad Fino', 343466, '6', 'Kapuran'),
(12, 'Raul', '834', 'Raul Gonzales', 343467, '6', 'Kapuran'),
(13, 'Bintang', '877', 'Bintang Mega', 343468, '6', 'Kapuran'),
(14, 'Saufar', '600', 'Saufarillah', 343469, '6', 'Kapuran'),
(15, 'Andre', '517', 'Andre fahmi', 343470, '6', 'Kapuran'),
(16, 'Fira', '731', 'Fira Dwi Oktaviani', 343471, '6', 'Kapuran'),
(17, 'Cahya', '944', 'Cahyani Putri', 343472, '6', 'Kapuran'),
(18, 'Lusi', '311', 'Lusiana Dwi', 343473, '6', 'Kapuran'),
(26, 'Lusi', '311', 'Lusiana Dwi', 343480, '6', 'Kapuran'),
(27, 'Dannis', '662', 'Dannis Muhammad', 343474, '6', 'Kapuran'),
(28, 'Tiyas', '754', 'Tiyas Ningsih', 343475, '6', 'Kapuran'),
(29, 'Jihan', '918', 'Khusnia Jihan', 343476, '6', 'Kapuran'),
(30, 'Fahrul', '500', 'Ahmad Fahrul Eko', 343477, '6', 'Kapuran'),
(31, 'Yoga', '399', 'Yoga Darus', 343478, '6', 'Kapuran'),
(32, 'Dani', '411', 'Dani Saputra', 343479, '6', 'Kapuran');

-- --------------------------------------------------------

--
-- Table structure for table `data_tu`
--

CREATE TABLE `data_tu` (
  `id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `nip` int(30) NOT NULL,
  `alamat_tu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_tu`
--

INSERT INTO `data_tu` (`id`, `username`, `password`, `nama_lengkap`, `nip`, `alamat_tu`) VALUES
(1, 'Bambang', '123', 'Bambang Prakoso', 659898, 'Jember');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id_user` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` int(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id_user`, `username`, `nama`, `email`, `level`, `password`) VALUES
(1, 'Bambang', 'Bambang Prakoso', 'Bambangkun@gmail.com', 1, '123'),
(2, 'Theo', 'Metheo', 'Theokun@gmail.com', 2, '123'),
(3, 'gugu', 'Gugu Pernandes', 'gugukun@gmail.com', 3, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- Indexes for table `absensi_tu`
--
ALTER TABLE `absensi_tu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomer_induk` (`nis`);

--
-- Indexes for table `data_tu`
--
ALTER TABLE `data_tu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absensi_siswa`
--
ALTER TABLE `absensi_siswa`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `absensi_tu`
--
ALTER TABLE `absensi_tu`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `data_tu`
--
ALTER TABLE `data_tu`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id_user` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
