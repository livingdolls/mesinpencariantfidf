-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 02:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stki`
--

-- --------------------------------------------------------

--
-- Table structure for table `simpan_hasil`
--

CREATE TABLE `simpan_hasil` (
  `Id` int(11) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Hasil_Bobot_Akhir` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbcache`
--

CREATE TABLE `tbcache` (
  `Id` int(11) NOT NULL,
  `Query` varchar(100) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbdokumen`
--

CREATE TABLE `tbdokumen` (
  `Id` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `dokumen` text NOT NULL,
  `nm_dk` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbdokumen`
--

INSERT INTO `tbdokumen` (`Id`, `Judul`, `dokumen`, `nm_dk`) VALUES
(9, 'Limbah Plastik', 'Limbah plastik sudah menjadi salah satu kasus limbah yang hingga sampai saat ini memerlukan penindakan lebih, karena disebabkan sifatnya yang membutuhkan waktu lama serta susah untuk didaur ulang.\r\n\r\nBermacam aksi oleh pemerintah sudah dicoba untuk mengurangi jumlah limbah plastik semacam pengurangan kandungan plastik dalam sesuatu produk, kantong plastik belanja yang berbayar, pemakaian plastik yang lebih ramah area serta lain sebagainya.\r\n\r\nPengurangan pemakaian plastik pada kehidupan tiap hari pula sudah dicoba, tetapi jumlah limbah plastik masih terbilang lumayan banyak, tidak terkecuali di Kota Malang. Dari informasi DKP Kota Malang, mengatakan kalau di Kota Malang limbah plastik jadi penyumbang limbah paling banyak kedua sehabis limbah organik.\r\n\r\nTidak hanya itu, limbah plastik pula memunculkan kasus lain terhadap suatu wilayah, semacam pencemaran air serta tanah akibat dari isi plastik tersebut, serta pencemaran hawa yang disebabkan pembakaran plastik yang pula bisa meningkatkan Global Warming.\r\n\r\nPerihal tersebut pula berakibat pada kesehatan, semacam timbulnya penyakit kulit, peradangan respirasi serta permasalahan pencernaan akibat area yang telah tercemar oleh limbah plastik. Jangka panjang berikutnya, bisa menimbulkan kanker serta penyakit kronis yang lain.\r\n\r\nDi sisi lain kedatangan MEA di Indonesia semenjak Desember 2015 sudah membuka babak baru dalam bidang perekonomian antar Negeri ASEAN, tercantum Indonesia. MEA mempraktikkan sistem pasar leluasa dimana ada kemudahan dalam arus perdagangan di Negeri ASEAN.\r\n\r\nMEA bertujuan buat tingkatkan stabilitas perekonomian di kawasan ASEAN dan diharapkan sanggup menanggulangi permasalahan– permasalahan di bidang ekonomi antar Negeri ASEAN.\r\n\r\nDengan demikian produk lokal Indonesia mempunyai kesempatan buat bersaing dalam pasar yang lebih luas pada pasar ASEAN. Begitu pula sebaliknya, produk ASEAN pula mempunyai kemampuan buat bersaing didalamnya. Memandang keadaan tersebut, produk lokal Indonesia wajib diinovasi supaya bisa bersaing di kancah Internasional.\r\n\r\nLewat bermacam kasus tersebut, penulis berinisiatif untuk membuat suatu produk lokal berbahan limbah plastik buat tingkatkan mutu produk lokal, spesialnya di Kota Malang supaya bisa bersaing di pasar Internasional lewat program MEA.\r\n\r\nProduk tersebut berbentuk Casing Hp yang diiringi ukiran mencuat Topeng Malangan. Pemanfaatan limbah plastik jadi Casing Hp ini dilatarbelakangi oleh banyaknya pemakaian Casing Hp di Indonesia.\r\n\r\nBersumber pada informasi yang dilansir didapat mengatakan kalau Nurlita, pebisnis Casing Hp bisa mencapai keuntungan berkisar 50–100 juta tiap bulannya dengan penciptaan 30–50 casing hp tiap harinya.\r\n\r\nPerihal tersebut meyakinkan kalau pemakaian Casing Hp di Indonesia sudah jadi suatu tren tertentu. Casing Hp ini hendak terbuat dari limbah plastik dengan bermacam berbagai dimensi serta merk hp cocok dengan kebutuhan konsumen.\r\n\r\nBagaikan inovasi dari produk ini, ialah berbentuk akumulasi ukiran mencuat berbentuk topeng Malangan. Ukiran mencuat ini ialah permukaan mencuat yang tidak datar pada bagian hidung, mulut, ataupun mata semacam wujud topeng pada biasanya serta nantinya hendak dilukis cocok kepribadian yang terdapat pada Topeng Malangan.\r\n\r\nPemanfaatan desain topeng malangan ini ialah salah satu inovasi produk Casing Hp berciri khas budaya Malang sehingga bisa bersaing secara global. Diharapkan dengan terdapatnya Casing Hp dengan ukiran mencuat Topeng Malangan ini bisa jadi produk lokal khas Malang yang bisa bersaing di pasar Internasional, salah satunya lewat MEA sekalian bisa menghadirkan budaya tradisional Malang lewat karakteristik khas Topeng Malangan tersebut.\r\n\r\nTidak hanya itu pula diharapkan dapat mengurangi jumlah limbah plastik, tingkatkan harga jual limbah plastik di Kota Malang serta pula bisa tingkatkan perekonomian warga Kota Malang sebab pembuatan produk ini memakai bayaran yang sedikit tetapi menciptakan profit yang optimal.', 'D5'),
(10, 'Belajar Untuk Menjadi Pelajar Berkarakter', 'Pembelajaran menjadi salah satu fasilitas yang dapat berpengaruh besar dalam membentuk sumber energi manusia bermutu. Lewat pembelajaran, bisa terbentuk generasi berkarakter yang sanggup mengaktualisasikan diri jadi ujung tombak kemajuan peradaban.\r\n\r\nSebagaimana tercantum dalam Pembukaan Undang- Undang Dasar 1945, tujuan nasional pembelajaran merupakan buat mencerdaskan kehidupan bangsa yang pada kesimpulannya hendak menopang kesejahteraan rakyat.\r\n\r\nApabila ditinjau ke dalam realita pembelajaran Indonesia dikala ini, penanda keberhasilan dari tujuan tersebut masih sangatlah jauh dari kata tercapai. Belum bangkitnya pembelajaran Indonesia dari keterpurukan sejatinya memunculkan satu permasalahan besar, hendak dibawa kemana peradaban negara ini nanti?\r\n\r\nKeadaan para pelajar Indonesia ini masih sangat jauh dari harapan bagaikan generasi yang pintar serta sanggup bersaing di kancah internasional. Bila ditarik garis sebagian tahun kebelakang, bisa disaksikan bersama kalau Indonesia populer dengan jati diri bangsa yang berkaraker serta berbudi luhur.\r\n\r\nBermacam kebijakan pembelajaran yang dibuat pemerintah dengan harapan bisa memusatkan para siswa jadi unggul dalam seluruh bidang, baik dari segi kompetensi, kepribadian, dan jiwa kompetitif bagaikan bekal bersaing dengan pelajar-pelajar dari negeri lain.\r\n\r\nBersumber pada latar belakang tersebut, terdapatnya inovasi baru dalam kebijakan pembelajaran buat menanggulangi kasus pembelajaran serta membentuk generasi unggul, ialah generasi muda berkarakter, aktif, kreatif, serta kompetitif ialah perihal yang sangat berarti.\r\n\r\nPemecahan yang pas buat perihal ini merupakan Sistem Sekolah BATIK( Berkarakter, Aktif, Kreatif, serta Kompetitif), ialah inovasi sistem pembelajaran yang mengedepankan terdapatnya pergantian dalam 3 perihal pokok, antara lain tata cara pendidikan, golongan pengajar, serta kuantitas siswa di masing- masing kelas.', 'D6'),
(11, 'Mengatur Makanan Untuk Kesehatan Tubuh', 'Makanan merupakan asupan nutrisi yang berarti untuk kesehatan serta kekuatan badan. Tetapi, apa yang hendaknya kalian makan selepas melaksanakan berolahraga sangat butuh dicermati dengan baik. Upayakan supaya tidak salah memilah makanan. Sebab apa? Sebab, salah memilah makanan yang dimakan sehabis berolahraga dapat saja menimbulkan bahaya untuk kesehatan badan.\r\n\r\nDilansir dari halaman prevention. com, salah komsumsi makanan sehabis berolahraga dapat saja membuat badan kesusahan memulihkan tenaga yang lenyap. Hendaknya, kita komsumsi makanan yang memiliki air, karbohidrat lingkungan serta beberapa protein supaya badan senantiasa sehat serta mengesankan.\r\n\r\nSepanjang berolahraga, badan menghasilkan banyak tenaga dimana tenaga ini  dapat mengurangi glukosa ataupun zat gula. untuk itu, dianjurkan supaya dapat mengkonsumsi makanan yang dapat meningkatkan gula darah.\r\n\r\nTerlepas dari itu semuanya, kita pula dianjurkan supaya menjauhi mengkonsumsi sebagian makanan yang dapat mempengaruhi kesehatan selepas berolahraga.', 'D7'),
(12, 'Inovasi Sistem Pemberdayaan Masyarakat', 'Kesenjangan sosial jadi salah satu permasalahan yang mulai mencuat di masa modern perkotaan yang berpotensi pengaruh negatif serta tindak kriminal.\r\n\r\nDalam menanggulangi perihal tersebut pemerintah wilayah mengambil kebijakan preventif untuk menertibkan tempat- tempat negatif serta non-kondusif yang berpotensi tindak kriminal serta citra kurang baik pada wilayah tersebut.\r\n\r\nPemerintah Kota Surabaya merupakan salah satu pelopor aksi tertib serta positif dalam bermasyarakat serta bernegara lewat penutupan Dolly.\r\n\r\nData yang didapatkan dari Dinas Sosial Surabaya (DSS) tercatat bahwa sekitar ratusan muxikari, puluhan tukang parkir, orang dagang, pengelolah penginapan, cleaning service, tukang becak, serta pekerja yang lain yang menggantungkan pekerjaan di kawasan Dolly kehabisan mata pencarian mereka serta merasa kesusahan akibat penutupan Dolly.\r\n\r\nAnggapan negatif warga terhadap mantan penunggu eks lokalisasi Dolly menaikkan lingkungan permasalahan yang ada, kondisi ini membuat mantan penunggu eks lokalisasi tidak yakin diri serta mematikan energi kreatifitas yang terdapat pada diri mereka.\r\n\r\nMenurut Badan Pusat Statistik (BPS) Provinsi Jawa Timur pada tahun 2015 jumlah penduduk Surabaya sebesar 2.806.306 jiwa serta terus bertambah tiap tahunnya.\r\n\r\nTerus menjadi meningkatnya jumlah populasi di kota Surabaya, hingga hendak terus menjadi banyak sumber energi alam yang dipakai buat penuhi kebutuhan serta keberlangsungan hidup penduduk.\r\n\r\nPada kesimpulannya zona persawahan, zona lindung, dan lahan kosong menyusut serta berganti guna jadi zona permukiman. Bidang agrokompleks ialah zona bisnis yang mulai diminati oleh para handal di masa ini.\r\n\r\nKenyataan ini didukung dari tingginya permintaan pasar terhadap hasil pertanian baru, komoditas ikan air tawar, pupuk, serta produk yang berpotensi ekspor yang lain.\r\n\r\nDi wilayah Surabaya permintaan pasar dalam mengkonsumsi jamur tiram menggapai 2 ton per hari buat satu zona, usaha agrokompleks memanglah jadi salah satu kemampuan di daerah Surabaya.\r\n\r\nDari pengalaman luas serta keadaan yang terdapat kami bagaikan mahasiswa merasa bertanggung jawab buat membagikan pemecahan nyata terhadap kasus yang terdapat lewat program“ Smart Agro Village System”.\r\n\r\nYang Merupakan Program pemberdayaan dari mantan penunggu eks lokalisasi Dolly dalam melaksanakan kreativitas usaha ke arah yang lebih positif serta progressive lewat usaha pengelolaan modern agro- complex yang berorientasi pada system zero waste serta high profit.', 'D8'),
(13, 'Manfaat Daun Sirih Untuk Gatal', 'Gatal- gatal merupakan penyakit kulit yang sering terjadi di pondok pesantren, apalagi sebutan penyakit ini diketahui dengan istilah Jarban( bahasa arab) yang maksudnya cobaan sebaliknya dalam dunia medis diucap Scabies.\r\n\r\nBiasanya seseorang yang mulai tinggal di pondok pesantren mengalami setidaknya satukali terkena penyakit gatal- gatal.\r\n\r\nPemicu penyakit gatal- gatal tersebut berbagai macam mulai dari aspek kurang melindungi kebersihan, tempat tidur yang kurang diatur, bergantian baju dengan sesama sahabat, bergantian handuk, apalagi hingga dengan kondisi air yang kurang bersih.\r\n\r\nMaka dari itu permasalahan penyakit ini pada pondok pesantren yang meluas dari teman satu keteman yang lain wajib segera diatasi.\r\n\r\nSalah satu caranya yaitu dengan melaksanakan sosialisasi kesehatan serta pengajaran obat tradisional di pondok pesantren bagaikan dedikasi yang spesialnya mendidik tentang khasiat daun sirih merah .\r\n\r\nDaun sirih merah yang memilki kadungan minyak sebanyak manfaat yang bisa diharapkan untuk menuntasakan permasalahan gatal- gatal.\r\n\r\nHarapannya dengan sosialisasi serta pengajaran obat tradisional ini hendak terbentuk pesantren yang sehat dan bisa membagikan kenyamanan untuk tiap santri.', 'D9'),
(14, 'Menganalisa Google Index', 'Dikala ini banyak web toko online yang akan anda muncul serta tumbuh tetapi tidak seluruh muncul di halaman awal pada mesin pencari Google, itu dapat diakibatkan oleh sebagian perihal semacam web tidak SEO friendly, mutu domain yang rendah, nama domain yang tidak relevan dengan produk yang dijual, serta yang lain.\r\n\r\nBanyak penyedia domain menjual expired domain dengan harga yang lebih mahal dari harga domain fresh ataupun domain baru sementara itu belum terdapat uraian ataupun riset formal yang melaporkan kalau expired domain lebih unggul daripada domain fresh.\r\n\r\nSebaliknya itu pada halaman web pencarian expired domain( Domcop.com) mengemukakan kalau search engine lebih memilah domain yang lebih tua sebab domain yang lebih tua lebih bisa dipercaya.\r\n\r\nPada sisi lain, Richard Baxter founder serta CEO( Chief Executive Officer ) pada web builtvisible. com berkata kalau membeli suatu domain, serta mengganti hosting, WHOIS, DNS serta alihkan domain tersebut, pada waktu yang sama hendak me- reset nilai SEO dari domain tersebut.\r\n\r\nSeseorang yang mempunyai bisnis online berpeluang besar mengoptimalkan bisnisnya dengan membuat web toko online serta memakai Search engine Google buat peng- index- an, spesialnya index foto bagaikan media promosi.\r\n\r\nPeneliti memilih menganalisis index foto sebab foto ialah media grafis yang sangat dibutuhkan dalam periklanan serta mempunyai energi tarik tertentu dalam mendesak timbulnya hasrat konsumen buat membeli suatu produk.\r\n\r\nPada penelitian ini peneliti hendak memakai CMS WordPress buat membuat web toko online. peneliti memilih memakai WordPress sebab bagi seseorang anggota regu Google Matt Cutts menganjurkan buat memakai WordPress dalam membangun suatu web kala berdialog pada suatu event WordCamp di San Francisco.\r\n\r\nBersumber pada latarbelakang tersebut, peneliti disini hendak menganalisa Google image index dengan melaksanakan perbandingan pemakaian Expired Domain serta Domain Fresh permasalahan toko online memakai CMS WordPress.\r\n\r\nPenelitian ini hendak merumuskan gimana sesungguhnya pengaruh Expired Domain pada peng- index- an foto di mesin pencari Google dibanding dengan Domain Fresh.', 'D10');

-- --------------------------------------------------------

--
-- Table structure for table `tbindex`
--

CREATE TABLE `tbindex` (
  `Id` int(11) NOT NULL,
  `Term` text NOT NULL,
  `DocId` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbindex`
--

INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `jumlah`, `Bobot`) VALUES
(1, 'limbah', 9, 15, 29.1887),
(2, 'plastik', 9, 18, 35.0264),
(3, 'salah', 9, 3, 1.00942),
(4, 'tindak', 9, 1, 1.25276),
(5, 'sifat', 9, 1, 1.94591),
(6, 'butuh', 9, 2, 1.11923),
(7, 'susah', 9, 1, 0.847298),
(8, 'daur', 9, 1, 1.94591),
(9, 'ulang', 9, 1, 1.94591),
(10, 'aksi', 9, 1, 1.25276),
(11, 'perintah', 9, 1, 0.847298),
(12, 'coba', 9, 2, 2.50553),
(13, 'kandung', 9, 1, 1.94591),
(14, 'produk', 9, 11, 9.32028),
(15, 'kantong', 9, 1, 1.94591),
(16, 'belanja', 9, 1, 1.94591),
(17, 'bayar', 9, 2, 3.89182),
(18, 'pakai', 9, 5, 4.23649),
(19, 'ramah', 9, 1, 1.94591),
(20, 'area', 9, 2, 3.89182),
(21, 'hidup', 9, 1, 0.847298),
(22, 'bilang', 9, 1, 1.94591),
(23, 'lumayan', 9, 1, 1.94591),
(24, 'kecuali', 9, 1, 1.94591),
(25, 'kota', 9, 6, 7.51658),
(26, 'malang', 9, 15, 29.1887),
(27, 'informasi', 9, 2, 3.89182),
(28, 'dkp', 9, 1, 1.94591),
(29, 'sumbang', 9, 1, 1.94591),
(30, 'habis', 9, 1, 0.847298),
(31, 'organik', 9, 1, 1.94591),
(32, 'muncul', 9, 1, 0.847298),
(33, 'hadap', 9, 1, 1.25276),
(34, 'wilayah', 9, 1, 1.25276),
(35, 'cemar', 9, 3, 5.83773),
(36, 'air', 9, 1, 0.559616),
(37, 'tanah', 9, 1, 1.94591),
(38, 'akibat', 9, 3, 2.54189),
(39, 'isi', 9, 1, 1.94591),
(40, 'hawa', 9, 1, 1.94591),
(41, 'bakar', 9, 1, 1.94591),
(42, 'tingkat', 9, 5, 4.23649),
(43, 'global', 9, 2, 3.89182),
(44, 'warming', 9, 1, 1.94591),
(45, 'perihal', 9, 2, 1.11923),
(46, 'sehat', 9, 1, 0.559616),
(47, 'timbul', 9, 2, 1.6946),
(48, 'sakit', 9, 2, 2.50553),
(49, 'kulit', 9, 1, 1.25276),
(50, 'adang', 9, 1, 1.94591),
(51, 'respirasi', 9, 1, 1.94591),
(52, 'cerna', 9, 1, 1.94591),
(53, 'jangka', 9, 1, 1.94591),
(54, 'kanker', 9, 1, 1.94591),
(55, 'kronis', 9, 1, 1.94591),
(56, 'sisi', 9, 1, 1.25276),
(57, 'mea', 9, 5, 9.72955),
(58, 'indonesia', 9, 6, 7.51658),
(59, 'semenjak', 9, 1, 1.94591),
(60, 'desember', 9, 1, 1.94591),
(61, '2015', 9, 1, 1.25276),
(62, 'buka', 9, 1, 1.25276),
(63, 'babak', 9, 1, 1.94591),
(64, 'bidang', 9, 2, 1.6946),
(65, 'ekonomi', 9, 4, 7.78364),
(66, 'negeri', 9, 3, 3.75829),
(67, 'asean', 9, 6, 11.6755),
(68, 'cantum', 9, 1, 1.25276),
(69, 'praktik', 9, 1, 1.94591),
(70, 'sistem', 9, 1, 0.847298),
(71, 'pasar', 9, 5, 6.26381),
(72, 'leluasa', 9, 1, 1.94591),
(73, 'mudah', 9, 1, 1.94591),
(74, 'arus', 9, 1, 1.94591),
(75, 'dagang', 9, 1, 1.25276),
(76, 'tuju', 9, 1, 1.25276),
(77, 'stabilitas', 9, 1, 1.94591),
(78, 'kawasan', 9, 1, 1.25276),
(79, 'harap', 9, 3, 2.54189),
(80, 'sanggup', 9, 1, 1.25276),
(81, 'tanggulang', 9, 1, 0.847298),
(82, 'lokal', 9, 5, 9.72955),
(83, 'saing', 9, 6, 7.51658),
(84, 'luas', 9, 1, 0.847298),
(85, 'pandang', 9, 1, 1.94591),
(86, 'wajib', 9, 1, 1.25276),
(87, 'inovasi', 9, 3, 2.54189),
(88, 'kancah', 9, 1, 1.25276),
(89, 'internasional', 9, 3, 3.75829),
(90, 'tulis', 9, 1, 1.94591),
(91, 'inisiatif', 9, 1, 1.94591),
(92, 'bahan', 9, 1, 1.94591),
(93, 'mutu', 9, 1, 0.847298),
(94, 'spesial', 9, 1, 0.847298),
(95, 'program', 9, 1, 1.25276),
(96, 'bentuk', 9, 3, 2.54189),
(97, 'casing', 9, 9, 17.5132),
(98, 'hp', 9, 10, 19.4591),
(99, 'iring', 9, 1, 1.94591),
(100, 'ukir', 9, 4, 7.78364),
(101, 'cuat', 9, 5, 6.26381),
(102, 'topeng', 9, 7, 13.6214),
(103, 'manfaat', 9, 2, 2.50553),
(104, 'dilatarbelakangi', 9, 1, 1.94591),
(105, 'sumber', 9, 1, 0.559616),
(106, 'lansir', 9, 1, 1.25276),
(107, 'nurlita', 9, 1, 1.94591),
(108, 'bisnis', 9, 1, 0.847298),
(109, 'capai', 9, 1, 1.25276),
(110, 'untung', 9, 1, 1.94591),
(111, 'kisar', 9, 1, 1.94591),
(112, '50', 9, 2, 3.89182),
(113, '100', 9, 1, 1.94591),
(114, 'juta', 9, 1, 1.94591),
(115, 'cipta', 9, 2, 3.89182),
(116, '30', 9, 1, 1.94591),
(117, 'tren', 9, 1, 1.94591),
(118, 'dimensi', 9, 1, 1.94591),
(119, 'merk', 9, 1, 1.94591),
(120, 'cocok', 9, 2, 3.89182),
(121, 'konsumen', 9, 1, 1.25276),
(122, 'akumulasi', 9, 1, 1.94591),
(123, 'muka', 9, 1, 1.25276),
(124, 'datar', 9, 1, 1.94591),
(125, 'hidung', 9, 1, 1.94591),
(126, 'mulut', 9, 1, 1.94591),
(127, 'mata', 9, 1, 1.25276),
(128, 'wujud', 9, 1, 1.94591),
(129, 'luk', 9, 1, 1.94591),
(130, 'pribadi', 9, 1, 1.25276),
(131, 'desain', 9, 1, 1.94591),
(132, 'cir', 9, 1, 1.94591),
(133, 'khas', 9, 3, 5.83773),
(134, 'budaya', 9, 2, 3.89182),
(135, 'hadir', 9, 1, 1.94591),
(136, 'tradisional', 9, 1, 1.25276),
(137, 'karakteristik', 9, 1, 1.94591),
(138, 'harga', 9, 1, 1.25276),
(139, 'jual', 9, 1, 1.25276),
(140, 'warga', 9, 1, 1.25276),
(141, 'profit', 9, 1, 1.25276),
(142, 'optimal', 9, 1, 1.25276),
(143, 'ajar', 10, 14, 17.5387),
(144, 'karakter', 10, 4, 7.78364),
(145, 'salah', 10, 1, 0.336472),
(146, 'fasilitas', 10, 1, 1.94591),
(147, 'pengaruh', 10, 1, 0.559616),
(148, 'bentuk', 10, 3, 2.54189),
(149, 'sumber', 10, 2, 1.11923),
(150, 'energi', 10, 1, 0.847298),
(151, 'manusia', 10, 1, 1.94591),
(152, 'mutu', 10, 1, 0.847298),
(153, 'generasi', 10, 4, 7.78364),
(154, 'sanggup', 10, 2, 2.50553),
(155, 'aktualisasi', 10, 1, 1.94591),
(156, 'ujung', 10, 1, 1.94591),
(157, 'tombak', 10, 1, 1.94591),
(158, 'maju', 10, 1, 1.94591),
(159, 'adab', 10, 2, 3.89182),
(160, 'cantum', 10, 1, 1.25276),
(161, 'buka', 10, 1, 1.25276),
(162, 'undang-', 10, 1, 1.94591),
(163, 'undang', 10, 1, 1.94591),
(164, 'dasar', 10, 1, 1.94591),
(165, '1945', 10, 1, 1.94591),
(166, 'tuju', 10, 2, 2.50553),
(167, 'nasional', 10, 1, 1.94591),
(168, 'rupa', 10, 2, 1.11923),
(169, 'cerdas', 10, 1, 1.94591),
(170, 'hidup', 10, 1, 0.847298),
(171, 'bangsa', 10, 2, 3.89182),
(172, 'simpul', 10, 1, 1.25276),
(173, 'topang', 10, 1, 1.94591),
(174, 'sejahtera', 10, 1, 1.94591),
(175, 'rakyat', 10, 1, 1.94591),
(176, 'tinjau', 10, 1, 1.94591),
(177, 'realita', 10, 1, 1.94591),
(178, 'indonesia', 10, 4, 5.01105),
(179, 'tanda', 10, 1, 1.94591),
(180, 'hasil', 10, 1, 0.847298),
(181, 'capai', 10, 1, 1.25276),
(182, 'bangkit', 10, 1, 1.94591),
(183, 'puruk', 10, 1, 1.94591),
(184, 'sejati', 10, 1, 1.94591),
(185, 'muncul', 10, 1, 0.847298),
(186, 'bawa', 10, 1, 1.94591),
(187, 'negara', 10, 1, 1.25276),
(188, 'harap', 10, 2, 1.6946),
(189, 'pintar', 10, 1, 1.94591),
(190, 'saing', 10, 2, 2.50553),
(191, 'kancah', 10, 1, 1.25276),
(192, 'internasional', 10, 1, 1.25276),
(193, 'tarik', 10, 1, 1.25276),
(194, 'garis', 10, 1, 1.94591),
(195, 'saksi', 10, 1, 1.94591),
(196, 'populer', 10, 1, 1.94591),
(197, 'jati', 10, 1, 1.94591),
(198, 'berkaraker', 10, 1, 1.94591),
(199, 'budi', 10, 1, 1.94591),
(200, 'luhur', 10, 1, 1.94591),
(201, 'bijak', 10, 2, 2.50553),
(202, 'perintah', 10, 1, 0.847298),
(203, 'pusat', 10, 1, 1.25276),
(204, 'siswa', 10, 2, 3.89182),
(205, 'unggul', 10, 2, 2.50553),
(206, 'bidang', 10, 1, 0.847298),
(207, 'segi', 10, 1, 1.94591),
(208, 'kompetensi', 10, 1, 1.94591),
(209, 'pribadi', 10, 1, 1.25276),
(210, 'jiwa', 10, 1, 1.25276),
(211, 'kompetitif', 10, 3, 5.83773),
(212, 'bekal', 10, 1, 1.94591),
(213, 'negeri', 10, 1, 1.25276),
(214, 'latar', 10, 1, 1.94591),
(215, 'inovasi', 10, 2, 1.6946),
(216, 'tanggulang', 10, 1, 0.847298),
(217, 'muda', 10, 1, 1.94591),
(218, 'aktif', 10, 2, 3.89182),
(219, 'kreatif', 10, 2, 3.89182),
(220, 'perihal', 10, 3, 1.67885),
(221, 'arti', 10, 1, 1.25276),
(222, 'pecah', 10, 1, 1.25276),
(223, 'pas', 10, 1, 1.94591),
(224, 'sistem', 10, 2, 1.6946),
(225, 'sekolah', 10, 1, 1.94591),
(226, 'batik', 10, 1, 1.94591),
(227, 'ganti', 10, 1, 0.559616),
(228, '3', 10, 1, 1.94591),
(229, 'pokok', 10, 1, 1.94591),
(230, 'tata', 10, 1, 1.94591),
(231, 'didik', 10, 1, 1.25276),
(232, 'golong', 10, 1, 1.94591),
(233, 'kuantitas', 10, 1, 1.94591),
(234, 'masing-', 10, 1, 1.94591),
(235, 'kelas', 10, 1, 1.94591),
(236, 'atur', 11, 1, 1.25276),
(237, 'makan', 11, 10, 19.4591),
(238, 'sehat', 11, 5, 2.79808),
(239, 'tubuh', 11, 1, 1.94591),
(240, 'rupa', 11, 1, 0.559616),
(241, 'asupan', 11, 1, 1.94591),
(242, 'nutrisi', 11, 1, 1.94591),
(243, 'arti', 11, 1, 1.25276),
(244, 'kuat', 11, 1, 1.94591),
(245, 'badan', 11, 5, 6.26381),
(246, 'lepas', 11, 3, 5.83773),
(247, 'laksana', 11, 1, 0.559616),
(248, 'olahraga', 11, 5, 9.72955),
(249, 'butuh', 11, 1, 0.559616),
(250, 'cermat', 11, 1, 1.94591),
(251, 'upaya', 11, 1, 1.94591),
(252, 'salah', 11, 3, 1.00942),
(253, 'mem', 11, 2, 2.50553),
(254, 'habis', 11, 2, 1.6946),
(255, 'timbul', 11, 1, 0.847298),
(256, 'bahaya', 11, 1, 1.94591),
(257, 'lansir', 11, 1, 1.25276),
(258, 'halaman', 11, 1, 1.25276),
(259, 'prevention', 11, 1, 1.94591),
(260, 'com', 11, 1, 1.25276),
(261, 'komsumsi', 11, 2, 3.89182),
(262, 'susah', 11, 1, 0.847298),
(263, 'pulih', 11, 1, 1.94591),
(264, 'tenaga', 11, 3, 5.83773),
(265, 'lenyap', 11, 1, 1.94591),
(266, 'milik', 11, 1, 1.94591),
(267, 'air', 11, 1, 0.559616),
(268, 'karbohidrat', 11, 1, 1.94591),
(269, 'lingkung', 11, 1, 1.25276),
(270, 'protein', 11, 1, 1.94591),
(271, 'senantiasa', 11, 1, 1.94591),
(272, 'kesan', 11, 1, 1.94591),
(273, 'hasil', 11, 1, 0.847298),
(274, 'glukosa', 11, 1, 1.94591),
(275, 'zat', 11, 1, 1.94591),
(276, 'gula', 11, 2, 3.89182),
(277, 'anjur', 11, 2, 2.50553),
(278, 'konsumsi', 11, 2, 2.50553),
(279, 'tingkat', 11, 1, 0.847298),
(280, 'darah', 11, 1, 1.94591),
(281, 'pengaruh', 11, 1, 0.559616),
(282, 'inovasi', 12, 1, 0.847298),
(283, 'sistem', 12, 1, 0.847298),
(284, 'daya', 12, 2, 3.89182),
(285, 'masyarakat', 12, 2, 3.89182),
(286, 'senjang', 12, 1, 1.94591),
(287, 'sosial', 12, 2, 3.89182),
(288, 'salah', 12, 3, 1.00942),
(289, 'cuat', 12, 1, 1.25276),
(290, 'modern', 12, 2, 3.89182),
(291, 'kota', 12, 3, 3.75829),
(292, 'potensi', 12, 3, 5.83773),
(293, 'pengaruh', 12, 1, 0.559616),
(294, 'negatif', 12, 3, 5.83773),
(295, 'tindak', 12, 2, 2.50553),
(296, 'kriminal', 12, 2, 3.89182),
(297, 'tanggulang', 12, 1, 0.847298),
(298, 'perihal', 12, 1, 0.559616),
(299, 'perintah', 12, 2, 1.6946),
(300, 'wilayah', 12, 3, 3.75829),
(301, 'ambil', 12, 1, 1.94591),
(302, 'bijak', 12, 1, 1.25276),
(303, 'preventif', 12, 1, 1.94591),
(304, 'tertib', 12, 2, 3.89182),
(305, 'tempat-', 12, 1, 1.94591),
(306, 'non-kondusif', 12, 1, 1.94591),
(307, 'citra', 12, 1, 1.94591),
(308, 'surabaya', 12, 6, 11.6755),
(309, 'rupa', 12, 2, 1.11923),
(310, 'pelopor', 12, 1, 1.94591),
(311, 'aksi', 12, 1, 1.25276),
(312, 'positif', 12, 2, 3.89182),
(313, 'negara', 12, 1, 1.25276),
(314, 'tutup', 12, 2, 3.89182),
(315, 'dolly', 12, 5, 9.72955),
(316, 'data', 12, 1, 1.94591),
(317, 'dinas', 12, 1, 1.94591),
(318, 'dss', 12, 1, 1.94591),
(319, 'catat', 12, 1, 1.94591),
(320, 'ratus', 12, 1, 1.94591),
(321, 'muxikari', 12, 1, 1.94591),
(322, 'puluh', 12, 1, 1.94591),
(323, 'tukang', 12, 2, 3.89182),
(324, 'parkir', 12, 1, 1.94591),
(325, 'orang', 12, 1, 0.847298),
(326, 'dagang', 12, 1, 1.25276),
(327, 'elo', 12, 1, 1.94591),
(328, 'inap', 12, 1, 1.94591),
(329, 'cleaning', 12, 1, 1.94591),
(330, 'service', 12, 1, 1.94591),
(331, 'becak', 12, 1, 1.94591),
(332, 'kerja', 12, 2, 3.89182),
(333, 'gantung', 12, 1, 1.94591),
(334, 'kawasan', 12, 1, 1.25276),
(335, 'habis', 12, 1, 0.847298),
(336, 'mata', 12, 1, 1.25276),
(337, 'cari', 12, 1, 1.25276),
(338, 'susah', 12, 1, 0.847298),
(339, 'akibat', 12, 1, 0.847298),
(340, 'anggap', 12, 1, 1.94591),
(341, 'warga', 12, 1, 1.25276),
(342, 'hadap', 12, 3, 3.75829),
(343, 'mantan', 12, 3, 5.83773),
(344, 'tunggu', 12, 3, 5.83773),
(345, 'eks', 12, 3, 5.83773),
(346, 'lokalisasi', 12, 3, 5.83773),
(347, 'lingkung', 12, 1, 1.25276),
(348, 'kondisi', 12, 1, 1.25276),
(349, 'mati', 12, 2, 3.89182),
(350, 'energi', 12, 2, 1.6946),
(351, 'kreatifitas', 12, 1, 1.94591),
(352, 'badan', 12, 1, 1.25276),
(353, 'pusat', 12, 1, 1.25276),
(354, 'statistik', 12, 1, 1.94591),
(355, 'bps', 12, 1, 1.94591),
(356, 'provinsi', 12, 1, 1.94591),
(357, 'jawa', 12, 1, 1.94591),
(358, 'timur', 12, 1, 1.94591),
(359, '2015', 12, 1, 1.25276),
(360, 'duduk', 12, 2, 3.89182),
(361, '2', 12, 2, 3.89182),
(362, '806', 12, 1, 1.94591),
(363, '306', 12, 1, 1.94591),
(364, 'jiwa', 12, 1, 1.25276),
(365, 'tingkat', 12, 1, 0.847298),
(366, 'populasi', 12, 1, 1.94591),
(367, 'sumber', 12, 1, 0.559616),
(368, 'alam', 12, 2, 3.89182),
(369, 'pakai', 12, 1, 0.847298),
(370, 'penuh', 12, 1, 1.94591),
(371, 'butuh', 12, 1, 0.559616),
(372, 'langsung', 12, 1, 1.94591),
(373, 'hidup', 12, 1, 0.847298),
(374, 'simpul', 12, 1, 1.25276),
(375, 'zona', 12, 5, 9.72955),
(376, 'sawah', 12, 1, 1.94591),
(377, 'lindung', 12, 1, 1.25276),
(378, 'lahan', 12, 1, 1.94591),
(379, 'kosong', 12, 1, 1.94591),
(380, 'susut', 12, 1, 1.94591),
(381, 'ganti', 12, 1, 0.559616),
(382, 'mukim', 12, 1, 1.94591),
(383, 'bidang', 12, 1, 0.847298),
(384, 'agrokompleks', 12, 2, 3.89182),
(385, 'bisnis', 12, 1, 0.847298),
(386, 'handal', 12, 1, 1.94591),
(387, 'nyata', 12, 2, 3.89182),
(388, 'dukung', 12, 1, 1.94591),
(389, 'pasar', 12, 2, 2.50553),
(390, 'hasil', 12, 1, 0.847298),
(391, 'tani', 12, 1, 1.94591),
(392, 'komoditas', 12, 1, 1.94591),
(393, 'ikan', 12, 1, 1.94591),
(394, 'air', 12, 1, 0.559616),
(395, 'tawar', 12, 1, 1.94591),
(396, 'pupuk', 12, 1, 1.94591),
(397, 'produk', 12, 1, 0.847298),
(398, 'ekspor', 12, 1, 1.94591),
(399, 'konsumsi', 12, 1, 1.25276),
(400, 'jamur', 12, 1, 1.94591),
(401, 'tiram', 12, 1, 1.94591),
(402, 'gapai', 12, 1, 1.94591),
(403, 'ton', 12, 1, 1.94591),
(404, 'usaha', 12, 3, 5.83773),
(405, 'daerah', 12, 1, 1.94591),
(406, 'luas', 12, 1, 0.847298),
(407, 'mahasiswa', 12, 1, 1.94591),
(408, 'tanggung', 12, 1, 1.94591),
(409, 'pecah', 12, 1, 1.25276),
(410, 'program', 12, 2, 2.50553),
(411, 'smart', 12, 1, 1.94591),
(412, 'agro', 12, 1, 1.94591),
(413, 'village', 12, 1, 1.94591),
(414, 'system', 12, 2, 3.89182),
(415, 'laksana', 12, 1, 0.559616),
(416, 'kreativitas', 12, 1, 1.94591),
(417, 'arah', 12, 1, 1.94591),
(418, 'progressive', 12, 1, 1.94591),
(419, 'kelola', 12, 1, 1.94591),
(420, 'agro-', 12, 1, 1.94591),
(421, 'complex', 12, 1, 1.94591),
(422, 'orientasi', 12, 1, 1.94591),
(423, 'zero', 12, 1, 1.94591),
(424, 'waste', 12, 1, 1.94591),
(425, 'high', 12, 1, 1.94591),
(426, 'profit', 12, 1, 1.25276),
(427, 'manfaat', 13, 2, 2.50553),
(428, 'daun', 13, 3, 3.75829),
(429, 'sirih', 13, 3, 5.83773),
(430, 'gatal', 13, 5, 9.72955),
(431, 'gatal-', 13, 4, 7.78364),
(432, 'rupa', 13, 1, 0.559616),
(433, 'sakit', 13, 5, 6.26381),
(434, 'kulit', 13, 1, 1.25276),
(435, 'pondok', 13, 4, 7.78364),
(436, 'pesantren', 13, 5, 9.72955),
(437, 'istilah', 13, 1, 1.94591),
(438, 'jarban', 13, 1, 1.94591),
(439, 'bahasa', 13, 1, 1.94591),
(440, 'arab', 13, 1, 1.94591),
(441, 'maksud', 13, 1, 1.94591),
(442, 'coba', 13, 1, 1.25276),
(443, 'dunia', 13, 1, 1.94591),
(444, 'medis', 13, 1, 1.94591),
(445, 'scabies', 13, 1, 1.94591),
(446, 'orang', 13, 1, 0.847298),
(447, 'tinggal', 13, 1, 1.94591),
(448, 'alami', 13, 1, 1.94591),
(449, 'satukali', 13, 1, 1.94591),
(450, 'kena', 13, 1, 1.94591),
(451, 'picu', 13, 1, 1.94591),
(452, 'aspek', 13, 1, 1.94591),
(453, 'lindung', 13, 1, 1.25276),
(454, 'bersih', 13, 2, 3.89182),
(455, 'tidur', 13, 1, 1.94591),
(456, 'atur', 13, 1, 1.25276),
(457, 'ganti', 13, 2, 1.11923),
(458, 'baju', 13, 1, 1.94591),
(459, 'sahabat', 13, 1, 1.94591),
(460, 'handuk', 13, 1, 1.94591),
(461, 'kondisi', 13, 1, 1.25276),
(462, 'air', 13, 1, 0.559616),
(463, 'luas', 13, 1, 0.847298),
(464, 'teman', 13, 1, 1.94591),
(465, 'tem', 13, 1, 1.94591),
(466, 'wajib', 13, 1, 1.25276),
(467, 'salah', 13, 1, 0.336472),
(468, 'laksana', 13, 1, 0.559616),
(469, 'sosialisasi', 13, 2, 3.89182),
(470, 'sehat', 13, 2, 1.11923),
(471, 'ajar', 13, 2, 2.50553),
(472, 'obat', 13, 2, 3.89182),
(473, 'tradisional', 13, 2, 2.50553),
(474, 'dedikasi', 13, 1, 1.94591),
(475, 'spesial', 13, 1, 0.847298),
(476, 'didik', 13, 1, 1.25276),
(477, 'khasiat', 13, 1, 1.94591),
(478, 'merah', 13, 2, 3.89182),
(479, 'memilki', 13, 1, 1.94591),
(480, 'kadung', 13, 1, 1.94591),
(481, 'minyak', 13, 1, 1.94591),
(482, 'harap', 13, 2, 1.6946),
(483, 'menuntasakan', 13, 1, 1.94591),
(484, 'bentuk', 13, 1, 0.847298),
(485, 'nyaman', 13, 1, 1.94591),
(486, 'santri', 13, 1, 1.94591),
(487, 'menganalisa', 14, 2, 3.89182),
(488, 'google', 14, 6, 11.6755),
(489, 'index', 14, 4, 7.78364),
(490, 'web', 14, 7, 13.6214),
(491, 'toko', 14, 4, 7.78364),
(492, 'online', 14, 5, 9.72955),
(493, 'muncul', 14, 2, 1.6946),
(494, 'tumbuh', 14, 1, 1.94591),
(495, 'halaman', 14, 2, 2.50553),
(496, 'mesin', 14, 2, 3.89182),
(497, 'cari', 14, 3, 3.75829),
(498, 'akibat', 14, 1, 0.847298),
(499, 'perihal', 14, 1, 0.559616),
(500, 'seo', 14, 2, 3.89182),
(501, 'friendly', 14, 1, 1.94591),
(502, 'mutu', 14, 1, 0.847298),
(503, 'domain', 14, 18, 35.0264),
(504, 'rendah', 14, 1, 1.94591),
(505, 'nama', 14, 1, 1.94591),
(506, 'relevan', 14, 1, 1.94591),
(507, 'produk', 14, 2, 1.6946),
(508, 'jual', 14, 2, 2.50553),
(509, 'sedia', 14, 1, 1.94591),
(510, 'expired', 14, 5, 9.72955),
(511, 'harga', 14, 2, 2.50553),
(512, 'mahal', 14, 1, 1.94591),
(513, 'fresh', 14, 4, 7.78364),
(514, 'urai', 14, 1, 1.94591),
(515, 'riset', 14, 1, 1.94591),
(516, 'formal', 14, 1, 1.94591),
(517, 'lapor', 14, 1, 1.94591),
(518, 'unggul', 14, 1, 1.25276),
(519, 'domcop', 14, 1, 1.94591),
(520, 'com', 14, 2, 2.50553),
(521, 'muka', 14, 1, 1.25276),
(522, 'search', 14, 2, 3.89182),
(523, 'engine', 14, 2, 3.89182),
(524, 'mem', 14, 1, 1.25276),
(525, 'tua', 14, 2, 3.89182),
(526, 'percaya', 14, 1, 1.94591),
(527, 'sisi', 14, 1, 1.25276),
(528, 'richard', 14, 1, 1.94591),
(529, 'baxter', 14, 1, 1.94591),
(530, 'founder', 14, 1, 1.94591),
(531, 'ceo', 14, 1, 1.94591),
(532, 'chief', 14, 1, 1.94591),
(533, 'executive', 14, 1, 1.94591),
(534, 'officer', 14, 1, 1.94591),
(535, 'builtvisible', 14, 1, 1.94591),
(536, 'beli', 14, 2, 3.89182),
(537, 'ganti', 14, 1, 0.559616),
(538, 'hosting', 14, 1, 1.94591),
(539, 'whois', 14, 1, 1.94591),
(540, 'dns', 14, 1, 1.94591),
(541, 'alih', 14, 1, 1.94591),
(542, 'me', 14, 1, 1.94591),
(543, 'reset', 14, 1, 1.94591),
(544, 'nilai', 14, 1, 1.94591),
(545, 'orang', 14, 2, 1.6946),
(546, 'bisnis', 14, 2, 1.6946),
(547, 'peluang', 14, 1, 1.94591),
(548, 'optimal', 14, 1, 1.25276),
(549, 'pakai', 14, 6, 5.08379),
(550, 'peng-', 14, 2, 3.89182),
(551, 'index-', 14, 2, 3.89182),
(552, 'an', 14, 2, 3.89182),
(553, 'spesial', 14, 1, 0.847298),
(554, 'foto', 14, 4, 7.78364),
(555, 'media', 14, 2, 3.89182),
(556, 'promosi', 14, 1, 1.94591),
(557, 'teliti', 14, 6, 11.6755),
(558, 'pilih', 14, 2, 3.89182),
(559, 'analis', 14, 1, 1.94591),
(560, 'grafis', 14, 1, 1.94591),
(561, 'butuh', 14, 1, 0.559616),
(562, 'iklan', 14, 1, 1.94591),
(563, 'energi', 14, 1, 0.847298),
(564, 'tarik', 14, 1, 1.25276),
(565, 'desak', 14, 1, 1.94591),
(566, 'timbul', 14, 1, 0.847298),
(567, 'hasrat', 14, 1, 1.94591),
(568, 'konsumen', 14, 1, 1.25276),
(569, 'cms', 14, 2, 3.89182),
(570, 'wordpress', 14, 4, 7.78364),
(571, 'anggota', 14, 1, 1.94591),
(572, 'regu', 14, 1, 1.94591),
(573, 'matt', 14, 1, 1.94591),
(574, 'cutts', 14, 1, 1.94591),
(575, 'anjur', 14, 1, 1.25276),
(576, 'bangun', 14, 1, 1.94591),
(577, 'dialog', 14, 1, 1.94591),
(578, 'event', 14, 1, 1.94591),
(579, 'wordcamp', 14, 1, 1.94591),
(580, 'san', 14, 1, 1.94591),
(581, 'francisco', 14, 1, 1.94591),
(582, 'sumber', 14, 1, 0.559616),
(583, 'latarbelakang', 14, 1, 1.94591),
(584, 'image', 14, 1, 1.94591),
(585, 'laksana', 14, 1, 0.559616),
(586, 'banding', 14, 2, 3.89182),
(587, 'rumus', 14, 1, 1.94591),
(588, 'gimana', 14, 1, 1.94591),
(589, 'sungguh', 14, 1, 1.94591),
(590, 'pengaruh', 14, 1, 0.559616);

-- --------------------------------------------------------

--
-- Table structure for table `tbkeyword`
--

CREATE TABLE `tbkeyword` (
  `Id` int(11) NOT NULL,
  `Term` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbtokenisasi`
--

CREATE TABLE `tbtokenisasi` (
  `id` int(11) NOT NULL,
  `nm_dk` text NOT NULL,
  `term` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbvektor`
--

CREATE TABLE `tbvektor` (
  `DocId` int(11) NOT NULL,
  `Panjang` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbwdwdi`
--

CREATE TABLE `tbwdwdi` (
  `Id` int(11) NOT NULL,
  `Id_Doc` int(11) NOT NULL,
  `Hasil_p_Bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `simpan_hasil`
--
ALTER TABLE `simpan_hasil`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbcache`
--
ALTER TABLE `tbcache`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbdokumen`
--
ALTER TABLE `tbdokumen`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbindex`
--
ALTER TABLE `tbindex`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbkeyword`
--
ALTER TABLE `tbkeyword`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbtokenisasi`
--
ALTER TABLE `tbtokenisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbvektor`
--
ALTER TABLE `tbvektor`
  ADD PRIMARY KEY (`DocId`);

--
-- Indexes for table `tbwdwdi`
--
ALTER TABLE `tbwdwdi`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `simpan_hasil`
--
ALTER TABLE `simpan_hasil`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbcache`
--
ALTER TABLE `tbcache`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbdokumen`
--
ALTER TABLE `tbdokumen`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbindex`
--
ALTER TABLE `tbindex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT for table `tbkeyword`
--
ALTER TABLE `tbkeyword`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbtokenisasi`
--
ALTER TABLE `tbtokenisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbwdwdi`
--
ALTER TABLE `tbwdwdi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
