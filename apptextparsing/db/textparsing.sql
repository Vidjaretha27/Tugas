-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 06:57 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textparsing`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftarkelaskata`
--

CREATE TABLE `daftarkelaskata` (
  `id_daftarkelas` int(11) NOT NULL,
  `kelas_kata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftarkelaskata`
--

INSERT INTO `daftarkelaskata` (`id_daftarkelas`, `kelas_kata`) VALUES
(1, 'Bd'),
(2, 'Gt'),
(3, 'Kt'),
(4, 'Ps'),
(5, 'Pn'),
(6, 'Pr'),
(7, 'Tn'),
(8, 'Bil'),
(9, 'Nama'),
(10, 'Sf'),
(11, 'Sr'),
(12, 'Kj');

-- --------------------------------------------------------

--
-- Table structure for table `kalimat`
--

CREATE TABLE `kalimat` (
  `id_kalimat` int(11) NOT NULL,
  `kalimat` varchar(500) NOT NULL,
  `is_valid` varchar(100) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kalimat`
--

INSERT INTO `kalimat` (`id_kalimat`, `kalimat`, `is_valid`) VALUES
(1, 'anak lanang punika pinaka Sekretaris Daerah Provinsi Bali', 'true'),
(2, 'kalih diri punika sampun kaucap negatif Covid-19', 'true'),
(3, 'Makasami PMI punika sampun ngelaksanayang pulah-palih ring genah dane mekarya', 'true'),
(4, 'dane makasami sampun nyarengin sesuduk sane becik', 'true'),
(5, 'Wakil Gubernur Bali Tjokorda Oka Artha Ardhana Sukawati mungkah pacentokan layangan virtual', 'true'),
(6, 'pacentokan layangan virtual puniki dados titi majeng para rare angon', 'true'),
(7, 'Kadek Suprapta Meranggi pinaka pengalgal acara punika', 'true'),
(8, 'dane sampun ngelaksanayang pacentokan baga kalih', 'true'),
(9, 'titiang ngelaksanayang swadharma majeng krama sami', 'true'),
(10, 'dane raris nyontoang baga usaha bengkel', 'true'),
(11, 'Guru Besar ISI Denpasar puniki nangiang pemilet utsaha', 'true'),
(12, 'para pemilet utsaha kantun memargi ring masan pandemi', 'true'),
(13, 'Kawentenang PBMB sampun kauningin olih kramane', 'true'),
(14, 'Gubernur Wayan Koster negesan indik kauratiang Desa Adat ring Bali ring pidartane', 'false'),
(15, 'Makasami Pasien Covid-19 maweweh 15 diri kantos Respati puniki', 'true'),
(16, 'pasien positif kantun katambanin ring 11 rumah sakit', 'true'),
(17, 'krama makasami mangda urati lan sumeken ring pulah palih nyanggra kabencana', 'true'),
(18, 'benjang pungkur Gunung Batur pastika ngerauhan bencana', 'false'),
(19, 'Gubernur Koster nyanggra becik parikrama konferensi indik kabencana ring Bali', 'true'),
(20, 'astawa durung ngambil pemargi punika', 'true'),
(21, 'industri pariwisata taler patut mapikayun lantang nindihin pariwisata Bali pungkuran', 'true'),
(22, 'I Gede Putra Ariawan nuturang indik satia', 'true'),
(23, 'Dosen Bahasa Lan Sastra Bali Unud dahat nyumbungan acara Ngewacen Cerpen puniki', 'true'),
(24, 'pemedek banget kaaptiyang nyarengin nyaga karesikan wiadin kasucian palemahan pura', 'true'),
(25, 'Bali kaloktah ring dura Negara', 'false'),
(26, 'para yowana naler kaaptiang mangda ngicen seseleh sane becik', 'true'),
(27, 'Bali kaloktah ring dura Negara sangkaning kawentenan budayane', 'true'),
(28, 'aksi terorisme puniki patut setata katangarin', 'true'),
(29, 'Gubernur Koster taler ngaturang suksmaning manah majeng fraksi-fraksi DPRD Provinsi Bali', 'true'),
(30, 'Putri Koster taler nangian kramane nincapan parikrama HATINYA PKK', 'true'),
(31, 'Pasar Gotong Royong Pangan Krama Bali kalaksanayang ring hari kerja', 'true'),
(32, 'pembeli ngemastikayang angga kenak', 'true'),
(33, 'Istri Gubernur Bali Wayan Koster punika taler', 'false'),
(34, 'makehan perajin ngaryanin karya sane malakar antuk kayu', 'true'),
(35, 'Pandemi COVID-19 taler banget mawesana majeng ekonomi Bali', 'true'),
(36, 'Gubernur Bali taler tan surud-surud maosang parindikane puniki sareng Menteri Pariwisata', 'true'),
(37, 'akeh pamikarya ring Bali sane kantos keni PHK', 'false'),
(38, 'utsaha kuliner puniki kalaksanayang ring jeronnyane', 'true'),
(39, 'Ibu Jero prasida makarya 15 porsi abon pindang', 'true'),
(40, 'para yowana pinaka embas ring Galungan', 'true'),
(41, 'akeh sane sumeken pisan nyarengin acara puniki', 'true'),
(42, 'wisatawan sampun majanten nenten uning ring geguat ngranjing ka pura', 'true'),
(43, 'dina mabasa Bali katureksain dahat becik kalaksanayang', 'true'),
(44, 'sane akeh wantah nganggen basa campuran', 'true'),
(45, 'Pemerintah Desa Beraban ngamargiang parikrama Bulan Bahasa Bali warsa 2020', 'true'),
(46, 'dane taler mapangapti ring alit-alit miwah para yowana ring desa Beraban', 'true'),
(47, 'dane taler mapinunas ring tenaga Penyuluh Bahasa Bali Desa Beraban', 'true'),
(48, 'Dewa Indra ngaptiang krama Bali makasami', 'true'),
(49, 'Dewa Indra negesan mangda kramane masang Bendera Merah Putih', 'true'),
(50, 'yayasan punika nedungin 16 satuan pendidikan kerjasama', 'true'),
(51, 'satuan pendidikan kerjasama puniki ngaptiang mangda sistem ajah-ajah presida mewali sekadi dumun', 'true'),
(52, 'Putri Koster nangiang UMKM setata mecikang angga', 'true'),
(53, 'UMKM tetep nguripan perekonomian iraga ring masan gering', 'true'),
(54, 'industri pariwisata nyihnayang kauratiang sane mageng majeng kawentenan UMKM ring Bali', 'true'),
(55, 'Bali medue kaluwihan inggih punika jiwa seni sane kentel ring kramane', 'true'),
(56, 'titiang ring Bali', 'true'),
(57, 'pinaka sinalih tunggil sane strategis', 'false'),
(58, 'titiang ngaptiang', 'true'),
(59, 'ring pemargi sejarah bangsa Indonesia', 'false'),
(60, 'tetujone nyujur Indonesia sane berdaulat', 'false'),
(61, 'Luh Sari medagang', 'true'),
(62, 'Luh Sari ngadep jukut', 'true'),
(63, 'Luh Sari medagang jaja', 'true'),
(64, 'Luh Sari ngadepang memene jukut', 'true'),
(65, 'Luh Sari medagang di peken Klungkung', 'true'),
(66, 'Luh Sari ngadep jukut di peken Klungkung', 'true'),
(67, 'Luh Sari medagang jaja di peken Klungkung', 'true'),
(68, 'Luh Sari ngadepang memene jukut di peken Klungkung', 'true'),
(69, 'ia meliang adine buku di Toko Gramedia', 'true'),
(75, 'I Bapa mamula padi di uma ituni semengan', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `kelaskata`
--

CREATE TABLE `kelaskata` (
  `id_kata` int(11) NOT NULL,
  `nomor_kata` int(11) NOT NULL,
  `kata_bali` varchar(100) NOT NULL,
  `kata_indonesia` varchar(100) NOT NULL,
  `kelas_kata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelaskata`
--

INSERT INTO `kelaskata` (`id_kata`, `nomor_kata`, `kata_bali`, `kata_indonesia`, `kelas_kata`) VALUES
(1, 1, '11', '11.0', 'Bil'),
(2, 2, '15', '15.0', 'Bil'),
(3, 3, '16', '16.0', 'Bil'),
(4, 4, '2020', '2020.0', 'Bil'),
(5, 5, 'abon', 'Abon', 'Bd'),
(6, 6, 'acara', 'Acara', 'Bd'),
(7, 7, 'adine', 'Adiknya', 'Bd'),
(8, 8, 'ajah-ajah', 'Ajar-ajarin;ajaran', 'Kj'),
(9, 9, 'akeh', 'Banyak', 'Sf'),
(10, 10, 'aksi', 'Aksi', 'Kj'),
(11, 11, 'alit-alit', 'Kecil-kecil;kecil', 'Sf'),
(12, 12, 'anak', 'Anak; orang', 'Bd'),
(13, 13, 'angga', 'Badan', 'Bd'),
(14, 14, 'angon', 'Pakai', 'Kj'),
(15, 15, 'antuk', 'Untuk', 'Pn'),
(16, 16, 'astawa', 'Doa', 'Kj'),
(17, 17, 'baga', 'Bagian; Lubang', 'Bd'),
(18, 18, 'Bali', 'Bali', 'Nama'),
(19, 19, 'banget', 'Serius, Sangat', 'Sf'),
(20, 20, 'bangsa', 'Bangsa', 'Bd'),
(21, 21, 'basa', 'Bumbu', 'Bd'),
(22, 22, 'becik', 'Baik', 'Sf'),
(23, 23, 'bencana', 'Bencana', 'Bd'),
(24, 24, 'Bendera Merah Putih', 'Bendera Merah Putih', 'Nama'),
(25, 25, 'bengkel', 'Bengkel', 'Bd'),
(26, 26, 'benjang', 'Besok', 'Kt'),
(27, 27, 'Beraban', 'Beraban', 'Nama'),
(28, 28, 'berdaulat', 'Berdaulat', 'Sf'),
(29, 29, 'budayane', 'Budayanya', 'Bd'),
(30, 30, 'buku', 'Buku', 'Bd'),
(31, 31, 'Bulan Bahasa Bali', 'Bulan Bahasa Bali', 'Nama'),
(32, 32, 'campuran', 'Campuran', 'Sf'),
(33, 33, 'Covid-19', 'Covid-19', 'Nama'),
(34, 34, 'dados', 'Boleh', 'Ps'),
(35, 35, 'dahat', 'Sangat; Amat; Darat', 'Ps'),
(36, 36, 'dane', 'Mereka', 'Gt'),
(37, 37, 'desa', 'Desa', 'Bd'),
(38, 38, 'Desa Adat', 'Desa Adat ', 'Nama'),
(39, 39, 'Dewa Indra', 'Dewa Indra', 'Nama'),
(40, 40, 'di', 'Di', 'Pn'),
(41, 41, 'dina', 'Hari', 'Bd'),
(42, 42, 'diri', 'Orang', 'Bd'),
(43, 43, 'Dosen Bahasa Lan Sastra Bali Unud', 'Dosen Bahasa Lan Sastra Bali Unud', 'Nama'),
(44, 44, 'DPRD Provinsi Bali', 'DPRD Provinsi Bali', 'Nama'),
(45, 45, 'dumun', 'Dulu (imbuhan)', 'Ps'),
(46, 46, 'dura', 'Jauh; Asing', 'Sf'),
(47, 47, 'durung', 'Belum', 'Ps'),
(48, 48, 'ekonomi', 'Ekonomi', 'Bd'),
(49, 49, 'embas', 'Lahir', 'Bd'),
(50, 50, 'fraksi-fraksi', 'Fraksi-fraksi', 'Bd'),
(51, 51, 'Galungan', 'Galungan', 'Nama'),
(52, 52, 'geguat', '', ''),
(53, 53, 'genah', 'Tempat', 'Bd'),
(54, 54, 'gering', 'Penyakit', 'Bd'),
(55, 55, 'Gubernur Koster', 'Gubernur Koster', 'Nama'),
(56, 56, 'Gubernur Wayan Koster', 'Gubernur Wayan Koster', 'Nama'),
(57, 57, 'Gunung Batur', 'Gunung Batur', 'Nama'),
(58, 58, 'Guru Besar ISI Denpasar', 'Guru Besar ISI Denpasar', 'Nama'),
(59, 59, 'hari', 'Hari', 'Bd'),
(60, 60, 'I Bapa', 'I Bapa', 'Nama'),
(61, 61, 'I Gede Putra Ariawan', 'I Gede Putra Ariawan', 'Nama'),
(62, 62, 'ia', 'Dia', 'Gt'),
(63, 63, 'Ibu Jero', 'Ibu Jero', 'Nama'),
(64, 64, 'indik', 'Tentang; Perihal', 'Bd'),
(65, 65, 'Indonesia', 'Indonesia', 'Nama'),
(66, 66, 'industri', 'Industri', 'Bd'),
(67, 67, 'inggih', 'Iya; Ya', 'Ps'),
(68, 68, 'iraga', 'Kita; Kami', 'Gt'),
(69, 69, 'Istri Gubernur Bali Wayan Koster', 'Istri Gubernur Bali Wayan Koster', 'Nama'),
(70, 70, 'ituni', 'Tadinya', 'Kt'),
(71, 71, 'jaja', 'Cemilan', 'Bd'),
(72, 72, 'jeronnyane', 'Rumahnya', 'Kt'),
(73, 73, 'jiwa', 'Jiwa ', 'Bd'),
(74, 74, 'jukut', 'Sayur', 'Bd'),
(75, 75, 'ka', 'Ke', 'Bd'),
(76, 76, 'kaaptiang', 'Diharapkan', 'Ps'),
(77, 77, 'kaaptiyang', 'Diharapkan', 'Ps'),
(78, 78, 'kabencana', 'Kebencanaan', 'Bd'),
(79, 79, 'Kadek Suprapta Meranggi', 'Kadek Suprapta Meranggi', 'Nama'),
(80, 80, 'kalaksanayang', 'Dilaksanakan; Dilakukan', 'Kj'),
(81, 81, 'kalih', 'Dua', 'Bil'),
(82, 82, 'kaloktah', 'mansyur; terkenal', 'Bd'),
(83, 83, 'kaluwihan', 'Kemuliaan', 'Kt'),
(84, 84, 'kantos', 'Sampai (menunjukkan waktu)', 'Kt'),
(85, 85, 'kantun', 'Masih', 'Ps'),
(86, 86, 'karesikan', 'Kebersihan', 'Sf'),
(87, 87, 'karya', 'Kerja; Upacara', 'Bd'),
(88, 88, 'kasucian', 'Disucikan', 'Kj'),
(89, 89, 'katambanin', 'Diobati', 'Kj'),
(90, 90, 'katangarin', 'Ditakutkan', 'Kj'),
(91, 91, 'katureksain', 'Diperiksa', 'Kj'),
(92, 92, 'kaucap', 'Dikatakan', 'Kj'),
(93, 93, 'kauningin', 'Diketahui', 'Kj'),
(94, 94, 'kauratiang', 'Diperhatikan', 'Kj'),
(95, 95, 'kawentenan', 'Keberadaan', 'Kj'),
(96, 96, 'Kawentenang PBMB', 'Kawentenang PBMB', 'Nama'),
(97, 97, 'kayu', 'Kayu', 'Bd'),
(98, 98, 'kenak', 'Sehat', 'Sf'),
(99, 99, 'kentel', 'Kental', 'Sf'),
(100, 100, 'kerja', 'Kerja', 'Bd'),
(101, 101, 'kerjasama', 'Kerjasama', 'Kj'),
(102, 102, 'Klungkung', 'Klungkung', 'Nama'),
(103, 103, 'konferensi', 'Konferensi', 'Kj'),
(104, 104, 'krama', 'Adat Istiadat', 'Bd'),
(105, 105, 'kramane', 'Masyarakatnya; Adatnya', 'Bd'),
(106, 106, 'kuliner', 'Kuliner', 'Bd'),
(107, 107, 'lanang', 'Laki-laki', 'Bd'),
(108, 108, 'lantang', 'Panjang', 'Sf'),
(109, 109, 'layangan', 'Layangan', 'Bd'),
(110, 110, 'Luh Sari', 'Luh Sari', 'Nama'),
(111, 111, 'mabasa', 'Berbahasa', 'Kj'),
(112, 112, 'mageng', 'Sebesar', 'Sf'),
(113, 113, 'majanten', 'berarti, jadi', 'Ps'),
(114, 114, 'majeng', 'Terhadap', 'Pr'),
(115, 115, 'makarya', 'Bekerja', 'Kj'),
(116, 116, 'makasami', 'Semua', 'Kt'),
(117, 117, 'Makasami PMI', 'Makasami PMI', 'Nama'),
(118, 118, 'Makasami Pasien Covid-19', 'Semua pasien Covid-19', 'Nama'),
(119, 119, 'makehan', 'Kebanyakan', 'Kt'),
(120, 120, 'malakar', 'Berbahan; Dibuat dari', 'Bd'),
(121, 121, 'mamula', 'Menanam', 'Kj'),
(122, 122, 'manah', 'Pikiran; Opini', 'Bd'),
(123, 123, 'mangda', 'Agar; Supaya', 'Ps'),
(124, 124, 'maosang', 'Membicarakan', 'Kj'),
(125, 125, 'mapangapti', 'Berharap', 'Kj'),
(126, 126, 'mapikayun', 'Berkehendak', 'Kj'),
(127, 127, 'mapiunas', 'Memohon', 'Kj'),
(128, 128, 'masan', 'Musim', 'Kt'),
(129, 129, 'masang', 'Memasang', 'Kj'),
(130, 130, 'mawesana', 'Berbekas', 'Kt'),
(131, 131, 'maweweh', 'Berjumlah', 'Kt'),
(132, 132, 'mecikang', 'Membersikan', 'Kj'),
(133, 133, 'medagang', 'Berdagang', 'Kj'),
(134, 134, 'medue', 'Punya; Ada', 'Ps'),
(135, 135, 'mekarya', 'Bekerja', 'Bd'),
(136, 136, 'meliang', 'Membelikan', 'Kj'),
(137, 137, 'memargi', 'Berjalan', 'Kj'),
(138, 138, 'memene', 'Ibunya', 'Bd'),
(139, 139, 'Menteri Pariwisata', 'Menteri Pariwisata', 'Nama'),
(140, 140, 'mewali', 'Kembali', 'Kt'),
(141, 141, 'miwah', 'Dan', 'Pr'),
(142, 142, 'mungkah', 'Membuka', 'Kj'),
(143, 143, 'naler', 'Juga', 'Ps'),
(144, 144, 'nangian', 'Membangun', 'Kj'),
(145, 145, 'nedungin', 'Memayungi', 'Kj'),
(146, 146, 'Negara', 'Negara', 'Nama'),
(147, 147, 'negatif', 'Negatif', 'Sf'),
(148, 148, 'negesan', 'Menegaskan', 'Kj'),
(149, 149, 'nenten', 'Tidak', 'Ps'),
(150, 150, 'ngadep', 'Menjual', 'Kj'),
(151, 151, 'ngadepang', 'Menjualkan', 'Kj'),
(152, 152, 'ngambil', 'Mengambil', 'Kj'),
(153, 153, 'nganggen', 'Memakai', 'Kj'),
(154, 154, 'ngaptiang', 'Menginginkan; Mengharapkan', 'Kj'),
(155, 155, 'ngaryanin', 'Mengerjakan; Membuatkan', 'Kj'),
(156, 156, 'ngaturang', 'Menghaturkan; Mempersembahkan', 'Kj'),
(157, 157, 'ngelaksanayang', 'Melaksanakan', 'Kj'),
(158, 158, 'ngemastikayang', 'Memastikan', 'Kj'),
(159, 159, 'ngerauhan', 'Mendatangkan', 'Kj'),
(160, 160, 'Ngewacen Cerpen', 'Membaca Cerpen', 'Nama'),
(161, 161, 'ngicen', 'Memberi', 'Kj'),
(162, 162, 'ngranjing', 'Masuk', 'Kj'),
(163, 163, 'nguripan', 'Menghidupkan', 'Kj'),
(164, 164, 'nindihin', 'Melindungi', 'Kj'),
(165, 165, 'nuturang', 'Membicarakan', 'Kj'),
(166, 166, 'nyaga', 'Jaga; Menjaga', 'Kj'),
(167, 167, 'nyanggra', 'Melaksanakan', 'Kj'),
(168, 168, 'nyarengin', 'Barengan', 'Kt'),
(169, 169, 'nyihnayang', 'Memberitahu', 'Kj'),
(170, 170, 'nyontoang', 'Mencontohkan', 'Kj'),
(171, 171, 'nyujur', 'Menjunjung', 'Kj'),
(172, 172, 'nyumbungan', 'Menyombongkan', 'Kj'),
(173, 173, 'olih', 'oleh', 'Pr'),
(174, 174, 'pacentokan', 'Perlombaan', 'Bd'),
(175, 175, 'padi', 'Padi', 'Bd'),
(176, 176, 'palemahan', 'Lingkungan; Tanah Pekarangan', 'Bd'),
(177, 177, 'pamikarya', 'Pekerja', 'Bd'),
(178, 178, 'pandemi', 'Pandemi', 'Bd'),
(179, 179, 'Pandemi COVID-19', 'Pandemi COVID-20', 'Nama'),
(180, 180, 'para', 'Para; Lain', 'Kt'),
(181, 181, 'parikrama', 'Tata cara; kebiasaan; Adat', 'Bd'),
(182, 182, 'parindikane', 'indik (tentang) parindikan (menggambarkan suatu keadaan)', 'Kt'),
(183, 183, 'pariwisata', 'Pariwisata', 'Bd'),
(184, 184, 'Pasar Gotong Royong Pangan Krama Bali', 'Pasar Gotong Royong Pangan Krama Bali', 'Nama'),
(185, 185, 'pasien', 'Pasien', 'Bd'),
(186, 186, 'pastika', 'Pasti; harus', 'Ps'),
(187, 187, 'patut', 'Patut; benar; Wajar', 'Sf'),
(188, 188, 'peken', 'Pasar', 'Bd'),
(189, 189, 'pemargi', 'Pejalan', 'Bd'),
(190, 190, 'pembeli', 'Pembeli', 'Bd'),
(191, 191, 'pemedek', 'Pendatang ', 'Bd'),
(192, 192, 'Pemerintah Desa Beraban', 'Pemerintah Desa Beraban', 'Nama'),
(193, 193, 'pendidikan', 'Pendidikan', 'Bd'),
(194, 194, 'pengalgal', 'Pembuka', 'Bd'),
(195, 195, 'Penyuluh Bahasa Bali Desa Beraban', 'Penyuluh Bahasa Bali Desa Beraban', 'Nama'),
(196, 196, 'perajin', 'Perajin', 'Bd'),
(197, 197, 'perekonomian', 'Perekonomian', 'Bd'),
(198, 198, 'PHK', 'PHK', 'Nama'),
(199, 199, 'pidartane', 'Pidatonya; Ceramahnya', 'Kj'),
(200, 200, 'pinaka', 'Menjadi', 'Kj'),
(201, 201, 'pindang', 'Ikan Pindang', 'Bd'),
(202, 202, 'pisan', 'Amat; Sangat', 'Sf'),
(203, 203, 'porsi', 'Porsi', 'Bd'),
(204, 204, 'positif', 'Positif', 'Sf'),
(205, 205, 'prasida', 'Mampu; Bisa', 'Sf'),
(206, 206, 'presida', 'Mampu; Bisa', 'Sf'),
(207, 207, 'pulah-palih', 'Ketentuan', 'Bd'),
(208, 208, 'pungkur', 'Belakang', 'Pn'),
(209, 209, 'pungkuran', 'Belakangan', 'Bd'),
(210, 210, 'punika', 'Begitu; Itu', 'Pn'),
(211, 211, 'puniki', 'Begini; Ini', 'Pn'),
(212, 212, 'pura', 'Pura', 'Bd'),
(213, 213, 'Putri Koster', 'Putri Koster', 'Nama'),
(214, 214, 'rare', 'Anak muda', 'Bd'),
(215, 215, 'raris', 'Silahkan', 'Kj'),
(216, 216, 'Respati', 'Kamis', 'Nama'),
(217, 217, 'ring', 'Di', 'Pn'),
(218, 218, 'rumah', 'Rumah ', 'Bd'),
(219, 219, 'sakit', 'Sakit', 'Bd'),
(220, 220, 'sami', 'Sama', 'Pr'),
(221, 221, 'sampun', 'sudah', 'Ps'),
(222, 222, 'sampun', 'Sudah', 'Ps'),
(223, 223, 'sane', 'Dengan', 'Pr'),
(224, 224, 'sangkaning', 'Sebab; Karena', 'Kt'),
(225, 225, 'sareng', 'Bersama', 'Bd'),
(226, 226, 'satia', 'Setia', 'Sf'),
(227, 227, 'satuan', 'Satuan', 'Kt'),
(228, 228, 'sejarah', 'Sejarah', 'Bd'),
(229, 229, 'sekadi', 'Seperti', 'Kt'),
(230, 230, 'Sekretaris Daerah Provinsi Bali', 'Sekretaris Daerah Provinsi Bali', 'Nama'),
(231, 231, 'semengan', 'Pagi-pagi', 'Kt'),
(232, 232, 'seni', 'Seni', 'Bd'),
(233, 233, 'seseleh', 'perbuatan', 'Bd'),
(234, 234, 'sesuduk', 'sunduk (pojok)', 'Pn'),
(235, 235, 'setata', 'Selalu', 'Ps'),
(236, 236, 'sinalih', 'Salah;Satu-satunya', 'Ps'),
(237, 237, 'sistem', 'Sistem', 'Bd'),
(238, 238, 'strategis', 'Strategis', 'Sf'),
(239, 239, 'suksmaning', 'Berterimakasih', 'Kj'),
(240, 240, 'sumeken', 'Benar-benar', 'Sf'),
(241, 241, 'surud-surud', 'ambil', 'Kj'),
(242, 242, 'swadharma', 'Kewajiban', 'Kj'),
(243, 243, 'taler', 'Juga', 'Kt'),
(244, 244, 'tan', 'Tidak', 'Ps'),
(245, 245, 'tenaga', 'Tenaga', 'Bd'),
(246, 246, 'terorisme', 'Terorisme', 'Bd'),
(247, 247, 'tetep', 'Tetap', 'Ps'),
(248, 248, 'tetujone', 'Tujuannya', 'Kt'),
(249, 249, 'titi', 'Jembatan', 'Bd'),
(250, 250, 'titiang', 'Saya', 'Gt'),
(251, 251, 'Toko Gramedia', 'Toko Gramedia', 'Nama'),
(252, 252, 'tunggil', 'Satu; Tunggal', 'Bil'),
(253, 253, 'uma', 'Sawah', 'Bd'),
(254, 254, 'UMKM', 'UMKM', 'Nama'),
(255, 255, 'uning', 'Tau', 'Ps'),
(256, 256, 'urati', 'Rajin; teliti', 'Sf'),
(257, 257, 'usaha', 'Usaha (Bisnis)', 'Bd'),
(258, 258, 'utsaha', 'Usaha (Upaya)', 'Bd'),
(259, 259, 'virtual', 'Virtual', 'Bd'),
(260, 260, 'Wakil Gubernur Bali Tjokorda Oka Artha Ardhana Sukawati', 'Wakil Gubernur Bali Tjokorda Oka Artha Ardhana Sukawati', 'Nama'),
(261, 261, 'wantah', 'Serta', 'Pr'),
(262, 262, 'warsa', 'Tahun', 'Bd'),
(263, 263, 'wiadin', 'Atau; Walaupun', 'Pr'),
(264, 264, 'wisatawan', 'Wisatawan', 'Bd'),
(265, 265, 'yayasan', 'Yayasan', 'Bd'),
(266, 266, 'yowana', 'Yowana', 'Bd'),
(267, 267, 'pemilet', 'peserta', 'Bd'),
(268, 268, 'nincapan', 'meraih', 'Kj'),
(272, 269, 'HATINYA PKK', 'Hatinya PKK', 'Nama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftarkelaskata`
--
ALTER TABLE `daftarkelaskata`
  ADD PRIMARY KEY (`id_daftarkelas`);

--
-- Indexes for table `kalimat`
--
ALTER TABLE `kalimat`
  ADD PRIMARY KEY (`id_kalimat`);

--
-- Indexes for table `kelaskata`
--
ALTER TABLE `kelaskata`
  ADD PRIMARY KEY (`id_kata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftarkelaskata`
--
ALTER TABLE `daftarkelaskata`
  MODIFY `id_daftarkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kalimat`
--
ALTER TABLE `kalimat`
  MODIFY `id_kalimat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `kelaskata`
--
ALTER TABLE `kelaskata`
  MODIFY `id_kata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
