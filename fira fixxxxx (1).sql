-- --------------------------------------------------------
-- Create tables only if they do not already exist
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `anggota` (
  `anggota_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  PRIMARY KEY (`anggota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `buku` (
  `buku_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  PRIMARY KEY (`buku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `peminjaman_id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  PRIMARY KEY (`peminjaman_id`),
  FOREIGN KEY (`anggota_id`) REFERENCES `anggota`(`anggota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`buku_id`) REFERENCES `buku`(`buku_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
