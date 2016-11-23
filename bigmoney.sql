-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Nov 2016 pada 05.10
-- Versi Server: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigmoney`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `country` varchar(10) NOT NULL,
  `postalcode` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(15) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `user_id` int(10) NOT NULL,
  `total` bigint(50) NOT NULL,
  `status` enum('Completed','Uncompleted','Canceled','Expired','Confirmed') NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(15) NOT NULL,
  `namakat` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kotakab`
--

CREATE TABLE IF NOT EXISTS `kotakab` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kotakab`
--

INSERT INTO `kotakab` (`id`, `nama`) VALUES
(1, 'Kab. Simeulue'),
(2, 'Kab. Aceh Singkil'),
(3, 'Kab. Aceh Selatan'),
(4, 'Kab. Aceh Tenggara'),
(5, 'Kab. Aceh Timur'),
(6, 'Kab. Aceh Tengah'),
(7, 'Kab. Aceh Barat'),
(8, 'Kab. Aceh Besar'),
(9, 'Kab. Pidie'),
(10, 'Kab. Bireuen'),
(11, 'Kab. Aceh Utara'),
(12, 'Kab. Aceh Barat Daya'),
(13, 'Kab. Gayo Lues'),
(14, 'Kab. Aceh Tamiang'),
(15, 'Kab. Nagan Raya'),
(16, 'Kab. Aceh Jaya'),
(17, 'Kab. Bener Meriah'),
(18, 'Kab. Pidie Jaya'),
(19, 'Kota Banda Aceh'),
(20, 'Kota Sabang'),
(21, 'Kota Langsa'),
(22, 'Kota Lhokseumawe'),
(23, 'Kota Subulussalam'),
(24, 'Kab. Nias'),
(25, 'Kab. Mandailing Natal'),
(26, 'Kab. Tapanuli Selatan'),
(27, 'Kab. Tapanuli Tengah'),
(28, 'Kab. Tapanuli Utara'),
(29, 'Kab. Toba Samosir'),
(30, 'Kab. Labuhan Batu'),
(31, 'Kab. Asahan'),
(32, 'Kab. Simalungun'),
(33, 'Kab. Dairi'),
(34, 'Kab. Karo'),
(35, 'Kab. Deli Serdang'),
(36, 'Kab. Langkat'),
(37, 'Kab. Nias Selatan'),
(38, 'Kab. Humbang Hasundutan'),
(39, 'Kab. Pakpak Bharat'),
(40, 'Kab. Samosir'),
(41, 'Kab. Serdang Bedagai'),
(42, 'Kab. Batu Bara'),
(43, 'Kab. Padang Lawas Utara'),
(44, 'Kab. Padang Lawas'),
(45, 'Kab. Labuhan Batu Selatan'),
(46, 'Kab. Labuhan Batu Utara'),
(47, 'Kab. Nias Utara'),
(48, 'Kab. Nias Barat'),
(49, 'Kota Sibolga'),
(50, 'Kota Tanjung Balai'),
(51, 'Kota Pematang Siantar'),
(52, 'Kota Tebing Tinggi'),
(53, 'Kota Medan'),
(54, 'Kota Binjai'),
(55, 'Kota Padangsidimpuan'),
(56, 'Kota Gunungsitoli'),
(57, 'Kab. Kepulauan Mentawai'),
(58, 'Kab. Pesisir Selatan'),
(59, 'Kab. Solok'),
(60, 'Kab. Sijunjung'),
(61, 'Kab. Tanah Datar'),
(62, 'Kab. Padang Pariaman'),
(63, 'Kab. Agam'),
(64, 'Kab. Lima Puluh Kota'),
(65, 'Kab. Pasaman'),
(66, 'Kab. Solok Selatan'),
(67, 'Kab. Dharmasraya'),
(68, 'Kab. Pasaman Barat'),
(69, 'Kota Padang'),
(70, 'Kota Solok'),
(71, 'Kota Sawah Lunto'),
(72, 'Kota Padang Panjang'),
(73, 'Kota Bukittinggi'),
(74, 'Kota Payakumbuh'),
(75, 'Kota Pariaman'),
(76, 'Kab. Kuantan Singingi'),
(77, 'Kab. Indragiri Hulu'),
(78, 'Kab. Indragiri Hilir'),
(79, 'Kab. Pelalawan'),
(80, 'Kab. S I A K'),
(81, 'Kab. Kampar'),
(82, 'Kab. Rokan Hulu'),
(83, 'Kab. Bengkalis'),
(84, 'Kab. Rokan Hilir'),
(85, 'Kab. Kepulauan Meranti'),
(86, 'Kota Pekanbaru'),
(87, 'Kota D U M A I'),
(88, 'Kab. Kerinci'),
(89, 'Kab. Merangin'),
(90, 'Kab. Sarolangun'),
(91, 'Kab. Batang Hari'),
(92, 'Kab. Muaro Jambi'),
(93, 'Kab. Tanjung Jabung Timur'),
(94, 'Kab. Tanjung Jabung Barat'),
(95, 'Kab. Tebo'),
(96, 'Kab. Bungo'),
(97, 'Kota Jambi'),
(98, 'Kota Sungai Penuh'),
(99, 'Kab. Ogan Komering Ulu'),
(100, 'Kab. Ogan Komering Ilir'),
(101, 'Kab. Muara Enim'),
(102, 'Kab. Lahat'),
(103, 'Kab. Musi Rawas'),
(104, 'Kab. Musi Banyuasin'),
(105, 'Kab. Banyu Asin'),
(106, 'Kab. Ogan Komering Ulu Selatan'),
(107, 'Kab. Ogan Komering Ulu Timur'),
(108, 'Kab. Ogan Ilir'),
(109, 'Kab. Empat Lawang'),
(110, 'Kota Palembang'),
(111, 'Kota Prabumulih'),
(112, 'Kota Pagar Alam'),
(113, 'Kota Lubuklinggau'),
(114, 'Kab. Bengkulu Selatan'),
(115, 'Kab. Rejang Lebong'),
(116, 'Kab. Bengkulu Utara'),
(117, 'Kab. Kaur'),
(118, 'Kab. Seluma'),
(119, 'Kab. Mukomuko'),
(120, 'Kab. Lebong'),
(121, 'Kab. Kepahiang'),
(122, 'Kab. Bengkulu Tengah'),
(123, 'Kota Bengkulu'),
(124, 'Kab. Lampung Barat'),
(125, 'Kab. Tanggamus'),
(126, 'Kab. Lampung Selatan'),
(127, 'Kab. Lampung Timur'),
(128, 'Kab. Lampung Tengah'),
(129, 'Kab. Lampung Utara'),
(130, 'Kab. Way Kanan'),
(131, 'Kab. Tulangbawang'),
(132, 'Kab. Pesawaran'),
(133, 'Kab. Pringsewu'),
(134, 'Kab. Mesuji'),
(135, 'Kab. Tulang Bawang Barat'),
(136, 'Kab. Pesisir Barat'),
(137, 'Kota Bandar Lampung'),
(138, 'Kota Metro'),
(139, 'Kab. Bangka'),
(140, 'Kab. Belitung'),
(141, 'Kab. Bangka Barat'),
(142, 'Kab. Bangka Tengah'),
(143, 'Kab. Bangka Selatan'),
(144, 'Kab. Belitung Timur'),
(145, 'Kota Pangkal Pinang'),
(146, 'Kab. Karimun'),
(147, 'Kab. Bintan'),
(148, 'Kab. Natuna'),
(149, 'Kab. Lingga'),
(150, 'Kab. Kepulauan Anambas'),
(151, 'Kota B A T A M'),
(152, 'Kota Tanjung Pinang'),
(153, 'Kab. Kepulauan Seribu'),
(154, 'Kota Jakarta Selatan'),
(155, 'Kota Jakarta Timur'),
(156, 'Kota Jakarta Pusat'),
(157, 'Kota Jakarta Barat'),
(158, 'Kota Jakarta Utara'),
(159, 'Kab. Bogor'),
(160, 'Kab. Sukabumi'),
(161, 'Kab. Cianjur'),
(162, 'Kab. Bandung'),
(163, 'Kab. Garut'),
(164, 'Kab. Tasikmalaya'),
(165, 'Kab. Ciamis'),
(166, 'Kab. Kuningan'),
(167, 'Kab. Cirebon'),
(168, 'Kab. Majalengka'),
(169, 'Kab. Sumedang'),
(170, 'Kab. Indramayu'),
(171, 'Kab. Subang'),
(172, 'Kab. Purwakarta'),
(173, 'Kab. Karawang'),
(174, 'Kab. Bekasi'),
(175, 'Kab. Bandung Barat'),
(176, 'Kab. Pangandaran'),
(177, 'Kota Bogor'),
(178, 'Kota Sukabumi'),
(179, 'Kota Bandung'),
(180, 'Kota Cirebon'),
(181, 'Kota Bekasi'),
(182, 'Kota Depok'),
(183, 'Kota Cimahi'),
(184, 'Kota Tasikmalaya'),
(185, 'Kota Banjar'),
(186, 'Kab. Cilacap'),
(187, 'Kab. Banyumas'),
(188, 'Kab. Purbalingga'),
(189, 'Kab. Banjarnegara'),
(190, 'Kab. Kebumen'),
(191, 'Kab. Purworejo'),
(192, 'Kab. Wonosobo'),
(193, 'Kab. Magelang'),
(194, 'Kab. Boyolali'),
(195, 'Kab. Klaten'),
(196, 'Kab. Sukoharjo'),
(197, 'Kab. Wonogiri'),
(198, 'Kab. Karanganyar'),
(199, 'Kab. Sragen'),
(200, 'Kab. Grobogan'),
(201, 'Kab. Blora'),
(202, 'Kab. Rembang'),
(203, 'Kab. Pati'),
(204, 'Kab. Kudus'),
(205, 'Kab. Jepara'),
(206, 'Kab. Demak'),
(207, 'Kab. Semarang'),
(208, 'Kab. Temanggung'),
(209, 'Kab. Kendal'),
(210, 'Kab. Batang'),
(211, 'Kab. Pekalongan'),
(212, 'Kab. Pemalang'),
(213, 'Kab. Tegal'),
(214, 'Kab. Brebes'),
(215, 'Kota Magelang'),
(216, 'Kota Surakarta'),
(217, 'Kota Salatiga'),
(218, 'Kota Semarang'),
(219, 'Kota Pekalongan'),
(220, 'Kota Tegal'),
(221, 'Kab. Kulon Progo'),
(222, 'Kab. Bantul'),
(223, 'Kab. Gunung Kidul'),
(224, 'Kab. Sleman'),
(225, 'Kota Yogyakarta'),
(226, 'Kab. Pacitan'),
(227, 'Kab. Ponorogo'),
(228, 'Kab. Trenggalek'),
(229, 'Kab. Tulungagung'),
(230, 'Kab. Blitar'),
(231, 'Kab. Kediri'),
(232, 'Kab. Malang'),
(233, 'Kab. Lumajang'),
(234, 'Kab. Jember'),
(235, 'Kab. Banyuwangi'),
(236, 'Kab. Bondowoso'),
(237, 'Kab. Situbondo'),
(238, 'Kab. Probolinggo'),
(239, 'Kab. Pasuruan'),
(240, 'Kab. Sidoarjo'),
(241, 'Kab. Mojokerto'),
(242, 'Kab. Jombang'),
(243, 'Kab. Nganjuk'),
(244, 'Kab. Madiun'),
(245, 'Kab. Magetan'),
(246, 'Kab. Ngawi'),
(247, 'Kab. Bojonegoro'),
(248, 'Kab. Tuban'),
(249, 'Kab. Lamongan'),
(250, 'Kab. Gresik'),
(251, 'Kab. Bangkalan'),
(252, 'Kab. Sampang'),
(253, 'Kab. Pamekasan'),
(254, 'Kab. Sumenep'),
(255, 'Kota Kediri'),
(256, 'Kota Blitar'),
(257, 'Kota Malang'),
(258, 'Kota Probolinggo'),
(259, 'Kota Pasuruan'),
(260, 'Kota Mojokerto'),
(261, 'Kota Madiun'),
(262, 'Kota Surabaya'),
(263, 'Kota Batu'),
(264, 'Kab. Pandeglang'),
(265, 'Kab. Lebak'),
(266, 'Kab. Tangerang'),
(267, 'Kab. Serang'),
(268, 'Kota Tangerang'),
(269, 'Kota Cilegon'),
(270, 'Kota Serang'),
(271, 'Kota Tangerang Selatan'),
(272, 'Kab. Jembrana'),
(273, 'Kab. Tabanan'),
(274, 'Kab. Badung'),
(275, 'Kab. Gianyar'),
(276, 'Kab. Klungkung'),
(277, 'Kab. Bangli'),
(278, 'Kab. Karang Asem'),
(279, 'Kab. Buleleng'),
(280, 'Kota Denpasar'),
(281, 'Kab. Lombok Barat'),
(282, 'Kab. Lombok Tengah'),
(283, 'Kab. Lombok Timur'),
(284, 'Kab. Sumbawa'),
(285, 'Kab. Dompu'),
(286, 'Kab. Bima'),
(287, 'Kab. Sumbawa Barat'),
(288, 'Kab. Lombok Utara'),
(289, 'Kota Mataram'),
(290, 'Kota Bima'),
(291, 'Kab. Sumba Barat'),
(292, 'Kab. Sumba Timur'),
(293, 'Kab. Kupang'),
(294, 'Kab. Timor Tengah Selatan'),
(295, 'Kab. Timor Tengah Utara'),
(296, 'Kab. Belu'),
(297, 'Kab. Alor'),
(298, 'Kab. Lembata'),
(299, 'Kab. Flores Timur'),
(300, 'Kab. Sikka'),
(301, 'Kab. Ende'),
(302, 'Kab. Ngada'),
(303, 'Kab. Manggarai'),
(304, 'Kab. Rote Ndao'),
(305, 'Kab. Manggarai Barat'),
(306, 'Kab. Sumba Tengah'),
(307, 'Kab. Sumba Barat Daya'),
(308, 'Kab. Nagekeo'),
(309, 'Kab. Manggarai Timur'),
(310, 'Kab. Sabu Raijua'),
(311, 'Kota Kupang'),
(312, 'Kab. Sambas'),
(313, 'Kab. Bengkayang'),
(314, 'Kab. Landak'),
(315, 'Kab. Pontianak'),
(316, 'Kab. Sanggau'),
(317, 'Kab. Ketapang'),
(318, 'Kab. Sintang'),
(319, 'Kab. Kapuas Hulu'),
(320, 'Kab. Sekadau'),
(321, 'Kab. Melawi'),
(322, 'Kab. Kayong Utara'),
(323, 'Kab. Kubu Raya'),
(324, 'Kota Pontianak'),
(325, 'Kota Singkawang'),
(326, 'Kab. Kotawaringin Barat'),
(327, 'Kab. Kotawaringin Timur'),
(328, 'Kab. Kapuas'),
(329, 'Kab. Barito Selatan'),
(330, 'Kab. Barito Utara'),
(331, 'Kab. Sukamara'),
(332, 'Kab. Lamandau'),
(333, 'Kab. Seruyan'),
(334, 'Kab. Katingan'),
(335, 'Kab. Pulang Pisau'),
(336, 'Kab. Gunung Mas'),
(337, 'Kab. Barito Timur'),
(338, 'Kab. Murung Raya'),
(339, 'Kota Palangka Raya'),
(340, 'Kab. Tanah Laut'),
(341, 'Kab. Kota Baru'),
(342, 'Kab. Banjar'),
(343, 'Kab. Barito Kuala'),
(344, 'Kab. Tapin'),
(345, 'Kab. Hulu Sungai Selatan'),
(346, 'Kab. Hulu Sungai Tengah'),
(347, 'Kab. Hulu Sungai Utara'),
(348, 'Kab. Tabalong'),
(349, 'Kab. Tanah Bumbu'),
(350, 'Kab. Balangan'),
(351, 'Kota Banjarmasin'),
(352, 'Kota Banjar Baru'),
(353, 'Kab. Paser'),
(354, 'Kab. Kutai Barat'),
(355, 'Kab. Kutai Kartanegara'),
(356, 'Kab. Kutai Timur'),
(357, 'Kab. Berau'),
(358, 'Kab. Penajam Paser Utara'),
(359, 'Kota Balikpapan'),
(360, 'Kota Samarinda'),
(361, 'Kota Bontang'),
(362, 'Kab. Malinau'),
(363, 'Kab. Bulungan'),
(364, 'Kab. Tana Tidung'),
(365, 'Kab. Nunukan'),
(366, 'Kota Tarakan'),
(367, 'Kab. Bolaang Mongondow'),
(368, 'Kab. Minahasa'),
(369, 'Kab. Kepulauan Sangihe'),
(370, 'Kab. Kepulauan Talaud'),
(371, 'Kab. Minahasa Selatan'),
(372, 'Kab. Minahasa Utara'),
(373, 'Kab. Bolaang Mongondow Utara'),
(374, 'Kab. Siau Tagulandang Biaro'),
(375, 'Kab. Minahasa Tenggara'),
(376, 'Kab. Bolaang Mongondow Selatan'),
(377, 'Kab. Bolaang Mongondow Timur'),
(378, 'Kota Manado'),
(379, 'Kota Bitung'),
(380, 'Kota Tomohon'),
(381, 'Kota Kotamobagu'),
(382, 'Kab. Banggai Kepulauan'),
(383, 'Kab. Banggai'),
(384, 'Kab. Morowali'),
(385, 'Kab. Poso'),
(386, 'Kab. Donggala'),
(387, 'Kab. Toli-toli'),
(388, 'Kab. Buol'),
(389, 'Kab. Parigi Moutong'),
(390, 'Kab. Tojo Una-una'),
(391, 'Kab. Sigi'),
(392, 'Kota Palu'),
(393, 'Kab. Kepulauan Selayar'),
(394, 'Kab. Bulukumba'),
(395, 'Kab. Bantaeng'),
(396, 'Kab. Jeneponto'),
(397, 'Kab. Takalar'),
(398, 'Kab. Gowa'),
(399, 'Kab. Sinjai'),
(400, 'Kab. Maros'),
(401, 'Kab. Pangkajene Dan Kepulauan'),
(402, 'Kab. Barru'),
(403, 'Kab. Bone'),
(404, 'Kab. Soppeng'),
(405, 'Kab. Wajo'),
(406, 'Kab. Sidenreng Rappang'),
(407, 'Kab. Pinrang'),
(408, 'Kab. Enrekang'),
(409, 'Kab. Luwu'),
(410, 'Kab. Tana Toraja'),
(411, 'Kab. Luwu Utara'),
(412, 'Kab. Luwu Timur'),
(413, 'Kab. Toraja Utara'),
(414, 'Kota Makassar'),
(415, 'Kota Parepare'),
(416, 'Kota Palopo'),
(417, 'Kab. Buton'),
(418, 'Kab. Muna'),
(419, 'Kab. Konawe'),
(420, 'Kab. Kolaka'),
(421, 'Kab. Konawe Selatan'),
(422, 'Kab. Bombana'),
(423, 'Kab. Wakatobi'),
(424, 'Kab. Kolaka Utara'),
(425, 'Kab. Buton Utara'),
(426, 'Kab. Konawe Utara'),
(427, 'Kota Kendari'),
(428, 'Kota Baubau'),
(429, 'Kab. Boalemo'),
(430, 'Kab. Gorontalo'),
(431, 'Kab. Pohuwato'),
(432, 'Kab. Bone Bolango'),
(433, 'Kab. Gorontalo Utara'),
(434, 'Kota Gorontalo'),
(435, 'Kab. Majene'),
(436, 'Kab. Polewali Mandar'),
(437, 'Kab. Mamasa'),
(438, 'Kab. Mamuju'),
(439, 'Kab. Mamuju Utara'),
(440, 'Kab. Maluku Tenggara Barat'),
(441, 'Kab. Maluku Tenggara'),
(442, 'Kab. Maluku Tengah'),
(443, 'Kab. Buru'),
(444, 'Kab. Kepulauan Aru'),
(445, 'Kab. Seram Bagian Barat'),
(446, 'Kab. Seram Bagian Timur'),
(447, 'Kab. Maluku Barat Daya'),
(448, 'Kab. Buru Selatan'),
(449, 'Kota Ambon'),
(450, 'Kota Tual'),
(451, 'Kab. Halmahera Barat'),
(452, 'Kab. Halmahera Tengah'),
(453, 'Kab. Kepulauan Sula'),
(454, 'Kab. Halmahera Selatan'),
(455, 'Kab. Halmahera Utara'),
(456, 'Kab. Halmahera Timur'),
(457, 'Kab. Pulau Morotai'),
(458, 'Kota Ternate'),
(459, 'Kota Tidore Kepulauan'),
(460, 'Kab. Fakfak'),
(461, 'Kab. Kaimana'),
(462, 'Kab. Teluk Wondama'),
(463, 'Kab. Teluk Bintuni'),
(464, 'Kab. Manokwari'),
(465, 'Kab. Sorong Selatan'),
(466, 'Kab. Sorong'),
(467, 'Kab. Raja Ampat'),
(468, 'Kab. Tambrauw'),
(469, 'Kab. Maybrat'),
(470, 'Kota Sorong'),
(471, 'Kab. Merauke'),
(472, 'Kab. Jayawijaya'),
(473, 'Kab. Jayapura'),
(474, 'Kab. Nabire'),
(475, 'Kab. Kepulauan Yapen'),
(476, 'Kab. Biak Numfor'),
(477, 'Kab. Paniai'),
(478, 'Kab. Puncak Jaya'),
(479, 'Kab. Mimika'),
(480, 'Kab. Boven Digoel'),
(481, 'Kab. Mappi'),
(482, 'Kab. Asmat'),
(483, 'Kab. Yahukimo'),
(484, 'Kab. Pegunungan Bintang'),
(485, 'Kab. Tolikara'),
(486, 'Kab. Sarmi'),
(487, 'Kab. Keerom'),
(488, 'Kab. Waropen'),
(489, 'Kab. Supiori'),
(490, 'Kab. Mamberamo Raya'),
(491, 'Kab. Nduga'),
(492, 'Kab. Lanny Jaya'),
(493, 'Kab. Mamberamo Tengah'),
(494, 'Kab. Yalimo'),
(495, 'Kab. Puncak'),
(496, 'Kab. Dogiyai'),
(497, 'Kab. Intan Jaya'),
(498, 'Kab. Deiyai'),
(499, 'Kota Jayapura');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `barcode` varchar(25) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `options` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `privacypol`
--

CREATE TABLE IF NOT EXISTS `privacypol` (
  `id` int(15) NOT NULL,
  `webname` varchar(100) NOT NULL,
  `descrip` longtext NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `twit` varchar(100) NOT NULL,
  `terms` longtext NOT NULL,
  `titlepriv` varchar(100) NOT NULL,
  `privacypol` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `privacypol`
--

INSERT INTO `privacypol` (`id`, `webname`, `descrip`, `address`, `phone`, `email`, `fb`, `twit`, `terms`, `titlepriv`, `privacypol`) VALUES
(1, 'Giani Gracio', '<p style="text-align:justify"><span style="font-size:14px">GIANI GRACIO is a registered trademark in Indonesia since 1999. Giani Gracio is a growing garment factory. With over 100 counters that can be found throughout Indonesia. You can find our counters at: Matahari Department Store, Yogya Deparment Store, Borobudur (Borma) Department Store, Ramayana Department Store, Tiara Deparment Store, Asia Department Store, Toko Tiga, and many more! </span></p>\r\n\r\n<p style="text-align:justify"><span style="font-size:14px">We deliver unmatchable-comfort casual wear for man. We make sure that everything that we produce meet our high standard quality control. </span></p>\r\n\r\n<h1><span style="font-size:18px">BUY IT, WEAR IT, INSTANTLY YOU WILL FEEL THE DIFFERENCE!</span></h1>\r\n', 'Jalan Cicukang Holis No. 52A\r\nBandung - 40215', '0813-1252-9109', 'giani.gracio@gmail.com', 'facebook.com/gianigracio99', 'twitter.com/gianigracio', '<p style="text-align:justify"><strong>TERMS AND CONDITIONS OF USE</strong></p>\r\n\r\n<p style="text-align:justify"><strong>PLEASE READ CAREFULLY BEFORE USING THIS SITE</strong></p>\r\n\r\n<p style="text-align:justify">Your use of the Giani Gracio Site (the &quot;Site&quot;) signifies your acceptance of the following terms and conditions (&quot;T&amp;C&quot;). If you do not agree to the following T&amp;C, do not use the Giani Gracio Site.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Users/Participants</strong></p>\r\n\r\n<p style="text-align:justify">We do not discriminate on the basis of age, race, national origin, gender, sexual orientation or religion.&nbsp;No person under the age of 13 should use the Site without the consent of their parent or legal guardian. We strongly encourage all parents and guardians to monitor the Internet use by their children. Use of the Site by any user shall be deemed to be a representation that the user is 13 years of age or older.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Use of this website from outside Indonesia.</strong></p>\r\n\r\n<p style="text-align:justify">Unless otherwise specified, the materials on this website are displayed solely for the purposes of promoting Giani Gracio&#39;s products and services available in Indonesia and Giani Gracio makes no representation that any products or services referred to in the materials on this website are appropriate for use in or available for delivery to other locations outside of Indonesia. Those who choose to access this site from other locations are responsible for compliance with local laws if and to the extent local laws are applicable.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Product Display</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio has made every effort to display accurately the products featured on this Site. However, the colors we use and the capabilities of your computer monitor will affect the colors you see on your screen. Giani Gracio cannot guarantee that your monitor&rsquo;s display of any color, texture, or merchandise details will be accurate.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Modification of Content</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio attempts to ensure that the content on this Site is complete and current. As indicated in this Disclaimer section, Giani Gracio does not guarantee that the information contained on this Site will not contain errors, inaccuracies or omissions.&nbsp;Such errors, inaccuracies or omissions may relate to price or to product description or availability. Giani Gracio reserves the right to correct any error, inaccuracy or omission or to change or update the content without prior notice to you. Further Giani Gracio reserves the right to refuse or cancel any orders containing any error, inaccuracy or omission, whether or not the order has been submitted, confirmed and/or your credit card has been charged. If your credit card has been charged for the purchase and your order is canceled, Giani Gracio shall promptly issue a credit to your credit card. If you are otherwise unsatisfied with your purchase, you may return it to Giani Gracio. Please see our Return Policy.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Disclaimer, Limitation of Liability</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio does not warrant that this Site will operate uninterrupted or error-free, that defects will be corrected, or that this Site or its server will be free of viruses or other harmful elements. As a user of this Site, your access is undertaken at your own risk. Giani Gracio shall not be liable for damages of any kind related to your use of or inability to use this Site, even if Giani Gracio knew or should have known of the potential for such damages.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">ALL INFORMATION ON THIS SITE IS PROVIDED &quot;AS IS&quot; AND WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS OF OR FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT. ALL INFORMATION IS PRESENTED WITHOUT ANY WARRANTY AS TO ITS RELIABILITY, ACCURACY, TIMELINESS, USEFULNESS OR COMPLETENESS. GIANI GRACIO DOES NOT WARRANT THAT ACCESS TO THE SITE WILL BE UNINTERRUPTED OR ERROR-FREE. YOU AGREE TO USE THE SITE AT YOUR OWN RISK. GIANI GRACIO ASSUMES NO RESPONSIBILITY FOR ANY CIRCUMSTANCES ARISING OUT OF THE USE, MISUSE, INTERPRETATION OR APPLICATION OF ANY INFORMATION SUPPLIED ON THIS SITE. YOU AGREE BY ACCESSING THE SITE THAT UNDER NO CIRCUMSTANCES OR ANY THEORIES OF LIABILITY UNDER INTERNATIONAL OR CIVIL, COMMON OR STATUTORY LAW INCLUDING BUT NOT LIMITED TO STRICT LIABILITY, NEGLIGENCE OR OTHER THEORIES OR CONTACT, PATENT OR COPYRIGHT LAWS, WILL GIANI GRACIO BE LIABLE FOR DAMAGES OF ANY KIND OCCURRING FROM THE USE OF THE SITE OR ANY INFORMATION GOODS OR SERVICES OBTAINED THROUGH THE SITE, INCLUDING DIRECT, INDIRECT, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES (EVEN IF GIANI GRACIO HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), TO THE FULLEST EXTENT PERMITTED BY LAW. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF CERTAIN DAMAGES, SO SOME OF THESE LIMITATIONS MAY NOT APPLY TO YOU.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Cookies</strong></p>\r\n\r\n<p style="text-align:justify">gianishop.com uses permanent cookies. A &quot;cookie&quot; is a small text file stored by your web browser on your computer&#39;s hard disk for added functionality and for tracking Site usage and navigation. Cookies allow us to recognize who you are when you visit our Site by associating the cookie with other information you have voluntarily provided us, which information is stored on our secured database. At no time is your Personal Information stored within one of our cookies.&nbsp;We may also use session cookies to collect non-personally identifiable information, such as your IP address and the date and time of your visit to our Site, in order to measure the effectiveness of our online presence and improve the design and content of our Site. Session cookies are temporary files that are erased when the web browser is closed.&nbsp;Accepting cookies through your web browser is a personal choice. By modifying your browser preferences, you have the choice to accept all cookies, receive notice when a cookie is set, or to reject all cookies. You can still shop and make purchases from gianishop.com even if you set your browser to reject cookies, however, we may not be able to provide you with as personalized a shopping experience.&nbsp;To learn more about how we protect customer information please review our Privacy Statement by clicking here Privacy Statement.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Links</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio is not responsible for the content of any unaffiliated websites that may be linked to or from the Site. These links are provided for your convenience only and you access them at your own risk. Any other website accessed from the Site is independent from Giani Gracio, and Giani Gracio has no control over the content of that other website. In addition, a link to any other website does not imply that Giani Gracio endorses or accepts any responsibility for the content or use of such other website. In no event shall any reference to any third party or third party product or service be construed as an approval or endorsement by Giani Gracio of that third party or of any product or service provided by a third party.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Privacy Issues</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio is concerned about privacy matters for its customers. To learn more about how we protect customer information, please review our Privacy Statement by clicking here Privacy Statement.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Termination</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio may, in its sole discretion, terminate or suspend your access to all or part of the Site, for any reason, including without limitation, breach of this T&amp;C. In the event the T&amp;C is terminated, the restrictions regarding materials appearing on the Site, and the representations and warranties, indemnities and limitations of liabilities set forth in this T&amp;C will survive termination. In the event that you are unsatisfied with the services provided by Giani Gracio, your sole remedy is to terminate your use of the Site.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Trademarks</strong></p>\r\n\r\n<p style="text-align:justify">There are references throughout the Site to various trademarks or service marks and these, whether registered or not, are the property of their respective owners.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Changes and Applicable Law</strong></p>\r\n\r\n<p style="text-align:justify">We reserve the right to make changes to the Site and this T&amp;C. We encourage you to review the Site and these T&amp;C periodically for any updates or changes. Your continued access or use of the Site shall be deemed your acceptance of this T&amp;C and any changes and the reasonableness of these standards for notice of changes.&nbsp;You agree that any legal action or proceeding between you and Giani Gracio will be brought exclusively in a federal or state court of competent jurisdiction sitting in Bandung, Indonesia. If any provision of this agreement shall be unlawful, void, or for any reason unenforceable, then that provision shall be deemed severable from the agreement and shall not affect the validity and enforceability of any remaining provision.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>Comments, Complaints and Questions</strong></p>\r\n\r\n<p style="text-align:justify">We welcome your feedback about the Site. However, any comments, ideas, notes, messages, suggestions or other communications sent to the Site shall be and remain the exclusive property of Giani Gracio, and we may use all such communications in any manner, including reproducing, disclosing and publishing such communications, all without compensation to you. Should you have any questions or complaints regarding violations of these T&amp;C, please contact us by clicking here to Customer Service.</p>\r\n', 'Giani Gracio', '<p style="text-align:justify">Giani Gracio recognizes your concerns regarding the collection and use of personal information, and we want our visitors to know that Giani Gracio has taken important steps to safeguard your privacy and security. This Privacy Statement describes the information that we collect about you, why we collect it, how we use it, the instances when we share it with third-parties and the measures we employ to protect such information and provide you with the safest and most secure shopping environment possible.</p>\r\n\r\n<p style="text-align:justify">While this Privacy Statement applies primarily to our online practices, certain practices including, but not limited to the collection, use, and sharing of information with others, may be applicable and extend to our offline practices. By shopping in our stores, through our catalogs, or visiting GianiShop.com, you agree to accept the practices described in this Privacy Statement.</p>\r\n\r\n<p style="text-align:justify"><strong>INFORMATION WE COLLECT</strong></p>\r\n\r\n<p style="text-align:justify">Automatic Information:</p>\r\n\r\n<p style="text-align:justify">When you visit gianigracio.com, our server attaches a small text file, known as a &quot;cookie&quot; to your computer&#39;s hard drive which automatically will collect and store non-personally identifiable information such as the name of the domain and host from which you access the Internet, the Internet Protocol (IP) address of the computer you are using, the browser software you use and your operating system, the date and time you access our web site, and the Internet address of the web site from which you linked directly to our web site, if any. This information collected by using a cookie is sometimes called &quot;clickstream&quot;. This is the only information collected unless you voluntarily provide information to us.</p>\r\n\r\n<p style="text-align:justify">We use clickstream information, which we may share with our affiliates, licensees, trusted vendors or responsible outside companies, only as anonymous aggregate data to determine the number of visitors to our web site, to understand how visitors navigate our web site, to determine common traffic patterns, including what site the visitor came from, to ensure the web site is working properly and to improve the design and content of our web site. This aggregate information does not include individual names or personal information, so it does not identify you or anyone else. For further information regarding cookies and how to disable them, refer to &quot;Our Use of Cookies&quot; below.</p>\r\n\r\n<p style="text-align:justify">Information you give us:</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify">Whenever you shop in our stores, through our catalogs, or at GianiShop.com, we may ask you to voluntarily provide certain personally identifiable information needed to better serve you and/or complete your transaction. This &quot;Personal Information&quot; may include:\r\n	<ol>\r\n		<li>Contact Data (such as your name, mailing address, telephone number, e-mail address and zip code);</li>\r\n		<li>Financial Data (such as your account or credit card number and billing address, if you use a credit or debit card or pay by check); and</li>\r\n		<li>Demographic Data (such as your age, marital status and occupation).</li>\r\n	</ol>\r\n	</li>\r\n	<li style="text-align:justify">If you search our web site, make a purchase, communicate with any of our departments, such as Customer Service, or choose to use or participate in one of our various services, promotions, programs, surveys or sweepstakes, we may collect additional information.</li>\r\n	<li style="text-align:justify">From your transactions and other interactions with us, we obtain information concerning your personal preferences and the specific products or services you purchase or use.</li>\r\n	<li style="text-align:justify">We also may gather or receive information from other companies.</li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><strong>SECURING YOUR PERSONAL INFORMATION AND FINANCIAL DATA</strong></p>\r\n\r\n<p style="text-align:justify">Personal Information shared with us as part of your purchase activity is safeguarded by way of proven, industry standard processes. We use SSL (Secure Socket Layer) to encrypt all transaction data, including your credit card number. Encryption is a way of scrambling data in a format that cannot be reassembled by unauthorized users. This data remains encrypted until it reaches our web server and we are ready to process your order, provided your browser supports SSL technology. For further information, click the &quot;Back&quot; button on your web browser and review our Security Statement.</p>\r\n\r\n<p style="text-align:justify">While we strive to protect your Personal Information, no data transmission over the Internet, including e-mail, can be guaranteed to be 100% secure against interception. Once we receive your transmission, we use our best effort to ensure its security on our systems, however, Giani Gracio cannot ensure or warrant the security of any information you transmit to us or from our web site, and therefore you use our web site at your own risk. If your e-mail communication includes sensitive information such as your Social Security number or your account, credit or debit card number, we strongly encourage you to contact us by mail or telephone so that one of our customer service associates may gladly assist you.</p>\r\n\r\n<p style="text-align:justify"><strong>OUR USE OF COOKIES</strong></p>\r\n\r\n<p style="text-align:justify">GianiShop.com uses permanent cookies. A &quot;cookie&quot; is a small text file stored by your web browser on your computer&#39;s hard disk for added functionality and for tracking web site usage and navigation. Cookies allow us to recognize who you are when you visit our web site by associating the cookie with other information you have voluntarily provided us, which information is stored on our secured database. At no time is your Personal Information stored within one of our cookies.</p>\r\n\r\n<p style="text-align:justify">We may also use session cookies to collect non-personally identifiable information, such as your IP address and the date and time of your visit to our web site, in order to measure the effectiveness of our online presence and improve the design and content of our web site. Session cookies are temporary files that are erased when the web browser is closed.</p>\r\n\r\n<p style="text-align:justify">Accepting cookies through your web browser is a personal choice. By modifying your browser preferences, you have the choice to accept all cookies, receive notice when a cookie is set, or to reject all cookies. You can still shop and make purchases from Gianishop.com even if you set your browser to reject cookies, however, we may not be able to provide you with as personalized a shopping experience.</p>\r\n\r\n<p style="text-align:justify"><strong>USING THE INFORMATION WE COLLECT</strong></p>\r\n\r\n<p style="text-align:justify">We use the information we collect for various purposes, including:</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify">to complete your purchase transactions;</li>\r\n	<li style="text-align:justify">to provide the services you request;</li>\r\n	<li style="text-align:justify">to send you our catalogs and other offerings;</li>\r\n	<li style="text-align:justify">to contact you about the status of your store, catalog, or Gianishop.com orders;</li>\r\n	<li style="text-align:justify">to identify your product and service preferences, so that you can be informed of new or additional products, services, and promotions that might be of interest to you;</li>\r\n	<li style="text-align:justify">to provide information concerning products you have purchased;</li>\r\n	<li style="text-align:justify">to determine the effectiveness of our Internet presence and improve the functionality of our website; and</li>\r\n	<li style="text-align:justify">to improve our merchandise selections, customer service, and overall customer shopping experience.</li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><strong>INFORMATION WE SHARE WITH OTHERS</strong></p>\r\n\r\n<p style="text-align:justify">Giani Gracio may share names and addresses of our customers with affiliated businesses and responsible companies so they can let you know about products or services we think might be of interest to you, however, these parties do not have any independent right to share this information.</p>\r\n\r\n<p style="text-align:justify">Further, we may employ other companies or individuals to provide certain services to us such as analyzing customer lists and data, providing marketing assistance, consulting or other services. These third-parties will have access to only the information needed to perform their functions and cannot use that information for any other purpose. Also, when you make a purchase via credit card, we forward your credit card information, name, billing address, telephone number and the amount of your purchase to your credit card company to verify and authorize the transaction. To ship and track your online purchases, we make your name and mailing address available to such companies as JNE. Giani Gracio will NOT share your information with other people or non-affiliated companies, except in the limited circumstances described elsewhere in this Privacy Statement or with your consent.</p>\r\n\r\n<p style="text-align:justify"><strong>LEGAL DISCLAIMER</strong></p>\r\n\r\n<p style="text-align:justify">Though Giani Gracio makes every effort to preserve the privacy of Personal Information, on rare occasions, we may disclose specific information with law enforcement or government officials upon request, in response to a court order, or when required by law to do so. We may also share information with companies assisting in fraud protection or investigation. We do not provide information to these agencies or companies for marketing or commercial purposes.</p>\r\n\r\n<p style="text-align:justify"><strong>CHILDREN AND PRIVACY </strong></p>\r\n\r\n<p style="text-align:justify">We do not knowingly collect Personal Information from children under the age of 13. Unless a parent or guardian consents in advance, Giani Gracio will not knowingly use information that a child provides to Giani Gracio for any direct marketing, advertising, selling or promotional purposes. Persons under the age of 17 should obtain their parents&#39; permission prior to submitting any Personal Information to Giani Gracio .</p>\r\n\r\n<p style="text-align:justify"><strong>YOUR CHOICES REGARDING THE TYPE OF INFORMATION YOU RECEIVE FROM GIANI GRACIO</strong></p>\r\n\r\n<p style="text-align:justify">We offer choices regarding the type and occurrence of information you receive from us. If you prefer not to receive catalogs or other communications from Giani Gracio , or if you prefer to receive them less frequently, please:</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify">Email us at giani.gracio@gmail.com</li>\r\n	<li style="text-align:justify">Write to us at Giani Gracio. Jl. Cicukang Holis no:52A. Kode Pos: 40215, Bandung. Indonesia</li>\r\n	<li style="text-align:justify">Contact us at 0815-7310-6668 You may also click the unsubscribe link on any e-mail communication you receive from us and follow the instructions on screen.</li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><strong>YOUR CHOICES REGARDING YOUR PERSONAL INFORMATION</strong></p>\r\n\r\n<p style="text-align:justify">If you prefer that we NOT share your Personal Information with any of the trusted vendors and companies outside of Giani Gracio that we have authorized to send you promotional information about their products or services, you may &quot;opt-out&quot; by simply telling us when you give us your Personal Information, or please:</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify">Email us at giani.gracio@gmail.com</li>\r\n	<li style="text-align:justify">Write to us at Giani Gracio. Jl. Cicukang Holis no:52A. Kode Pos: 40215, Bandung. Indonesia</li>\r\n	<li style="text-align:justify">Contact us at 0815-7310-6668</li>\r\n</ul>\r\n\r\n<p style="text-align:justify">Please be sure to provide us with your exact name, mailing address and the nature of your request so that we can correctly identify you and properly fulfill your request. We will make every effort to implement any choice you make as soon as possible.</p>\r\n\r\n<p style="text-align:justify">You can still visit our web site and choose not to provide us with Personal Information however, you would not be able to access and use those portions of the web site that require your Personal Information, such as that necessary to make a purchase.</p>\r\n\r\n<p style="text-align:justify"><strong>YOUR ACCOUNT</strong></p>\r\n\r\n<p style="text-align:justify">You are responsible for maintaining the accuracy and completeness of your Personal Information, as well as the confidentiality of your account and password and for restricting access to your computer. You can edit your Personal Information at any time by using your Giani Gracio password to access your account.</p>\r\n\r\n<p style="text-align:justify"><strong>LINKS TO OTHER WEB SITES</strong></p>\r\n\r\n<p style="text-align:justify">Our web site may contain links to other web sites that we think you will enjoy, but which are not under our control. Please take note that Giani Gracio is not responsible for the privacy policies or practices of such other web sites. We encourage our visitors to be aware when they leave our web site and to read the privacy statements of each and every web site they visit. This Privacy Statement applies solely to information collected by GianiShop.com.</p>\r\n\r\n<p style="text-align:justify"><strong>PRIVACY STATEMENT CHANGES </strong></p>\r\n\r\n<p style="text-align:justify">We may, from time to time, make changes to our Privacy Statement and post those changes here. We recommend that visitors of GianiShop.comperiodically visit this Privacy Statement to learn of new privacy practices or changes to our policy.</p>\r\n\r\n<p style="text-align:justify"><strong>FURTHER INFORMATION </strong></p>\r\n\r\n<p style="text-align:justify">If you would like further information, or have any questions about our Privacy Statement, please:</p>\r\n\r\n<ul>\r\n	<li style="text-align:justify">Email us at giani.gracio@gmail.com</li>\r\n	<li style="text-align:justify">Write to us at Giani Gracio. Jl. Cicukang Holis no:52A. Kode Pos: 40215, Bandung. Indonesia</li>\r\n	<li style="text-align:justify">Contact us at 0815-7310-6668</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `idproduk` int(10) NOT NULL,
  `tgl` datetime NOT NULL,
  `barcode` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `tag` text NOT NULL,
  `idkategori` int(15) NOT NULL,
  `model` varchar(50) NOT NULL,
  `status` enum('Enabled','Disabled','','') NOT NULL,
  `featured` enum('Yes','No','','') NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` int(25) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Riau'),
(5, 'Jambi'),
(6, 'Sumatera Selatan'),
(7, 'Bengkulu'),
(8, 'Lampung'),
(9, 'Kepulauan Bangka Belitung'),
(10, 'Kepulauan Riau'),
(11, 'DKI Jakarta'),
(12, 'Jawa Barat'),
(13, 'Jawa Tengah'),
(14, 'Di Yogyakarta'),
(15, 'Jawa Timur'),
(16, 'Banten'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Tengah'),
(22, 'Kalimantan Selatan'),
(23, 'Kalimantan Timur'),
(24, 'Kalimantan Utara'),
(25, 'Sulawesi Utara'),
(26, 'Sulawesi Tengah'),
(27, 'Sulawesi Selatan'),
(28, 'Sulawesi Tenggara'),
(29, 'Gorontalo'),
(30, 'Sulawesi Barat'),
(31, 'Maluku'),
(32, 'Maluku Utara'),
(33, 'Papua Barat'),
(34, 'Papua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id` int(20) NOT NULL,
  `tgl` datetime NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `isireview` mediumtext NOT NULL,
  `rating` int(10) NOT NULL,
  `approved` enum('Yes','No','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `idsize` int(15) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `size` varchar(25) NOT NULL,
  `qty` bigint(10) NOT NULL,
  `price` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `image`) VALUES
(1, 'Giani Gracio Hat', 'Get it now 25% Off', 'hat.png'),
(2, 'Giani Gracio Hat', '25% Off', 'hat1.png'),
(3, 'Giani Gracio Hat', '25% Off', 'hat2.png'),
(4, 'Grab It Fast!', 'Dapatkan Penawaran Menarik Dengan Belanja Di Giani Gracio', 'hat311.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `useradmin`
--

CREATE TABLE IF NOT EXISTS `useradmin` (
  `id` int(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `useradmin`
--

INSERT INTO `useradmin` (`id`, `username`, `password`, `group`) VALUES
(1, 'admin', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotakab`
--
ALTER TABLE `kotakab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacypol`
--
ALTER TABLE `privacypol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`idsize`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kotakab`
--
ALTER TABLE `kotakab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=500;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privacypol`
--
ALTER TABLE `privacypol`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `idsize` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `useradmin`
--
ALTER TABLE `useradmin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
