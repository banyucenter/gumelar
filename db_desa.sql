-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2017 at 07:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `email`, `password`, `id_level`) VALUES
(2, 'admin', 'admin@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_apbd`
--

CREATE TABLE `tb_apbd` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_apbd`
--

INSERT INTO `tb_apbd` (`id`, `judul`, `tahun`, `summary`, `foto`, `keterangan`) VALUES
(1, 'APBD', 2017, 'Laporan APBD 2017 Desa Gumelar siap dipublikasikan.', 'apbd.png', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.'),
(2, 'APBD', 2018, 'Laporan APBD 2017 Desa Gumelar siap dipublikasikan.', 'apbd.png', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id` int(11) NOT NULL,
  `tanggal_posting` date DEFAULT NULL,
  `judul_artikel` varchar(30) DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `foto_artikel` varchar(100) DEFAULT NULL,
  `isi_artikel` text,
  `id_kategori_artikel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id`, `tanggal_posting`, `judul_artikel`, `summary`, `foto_artikel`, `isi_artikel`, `id_kategori_artikel`) VALUES
(1, '2017-07-06', 'Nuansa Pegunungan', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legim', 'pegunungan.jpg', 'Desa, atau udik, menurut definisi "universal", adalah sebuah aglomerasi permukiman di area perdesaan (rural). Di Indonesia, istilah desa adalah pembagian wilayah administratif di Indonesia di bawah kecamatan, yang dipimpin oleh Kepala Desa. Sebuah desa merupakan kumpulan dari beberapa unit permukiman kecil yang disebut kampung (Banten, Jawa Barat) atau dusun (Yogyakarta) atau banjar (Bali) atau jorong (Sumatera Barat). Kepala Desa dapat disebut dengan nama lain misalnya Kepala Kampung atau Petinggi di Kalimantan Timur, Klèbun di Madura, Pambakal di Kalimantan Selatan, dan Kuwu di Cirebon, Hukum Tua di Sulawesi Utara.\n\nSejak diberlakukannya otonomi daerah Istilah desa dapat disebut dengan nama lain, misalnya di Sumatera Barat disebut dengan istilah nagari, di Aceh dengan istilah gampong, di Papua dan Kutai Barat, Kalimantan Timur disebut dengan istilah kampung. Begitu pula segala istilah dan institusi di desa dapat disebut dengan nama lain sesuai dengan karakteristik adat istiadat desa tersebut. Hal ini merupakan salah satu pengakuan dan penghormatan Pemerintah terhadap asal usul dan adat istiadat setempat.', 1),
(2, '2017-07-04', 'Sentra Industri Makanan', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legim', 'industri.jpg', 'Desa, atau udik, menurut definisi "universal", adalah sebuah aglomerasi permukiman di area perdesaan (rural). Di Indonesia, istilah desa adalah pembagian wilayah administratif di Indonesia di bawah kecamatan, yang dipimpin oleh Kepala Desa. Sebuah desa merupakan kumpulan dari beberapa unit permukiman kecil yang disebut kampung (Banten, Jawa Barat) atau dusun (Yogyakarta) atau banjar (Bali) atau jorong (Sumatera Barat). Kepala Desa dapat disebut dengan nama lain misalnya Kepala Kampung atau Petinggi di Kalimantan Timur, Klèbun di Madura, Pambakal di Kalimantan Selatan, dan Kuwu di Cirebon, Hukum Tua di Sulawesi Utara.\n\nSejak diberlakukannya otonomi daerah Istilah desa dapat disebut dengan nama lain, misalnya di Sumatera Barat disebut dengan istilah nagari, di Aceh dengan istilah gampong, di Papua dan Kutai Barat, Kalimantan Timur disebut dengan istilah kampung. Begitu pula segala istilah dan institusi di desa dapat disebut dengan nama lain sesuai dengan karakteristik adat istiadat desa tersebut. Hal ini merupakan salah satu pengakuan dan penghormatan Pemerintah terhadap asal usul dan adat istiadat setempat.', 1),
(3, '2017-07-01', 'Wana Wisata', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legim', 'wanawisata.jpg', 'Desa, atau udik, menurut definisi "universal", adalah sebuah aglomerasi permukiman di area perdesaan (rural). Di Indonesia, istilah desa adalah pembagian wilayah administratif di Indonesia di bawah kecamatan, yang dipimpin oleh Kepala Desa. Sebuah desa merupakan kumpulan dari beberapa unit permukiman kecil yang disebut kampung (Banten, Jawa Barat) atau dusun (Yogyakarta) atau banjar (Bali) atau jorong (Sumatera Barat). Kepala Desa dapat disebut dengan nama lain misalnya Kepala Kampung atau Petinggi di Kalimantan Timur, Klèbun di Madura, Pambakal di Kalimantan Selatan, dan Kuwu di Cirebon, Hukum Tua di Sulawesi Utara.\n\nSejak diberlakukannya otonomi daerah Istilah desa dapat disebut dengan nama lain, misalnya di Sumatera Barat disebut dengan istilah nagari, di Aceh dengan istilah gampong, di Papua dan Kutai Barat, Kalimantan Timur disebut dengan istilah kampung. Begitu pula segala istilah dan institusi di desa dapat disebut dengan nama lain sesuai dengan karakteristik adat istiadat desa tersebut. Hal ini merupakan salah satu pengakuan dan penghormatan Pemerintah terhadap asal usul dan adat istiadat setempat.', 1),
(4, '2017-10-13', 'Prestasi Luar Biasa Sekali', 'Desa gumelar meraih prestasi dibidang manajemen keuangan terbaik sepanjang 206-2019. Prestasi ini je', 'file_1507878215.jpg', 'Desa gumelar meraih prestasi dibidang manajemen keuangan terbaik sepanjang 206-2018. Prestasi ini jelas sangat membanggakan untuk warga masyarakatnya ya', 2),
(6, '2017-10-13', 'Kebersamaan Warga', 'multicultural event on the tenth of Muharram and carry ''Alams can be found in Trinidad and Tobago. T', 'file_1507882106.jpg', 'multicultural event on the tenth of Muharram and carry ''Alams can be found in Trinidad and Tobago. These Indians left India at a time when the Pir system was still in effect and this cross cultural event was still practiced without persecution.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id` int(11) NOT NULL,
  `nama_galeri` varchar(30) DEFAULT NULL,
  `foto_galeri` varchar(100) DEFAULT NULL,
  `id_kategori_galeri` int(11) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id`, `nama_galeri`, `foto_galeri`, `id_kategori_galeri`, `keterangan`) VALUES
(2, 'Galeri 2', '12.jpg', 2, 'Galeri Dua'),
(3, 'Galeri 3', '8.jpg', 4, 'Galeri Tiga'),
(4, 'Galeri 4', '9.jpg', 5, 'Galeri Empat'),
(5, 'Galeri 5', '10.jpg', 6, 'Galeri Lima'),
(6, 'Galeri 10', 'file_1511151065.jpg', 5, 'Galeri 10'),
(7, 'Galeri 11', 'file_1511151096.jpg', 3, 'Galeri 11'),
(8, 'Galeri a', 'file_1511151184.jpg', 5, 'Galeri 11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_artikel`
--

CREATE TABLE `tb_kategori_artikel` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_artikel`
--

INSERT INTO `tb_kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES
(1, 'featured', 'Artikel Fitur Tampil di Halaman Depan'),
(2, 'blog', 'Artikel berita desa'),
(3, 'umum', 'Artikel Umum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_galeri`
--

CREATE TABLE `tb_kategori_galeri` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_galeri`
--

INSERT INTO `tb_kategori_galeri` (`id`, `nama_kategori`, `keterangan`) VALUES
(1, 'politik', NULL),
(2, 'kegiatan', NULL),
(3, 'budaya', NULL),
(4, 'wirausaha', NULL),
(5, 'budaya', NULL),
(6, 'sosial', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kependudukan`
--

CREATE TABLE `tb_kependudukan` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kependudukan`
--

INSERT INTO `tb_kependudukan` (`id`, `judul`, `summary`, `foto`, `keterangan`) VALUES
(1, 'Kependudukan', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.', 'kependudukan.jpg', '<h4>Total Penduduk : 3000 Jiwa<h4>\n<h4>Mata Pencaharian : Petani<h4>\n\n His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id` int(11) NOT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `nama_kontak` varchar(30) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `alamat` text,
  `url_peta` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak_masuk`
--

CREATE TABLE `tb_kontak_masuk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `isi_pesan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kontak_masuk`
--

INSERT INTO `tb_kontak_masuk` (`id`, `nama`, `email`, `no_telp`, `isi_pesan`) VALUES
(2, 'Muzzamil', 'muzzami@gmail.com', '5558585888', 'Hellos'),
(3, NULL, 'anwarsalam@gmail.com', '1219212919', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id`, `nama_level`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peta_desa`
--

CREATE TABLE `tb_peta_desa` (
  `id` int(11) NOT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peta_desa`
--

INSERT INTO `tb_peta_desa` (`id`, `judul`, `summary`, `foto`, `keterangan`) VALUES
(1, 'Peta Wilayah', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.', 'petawilayah.jpg', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi_desa`
--

CREATE TABLE `tb_prestasi_desa` (
  `id` int(11) NOT NULL,
  `nama_prestasi` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `isi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prestasi_desa`
--

INSERT INTO `tb_prestasi_desa` (`id`, `nama_prestasi`, `foto`, `isi`) VALUES
(1, 'Juara 1 Administrasi Kabuaten 2017', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n\n'),
(2, 'Juara 2 Kepemimpinan Propinsi 2018', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil_kepaladesa`
--

CREATE TABLE `tb_profil_kepaladesa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis_kelamin` char(10) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `jabatan` varchar(30) DEFAULT NULL,
  `pendidikan` varchar(30) DEFAULT NULL,
  `keterangan_jabatan` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah_desa`
--

CREATE TABLE `tb_sejarah_desa` (
  `id` int(11) NOT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `isi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sejarah_desa`
--

INSERT INTO `tb_sejarah_desa` (`id`, `judul`, `foto`, `summary`, `isi`) VALUES
(1, 'Sejarah Desa', 'sejarah.jpg', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.', 'His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix. Et vel quod legimus, graeci electram ocurreret at his. Vix at tation facete impetus omnesque ius harum antiopam.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id` int(11) NOT NULL,
  `foto_logo` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_setting`
--

INSERT INTO `tb_setting` (`id`, `foto_logo`, `keterangan`) VALUES
(1, 'file_1507879854.png', 'Logo Webs');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id` int(11) NOT NULL,
  `nama_slider` varchar(30) DEFAULT NULL,
  `foto_slider` varchar(100) DEFAULT NULL,
  `text_slider` varchar(20) DEFAULT NULL,
  `summary` varchar(30) DEFAULT NULL,
  `link_button` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id`, `nama_slider`, `foto_slider`, `text_slider`, `summary`, `link_button`) VALUES
(1, 'Slider1', 'slideshow-image1.jpg', 'Suasana Desa Gumelar', 'Suasana Desa Nan Asri dan alam', 'http://localhost'),
(2, 'Slider2', 'slideshow-image2.jpg', 'Alam Desa Gumelar', 'Kegiatan Blusukan Pemerintah', 'http://localhost'),
(3, 'Slider3', 'slideshow-image3.jpg', 'Suasana Pedesaan Gum', 'Kerja Bakti Umum Warga', 'http://localhost');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff_desa`
--

CREATE TABLE `tb_staff_desa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis_kelamin` char(10) DEFAULT NULL,
  `jenis_jabatan` varchar(30) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `pendidikan` varchar(30) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `alamat` text,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_struktur_organisasi`
--

CREATE TABLE `tb_struktur_organisasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis_jabatan` varchar(50) DEFAULT NULL,
  `keterangan_jabatan` text,
  `no_telp` varchar(12) DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_struktur_organisasi`
--

INSERT INTO `tb_struktur_organisasi` (`id`, `nama`, `jenis_jabatan`, `keterangan_jabatan`, `no_telp`, `alamat`) VALUES
(1, 'Bpk. Muzammil Hasbala', 'Kepala Desa', 'Kepala Desa Gumelar Periode 2017 -2020', '0234788766', 'Jl. Raya Tlaga Gumelar 53165'),
(2, 'Ibu Siti Suyanti', 'Sekretaris Desa', 'Sekretaris Desa Gumelar Periode 2017 -2020', '0234788766', 'Jl. Raya Tlaga Gumelar 53165'),
(3, 'Ibu Nia Nifridah', 'Kadus 2', 'Kepala Dusun Jambenoms', '02347887667', '02347887667'),
(6, 'Fajar Kusuma', 'Kadus 3', 'Kadus Legok dan Sekitarnya', '099876535535', '099876535535');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tentang_desa`
--

CREATE TABLE `tb_tentang_desa` (
  `id` int(11) NOT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `isi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tentang_desa`
--

INSERT INTO `tb_tentang_desa` (`id`, `judul`, `foto`, `isi`) VALUES
(1, 'Desa Gumelar', 'wanawisata.jpg', 'Gumelar adalah sebuah kecamatan di Kabupaten Banyumas, Jawa Tengah, Indonesia. Kecamatan ini berada di ujung barat laut wilayah Kabupaten Banyumas, berbatasan dengan Kabupaten Brebes di utara dan Kabupaten Cilacap di barat.Batas-batas Kecamatan : Sebelah Timur : Kecamatan Pekuncen, Kecamatan Ajibarang, dan Kecamatan Wangon, Sebelah Selatan Kecamatan Lumbir, Seblah Barat Kecamatan Karang Pucung Kab. Cilacap, Sebelah Utara Kecamatan Paguyangan Kab. Brebes.Kpta Kecamatan Gumelar berada pada ketinggian 250 m Di atas permukaan laut. Mata Pencaharian Penduduk sebagian besar petani dengan pemilikan lahan pertanian rata-rata di bawah 1 Ha dengan pengairan tadah hujan. Selain tanah tegalan dan sawah, di wilayah Kec. Gumelar juga terdapat tanah milik PERUM PERHUTANI dengan tanaman Pinus di bawah naungan KPH Banyumas Barat.Sungai utama sebagai sumber pengairan adalah sungai Tajum yang bermata air di Desa Samudra dan bermuara di Sungai Serayu selanjutnya sungai serayu bermuara diLaut selatan. ke Kec. Gumelar dapat dijangkau dengan kencaraan roda empat dari arah utara dapat dijangkau melalui Desa Patuguran di Kec. Paguyangan. arah Timur dari Ajibarang lewat desa Kracak - Darma Keradenan - Gumelar. Ajibarang - Kracak - Darmakeradenan - Gumelar, Atau Ajibarang - Kracak - Kedung Urang - Gumelar. Kecamatan Gumelar sekitar tahun 80 merupakan daerah sentra Cengkeh, tetapi sejak diberlakukannya BPPC yang membuat harga cengkeh hancur,masyarakat tidak mau lagi menanam cengkeh, bahkan pohon-pohonyapun ditebangi.\n\nTerdapat 33 Sekolah Dasar Negeri, Madrasah Ibtidaiyah, SMP Negeri 1 di desa Gumelar, SMP Negeri 2 di desa Paningkaban, SMP PGRI, SMP DIPONEGORO, MI Maarif Kedung Urang dan SMA PGRI Gumelar. SMP PGRI merupakan sekolah tertua di antara Sekolah Lanjutan yang adadi Kecamatan Gumelar,SMP PGRI berdiri pada tahun 1963 yang diprakarsai oleh para Guru, Pemerintah Kecamatan dan para Kepala Desa waktu itu. Semula SMP PGRI bernama SMP GOTONG ROYONG (GORO) yang dikepalai oleh Bpk. Diyanto.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visi_misi`
--

CREATE TABLE `tb_visi_misi` (
  `id` int(11) NOT NULL,
  `judul` varchar(30) DEFAULT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `isi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_apbd`
--
CREATE TABLE `v_apbd` (
`id` int(11)
,`judul` varchar(255)
,`tahun` year(4)
,`summary` varchar(255)
,`foto` varchar(255)
,`keterangan` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_artikel`
--
CREATE TABLE `v_artikel` (
`id` int(11)
,`judul_artikel` varchar(30)
,`tanggal_posting` date
,`summary` varchar(100)
,`foto_artikel` varchar(100)
,`isi_artikel` text
,`nama_kategori` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_artikel_featured`
--
CREATE TABLE `v_artikel_featured` (
`id` int(11)
,`judul_artikel` varchar(30)
,`summary` varchar(100)
,`foto_artikel` varchar(100)
,`isi_artikel` text
,`nama_kategori` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_artikel_latest`
--
CREATE TABLE `v_artikel_latest` (
`id` int(11)
,`judul_artikel` varchar(30)
,`tanggal_posting` date
,`summary` varchar(100)
,`foto_artikel` varchar(100)
,`isi_artikel` text
,`nama_kategori` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_galeri`
--
CREATE TABLE `v_galeri` (
`id` int(11)
,`nama_galeri` varchar(30)
,`id_kategori_galeri` int(11)
,`foto_galeri` varchar(100)
,`keterangan` varchar(50)
,`nama_kategori` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `v_apbd`
--
DROP TABLE IF EXISTS `v_apbd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_apbd`  AS  select `tb_apbd`.`id` AS `id`,`tb_apbd`.`judul` AS `judul`,`tb_apbd`.`tahun` AS `tahun`,`tb_apbd`.`summary` AS `summary`,`tb_apbd`.`foto` AS `foto`,`tb_apbd`.`keterangan` AS `keterangan` from `tb_apbd` order by `tb_apbd`.`id` desc limit 1 ;

-- --------------------------------------------------------

--
-- Structure for view `v_artikel`
--
DROP TABLE IF EXISTS `v_artikel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_artikel`  AS  select `tb_artikel`.`id` AS `id`,`tb_artikel`.`judul_artikel` AS `judul_artikel`,`tb_artikel`.`tanggal_posting` AS `tanggal_posting`,`tb_artikel`.`summary` AS `summary`,`tb_artikel`.`foto_artikel` AS `foto_artikel`,`tb_artikel`.`isi_artikel` AS `isi_artikel`,`tb_kategori_artikel`.`nama_kategori` AS `nama_kategori` from (`tb_artikel` join `tb_kategori_artikel`) where (`tb_artikel`.`id_kategori_artikel` = `tb_kategori_artikel`.`id`) order by `tb_artikel`.`id` desc limit 5 ;

-- --------------------------------------------------------

--
-- Structure for view `v_artikel_featured`
--
DROP TABLE IF EXISTS `v_artikel_featured`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_artikel_featured`  AS  select `tb_artikel`.`id` AS `id`,`tb_artikel`.`judul_artikel` AS `judul_artikel`,`tb_artikel`.`summary` AS `summary`,`tb_artikel`.`foto_artikel` AS `foto_artikel`,`tb_artikel`.`isi_artikel` AS `isi_artikel`,`tb_kategori_artikel`.`nama_kategori` AS `nama_kategori` from (`tb_artikel` join `tb_kategori_artikel`) where ((`tb_artikel`.`id_kategori_artikel` = `tb_kategori_artikel`.`id`) and (`tb_kategori_artikel`.`nama_kategori` = 'featured')) ;

-- --------------------------------------------------------

--
-- Structure for view `v_artikel_latest`
--
DROP TABLE IF EXISTS `v_artikel_latest`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_artikel_latest`  AS  select `tb_artikel`.`id` AS `id`,`tb_artikel`.`judul_artikel` AS `judul_artikel`,`tb_artikel`.`tanggal_posting` AS `tanggal_posting`,`tb_artikel`.`summary` AS `summary`,`tb_artikel`.`foto_artikel` AS `foto_artikel`,`tb_artikel`.`isi_artikel` AS `isi_artikel`,`tb_kategori_artikel`.`nama_kategori` AS `nama_kategori` from (`tb_artikel` join `tb_kategori_artikel`) where (`tb_artikel`.`id_kategori_artikel` = `tb_kategori_artikel`.`id`) order by `tb_artikel`.`id` desc limit 1 ;

-- --------------------------------------------------------

--
-- Structure for view `v_galeri`
--
DROP TABLE IF EXISTS `v_galeri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_galeri`  AS  select `tb_galeri`.`id` AS `id`,`tb_galeri`.`nama_galeri` AS `nama_galeri`,`tb_galeri`.`id_kategori_galeri` AS `id_kategori_galeri`,`tb_galeri`.`foto_galeri` AS `foto_galeri`,`tb_galeri`.`keterangan` AS `keterangan`,`tb_kategori_galeri`.`nama_kategori` AS `nama_kategori` from (`tb_galeri` join `tb_kategori_galeri`) where (`tb_galeri`.`id_kategori_galeri` = `tb_kategori_galeri`.`id`) order by `tb_galeri`.`id` desc limit 9 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `tb_apbd`
--
ALTER TABLE `tb_apbd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_artikel_ibfk_1` (`id_kategori_artikel`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori_galeri` (`id_kategori_galeri`);

--
-- Indexes for table `tb_kategori_artikel`
--
ALTER TABLE `tb_kategori_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori_galeri`
--
ALTER TABLE `tb_kategori_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kependudukan`
--
ALTER TABLE `tb_kependudukan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kontak_masuk`
--
ALTER TABLE `tb_kontak_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_peta_desa`
--
ALTER TABLE `tb_peta_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prestasi_desa`
--
ALTER TABLE `tb_prestasi_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_profil_kepaladesa`
--
ALTER TABLE `tb_profil_kepaladesa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sejarah_desa`
--
ALTER TABLE `tb_sejarah_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_staff_desa`
--
ALTER TABLE `tb_staff_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_struktur_organisasi`
--
ALTER TABLE `tb_struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tentang_desa`
--
ALTER TABLE `tb_tentang_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_visi_misi`
--
ALTER TABLE `tb_visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_apbd`
--
ALTER TABLE `tb_apbd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_kategori_artikel`
--
ALTER TABLE `tb_kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_kategori_galeri`
--
ALTER TABLE `tb_kategori_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_kependudukan`
--
ALTER TABLE `tb_kependudukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kontak_masuk`
--
ALTER TABLE `tb_kontak_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_peta_desa`
--
ALTER TABLE `tb_peta_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_prestasi_desa`
--
ALTER TABLE `tb_prestasi_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_profil_kepaladesa`
--
ALTER TABLE `tb_profil_kepaladesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_sejarah_desa`
--
ALTER TABLE `tb_sejarah_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_staff_desa`
--
ALTER TABLE `tb_staff_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_struktur_organisasi`
--
ALTER TABLE `tb_struktur_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_tentang_desa`
--
ALTER TABLE `tb_tentang_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_visi_misi`
--
ALTER TABLE `tb_visi_misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id`);

--
-- Constraints for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD CONSTRAINT `tb_artikel_ibfk_1` FOREIGN KEY (`id_kategori_artikel`) REFERENCES `tb_kategori_artikel` (`id`);

--
-- Constraints for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD CONSTRAINT `tb_galeri_ibfk_1` FOREIGN KEY (`id_kategori_galeri`) REFERENCES `tb_kategori_galeri` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
