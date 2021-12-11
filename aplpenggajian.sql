-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Des 2021 pada 17.36
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplpenggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'staff marketing', '4000000', '800000', '500000'),
(2, 'staff finance', '4300000', '500001', '500000'),
(5, 'staff manager', '10000000', '1000000', '500000'),
(6, 'crew', '4100000', '500000', '500000'),
(7, 'cashir', '4100000', '500000', '500000'),
(8, 'HO', '9000000', '1000000', '500000'),
(9, 'Admin', '4300000', '500000', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(11, '082021', '17190572', 'Arip Gunawan', 'Laki-Laki', 'staff marketing', 26, 3, 1),
(12, '082021', '17189875', 'Gunawan Wicahyo', 'Laki-Laki', 'staff finance', 27, 1, 2),
(13, '082021', '17189765', 'Lenisa Dianasari', 'perempuan', 'HO', 30, 0, 0),
(14, '082021', '17165654', 'Nisa Paujiah', 'perempuan', 'cashir', 22, 3, 5),
(15, '082021', '13246643', 'Rangga Maulana', 'Laki-Laki', 'staff manager', 30, 0, 0),
(16, '082021', '1719872', 'Yuda Hendrawan', 'Laki-Laki', 'crew', 25, 2, 3),
(17, '082021', '1233242', 'indra', 'Laki-Laki', 'crew', 24, 3, 2),
(18, '092021', '17190572', 'Arip Gunawan', 'Laki-Laki', 'Admin', 8, 6, 6),
(19, '092021', '17189875', 'Gunawan Wicahyo', 'Laki-Laki', 'staff finance', 0, 0, 0),
(20, '092021', '1233242', 'indra', 'Laki-Laki', 'crew', 0, 0, 0),
(21, '092021', '17189765', 'Lenisa Dianasari', 'perempuan', 'HO', 0, 0, 0),
(22, '092021', '17165654', 'Nisa Paujiah', 'perempuan', 'cashir', 0, 0, 0),
(23, '092021', '13246643', 'Rangga Maulana', 'Laki-Laki', 'staff manager', 0, 0, 0),
(24, '092021', '1719872', 'Yuda Hendrawan', 'Laki-Laki', 'crew', 0, 0, 0),
(25, '092021', '11122', 'tester', 'Laki-Laki', 'staff marketing', 0, 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(110) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(500) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(10, '17190572', 'Arip Gunawan', 'arip', '827ccb0eea8a706c4c34a16891f84e7b', 'Laki-Laki', 'Admin', '2021-01-24', 'Pegawai Tetap', 'arip1.jpg', 1),
(11, '1719872', 'Yuda Hendrawan', 'yuda', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'crew', '2021-08-11', 'Pegawai Kontrak', 'IMG_20201115_0337471.jpg', 2),
(12, '17165654', 'Nisa Paujiah', 'nisa', '81dc9bdb52d04dc20036dbd8313ed055', 'perempuan', 'cashir', '2021-08-25', 'Pegawai Kontrak', 'IMG_20190608_143520.jpg', 2),
(13, '17189765', 'Lenisa Dianasari', 'lenisa', '81dc9bdb52d04dc20036dbd8313ed055', 'perempuan', 'HO', '2021-08-21', 'Pegawai Tetap', 'IMG_20190608_143947.jpg', 2),
(14, '17189875', 'Gunawan Wicahyo', 'gunawan', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'staff finance', '2021-08-13', 'Pegawai Kontrak', 'IMG-20201209-WA00061.jpg', 2),
(15, '13246643', 'Rangga Maulana', 'rangga', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'staff manager', '2021-08-28', 'Pegawai Kontrak', 'diri.jpg', 2),
(17, '1233242', 'indra', 'indra', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'crew', '2021-08-05', 'Pegawai Kontrak', 'IMG_20201115_0337473.jpg', 2),
(18, '11122', 'tester', 'tester', 'e10adc3949ba59abbe56e057f20f883e', 'Laki-Laki', 'staff marketing', '2021-07-01', 'Pegawai Kontrak', '', 2),
(19, '1234567', 'sandy', 'sandy', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'staff marketing', '2021-10-07', 'Pegawai Tetap', 'arip2.jpg', 2),
(20, '1223456', 'indra', 'indra', '827ccb0eea8a706c4c34a16891f84e7b', 'Laki-Laki', 'staff marketing', '2021-10-22', 'Pegawai Tetap', 'arip3.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(60) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(9, 'alpha', 50000),
(10, 'izin', 100000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
