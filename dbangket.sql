-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 07:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbangket`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `namaDivisi` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `namaDivisi`, `slug`, `foto`) VALUES
(1, 'Ta\'mirul Masjid', 'tamirul-masjid', 'tmr.png'),
(2, 'Bela Negara', 'bela-negara\r\n', 'bl.PNG'),
(3, 'Kebersihan', 'kebersihan', 'kbrshn.PNG'),
(4, 'Lingkungan Hidup', 'lingkungan-hidup', 'lingkup.png'),
(5, 'Olahraga', 'olahraga', 'olah.PNG'),
(6, 'Penerimaan Tamu', 'penerimaan-tamu', 'pentam.PNG'),
(7, 'Bahasa', 'bahasa', 'bahasa.PNG'),
(8, 'Informasi', 'informasi', 'ilan.png'),
(9, 'Keamanan', 'keamanan', 'keamanan.png'),
(10, 'Kesehatan', 'kesehatan', 'kesehatan.png'),
(11, 'Koperasi', 'koperasi', 'Koperasi.png'),
(12, 'Multimedia', 'multimedia', 'mulmed.png'),
(13, 'Dapur', 'dapur', 'dapur.png'),
(16, 'Logistik', 'logistik', 'lgstk.png'),
(18, 'Majelis Perwakilan Konsulat', 'qwert', 'mpk.png'),
(19, 'Daurotul Miyah', 'qwertyui', 'dm.png'),
(20, 'Kesenian', 'dfghjk', 'kesenian.png'),
(21, 'Perpustakaan', 'asdfgh', 'perpus.png'),
(22, 'Pengajaran', 'sdfgh', 'talim.png'),
(23, 'Badan Pengurus Harian', 'badan-pengurus-harian', 'ip4.png');

-- --------------------------------------------------------

--
-- Table structure for table `divisi3`
--

CREATE TABLE `divisi3` (
  `id_divisi2` int(11) NOT NULL,
  `namaDivisi2` varchar(255) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi3`
--

INSERT INTO `divisi3` (`id_divisi2`, `namaDivisi2`, `slug`, `foto`) VALUES
(1, 'Ta\'mirul Masjid', 'tamirul-masjid', 'tmr.png'),
(2, 'Bela Negara', 'bela-negara\r\n', 'bl.PNG'),
(3, 'Kebersihan', 'kebersihan', 'kbrshn.PNG'),
(4, 'Lingkungan Hidup', 'lingkungan-hidup', 'lingkup.png'),
(5, 'Olahraga', 'olahraga', 'olah.PNG'),
(6, 'Penerimaan Tamu', 'penerimaan-tamu', 'pentam.PNG'),
(7, 'Bahasa', 'bahasa', 'bahasa.PNG'),
(8, 'Informasi', 'informasi', 'ilan.png'),
(9, 'Keamanan', 'keamanan', 'keamanan.png'),
(10, 'Kesehatan', 'kesehatan', 'kesehatan.png'),
(11, 'Koperasi', 'koperasi', 'Koperasi.png'),
(12, 'Multimedia', 'multimedia', 'mulmed.png'),
(13, 'Dapur', 'dapur', 'dapur.png'),
(16, 'Logistik', 'logistik', 'lgstk.png'),
(18, 'Majelis Perwakilan Konsulat', 'qwert', 'mpk.png'),
(19, 'Daurotul Miyah', 'qwertyui', 'dm.png'),
(20, 'Kesenian', 'dfghjk', 'kesenian.png'),
(21, 'Perpustakaan', 'asdfgh', 'perpus.png'),
(22, 'Pengajaran', 'asdfgh', 'talim.png'),
(23, 'Badan Pengurus Harian', 'badan-pengurus-harian', 'ip4.png');

-- --------------------------------------------------------

--
-- Table structure for table `divisi4`
--

CREATE TABLE `divisi4` (
  `id_divisi3` int(11) NOT NULL,
  `namaDivisi3` varchar(255) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi4`
--

INSERT INTO `divisi4` (`id_divisi3`, `namaDivisi3`, `slug`, `foto`) VALUES
(1, 'Ta\'mirul Masjid', 'tamirul-masjid', 'tmr.png'),
(2, 'Bela Negara', 'bela-negara\r\n', 'bl.PNG'),
(3, 'Kebersihan', 'kebersihan', 'kbrshn.PNG'),
(4, 'Lingkungan Hidup', 'lingkungan-hidup', 'lingkup.png'),
(5, 'Olahraga', 'olahraga', 'olah.PNG'),
(6, 'Penerimaan Tamu', 'penerimaan-tamu', 'pentam.PNG'),
(7, 'Bahasa', 'bahasa', 'bahasa.PNG'),
(8, 'Informasi', 'informasi', 'ilan.png'),
(9, 'Keamanan', 'keamanan', 'keamanan.png'),
(10, 'Kesehatan', 'kesehatan', 'kesehatan.png'),
(11, 'Koperasi', 'koperasi', 'Koperasi.png'),
(12, 'Multimedia', 'multimedia', 'mulmed.png'),
(13, 'Dapur', 'dapur', 'dapur.png'),
(16, 'Logistik', 'logistik', 'lgstk.png'),
(17, 'Badan Pengurus Harian', 'badan-pengurus-harian', 'ip4.jpg'),
(18, 'Majelis Perwakilan Konsulat', 'qwert', 'mpk.png'),
(19, 'Daurotul Miyah', 'qwertyui', 'dm.png'),
(20, 'Kesenian', 'dfghjk', 'kesenian.png'),
(21, 'Perpustakaan', 'asdfgh', 'perpus.png');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `namaKelas` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `namaKelas`, `keterangan`) VALUES
(1, 'XI A RPL', 'SMK'),
(2, 'XI B RPL', 'SMK'),
(3, 'XI IPS 1', 'SMA'),
(4, 'XI IPS 2', 'SMA'),
(5, 'XI IPA 1', 'SMA'),
(6, 'XI IPA 2', 'SMA'),
(7, 'XI IPA 3', 'SMA'),
(8, 'XI IPA 4', 'SMA'),
(9, 'XI IPS 3', 'SMA'),
(10, 'XI IPS 4', 'SMA'),
(11, 'XI D APL', 'SMK'),
(12, 'XI F OTKP', 'SMK');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_ketua` enum('Ketua','Anggota','Sekertaris','Bendahara') NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `id_divisi2` int(11) NOT NULL,
  `id_divisi3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `is_ketua`, `foto`, `id_kelas`, `id_divisi`, `id_divisi2`, `id_divisi3`) VALUES
(1, 'ADE ALYANI', 'Anggota', 'mpk.png', 6, 23, 18, 18),
(2, 'ADIBA ZAHRATUL UYUN', 'Anggota', '', 6, 0, 0, 0),
(3, 'AI NUR ALIAH', 'Anggota', '', 6, 10, 10, 5),
(4, 'ALFIAH FAUZIAH', 'Anggota', '', 6, 20, 20, 11),
(5, 'ALIFAH FARHAENI RAHMA', 'Anggota', '', 6, 0, 0, 0),
(6, 'ALIFAH ZAHRANI WIJAYANTO', 'Anggota', '', 6, 7, 21, 11),
(7, 'ALIVA KHAYRA YASSIFA', 'Anggota', '', 6, 2, 11, 13),
(8, 'ALMA HASNA UMARTI', 'Anggota', '', 6, 2, 2, 11),
(9, 'ALYA DAVA KHOERUNISA', 'Anggota', '', 6, 5, 11, 18),
(10, 'ALYA FEBRIANTY', 'Anggota', '', 6, 5, 11, 20),
(11, 'AMILIA FITRI', 'Anggota', '', 6, 21, 11, 20),
(12, 'ANISA RIZKYA GUSTIRA', 'Anggota', '', 6, 21, 20, 22),
(13, 'ANNISA ALYAZANI', 'Anggota', '', 6, 10, 9, 8),
(14, 'ASRI DWILESTARI', 'Anggota', '', 6, 10, 10, 20),
(15, 'ASTY RATU ASWINDY', 'Anggota', '', 6, 10, 20, 18),
(16, 'ATHAYA KHULAIDAH HIDAYAT', 'Anggota', '', 6, 21, 10, 7),
(17, 'AURILIA AZAHRA', 'Anggota', '', 6, 9, 11, 2),
(18, 'BENAYA RAMADANI', 'Anggota', '', 6, 10, 5, 16),
(19, 'CHOERUNNISA', 'Anggota', '', 6, 1, 16, 21),
(20, 'CINTIYA', 'Anggota', '', 6, 7, 7, 2),
(21, 'CLARISSA AZKIA', 'Anggota', '', 6, 10, 21, 5),
(22, 'DALFA MUTMAINAH', 'Anggota', '', 6, 10, 10, 21),
(23, 'DENISA RIZKA AMELIA SOLIHAH', 'Anggota', '', 6, 9, 9, 16),
(24, 'DEWI RAHMAWATI', 'Anggota', '', 6, 9, 21, 10),
(25, 'DIHYA AULIA RAHMA', 'Anggota', '', 6, 3, 3, 21),
(26, 'DINI FAJRIAH ROYANI', 'Anggota', '', 6, 7, 7, 11),
(27, 'DIVIA NOVITASARI', 'Anggota', '', 6, 9, 2, 2),
(28, 'EARLY APRILIA RAHMAWATI', 'Anggota', '', 6, 7, 20, 9),
(29, 'EKA NURHASANAH', 'Anggota', '', 6, 9, 11, 11),
(30, 'ELFINA RIANTI', 'Anggota', '', 6, 7, 7, 18),
(31, 'ERFASYA HAFDZAH SEKHENA', 'Anggota', '', 6, 20, 10, 20),
(32, 'ESA MASYRIFATUL KHOLQIYAH', 'Anggota', '', 6, 20, 20, 2),
(33, 'FANY APRILIANI', 'Anggota', '', 6, 11, 7, 21),
(34, 'FEYSABILA RESTIKA DINAR', 'Anggota', '', 6, 20, 10, 21),
(35, 'FITRIE TAHLIA', 'Anggota', '', 6, 9, 9, 16),
(36, 'HAURA NAILAH', 'Anggota', '', 6, 7, 21, 21),
(37, 'HILMA SITI HALIMATUSSA\'DIAH', 'Anggota', '', 6, 0, 0, 0),
(38, 'HUMAIRA AZ-ZAHRA', 'Anggota', '', 6, 12, 12, 12),
(39, 'IIS SUSILAWATI', 'Anggota', '', 6, 2, 2, 20),
(40, 'IRA DETI MARYANI', 'Anggota', '', 6, 9, 20, 10),
(41, 'KEUIS', 'Anggota', '', 6, 2, 18, 9),
(42, 'MAULIDA KHOERUNISSA', 'Anggota', '', 6, 20, 10, 10),
(43, 'REVINA PASHA APRILIA', 'Anggota', '', 6, 9, 9, 18),
(44, 'RINDA TRISNADEWI', 'Anggota', '', 6, 0, 0, 0),
(45, 'SASKIA AYU NURAGNI', 'Anggota', '', 6, 21, 21, 10),
(46, 'ZAHRA ANISA NURFALAH', 'Anggota', '', 6, 10, 5, 5),
(47, 'AJENG KESUMAWATI', 'Anggota', '', 7, 2, 2, 20),
(48, 'HILYATUL AULIA AGUSTIANI', 'Anggota', '', 7, 22, 10, 21),
(49, 'INNAYAH KHOERUNNISA', 'Anggota', '', 7, 16, 16, 22),
(50, 'INTAN HOLIDAH', 'Anggota', '', 7, 10, 21, 16),
(51, 'INTANIA GUNASAH', 'Anggota', '', 7, 5, 5, 10),
(52, 'IQLIMA PUTRIANA KURNIA', 'Anggota', '', 7, 7, 11, 16),
(53, 'IRA FITRIANI AMANDA', 'Anggota', 'bahasa.PNG', 7, 23, 7, 7),
(54, 'IRMAWATI', 'Anggota', '', 7, 10, 22, 16),
(55, 'JILAN AFLAHA SAFFANAH', 'Anggota', '', 7, 8, 23, 10),
(56, 'KAYLA AURA PUTRI FIRDAUS', 'Anggota', '', 7, 0, 0, 0),
(57, 'KEISHA NAJWA FATHARANI', 'Anggota', '', 7, 10, 23, 7),
(58, 'KHAIRA LAMYA LATVIA', 'Anggota', '', 7, 12, 12, 12),
(59, 'KHILDA TAJUSSAKINAH', 'Anggota', '', 7, 9, 10, 7),
(60, 'KHOERUNISA', 'Anggota', '', 7, 20, 20, 10),
(61, 'LATASYA PUTRI WIDIANTI', 'Anggota', '', 7, 8, 2, 18),
(62, 'MANDA FIRTZA RAHMAN', 'Anggota', '', 7, 2, 18, 2),
(63, 'MEGA UTAMI', 'Anggota', '', 7, 0, 0, 0),
(64, 'MELDA AMELIA', 'Anggota', '', 7, 9, 9, 7),
(65, 'MELDA FEBRIANA', 'Anggota', '', 7, 9, 9, 7),
(66, 'MIURA AFLAH', 'Anggota', '', 7, 21, 10, 20),
(67, 'MUTI FITRIA', 'Anggota', '', 7, 10, 20, 16),
(68, 'NADIA SRI', 'Anggota', '', 7, 2, 2, 18),
(69, 'NAZWA NURHALISA', 'Anggota', '', 7, 21, 10, 20),
(70, 'NAZWA FIBRIA', 'Anggota', '', 7, 8, 0, 0),
(71, 'NAZWA FITRIA', 'Anggota', '', 7, 21, 23, 20),
(72, 'NAZWA SITI', 'Anggota', '', 7, 23, 9, 23),
(73, 'NENG BASMAH', 'Anggota', '', 7, 10, 10, 16),
(74, 'NIDA ZAHRATUL AIN', 'Anggota', '', 7, 9, 9, 10),
(75, 'NURAENI LESTARI', 'Anggota', '', 7, 10, 11, 20),
(76, 'NURAINI LUBIS', 'Anggota', '', 7, 10, 10, 9),
(77, 'NURUL INAYAH', 'Anggota', '', 7, 7, 5, 22),
(78, 'PRISELIA SAPUTRI', 'Anggota', '', 7, 20, 21, 11),
(79, 'PUTRI AMELIA', 'Anggota', '', 7, 2, 2, 7),
(80, 'PUTRI LUINATALIA', 'Anggota', '', 7, 9, 9, 18),
(81, 'RAFIZAH RAHADATUL', 'Anggota', '', 7, 23, 9, 2),
(82, 'RAISA PUTRI', 'Anggota', '', 7, 22, 22, 21),
(83, 'RAISYA SALSABILA', 'Anggota', '', 7, 2, 2, 20),
(84, 'RANTI ALPIANI', 'Anggota', '', 7, 10, 9, 10),
(85, 'RENI SAPUTRI', 'Anggota', '', 7, 16, 11, 11),
(86, 'RISMA ROBIATUL', 'Anggota', '', 7, 20, 11, 10),
(87, 'SITI QODRIA', 'Anggota', '', 7, 23, 20, 18),
(88, 'SYIFA ARIANI', 'Anggota', '', 7, 21, 20, 9),
(89, 'RHIMA NOVIANTI', 'Anggota', '', 7, 9, 11, 16),
(90, 'AMANDA FIKA WULANDARI', 'Anggota', '', 8, 10, 10, 21),
(91, 'ASTI NURLAELA', 'Anggota', '', 8, 7, 8, 7),
(92, 'KAYLA PUTRI MEIDIANI SYAMSUDIN', 'Anggota', '', 8, 9, 20, 5),
(93, 'NAZWA SITI ZAQIYAH', 'Anggota', '', 8, 10, 0, 0),
(94, 'REFA MAULIDA MELATI', 'Anggota', '', 8, 20, 7, 10),
(95, 'RHISMA PUTRI SHAILLA', 'Anggota', '', 8, 12, 10, 23),
(96, 'RIZQA HASANAH', 'Anggota', '', 8, 12, 12, 23),
(97, 'ROPAHIYATUL KAMAL', 'Anggota', '', 8, 8, 10, 10),
(98, 'S DEA SINTIA', 'Anggota', '', 8, 8, 8, 10),
(99, 'SALSABILA RAHMAYANTI', 'Anggota', '', 8, 5, 10, 2),
(100, 'SALWA NINGTIA FITRI', 'Anggota', '', 8, 16, 2, 2),
(101, 'SANTI DWI PUTRI', 'Anggota', '', 8, 9, 9, 7),
(102, 'SARAH AMEISYA AGUSTINA', 'Anggota', '', 8, 7, 7, 23),
(103, 'SEFILA AYUNINGTIAS', 'Anggota', '', 8, 10, 5, 10),
(104, 'SHANDRA RHAMADANI', 'Anggota', '', 8, 9, 2, 22),
(105, 'SHEILA  MARITA INDRIANI', 'Anggota', '', 8, 10, 10, 11),
(106, 'SIFA NURPADILAH', 'Anggota', '', 8, 21, 21, 20),
(107, 'SINTIA SEPTIANI', 'Anggota', '', 8, 10, 9, 11),
(108, 'SITI ADHA', 'Anggota', '', 8, 10, 10, 20),
(109, 'SITI ALIYA HABIBAH', 'Anggota', '', 8, 7, 7, 16),
(110, 'SITI FATIMAH AZ-ZAHRA', 'Anggota', '', 8, 2, 2, 18),
(111, 'SITI FATIMAH ZAHRA RAMDHANIAH', 'Anggota', '', 8, 10, 10, 18),
(112, 'SITI HAJRAH', 'Anggota', '', 8, 8, 8, 10),
(113, 'SITI MASNUNAH', 'Anggota', '', 8, 5, 5, 9),
(114, 'SITI NAJMI FADIATUL ULYA', 'Anggota', '', 8, 7, 7, 22),
(115, 'SITI NAYLATUL KARIMAH', 'Anggota', '', 8, 8, 8, 9),
(116, 'SITI NUR AJIZAH', 'Anggota', '', 8, 20, 9, 10),
(117, 'SITI ZAHRA NAZWA SARAHAH', 'Anggota', '', 8, 21, 20, 11),
(118, 'SITORESMI ADININGTIAS', 'Anggota', '', 8, 20, 20, 18),
(119, 'SULISTIA RAHMANIA', 'Anggota', '', 8, 5, 20, 10),
(120, 'SYAHLATUN NAJWA', 'Anggota', '', 8, 8, 8, 9),
(121, 'SYIFA AINUN NAZWA NUGRAHA', 'Anggota', '', 8, 10, 9, 9),
(122, 'SYIFFA FAUZIAH ARYANI', 'Anggota', '', 8, 16, 16, 11),
(123, 'THESA NURTASYIRA MAULANA', 'Anggota', '', 8, 7, 7, 18),
(124, 'TIARA SUCI ANJARWATI', 'Anggota', '', 8, 9, 8, 7),
(125, 'VINA AULIA', 'Anggota', '', 8, 2, 8, 20),
(126, 'WINDI DIANA NINGSIH', 'Anggota', '', 8, 21, 20, 11),
(127, 'WULAN SAPITRI', 'Anggota', '', 8, 8, 8, 10),
(128, 'YESTI ILYASARI', 'Anggota', '', 8, 9, 9, 18),
(129, 'YUYUN YUNINGSIH', 'Anggota', '', 8, 16, 11, 11),
(130, 'ZAHRA NOOR AZMI', 'Anggota', '', 8, 20, 20, 11),
(131, 'ZAHWA FEBRI ARTAMEDIANA', 'Anggota', '', 8, 20, 20, 10),
(132, 'ZALFA NADYA QURRATU \'AINI', 'Anggota', '', 8, 9, 9, 10),
(133, 'ZIA AULIA', 'Anggota', '', 8, 20, 10, 10),
(134, 'ZULFA AFFIFAH', 'Anggota', '', 8, 7, 7, 23),
(135, 'ADELIA FEBRIYANTI', 'Anggota', '', 9, 10, 10, 11),
(136, 'AISYA AULIA SYAHRA', 'Anggota', '', 9, 9, 9, 5),
(137, 'ALIATU DISCA AMALIA', 'Anggota', '', 9, 22, 22, 5),
(138, 'ALINI WIDYASTUTI', 'Anggota', '', 9, 2, 21, 11),
(139, 'ALYA NURSYAFARINA', 'Anggota', '', 9, 11, 16, 16),
(140, 'AMELIA', 'Anggota', '', 9, 7, 7, 10),
(141, 'ASMERY SUCI SETIAWATI', 'Anggota', '', 9, 22, 22, 11),
(142, 'AYU AMELIA PEBRIANI', 'Anggota', '', 9, 21, 11, 16),
(143, 'D. ALNI PEBRIYANINGSIH', 'Anggota', '', 9, 23, 10, 18),
(144, 'DEA AULIA', 'Anggota', '', 9, 21, 21, 7),
(145, 'DEA DESWITA', 'Anggota', '', 9, 7, 22, 18),
(146, 'DESI LUSIANA', 'Anggota', '', 9, 11, 16, 9),
(147, 'DEVIANA INTAN ISKANDAR', 'Anggota', '', 9, 11, 16, 11),
(148, 'FAKHRIYA ILIYIN', 'Anggota', '', 9, 10, 22, 18),
(149, 'FARIHA MUTIA RAHMAN', 'Anggota', '', 9, 7, 7, 21),
(150, 'INDAH PUTRI', 'Anggota', '', 9, 9, 9, 16),
(151, 'KANIA SALMA NAFISAH', 'Anggota', '', 9, 10, 9, 11),
(152, 'KARISMA PUTRI RAMDANI', 'Anggota', '', 9, 7, 21, 3),
(153, 'KARTIKA DEWIYULIA', 'Anggota', '', 9, 10, 10, 16),
(154, 'KIRANA AJEUNG CHANTIKA', 'Anggota', '', 9, 20, 20, 21),
(155, 'KYAIN HURIAH RAHMAH', 'Anggota', '', 9, 21, 21, 11),
(156, 'LUTFIA AZZAHRA', 'Anggota', '', 9, 20, 20, 11),
(157, 'NAILA FADILAH FAJRI', 'Anggota', '', 9, 9, 9, 11),
(158, 'NAJWA NURFAUZIAH', 'Anggota', '', 9, 2, 2, 20),
(159, 'NAYLA FADILAH', 'Anggota', '', 9, 9, 9, 11),
(160, 'NAZWA KHOIRUNNISA MUNAWAR', 'Anggota', '', 9, 12, 12, 7),
(161, 'NENG SANI PUTRI ARYANTI', 'Anggota', '', 9, 8, 8, 10),
(162, 'NOPI NURAENI', 'Anggota', '', 9, 16, 20, 10),
(163, 'NOVA BINTANG AULIA', 'Anggota', '', 9, 9, 9, 16),
(164, 'NOVENTI ANGGRAENI', 'Anggota', '', 9, 10, 10, 11),
(165, 'NOVI NUR AFIFAH DARUSMAN', 'Anggota', '', 9, 22, 22, 9),
(166, 'NOVITA SELLA', 'Anggota', '', 9, 9, 9, 9),
(167, 'RESTI NURAIDA', 'Anggota', '', 9, 20, 16, 20),
(168, 'AGISTIA NURBANI RAJABA', 'Anggota', '', 10, 7, 21, 8),
(169, 'HELWA SALSA BILLA', 'Anggota', '', 10, 8, 20, 21),
(170, 'NABILA SEPTRIANA HAPSARI', 'Anggota', '', 10, 9, 9, 5),
(171, 'RIFA AZZAHRA', 'Anggota', '', 10, 11, 9, 10),
(172, 'RIMA AGUSTINA', 'Anggota', '', 10, 23, 10, 21),
(173, 'RIMA SUCIATI SUKMA', 'Anggota', '', 10, 10, 23, 13),
(174, 'RINDI NUR AWALIAH', 'Anggota', '', 10, 9, 20, 22),
(175, 'RIRIN NURHALISA', 'Anggota', '', 10, 7, 7, 10),
(176, 'RISKA BELLA RIANA', 'Anggota', '', 10, 5, 11, 5),
(177, 'RISKA PUTRI ARIESTIANDI', 'Anggota', '', 10, 10, 9, 11),
(178, 'RISMA NUR SAFITRI', 'Anggota', '', 10, 16, 19, 11),
(179, 'RISMA SITI NUR HOLIFAH', 'Anggota', '', 10, 7, 23, 21),
(180, 'SANY NURMALA', 'Anggota', '', 10, 7, 1, 21),
(181, 'SHELIN AYUNDA', 'Anggota', '', 10, 9, 16, 3),
(182, 'SILPI GINA NURPADILAH', 'Anggota', '', 10, 5, 11, 13),
(183, 'SILVIA AZZAHRA', 'Anggota', '', 10, 0, 0, 0),
(184, 'SINTA RAHAYU AZAHRA', 'Anggota', '', 10, 10, 2, 0),
(185, 'SIT HAFSA QIFTIA', 'Anggota', '', 10, 20, 21, 22),
(186, 'SITI ARUM NAFILAH', 'Anggota', '', 10, 22, 9, 11),
(187, 'SITI DEWI HODIZAH', 'Anggota', '', 10, 21, 10, 9),
(188, 'SITI IRMA', 'Anggota', '', 10, 21, 20, 9),
(189, 'SITI RAHMAWATI SOPIAN', 'Anggota', '', 10, 3, 16, 11),
(190, 'SITI ROHANI', 'Anggota', '', 10, 23, 23, 8),
(191, 'SITI SYARAH KHOPIPAH', 'Anggota', '', 10, 9, 0, 0),
(192, 'SRI DEWI PUTRI', 'Anggota', '', 10, 22, 16, 16),
(193, 'SYIFA AWALIYAH', 'Anggota', '', 10, 10, 10, 20),
(194, 'TANIA FEBRI AMANDA', 'Anggota', '', 10, 11, 11, 16),
(195, 'UMIASIH WULANDARI', 'Anggota', '', 10, 0, 0, 0),
(196, 'VIVI NUR\'AFIFAH', 'Anggota', '', 10, 21, 20, 0),
(197, 'YHESA HERMAWAN', 'Anggota', '', 10, 22, 7, 10),
(198, 'ZAHRA KHAIRUNISA', 'Anggota', '', 10, 20, 10, 9),
(199, 'ZIA ROBIATUL ADAWIYANA', 'Anggota', '', 10, 2, 0, 0),
(200, 'ALYA RAHMA UTHANTY', 'Anggota', '', 2, 16, 16, 5),
(201, 'ANNISA ARSYA RIYANI', 'Anggota', '', 2, 11, 16, 21),
(202, 'AURA SIVAN HIDAYATUL AZZA', 'Anggota', '', 2, 11, 9, 16),
(203, 'LUSI AGUSTIN', 'Anggota', '', 2, 16, 5, 16),
(204, 'MAISHA GHABIYA', 'Anggota', '', 2, 7, 21, 20),
(205, 'MAR\'ATU SADIAH', 'Anggota', '', 2, 22, 16, 1),
(206, 'MUTHIA RAHMAH', 'Anggota', '', 2, 12, 0, 0),
(207, 'NADIRA AULIA KHOIRUNNISA', 'Anggota', '', 2, 16, 16, 16),
(208, 'PUTRI NANDINA', 'Anggota', '', 2, 16, 20, 0),
(209, 'RADEN RORO YESSY MARLATINSHANI', 'Anggota', '', 2, 11, 20, 10),
(210, 'RAHMA DINA ARIYANTI', 'Anggota', '', 2, 2, 23, 20),
(211, 'RESVITA JIVANKA ALAWIYAH', 'Anggota', '', 2, 9, 3, 16),
(212, 'RIZA ZAKIA', 'Anggota', '', 2, 9, 21, 11),
(213, 'RIZKI SAPUTRI', 'Anggota', '', 2, 10, 9, 16),
(214, 'SHALVA AL ZAHRA ANALISIA', 'Anggota', '', 2, 16, 11, 16),
(215, 'SINTA WATI', 'Anggota', '', 2, 9, 21, 2),
(216, 'SYIFA CHOERUNISA', 'Anggota', '', 2, 16, 11, 1),
(217, 'WITA ARUNITA', 'Anggota', '', 2, 5, 22, 20),
(218, 'ADILA NAJA AZ ZAHRA	', 'Anggota', '', 11, 20, 22, 10),
(219, 'AJENG JALIANTI DEWI', 'Anggota', '', 11, 10, 9, 23),
(220, 'ANISYA FAUZIAH PUTRI', 'Anggota', '', 11, 2, 7, 0),
(221, 'AUNI LAILA HAMADA', 'Anggota', '', 11, 21, 23, 9),
(222, 'BINTANG SHIYAMI', 'Anggota', '', 11, 7, 9, 21),
(223, 'DALPA MAULIDA', 'Anggota', '', 11, 22, 9, 5),
(224, 'DAVINA NABILLAH ZAHRA', 'Anggota', '', 11, 2, 2, 21),
(225, 'DINA NURFADILAH', 'Anggota', '', 11, 16, 16, 16),
(226, 'FADILLA DINI NUR MELATI', 'Anggota', '', 11, 21, 21, 11),
(227, 'FILWA SALSABILA', 'Anggota', '', 11, 16, 11, 16),
(228, 'GITA CAHYA OKTAVIANI', 'Anggota', '', 11, 21, 8, 23),
(229, 'HAIFA SALSABILA', 'Anggota', '', 11, 8, 7, 23),
(230, 'IZMI NUR ASSYANI', 'Anggota', '', 11, 8, 10, 10),
(231, 'JULIA APRILLIANI ', 'Anggota', '', 11, 16, 11, 16),
(232, 'NURAINI', 'Anggota', '', 11, 16, 16, 11),
(233, 'NURHABIBAH', 'Anggota', '', 11, 9, 9, 20),
(234, 'PUTRI NOVIA SANDRA', 'Anggota', '', 11, 10, 9, 21),
(235, 'SALWA AULIYA', 'Anggota', '', 11, 11, 9, 22),
(236, 'SARAH ROSVIANI ', 'Anggota', '', 11, 9, 16, 16),
(237, 'SELFI AFIRA ', 'Anggota', '', 11, 2, 2, 20),
(238, 'SITI NUR KHOLIPAH HASTUTI ', 'Anggota', '', 11, 10, 11, 20),
(239, 'SITI ZIA HAPIPAH', 'Anggota', '', 11, 3, 9, 10),
(240, 'SUSY TRISMA RAYANI ', 'Anggota', '', 11, 16, 20, 16),
(241, 'SYAFA ARFIANI', 'Anggota', '', 11, 21, 21, 11),
(242, 'TIARA ANNISA FITRI ', 'Anggota', '', 11, 10, 16, 11),
(243, 'ADELIA DWI PUTRI FADILAH', 'Anggota', '', 12, 10, 10, 20),
(244, 'AHDA SITI NURMAULIDA', 'Anggota', '', 12, 8, 8, 10),
(245, 'ALYA CITRA ANBIYA ', 'Anggota', '', 12, 2, 23, 7),
(246, 'ALLSYA DELIANA', 'Anggota', '', 12, 11, 10, 21),
(247, 'AMELIA RIMA AZ ZAHRA', 'Anggota', '', 12, 8, 7, 21),
(248, 'CHIKA MARSHA NABILA', 'Anggota', '', 12, 10, 10, 22),
(249, 'CITA DEVINA', 'Anggota', '', 12, 5, 9, 16),
(250, 'DIANA DEWI REZEKI', 'Anggota', '', 12, 19, 5, 9),
(251, 'DWI AULIA SYAHAD', 'Anggota', '', 12, 13, 18, 9),
(252, 'DWIANA SUCI SEPTIANI', 'Anggota', '', 12, 16, 10, 10),
(253, 'FITRI ANGGRAENI', 'Anggota', '', 12, 3, 9, 3),
(254, 'FITRI RAHMA DEWI', 'Anggota', '', 12, 5, 5, 16),
(255, 'GINA KOMALA DEWI', 'Anggota', '', 12, 1, 18, 18),
(256, 'HADIYAN LAILA ADHA ', 'Anggota', '', 12, 21, 5, 9),
(257, 'HANI SITI NURAENI', 'Anggota', '', 12, 2, 9, 23),
(258, 'HERA APRILIANI', 'Anggota', '', 12, 16, 11, 10),
(259, 'HURIYATUL AULIA', 'Anggota', '', 12, 21, 9, 20),
(260, 'INTAN FAHIRA NABIL', 'Anggota', '', 12, 16, 16, 16),
(261, 'IRMA KHOIRUNISA SOPIANI', 'Anggota', '', 12, 8, 23, 20),
(262, 'IRMA MASRULOH', 'Anggota', '', 12, 10, 20, 9),
(263, 'ITA JUWITA', 'Anggota', '', 12, 9, 11, 10),
(264, 'KARINA AULIA', 'Anggota', '', 12, 2, 10, 16),
(265, 'KARMILAH', 'Anggota', '', 12, 23, 23, 21),
(266, 'LAIYA NALURI NUR ZAINI', 'Anggota', '', 12, 12, 2, 20),
(267, 'MAWARNI NURHASANAH', 'Anggota', '', 12, 23, 1, 21),
(268, 'MELINDA SITI SAFITRI', 'Anggota', '', 12, 11, 9, 2),
(269, 'MITA SYAMSIA', 'Anggota', '', 12, 10, 10, 16),
(270, 'MUTIA AYUNING TIAS ', 'Anggota', '', 12, 23, 9, 16),
(271, 'NAILA FAJRIN JULIANDINI ', 'Anggota', '', 12, 5, 21, 5),
(272, 'NAILA YUNITA', 'Anggota', '', 12, 11, 11, 13),
(273, 'NANDA NABILA SETIAYADI', 'Anggota', '', 12, 23, 16, 16),
(274, 'NASTASSYA TERESHKOVA', 'Anggota', '', 12, 21, 21, 11),
(275, 'NAZWA ZALIANTI', 'Anggota', '', 12, 10, 20, 20),
(276, 'RINI EKA SUKMAWATI', 'Anggota', '', 12, 10, 11, 16),
(277, 'RISKA DWI SEPTIANI', 'Anggota', '', 12, 1, 13, 11),
(278, 'RIYANI FEBRIYANTI', 'Anggota', '', 12, 1, 0, 0),
(279, 'SELMA AINI ZAHRA MUCHLIZA', 'Anggota', '', 12, 10, 16, 21),
(280, 'SIFA MAULANI AZAHRA', 'Anggota', '', 12, 2, 16, 10),
(281, 'SITI ALYA MAULIDA', 'Anggota', '', 12, 11, 11, 9),
(282, 'SITI NURAMALIA', 'Anggota', '', 12, 9, 10, 16),
(283, 'SITI NUROHMAH', 'Anggota', '', 12, 10, 23, 21),
(284, 'SRI MULYATI', 'Anggota', '', 12, 16, 10, 9),
(285, 'SABINA YAFFA', 'Anggota', '', 12, 9, 16, 16),
(286, 'SYALWA AULIA EKA', 'Anggota', '', 12, 10, 11, 18),
(287, 'TIKA RAHAYU PUTRI', 'Anggota', '', 12, 1, 20, 22),
(288, 'TASHIEA AWALEA', 'Anggota', '', 12, 10, 10, 23),
(289, 'WILLY', 'Anggota', '', 12, 9, 10, 21);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vall`
-- (See below for the actual view)
--
CREATE TABLE `vall` (
`id` int(11)
,`nama` varchar(255)
,`is_ketua` enum('Ketua','Anggota','Sekertaris','Bendahara')
,`foto` varchar(255)
,`id_kelas` int(11)
,`namaKelas` varchar(255)
,`keterangan` varchar(255)
,`id_divisi` int(11)
,`namaDivisi` varchar(225)
,`id_divisi2` int(11)
,`namaDivisi2` varchar(255)
,`id_divisi3` int(11)
,`namaDivisi3` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vall`
--
DROP TABLE IF EXISTS `vall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vall`  AS SELECT `siswa`.`id` AS `id`, `siswa`.`nama` AS `nama`, `siswa`.`is_ketua` AS `is_ketua`, `siswa`.`foto` AS `foto`, `kelas`.`id_kelas` AS `id_kelas`, `kelas`.`namaKelas` AS `namaKelas`, `kelas`.`keterangan` AS `keterangan`, `divisi`.`id_divisi` AS `id_divisi`, `divisi`.`namaDivisi` AS `namaDivisi`, `divisi3`.`id_divisi2` AS `id_divisi2`, `divisi3`.`namaDivisi2` AS `namaDivisi2`, `divisi4`.`id_divisi3` AS `id_divisi3`, `divisi4`.`namaDivisi3` AS `namaDivisi3` FROM ((((`siswa` join `kelas` on(`kelas`.`id_kelas` = `siswa`.`id_kelas`)) join `divisi` on(`divisi`.`id_divisi` = `siswa`.`id_divisi`)) join `divisi3` on(`divisi3`.`id_divisi2` = `siswa`.`id_divisi2`)) join `divisi4` on(`divisi4`.`id_divisi3` = `siswa`.`id_divisi3`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `divisi3`
--
ALTER TABLE `divisi3`
  ADD PRIMARY KEY (`id_divisi2`);

--
-- Indexes for table `divisi4`
--
ALTER TABLE `divisi4`
  ADD PRIMARY KEY (`id_divisi3`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `divisi3`
--
ALTER TABLE `divisi3`
  MODIFY `id_divisi2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `divisi4`
--
ALTER TABLE `divisi4`
  MODIFY `id_divisi3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
