-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 06:00 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if6`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `NO` varchar(4) NOT NULL,
  `NAMA` varchar(25) NOT NULL,
  `PRODI` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`NO`, `NAMA`, `PRODI`) VALUES
('A001', 'FAHRA RAGITA', 'AKUNTANSI'),
('A002', 'RUDIANA', 'INFORMATIKA'),
('A003', 'GAGA', 'MANAJEMEN'),
('A004', 'DONI', 'INFORMATIKA'),
('A005', 'REED', 'MANAJEMEN');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kodebrg` varchar(5) NOT NULL,
  `namabarang` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kodebrg`, `namabarang`, `harga`, `stok`) VALUES
('B001', 'ALQURAN', 50000, 5),
('B002', 'LAPTOP', 5000000, 5),
('B003', 'MOUSE', 60000, 4),
('B004', 'FLASHDISK', 50000, 50),
('B005', 'MODEM 4G', 200000, 10),
('B006', 'HANDPHONE', 2000000, 10),
('B007', 'MONITOR', 80000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `KODE` varchar(5) NOT NULL,
  `KODEPENERBIT` varchar(5) NOT NULL,
  `KODEPENGARANG` varchar(6) NOT NULL,
  `JUDUL` varchar(25) NOT NULL,
  `HARGA` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`KODE`, `KODEPENERBIT`, `KODEPENGARANG`, `JUDUL`, `HARGA`) VALUES
('BK001', 'PN002', 'PNG003', 'PEMROGRAMAN PHP', 150000),
('BK002', 'PN002', 'PNG001', 'PHYTON', 100000),
('BK003', 'PN001', 'PNG002', 'PEMROGRAMAN ANDROID', 175000),
('BK004', 'PN003', 'PNG003', 'VISUAL BASIC', 125000),
('BK005', 'PN003', 'PNG004', 'MICROSOFT EXCEL', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(8) NOT NULL,
  `NAMA` varchar(20) NOT NULL,
  `ALAMAT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NAMA`, `ALAMAT`) VALUES
('10109001', 'RINA DEWI', 'JL.PAJAJARAN'),
('10109002', 'BUDIMAN', 'JL.KARAPITAN'),
('10109003', 'DEWI', 'JL.NANJUNG'),
('10109004', 'RIDWAN', 'JL.CIBEBER');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `KODEMK` varchar(6) NOT NULL,
  `NAMAMK` varchar(20) NOT NULL,
  `SKS` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`KODEMK`, `NAMAMK`, `SKS`) VALUES
('IF1001', 'ALGORITMA', 3),
('IF1002', 'PANCASILA', 2),
('IF1003', 'KOMPUTER IT-1', 2),
('IF1004', 'MATEMATIKA', 3);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `NO` int(11) NOT NULL,
  `PEMINJAM` varchar(4) NOT NULL,
  `KODEBUKU` varchar(5) NOT NULL,
  `TGLPINJAM` varchar(10) NOT NULL,
  `TGLKEMBALI` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`NO`, `PEMINJAM`, `KODEBUKU`, `TGLPINJAM`, `TGLKEMBALI`) VALUES
(1, 'A001', 'BK001', '10/07/2022', '12/07/2022'),
(2, 'A002', 'BK002', '11/07/2022', '15/07/2022'),
(3, 'A003', 'BK004', '08/07/2022', '10/07/2022'),
(4, 'A004', 'BK003', '09/07/2022', '10/07/2022'),
(5, 'A005', 'BK001', '12/07/2022', '14/07/2022'),
(6, 'A001', 'BK002', '12/07/2022', '15/07/2022');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `KODE` varchar(5) NOT NULL,
  `NAMAPENERBIT` varchar(25) NOT NULL,
  `KOTA` varchar(25) NOT NULL,
  `TELP` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`KODE`, `NAMAPENERBIT`, `KOTA`, `TELP`) VALUES
('PN001', 'PT.GRAMEDIA', 'JAKARTA', '08121250124'),
('PN002', 'CV.GRAHA ILMU', 'JOGYAKARTA', '08134123456'),
('PN003', 'CV.ANDI OFFSET', 'JOGYAKARTA', '08781232323'),
('PN004', 'PT.INFORMATIKA', 'BANDUNG', '08568723232');

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `KODE` varchar(6) NOT NULL,
  `NAMAPENGARANG` varchar(25) NOT NULL,
  `ALAMAT` varchar(20) NOT NULL,
  `KOTA` varchar(15) NOT NULL,
  `TELP` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`KODE`, `NAMAPENGARANG`, `ALAMAT`, `KOTA`, `TELP`) VALUES
('PNG001', 'ABDUL KADIR', 'JL.JERUK 78', 'SEMARANG', '081234567832'),
('PNG002', 'JOGIYANTO', 'JL.BUDI UTOMO', 'JOGYAKARTA', '085623232311'),
('PNG003', 'TARYANA SURYANA', 'JL.CIWARUGA', 'BANDUNG', '087832908499'),
('PNG004', 'BUDI PERMANA', 'JL.DAGO', 'BANDUNG', '08182332223');

-- --------------------------------------------------------

--
-- Table structure for table `perwalian`
--

CREATE TABLE `perwalian` (
  `ID` int(5) NOT NULL,
  `NIM` varchar(8) NOT NULL,
  `KODEMK` varchar(6) NOT NULL,
  `TAHUNAKADEMIK` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perwalian`
--

INSERT INTO `perwalian` (`ID`, `NIM`, `KODEMK`, `TAHUNAKADEMIK`) VALUES
(1, '10109001', 'IF1001', 20181),
(2, '10109001', 'IF1002', 20181),
(3, '10109002', 'IF1002', 20181),
(4, '10109003', 'IF1003', 20181),
(5, '10109001', 'IF1001', 20181);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`NO`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kodebrg`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`KODE`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`KODEMK`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`NO`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`KODE`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`KODE`);

--
-- Indexes for table `perwalian`
--
ALTER TABLE `perwalian`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `perwalian`
--
ALTER TABLE `perwalian`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
