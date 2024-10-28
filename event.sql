-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for event
CREATE DATABASE IF NOT EXISTS `event` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `event`;

-- Dumping structure for table event.jenis_lomba
CREATE TABLE IF NOT EXISTS `jenis_lomba` (
  `id_jns` int NOT NULL AUTO_INCREMENT,
  `nama_lomba` varchar(256) DEFAULT NULL,
  `penyelenggara` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_jns`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table event.jenis_lomba: ~4 rows (approximately)
INSERT INTO `jenis_lomba` (`id_jns`, `nama_lomba`, `penyelenggara`) VALUES
	(1, 'balap karung', 'kesiswaan'),
	(2, 'kelereng', 'kesiswaan'),
	(3, 'joget balon', 'kesiswaan'),
	(4, 'Balap karung', 'kesiswaan');

-- Dumping structure for table event.pendaftaran
CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_lomba` int DEFAULT NULL,
  `nama_pendaftar` varchar(256) DEFAULT NULL,
  `kelas` varchar(256) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table event.pendaftaran: ~4 rows (approximately)
INSERT INTO `pendaftaran` (`id`, `id_lomba`, `nama_pendaftar`, `kelas`, `no_hp`, `tgl_daftar`) VALUES
	(4, 0, 'cancyy', 'xii rpl1', '09876543212', '2024-10-25'),
	(6, 2, 'niyoo', 'xii rpl1', '087865472343', '2024-10-25'),
	(7, 3, 'meican', 'xii rpl1', '09876543212', '2024-10-26'),
	(8, 4, 'iins', 'XII TB 2', '098765431234', '2024-10-26'),
	(9, 3, 'azizah', 'xii rpl1', '087865472343', '2024-10-26');

-- Dumping structure for table event.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(256) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table event.user: ~8 rows (approximately)
INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
	(10, 'karima', 'macantik', '$2y$10$qwAanjIwrWnsTclM15eZY.D5OQJGOMs56saP.4Wap//VTntb4QH/G'),
	(11, 'marissa', 'mamacan', '$2y$10$Yffu2ahGdjjquQqvYdNnOOJtrJluhZcPaGGheJaCnOYwnJXrDildO'),
	(12, 'arifin', 'abc', '$2y$10$zKp6D8WYpLWjQJA0dl0ybO6OWmSu4aD1Rql21B9TjmU3yxk/KcNE6'),
	(13, 'iin lusyu', 'jeysenhuwuw', '$2y$10$0T8kdJGq8tXx6J6YBbrem.bz7Dl3CxpTI1vORFxfmwARC6G8LZgpC'),
	(14, 'marissa', 'meican', '$2y$10$So61XKoudjAUvu3ee6IfAer3aBKAd46MU0mP3LHlb/1aQtKs0suoy'),
	(15, 'Nana', 'nanachan', '$2y$10$7omIiPzJI47DGC47AEMszOaIBVmUn./7v7ogQsUj30T51NBmNI1HK'),
	(16, 'marissa', 'marissa', '$2y$10$KtXmnUAgud8DNSpr7GWtA./NUQbZzg9n9cMXCCEjdiP.5iEhMmn2S'),
	(17, 'brown sugar', 'brown', '$2y$10$yOyXJCoVjWdwK1M1miRj0.ISqzdN4JjM2phfKRUK/VVRv.3aRV1Pi');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
