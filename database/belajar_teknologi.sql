-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2019 pada 17.25
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_teknologi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `belajar`
--

CREATE TABLE `belajar` (
  `id_belajar` int(11) NOT NULL,
  `judul` varchar(32) NOT NULL,
  `sub_judul` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `belajar`
--

INSERT INTO `belajar` (`id_belajar`, `judul`, `sub_judul`, `image`, `kategori`) VALUES
(1, 'Python', 'Belajar AI dengan Pemogramman Python', 'python.png', 'Python'),
(2, 'R', 'Belajar AI dengan Pemogramman R', 'R.jpg', 'R'),
(3, 'Lisp', 'Belajar AI dengan Pemogramman Lisp', 'lisp.png', 'Lisp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul` varchar(32) NOT NULL,
  `sub_judul` varchar(50) NOT NULL,
  `isi_konten` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `sub_judul`, `isi_konten`, `image`) VALUES
(1, 'AplhaGo (AI)', 'AlphaGo menggunakan sistem Artificial Intelegence', 'AlphaGo adalah program komputer yang dikembangkan oleh Google DeepMind di London untuk memainkan permainan papan Go.[1] Pada Oktober 2015, AlphaGo menjadi program Go komputer pertama yang mengalahkan pemain manusia profesional tanpa handicap pada papan berukuran 19×19.[2][3] Bulan Maret 2016, program ini mengalahkan Lee Sedol dalam tiga pertandingan pertama dari total lima pertandingan. Untuk pertama kalinya program Go komputer mengalahkan pemain profesional 9 dan tanpa handicap.[4] Meski dikalahkan Lee Sedol di pertandingan keempat, Lee menyerah di pertandingan akhir sehingga AlphaGo mendapat perolehan skor 4.\r\n\r\nAlgoritme AlphaGo mencampurkan teknik pembelajaran mesin dan pencarian pohon. Selain itu, AlphaGo juga menjalani latihan intensif lewat pertandingan melawan manusia dan komputer.', 'alphago.png'),
(2, 'AlphaGo Zero', 'AlphaGo yang mampu mengalahkan versi sebelumnya', 'AlphaGo Zero adalah versi perangkat lunak DeepMind \'s Go, AlphaGo . Tim AlphaGo menerbitkan sebuah artikel di jurnal Nature pada 19 Oktober 2017, memperkenalkan AlphaGo Zero, versi yang dibuat tanpa menggunakan data dari permainan manusia, dan lebih kuat dari versi sebelumnya. [1] Dengan memainkan permainan melawan dirinya sendiri, AlphaGo Zero melampaui kekuatan AlphaGo Lee dalam tiga hari dengan memenangkan 100 game menjadi 0, mencapai tingkat AlphaGo Master dalam 21 hari, dan melampaui semua versi lama dalam 40 hari. [2]\r\n\r\nPelatihan kecerdasan buatan (AI) tanpa kumpulan data yang berasal dari pakar manusia memiliki implikasi yang signifikan untuk pengembangan AI dengan keterampilan manusia super karena data pakar \"seringkali mahal, tidak dapat diandalkan, atau hanya tidak tersedia.\" [3] Demis Hassabis , salah satu pendiri dan CEO DeepMind, mengatakan bahwa AlphaGo Zero begitu kuat karena \"tidak lagi dibatasi oleh keterbatasan pengetahuan manusia\". [4] David Silver , salah satu penulis pertama makalah DeepMind yang diterbitkan di Nature on AlphaGo, mengatakan bahwa ada kemungkinan untuk menggeneralisasi algoritma AI dengan menghilangkan kebutuhan untuk belajar dari manusia. [5]\r\n\r\nGoogle kemudian mengembangkan AlphaZero , versi umum dari AlphaGo Zero yang bisa bermain catur dan Shgii selain Go. Pada bulan Desember 2017, AlphaZero mengalahkan versi 3-hari dari AlphaGo Zero dengan memenangkan 60 game menjadi 40, dan dengan 8 jam pelatihan itu mengungguli AlphaGo Lee pada skala Elo . AlphaZero juga mengalahkan program catur top ( Stockfish ) dan program Sh?gi top ( Elmo )', 'alphagozero.png'),
(3, 'AlphaGo Zero', 'AlphaGo yang mampu mengalahkan versi sebelumnya', 'AlphaGo Zero adalah versi perangkat lunak DeepMind \'s Go, AlphaGo . Tim AlphaGo menerbitkan sebuah artikel di jurnal Nature pada 19 Oktober 2017, memperkenalkan AlphaGo Zero, versi yang dibuat tanpa menggunakan data dari permainan manusia, dan lebih kuat dari versi sebelumnya. [1] Dengan memainkan permainan melawan dirinya sendiri, AlphaGo Zero melampaui kekuatan AlphaGo Lee dalam tiga hari dengan memenangkan 100 game menjadi 0, mencapai tingkat AlphaGo Master dalam 21 hari, dan melampaui semua versi lama dalam 40 hari. [2]\r\n\r\nPelatihan kecerdasan buatan (AI) tanpa kumpulan data yang berasal dari pakar manusia memiliki implikasi yang signifikan untuk pengembangan AI dengan keterampilan manusia super karena data pakar \"seringkali mahal, tidak dapat diandalkan, atau hanya tidak tersedia.\" [3] Demis Hassabis , salah satu pendiri dan CEO DeepMind, mengatakan bahwa AlphaGo Zero begitu kuat karena \"tidak lagi dibatasi oleh keterbatasan pengetahuan manusia\". [4] David Silver , salah satu penulis pertama makalah DeepMind yang diterbitkan di Nature on AlphaGo, mengatakan bahwa ada kemungkinan untuk menggeneralisasi algoritma AI dengan menghilangkan kebutuhan untuk belajar dari manusia. [5]\r\n\r\nGoogle kemudian mengembangkan AlphaZero , versi umum dari AlphaGo Zero yang bisa bermain catur dan Shgii selain Go. Pada bulan Desember 2017, AlphaZero mengalahkan versi 3-hari dari AlphaGo Zero dengan memenangkan 60 game menjadi 40, dan dengan 8 jam pelatihan itu mengungguli AlphaGo Lee pada skala Elo . AlphaZero juga mengalahkan program catur top ( Stockfish ) dan program Sh?gi top ( Elmo )', 'alphagozero.png'),
(5, 'AlphaGo Zero', 'AlphaGo yang mampu mengalahkan versi sebelumnya', 'Kemampuan AlphaGo Zero ini sungguh mencengangkan. Ini adalah terobosan dalam dunia kepintaran buatan (artificial intelegence).\r\n\r\nAlphaGo yang dimasukan pada Google DeepMind, sungguh mencengangkan ketika tahun lalu berhasil mengalahkan Lee Sedol dalam permainan Go. Permainan kuno ini merupakan permainan strategi dan intuisi yang sangat kompleks. Banyak yang percaya bahwa permainan ini tidak dapat dimenangkan oleh mesin.\r\n\r\nKeberhasilan Alpha Go Zero adalah memuat jutaan gerakan dari jawara-jawara sebelumnya. AlphaGo hanya diajari selama tiga hari. Kemudian dilepaskan untuk mempelajarinya sendiri dengan bekal gerakan para jawara itu.\r\n\r\nBahkan Alpha Go Zero ini mampi membuat strategi baru yang dibuat olehnya sendiri.\r\n\r\nPendiri DeepMind dan CEO, Demis Hassabis mengatakan bahwa program ini sangat kuat karena tidak dibatasi oleh kemampuan manusia.\r\n\r\nBisa jadi dengan kemampuan seperti itu, AlphaGO Zero mampu menemukan berbagai jawaban dari persoalan-persoalan yang ada. Seperti mengobati Alzhiemer yang sudah lama diteliti oleh para pakar.\r\n\r\nBahkan Demis berharap mesin ini dapat diterapkan dalam berbagai bidang kehidupan manusia. Bukan mustahil dengan kemampuan yang mumpuni itu permasalahan dunia akan cepat terselesaikan, semisalnya mencari sumber energi baru.\r\n\r\nDeepMind sudah memakai AlphaGo Zero untuk penelitian protein yang hasilnya dapat dilaporkan dalam waktu dekat.', 'alphagozero.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konten_program`
--

CREATE TABLE `konten_program` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(32) NOT NULL,
  `sub_judul` varchar(50) NOT NULL,
  `isi_content` text NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konten_program`
--

INSERT INTO `konten_program` (`id_konten`, `judul`, `sub_judul`, `isi_content`, `kategori`) VALUES
(1, 'Pengenalan Python', 'Belajar Pemrograman Python: Pengenalan Dasar Pytho', 'Apa itu Python?\r\nPython merupakan bahasa pemrograman tingkat tinggi yang diracik oleh Guido van Rossum.\r\n\r\nPython banyak digunakan untuk membuat berbagai macam program, seperti: program CLI, Program GUI (desktop), Aplikasi Mobile, Web, IoT, Game, Program untuk Hacking, dsb.\r\n\r\nPython juga dikenal dengan bahasa pemrograman yang mudah dipelajari, karena struktur sintaknya rapi dan mudah dipahami.\r\n\r\n(Python bagus untuk pemula yang belum pernah coding)\r\n\r\nPython memang sangat sederhana dibandingkan bahasa yang lainnya. Tidak perlu ini dan itu untuk membuat program Hello World!.\r\n\r\nBahkan tagline di websitenya menjelaskan, kalau python akan membuatmu bekerja lebih cepat dan efektif.\r\n\r\nPython is a programming language that lets you work quickly and integrate systems more effectively.\r\n\r\nJadi kenapa belajar Python?\r\n\r\nCepat dan efektif;\r\nMudah dipelajari;\r\nBanyak digunakan di perusahaan besar;\r\nSekedar ingin tahu saja.\r\n…(tambahkan sendiri)', 'Python'),
(2, 'Pengenalan Python', 'Pengenalan Dasar dasar pemgoramman python', 'Python memang sangat sederhana dibandingkan bahasa yang lainnya. Tidak perlu ini dan itu untuk membuat program Hello World!.\r\n\r\nBahkan tagline di websitenya menjelaskan, kalau python akan membuatmu bekerja lebih cepat dan efektif.\r\n\r\nPython is a programming language that lets you work quickly and integrate systems more effectively.\r\n\r\nJadi kenapa belajar Python?\r\n\r\nCepat dan efektif;\r\nMudah dipelajari;\r\nBanyak digunakan di perusahaan besar;\r\nSekedar ingin tahu saja.\r\n…(tambahkan sendiri)', 'Python'),
(3, 'Pengenalan R', 'Belajar Dasar R untuk membuat AI', 'Installing R\r\nmake sure gengs, R nya di install dulu, gimana mau belajar R kalo R-nya belom diinstall :D setelah itu baru install R Studio. ini https://cran.r-project.org/ dan https://www.rstudio.com/\r\nBasic of R\r\nkalo sudah diinstall, buka deh R Studionya.\r\n\r\ndi R Studio ini “ngoding” nya lebih enak ketimbang pake R Console. jadi ketimbang langsung ngetik di Console mending di Script aja, bisa dibawa pulang :D eh masuknya bisa di save jadi bisa dipakai lagi sewaktu waktu butuh.\r\nAs you know R ditujukan untuk statistik. jadi hal hal operasi aritmatika bisa lah ya… untuk hal basic ada hal yang perlu kalian ingat jadi kalau hal hal fundamental sudah terbiasa bikin model dan visualisasi segala macem jadi gampang, hal yang mendasar yaitu:\r\nBasic Math\r\nVariables\r\nData Types\r\nVectors\r\nFunctions\r\nData Frame\r\nLists\r\nMatrices\r\nArrays\r\nConditional Statement\r\nBasic Math\r\nAs it’s name. operasi dasar seperti tambah, kurang, kali, bagi, sqrt, mod,', 'R'),
(4, 'Tipe Data', 'Mengenal Tipe data pada pemogramman R', 'Variables\r\nVariabel adalah tempat untuk menyimpan sebuah value. X <- 10 itu artinya X mengandung nilai 10.\r\nData Types\r\nTipe data di R ada numeric, character, Dates, Logical (Boolean)\r\nVectors\r\nVector adalah sekumpulan elemen untuk tipe data yang sama misalkan:\r\nV <- c(1,2,3,4,5,6)\r\nitu artinya variabel V mengandung nilai 1,2,3,4,5,6\r\nFunctions\r\nKita dapat membuat fungsi sendiri di R. Fungsi ini memudahkan kita jika memiliki serangkaian proses dan mengembalikan nilai.\r\nData Frame\r\nIn short, data frame ini kayak table di excel dia ada nama kolom diikuti dengan isi dibawahnya.\r\nLists\r\nada yang bilang sih list seperti container yang bisa memuat tipe data yang berbeda. misalkan ada index A,B,C di list opearasi. nah index A di list operasi ini bisa berisikan sekumpulan angka, lalu di index B bisa berupa data frame, index yang terakhir bisa di isi matrix.', 'R'),
(5, 'Pengenalan Lisp', 'Membuat program pertama Lisp', 'Program LISP pertama\r\n1. Ketik kode di bawah ini dengan editor teks lalu simpan denga nama helo.lisp,\r\n(defun hello() (write-string “Hello ini program LISP Pertamaku”))\r\nIni adalah suatu S-Expresion yang berisi mengenai bagaiman membuat suatu fungsi, dengan nama hello, fungsi ini tidak mempunyai argument parameter. Dalam badan fungsi, tempat di mana aksi di lakukan, kita memanggil fungsi lain (mungkin juga makro) yaitu untuk menulis suatu string ke konsol (string di apit oleh tanda “ “). Setelah selesai, dan di simpan pada direktori, misal “c:\\lisp\\latih”, maka masuk ke interaktif CLISP, dan ketikan perintah di bawah ini\r\n[1]> (compile-file \"c:/lisp/latih/helo.lisp\") Compiling file C:\\lisp\\latih\\helo.lisp ... Compilation of file C:\\lisp\\latih\\helo.lisp is finished. 0 errors, 0 warnings #P\"C:\\\\lisp\\\\latih\\\\helo.fas\" ; NIL ; NIL\r\nDiikuti dengan perintah seperti ini\r\n[2]> (load \"c:/lisp/latih/helo\") ;; Loading file C:\\lisp\\latih\\helo.fas ... ;; Loading of file C:\\lisp\\latih\\helo.fas is finished. T [3]> (hello) Hello ini program LISP Pertamaku ! \"Hello ini program LISP Pertamaku !\"\r\nSetelah LISP melakukan kompilasi (compile-file) maka akan di hasilkan file .fas atau fasl, yaitu file hasil kompilasi yang sudah berbentuk biner (kode mesin). Perintah load akan meload file .fas atau .fasl yang sudah berbentuk biner ke memori, sehingga kita dapat melakukan function call terhadap fungsi yang sudah kita buat (hello).\r\nDari keterangan di atas maka LISP dapat bekerja baik pada level interaktif maupun kompilasi (terhadap file yang di kompilasi).Ada perbedaan pada waktu pengerjaan atau speed yang di hasilkan pada ke dua jenis mode diatas, buktinya adalah :\r\n[5]> (time (dotimes (n 10000) (* n 2))) Real time: 0.047 sec. Run time: 0.046875 sec. Space: 684 Bytes NIL\r\nArtinya real-time adalah mode interaktif sedang run-time adalah mode kompilasi, makro time adalah fungsi yang di pakai untuk mengevaluasi suatu ekspresi Pada kuliah ini karena merupakan pemahaman dasar LISP, kita akan banyak bekerja pada level interaktif, dengan sedikit di kenalkan pada level kompilasi dan untuk selanjutnya diserahkan para praktikan untuk mendalami sendiri pada level kompilasi, bahkan project. Sebagai catatan LISP Allegro sudah terdapat GUI yang bagus untuk membuat program “GUI look”, silahkan explorasi dan exploitasi.\r\n', 'Lisp'),
(6, 'Cara kerja Lisp', 'Cara kerja pemogramman Lisp pada aplikasi', 'Setelah LISP melakukan kompilasi (compile-file) maka akan di hasilkan file .fas atau fasl, yaitu file hasil kompilasi yang sudah berbentuk biner (kode mesin). Perintah load akan meload file .fas atau .fasl yang sudah berbentuk biner ke memori, sehingga kita dapat melakukan function call terhadap fungsi yang sudah kita buat (hello).\r\nDari keterangan di atas maka LISP dapat bekerja baik pada level interaktif maupun kompilasi (terhadap file yang di kompilasi).Ada perbedaan pada waktu pengerjaan atau speed yang di hasilkan pada ke dua jenis mode diatas, buktinya adalah :\r\n[5]> (time (dotimes (n 10000) (* n 2))) Real time: 0.047 sec. Run time: 0.046875 sec. Space: 684 Bytes NIL\r\nArtinya real-time adalah mode interaktif sedang run-time adalah mode kompilasi, makro time adalah fungsi yang di pakai untuk mengevaluasi suatu ekspresi Pada kuliah ini karena merupakan pemahaman dasar LISP, kita akan banyak bekerja pada level interaktif, dengan sedikit di kenalkan pada level kompilasi dan untuk selanjutnya diserahkan para praktikan untuk mendalami sendiri pada level kompilasi, bahkan project. Sebagai catatan LISP Allegro sudah terdapat GUI yang bagus untuk membuat program “GUI look”, silahkan explorasi dan exploitasi.\r\n', 'Lisp');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `belajar`
--
ALTER TABLE `belajar`
  ADD PRIMARY KEY (`id_belajar`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `konten_program`
--
ALTER TABLE `konten_program`
  ADD PRIMARY KEY (`id_konten`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `belajar`
--
ALTER TABLE `belajar`
  MODIFY `id_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `konten_program`
--
ALTER TABLE `konten_program`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
