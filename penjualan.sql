-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Mar 2020 pada 08.25
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `laba` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `setok` int(11) NOT NULL,
  `mulai_promo` date NOT NULL,
  `ahir_promo` date NOT NULL,
  `jenis_promo` varchar(50) NOT NULL,
  `potongan` int(11) NOT NULL,
  `harga_ahir` int(11) NOT NULL,
  `setatus_promo` int(1) NOT NULL,
  `setatus_barang` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `laba`, `satuan`, `setok`, `mulai_promo`, `ahir_promo`, `jenis_promo`, `potongan`, `harga_ahir`, `setatus_promo`, `setatus_barang`) VALUES
(1, 'Air Mineral 600ML', 2000, 2500, 500, 'pcs', 90, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(2, 'Gula', 5000, 7000, 2000, 'kg', 91, '2019-06-12', '2019-06-21', 'minimal', 10, 60000, 1, 1),
(4, 'Shampoo Panteen', 3000, 4000, 1000, 'botol', 91, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(5, 'Oreo', 1500, 2500, 1000, 'pcs', 100, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(6, 'Cimol Goreng', 2000, 3000, 1000, 'pcs', 90, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(7, 'Nasi Kuning', 7000, 10000, 3000, 'pcs', 98, '2020-03-17', '2020-03-27', 'minimal', 10, 90000, 1, 1),
(8, 'Indomie Goreng', 2000, 3000, 1000, 'pcs', 100, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(9, 'Jagung Enak', 5000, 6000, 1000, 'kg', 86, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1),
(10, 'Pop Mie Kuah', 4500, 5500, 1000, 'pcs', 14, '0000-00-00', '0000-00-00', 'diskon', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cookie`
--

CREATE TABLE `cookie` (
  `id_cookie` int(11) NOT NULL,
  `id_user_cookie` int(11) NOT NULL,
  `cookie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cookie`
--

INSERT INTO `cookie` (`id_cookie`, `id_user_cookie`, `cookie`) VALUES
(1, 1, 't2dadynnaa2wagjc1hs9sm9ry8qs5fw9'),
(2, 4, '9ry6s4ztyo3hbt010r1bnciunznkwpoc6o8i1qc7zo984vu1w5voii6kzmn3ihqixl14yw8ly0cfoggfwwiia3i9eq3l1z3z16kecs6o0m3ylx7qrfkfn8qagqsc167u'),
(3, 7, 'rm3inryl9dxjwsql8336uj91kwkzaphg3runxj3tnt6j0a1wg9wd7y6r1watvf7s2jpis7w2rlwhfr9diqiwcmqaopo1bw46n7p2py8eyi2iqfpsqy95l01r5sn90rzzzddufs4kvjry1kquxtw4m9katip2yr0539spd5m8s34y8oyis5vxghwp90jdj7rqdawrwke6l6tu0hsbvh3o29j4m11aazsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `browser_version` varchar(200) NOT NULL,
  `os` varchar(200) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `online` int(11) NOT NULL,
  `waktu_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `id_user`, `browser`, `browser_version`, `os`, `ip_address`, `online`, `waktu_login`) VALUES
(55, 4, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 10:18:45'),
(56, 1, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 10:22:45'),
(57, 7, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 10:39:39'),
(58, 7, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 10:51:54'),
(59, 7, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 10:56:09'),
(60, 4, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 10:56:54'),
(61, 4, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 11:29:22'),
(62, 4, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 12:31:55'),
(63, 4, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 12:44:10'),
(64, 7, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 01:35:57'),
(65, 7, 'Chrome', '80.0.3987.149', 'Windows 10', '::1', 0, '2020-03-03 02:11:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kasir` int(11) NOT NULL,
  `kode_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `harga_brg` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `kasir`, `kode_brg`, `nama_brg`, `harga_brg`, `jumlah`, `total_harga`, `tgl_transaksi`, `waktu`) VALUES
(28, 0, 2, 'Gula', 7000, 1, 7000, '2020-03-26', '11:43:00'),
(29, 0, 10, 'Pop Mie Kuah', 5500, 2, 11000, '2020-03-26', '11:48:00'),
(30, 0, 10, 'Pop Mie Kuah', 5500, 1, 5500, '2020-03-26', '11:50:00'),
(31, 0, 10, 'Pop Mie Kuah', 5500, 3, 16500, '2020-03-26', '11:52:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id_token`, `email`, `token`, `waktu`) VALUES
(9, 'karinasoraya.ks@gmail.com', 'qtFOdrI1lnqy7RzbcwtAYgtrE7Oxyjixmj9vVE9JhqE%3D', 1585193832),
(10, 'soraya.17051@mhs.its.ac.id', '7U1lTeYqEDCTXo3mreYzPzLHT%2BEKa3rjwCcdLGNZy98%3D', 1585207898);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `telephon_toko` int(11) NOT NULL,
  `alamat_toko` varchar(100) NOT NULL,
  `moto_toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `telephon_toko`, `alamat_toko`, `moto_toko`) VALUES
(54, 'Toko MI', 31123456, 'JL. Teknik Kimia, Gedung Teknik Informatika Lt.3', 'MI Sejahtera');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `aktif` int(1) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `jenis_kelamin`, `telephone`, `foto`, `aktif`, `level`) VALUES
(8, 'soraya', 'soraya.17051@mhs.its.ac.id', '$2y$10$T4sHRVJAO4mW3XNoGbibDeVtPODjVHMq0piUuJ5AmtsYtUBD5hEdy', '', '', '', 1, 1),
(7, 'karinasraya', 'karinasoraya.ks@gmail.com', '$2y$10$y0lZCaJQRZEdTE4GQdRcLOQma0W42p20OPkMwrBbZjd3imvetHd1e', '', '', '', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `cookie`
--
ALTER TABLE `cookie`
  ADD PRIMARY KEY (`id_cookie`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `cookie`
--
ALTER TABLE `cookie`
  MODIFY `id_cookie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
