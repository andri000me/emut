-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 05:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emut`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `no_surat` int(20) NOT NULL,
  `nama_siswa` varchar(300) NOT NULL,
  `nis` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `asal_sekolah` varchar(300) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `orangtua` varchar(300) NOT NULL,
  `kelurahan` varchar(300) NOT NULL,
  `kecamatan` varchar(300) NOT NULL,
  `kabupaten` varchar(300) NOT NULL,
  `alamat_lengkap` varchar(300) NOT NULL,
  `pindah_lanjut` varchar(20) NOT NULL,
  `tujuan_sekolah` varchar(300) NOT NULL,
  `tujuan_kabupaten` varchar(300) NOT NULL,
  `tujuan_provinsi` varchar(300) NOT NULL,
  `alasan` varchar(300) NOT NULL,
  `upload_surat_mutasi` varchar(3000) NOT NULL,
  `upload_akte_kk` varchar(3000) NOT NULL,
  `upload_surat_dapodik` varchar(3000) NOT NULL,
  `status` varchar(300) NOT NULL,
  `status_jawaban` varchar(20) NOT NULL,
  `ttd` varchar(20) NOT NULL,
  `tgl_pengajuan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tandatangan`
--

CREATE TABLE `tandatangan` (
  `id_ttd` int(11) NOT NULL,
  `ket` varchar(300) NOT NULL,
  `jabatan` varchar(300) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `nip` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `npsn` int(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `sekolah` varchar(300) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `jabatan` varchar(300) NOT NULL,
  `no_tlp` int(15) NOT NULL,
  `surat_tugas` varchar(300) DEFAULT NULL,
  `verifikasi` varchar(300) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `npsn`, `password`, `sekolah`, `nama`, `jabatan`, `no_tlp`, `surat_tugas`, `verifikasi`, `role`, `tgl_daftar`) VALUES
(1, 12345, '21232f297a57a5a743894a0e4a801fc3', 'ADMINISTRATOR', 'Farras Ammar I', 'Staff', 8972772, NULL, '', 'admin', '2020-03-24'),
(2, 11111, 'ee11cbb19052e40b07aac0ca060c23ee', 'TEST USER', 'USER', 'STAFF', 83838, NULL, '', 'user', '2020-03-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

--
-- Indexes for table `tandatangan`
--
ALTER TABLE `tandatangan`
  ADD PRIMARY KEY (`id_ttd`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tandatangan`
--
ALTER TABLE `tandatangan`
  MODIFY `id_ttd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
