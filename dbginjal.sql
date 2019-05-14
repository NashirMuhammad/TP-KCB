-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 03:05 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbginjal`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `no` int(10) NOT NULL,
  `ID_penyakit` varchar(5) NOT NULL,
  `ID_gejala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`no`, `ID_penyakit`, `ID_gejala`) VALUES
(1, 'P001', 'G001'),
(2, 'P001', 'G002'),
(4, 'P001', 'G003'),
(5, 'P001', 'G005'),
(6, 'P001', 'G006'),
(7, 'P001', 'G008'),
(8, 'P001', 'G009'),
(9, 'P001', 'G010'),
(10, 'P001', 'G021'),
(11, 'P001', 'G023'),
(12, 'P001', 'G025'),
(13, 'P001', 'G027'),
(14, 'P001', 'G029'),
(15, 'P001', 'G030'),
(16, 'P002', 'G002'),
(17, 'P002', 'G003'),
(18, 'P002', 'G009'),
(19, 'P002', 'G014'),
(20, 'P002', 'G022'),
(21, 'P002', 'G026'),
(22, 'P002', 'G028'),
(23, 'P003', 'G003'),
(24, 'P003', 'G007'),
(25, 'P003', 'G008'),
(26, 'P003', 'G010'),
(27, 'P003', 'G015'),
(28, 'P003', 'G016'),
(29, 'P003', 'G017'),
(30, 'P003', 'G018'),
(31, 'P003', 'G026'),
(32, 'P004', 'G002'),
(33, 'P004', 'G011'),
(34, 'P004', 'G016'),
(35, 'P004', 'G017'),
(36, 'P004', 'G018'),
(37, 'P004', 'G020'),
(38, 'P004', 'G024'),
(39, 'P004', 'G028'),
(40, 'P004', 'G030'),
(41, 'P005', 'G002'),
(42, 'P005', 'G003'),
(43, 'P005', 'G008'),
(44, 'P005', 'G010'),
(45, 'P005', 'G012'),
(46, 'P005', 'G013'),
(47, 'P005', 'G014'),
(48, 'P005', 'G017'),
(49, 'P005', 'G019'),
(50, 'P006', 'G002'),
(51, 'P006', 'G003'),
(52, 'P006', 'G004'),
(53, 'P006', 'G016'),
(54, 'P007', 'G002'),
(55, 'P007', 'G008'),
(56, 'P007', 'G009'),
(57, 'P007', 'G015'),
(58, 'P007', 'G018'),
(59, 'P007', 'G028'),
(60, 'P007', 'G030'),
(61, 'P008', 'G002'),
(62, 'P008', 'G003'),
(63, 'P008', 'G004'),
(64, 'P008', 'G007'),
(65, 'P008', 'G008'),
(66, 'P008', 'G010'),
(67, 'P008', 'G016'),
(68, 'P008', 'G018'),
(69, 'P008', 'G026'),
(70, 'P009', 'G002'),
(71, 'P009', 'G003'),
(72, 'P009', 'G004'),
(73, 'P009', 'G006'),
(74, 'P009', 'G016'),
(75, 'P009', 'G018'),
(76, 'P010', 'G012'),
(77, 'P010', 'G013'),
(78, 'P010', 'G016'),
(79, 'P010', 'G025'),
(80, 'P010', 'G030');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `ID_gejala` varchar(5) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`ID_gejala`, `nama_gejala`) VALUES
('G001', 'Berkurangnya rasa, terutama ditangan'),
('G002', 'Darah di dalam air kencing (hematuria)'),
('G003', 'Demam'),
('G004', 'Desakan untuk kencing'),
('G005', 'Kejang'),
('G006', 'Kencing di malam hari'),
('G007', 'Mengigil'),
('G008', 'Mual'),
('G009', 'Mudah lelah'),
('G010', 'Muntah'),
('G011', 'Nafsu makan menurun'),
('G012', 'Nanah di air kencing'),
('G013', 'Nyeri di tulang pinggul'),
('G014', 'Nyerih di daerah kandung kemih'),
('G015', 'Nyeri di daerah ginjal'),
('G016', 'Nyeri ketika kencing (disuria)'),
('G017', 'Nyeri perut'),
('G018', 'Nyeri punggung bagian bawah'),
('G019', 'Nyeri yang hilang timbul'),
('G020', 'Pembengkakan organ tubuh tertentu'),
('G021', 'Pembengkakan yang menyeluruh'),
('G022', 'Penurunan berat badan'),
('G023', 'Perubahan mental / suasana hati'),
('G024', 'Rambut dan kuku menjadi rapuh'),
('G025', 'Ruam kulit / kulit kemerahan'),
('G026', 'Sering kencing'),
('G027', 'Syok atau kaget'),
('G028', 'Tekanan darah tinggi / hipertensi'),
('G029', 'Tiemor tangan'),
('G030', 'Volume air kencing berkurang');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `ID_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(30) NOT NULL,
  `definisi_penyakit` text NOT NULL,
  `obat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`ID_penyakit`, `nama_penyakit`, `definisi_penyakit`, `obat`) VALUES
('P001', 'Gagal ginjal', 'Gagal ginjal adalah suatu keadaan di mana terdapat penurunan fungsi ginjal', 'Melakukan tindakan untuk membebaskan sumbatan aliran keluar urine. Pada kondisi gangguan ginjal akut yang berat, hemodialisis dapat dipertimbangkan'),
('P002', 'Kanker ginjal', 'Kanker ginjal adalah kanker yang berasal dari dalam ginjal', 'Operasi, Terapi ablasi, Embolisasi, Radioterapi'),
('P003', 'Pielonefritis', 'Infeksi ginjal atau pielonefritis terjadi karena berpindahnya bakteri dari kandung kemih ke ginjal, yang dapat menimbulkan rasa tidak nyaman atau nyeri', ''),
('P004', 'Sindroma nefrotik', 'Sindrom nefrotik adalah gangguan ginjal yang menyebabkan tubuh manusia kehilangan terlalu banyak protein yang dibuang melalui urine', ''),
('P005', 'Hedronefrosis', 'Hidronefrosis, secara harfiah berarti air di dalam ginjal, mengacu pada distensi dan pelebaran renal pelvis dan renal calyx, biasanya disebabkan oleh adanya penyumbatan aliran urin di ginjal', ''),
('P006', 'Kanker kandung kemih', 'Kanker kandung kemih adalah tumor ganas yang terjadi di dalam kandung kemih. Kandung kemih sendiri adalah organ yang berfungsi untuk menampung urin sebelum disalurkan keluar tubuh saat buang air kecil', ''),
('P007', 'Ginjal polikista', 'Penyakit Ginjal Polikistik. Penyakit ginjal polikistik adalah penyakit keturunan dimana sekelompok kista muncul di dalam ginjal', ''),
('P008', 'Nefritis tububinerstisialik', 'Nefritis adalah penyakit yang ditandai dengan peradangan ginjal', ''),
('P009', 'Sistitis', 'Sistitis adalah peradangan kandung kemih, yaitu organ yang bertanggug jawab mengeluarkan air kemih', ''),
('P010', 'Infeksi saluran kemih', 'Infeksi saluran kemih (ISK) adalah infeksi bakteri yang mengenai bagian dari saluran kemih', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`no`),
  ADD KEY `ID_penyakit` (`ID_penyakit`),
  ADD KEY `ID_gejala` (`ID_gejala`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`ID_gejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`ID_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aturan`
--
ALTER TABLE `aturan`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`ID_gejala`) REFERENCES `gejala` (`ID_gejala`),
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`ID_penyakit`) REFERENCES `penyakit` (`ID_penyakit`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
