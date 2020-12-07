-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2020 at 03:34 AM
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
(14, 'Menganalisa Google Index', 'Dikala ini banyak web toko online yang muncul serta tumbuh tetapi tidak seluruh muncul di halaman awal pada mesin pencari Google, itu dapat diakibatkan oleh sebagian perihal semacam web tidak SEO friendly, mutu domain yang rendah, nama domain yang tidak relevan dengan produk yang dijual, serta yang lain.\r\n\r\nBanyak penyedia domain menjual expired domain dengan harga yang lebih mahal dari harga domain fresh ataupun domain baru sementara itu belum terdapat uraian ataupun riset formal yang melaporkan kalau expired domain lebih unggul daripada domain fresh.\r\n\r\nSebaliknya itu pada halaman web pencarian expired domain( Domcop.com) mengemukakan kalau search engine lebih memilah domain yang lebih tua sebab domain yang lebih tua lebih bisa dipercaya.\r\n\r\nPada sisi lain, Richard Baxter founder serta CEO( Chief Executive Officer ) pada web builtvisible. com berkata kalau membeli suatu domain, serta mengganti hosting, WHOIS, DNS serta alihkan domain tersebut, pada waktu yang sama hendak me- reset nilai SEO dari domain tersebut.\r\n\r\nSeseorang yang mempunyai bisnis online berpeluang besar mengoptimalkan bisnisnya dengan membuat web toko online serta memakai Search engine Google buat peng- index- an, spesialnya index foto bagaikan media promosi.\r\n\r\nPeneliti memilih menganalisis index foto sebab foto ialah media grafis yang sangat dibutuhkan dalam periklanan serta mempunyai energi tarik tertentu dalam mendesak timbulnya hasrat konsumen buat membeli suatu produk.\r\n\r\nPada penelitian ini peneliti hendak memakai CMS WordPress buat membuat web toko online. peneliti memilih memakai WordPress sebab bagi seseorang anggota regu Google Matt Cutts menganjurkan buat memakai WordPress dalam membangun suatu web kala berdialog pada suatu event WordCamp di San Francisco.\r\n\r\nBersumber pada latarbelakang tersebut, peneliti disini hendak menganalisa Google image index dengan melaksanakan perbandingan pemakaian Expired Domain serta Domain Fresh permasalahan toko online memakai CMS WordPress.\r\n\r\nPenelitian ini hendak merumuskan gimana sesungguhnya pengaruh Expired Domain pada peng- index- an foto di mesin pencari Google dibanding dengan Domain Fresh.', 'D10');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbkeyword`
--
ALTER TABLE `tbkeyword`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbwdwdi`
--
ALTER TABLE `tbwdwdi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
