-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table acore_world.player_class_stats
DROP TABLE IF EXISTS `player_class_stats`;
CREATE TABLE IF NOT EXISTS `player_class_stats` (
  `Class` tinyint unsigned NOT NULL,
  `Level` tinyint unsigned NOT NULL,
  `Strength` int unsigned NOT NULL DEFAULT '0',
  `Agility` int unsigned NOT NULL DEFAULT '0',
  `Stamina` int unsigned NOT NULL DEFAULT '0',
  `Intellect` int unsigned NOT NULL DEFAULT '0',
  `Spirit` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Class`,`Level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci PACK_KEYS=0 COMMENT='Stores levels stats.';

-- Dumping data for table acore_world.player_class_stats: ~746 rows (approximately)
DELETE FROM `player_class_stats`;
INSERT INTO `player_class_stats` (`Class`, `Level`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`) VALUES
	(1, 1, 23, 20, 22, 20, 20),
	(1, 2, 24, 21, 23, 20, 20),
	(1, 3, 25, 21, 24, 20, 21),
	(1, 4, 26, 22, 25, 20, 21),
	(1, 5, 28, 23, 26, 20, 21),
	(1, 6, 29, 24, 27, 21, 21),
	(1, 7, 30, 24, 28, 21, 22),
	(1, 8, 31, 25, 29, 21, 22),
	(1, 9, 32, 26, 30, 21, 22),
	(1, 10, 33, 26, 31, 21, 23),
	(1, 11, 35, 27, 33, 21, 23),
	(1, 12, 36, 28, 34, 21, 23),
	(1, 13, 37, 29, 35, 21, 24),
	(1, 14, 39, 30, 36, 22, 24),
	(1, 15, 40, 30, 37, 22, 24),
	(1, 16, 41, 31, 38, 22, 25),
	(1, 17, 42, 32, 40, 22, 25),
	(1, 18, 44, 33, 41, 22, 25),
	(1, 19, 45, 34, 42, 22, 26),
	(1, 20, 47, 35, 43, 22, 26),
	(1, 21, 48, 35, 45, 23, 26),
	(1, 22, 49, 36, 46, 23, 27),
	(1, 23, 51, 37, 47, 23, 27),
	(1, 24, 52, 38, 49, 23, 28),
	(1, 25, 54, 39, 50, 23, 28),
	(1, 26, 55, 40, 51, 23, 28),
	(1, 27, 57, 41, 53, 23, 29),
	(1, 28, 58, 42, 54, 24, 29),
	(1, 29, 60, 43, 56, 24, 30),
	(1, 30, 62, 44, 57, 24, 30),
	(1, 31, 63, 45, 58, 24, 30),
	(1, 32, 65, 46, 60, 24, 31),
	(1, 33, 66, 47, 61, 24, 31),
	(1, 34, 68, 48, 63, 25, 32),
	(1, 35, 70, 49, 64, 25, 32),
	(1, 36, 72, 50, 66, 25, 33),
	(1, 37, 73, 51, 68, 25, 33),
	(1, 38, 75, 52, 69, 25, 33),
	(1, 39, 77, 53, 71, 26, 34),
	(1, 40, 79, 54, 72, 26, 34),
	(1, 41, 80, 56, 74, 26, 35),
	(1, 42, 82, 57, 76, 26, 35),
	(1, 43, 84, 58, 77, 26, 36),
	(1, 44, 86, 59, 79, 26, 36),
	(1, 45, 88, 60, 81, 27, 37),
	(1, 46, 90, 61, 83, 27, 37),
	(1, 47, 92, 63, 84, 27, 38),
	(1, 48, 94, 64, 86, 27, 38),
	(1, 49, 96, 65, 88, 28, 39),
	(1, 50, 98, 66, 90, 28, 39),
	(1, 51, 100, 68, 92, 28, 40),
	(1, 52, 102, 69, 94, 28, 40),
	(1, 53, 104, 70, 96, 28, 41),
	(1, 54, 106, 72, 98, 29, 42),
	(1, 55, 109, 73, 100, 29, 42),
	(1, 56, 111, 74, 102, 29, 43),
	(1, 57, 113, 76, 104, 29, 43),
	(1, 58, 115, 77, 106, 30, 44),
	(1, 59, 118, 79, 108, 30, 44),
	(1, 60, 120, 80, 110, 30, 45),
	(1, 61, 122, 81, 112, 30, 46),
	(1, 62, 125, 83, 114, 30, 46),
	(1, 63, 127, 84, 117, 31, 47),
	(1, 64, 130, 86, 119, 31, 47),
	(1, 65, 132, 88, 121, 31, 48),
	(1, 66, 135, 89, 123, 32, 49),
	(1, 67, 137, 91, 126, 32, 49),
	(1, 68, 140, 92, 128, 32, 50),
	(1, 69, 142, 94, 130, 32, 51),
	(1, 70, 145, 96, 133, 33, 51),
	(1, 71, 148, 97, 135, 33, 52),
	(1, 72, 150, 99, 138, 33, 53),
	(1, 73, 153, 101, 140, 33, 54),
	(1, 74, 156, 102, 143, 34, 54),
	(1, 75, 159, 104, 145, 34, 55),
	(1, 76, 162, 106, 148, 34, 56),
	(1, 77, 165, 108, 151, 35, 57),
	(1, 78, 168, 109, 153, 35, 57),
	(1, 79, 171, 111, 156, 35, 58),
	(1, 80, 174, 113, 159, 36, 59),
	(2, 1, 22, 20, 22, 20, 21),
	(2, 2, 23, 21, 23, 21, 22),
	(2, 3, 24, 21, 24, 21, 22),
	(2, 4, 25, 22, 25, 22, 23),
	(2, 5, 26, 22, 26, 22, 24),
	(2, 6, 27, 23, 27, 23, 24),
	(2, 7, 28, 23, 28, 24, 25),
	(2, 8, 29, 24, 28, 24, 25),
	(2, 9, 30, 24, 29, 25, 26),
	(2, 10, 31, 25, 30, 25, 27),
	(2, 11, 32, 25, 31, 26, 28),
	(2, 12, 33, 26, 32, 27, 28),
	(2, 13, 34, 27, 33, 27, 29),
	(2, 14, 35, 27, 34, 28, 30),
	(2, 15, 36, 28, 36, 29, 30),
	(2, 16, 38, 28, 37, 29, 31),
	(2, 17, 39, 29, 38, 30, 32),
	(2, 18, 40, 30, 39, 31, 33),
	(2, 19, 41, 30, 40, 31, 33),
	(2, 20, 42, 31, 41, 32, 34),
	(2, 21, 43, 32, 42, 33, 35),
	(2, 22, 45, 32, 43, 34, 36),
	(2, 23, 46, 33, 44, 34, 37),
	(2, 24, 47, 34, 46, 35, 37),
	(2, 25, 48, 34, 47, 36, 38),
	(2, 26, 50, 35, 48, 37, 39),
	(2, 27, 51, 36, 49, 37, 40),
	(2, 28, 52, 36, 50, 38, 41),
	(2, 29, 54, 37, 52, 39, 42),
	(2, 30, 55, 38, 53, 40, 42),
	(2, 31, 56, 39, 54, 41, 43),
	(2, 32, 58, 39, 56, 42, 44),
	(2, 33, 59, 40, 57, 42, 45),
	(2, 34, 61, 41, 58, 43, 46),
	(2, 35, 62, 42, 60, 44, 47),
	(2, 36, 64, 43, 61, 45, 48),
	(2, 37, 65, 43, 62, 46, 49),
	(2, 38, 67, 44, 64, 47, 50),
	(2, 39, 68, 45, 65, 48, 51),
	(2, 40, 70, 46, 67, 49, 52),
	(2, 41, 71, 47, 68, 50, 53),
	(2, 42, 73, 47, 70, 51, 54),
	(2, 43, 74, 48, 71, 52, 55),
	(2, 44, 76, 49, 73, 52, 56),
	(2, 45, 78, 50, 74, 53, 57),
	(2, 46, 79, 51, 76, 54, 58),
	(2, 47, 81, 52, 77, 56, 59),
	(2, 48, 83, 53, 79, 57, 60),
	(2, 49, 84, 54, 81, 58, 62),
	(2, 50, 86, 55, 82, 59, 63),
	(2, 51, 88, 56, 84, 60, 64),
	(2, 52, 90, 57, 86, 61, 65),
	(2, 53, 92, 58, 87, 62, 66),
	(2, 54, 93, 59, 89, 63, 67),
	(2, 55, 95, 60, 91, 64, 69),
	(2, 56, 97, 61, 93, 65, 70),
	(2, 57, 99, 62, 94, 66, 71),
	(2, 58, 101, 63, 96, 68, 72),
	(2, 59, 103, 64, 98, 69, 74),
	(2, 60, 105, 65, 100, 70, 75),
	(2, 61, 107, 66, 102, 71, 76),
	(2, 62, 109, 67, 104, 72, 78),
	(2, 63, 111, 68, 106, 74, 79),
	(2, 64, 113, 69, 108, 75, 80),
	(2, 65, 115, 71, 110, 76, 82),
	(2, 66, 118, 72, 112, 78, 83),
	(2, 67, 120, 73, 114, 79, 85),
	(2, 68, 122, 74, 116, 80, 86),
	(2, 69, 124, 75, 118, 82, 87),
	(2, 70, 126, 77, 120, 83, 89),
	(2, 71, 129, 78, 122, 84, 90),
	(2, 72, 131, 79, 125, 86, 92),
	(2, 73, 133, 80, 127, 87, 94),
	(2, 74, 136, 82, 129, 89, 95),
	(2, 75, 138, 83, 131, 90, 97),
	(2, 76, 141, 84, 134, 92, 98),
	(2, 77, 143, 86, 136, 93, 100),
	(2, 78, 146, 87, 138, 95, 102),
	(2, 79, 148, 88, 141, 96, 103),
	(2, 80, 151, 90, 143, 98, 105),
	(3, 1, 20, 23, 21, 20, 21),
	(3, 2, 20, 24, 22, 21, 22),
	(3, 3, 21, 25, 23, 21, 22),
	(3, 4, 21, 27, 23, 22, 23),
	(3, 5, 22, 28, 24, 22, 23),
	(3, 6, 22, 29, 25, 23, 24),
	(3, 7, 22, 30, 26, 23, 24),
	(3, 8, 23, 31, 27, 24, 25),
	(3, 9, 23, 33, 28, 24, 26),
	(3, 10, 24, 34, 28, 25, 26),
	(3, 11, 24, 35, 29, 25, 27),
	(3, 12, 25, 37, 30, 26, 28),
	(3, 13, 25, 38, 31, 27, 28),
	(3, 14, 26, 39, 32, 27, 29),
	(3, 15, 26, 41, 33, 28, 29),
	(3, 16, 27, 42, 34, 28, 30),
	(3, 17, 27, 43, 35, 29, 31),
	(3, 18, 28, 45, 36, 30, 32),
	(3, 19, 28, 46, 37, 30, 32),
	(3, 20, 29, 48, 38, 31, 33),
	(3, 21, 29, 49, 39, 32, 34),
	(3, 22, 30, 51, 40, 32, 34),
	(3, 23, 30, 52, 41, 33, 35),
	(3, 24, 31, 54, 42, 34, 36),
	(3, 25, 31, 55, 43, 34, 37),
	(3, 26, 32, 57, 44, 35, 37),
	(3, 27, 32, 59, 45, 36, 38),
	(3, 28, 33, 60, 46, 36, 39),
	(3, 29, 33, 62, 47, 37, 40),
	(3, 30, 34, 64, 48, 38, 40),
	(3, 31, 34, 65, 50, 39, 41),
	(3, 32, 35, 67, 51, 39, 42),
	(3, 33, 36, 69, 52, 40, 43),
	(3, 34, 36, 70, 53, 41, 44),
	(3, 35, 37, 72, 54, 42, 45),
	(3, 36, 38, 74, 56, 43, 46),
	(3, 37, 38, 76, 57, 43, 46),
	(3, 38, 39, 78, 58, 44, 47),
	(3, 39, 39, 80, 59, 45, 48),
	(3, 40, 40, 81, 61, 46, 49),
	(3, 41, 41, 83, 62, 47, 50),
	(3, 42, 41, 85, 63, 47, 51),
	(3, 43, 42, 87, 64, 48, 52),
	(3, 44, 43, 89, 66, 49, 53),
	(3, 45, 43, 91, 67, 50, 54),
	(3, 46, 44, 93, 69, 51, 55),
	(3, 47, 45, 95, 70, 52, 56),
	(3, 48, 46, 98, 71, 53, 57),
	(3, 49, 46, 100, 73, 54, 58),
	(3, 50, 47, 102, 74, 55, 59),
	(3, 51, 48, 104, 76, 56, 60),
	(3, 52, 49, 106, 77, 57, 61),
	(3, 53, 49, 108, 79, 58, 62),
	(3, 54, 50, 111, 80, 59, 63),
	(3, 55, 51, 113, 82, 60, 64),
	(3, 56, 52, 115, 83, 61, 65),
	(3, 57, 53, 118, 85, 62, 67),
	(3, 58, 53, 120, 87, 63, 68),
	(3, 59, 54, 123, 88, 64, 69),
	(3, 60, 55, 125, 90, 65, 70),
	(3, 61, 56, 127, 92, 66, 71),
	(3, 62, 57, 130, 93, 67, 72),
	(3, 63, 58, 133, 95, 68, 74),
	(3, 64, 58, 135, 97, 69, 75),
	(3, 65, 59, 138, 99, 71, 76),
	(3, 66, 60, 140, 100, 72, 77),
	(3, 67, 61, 143, 102, 73, 79),
	(3, 68, 62, 146, 104, 74, 80),
	(3, 69, 63, 149, 106, 75, 81),
	(3, 70, 64, 151, 108, 77, 83),
	(3, 71, 65, 154, 110, 78, 84),
	(3, 72, 66, 157, 112, 79, 85),
	(3, 73, 67, 160, 114, 80, 87),
	(3, 74, 68, 163, 116, 82, 88),
	(3, 75, 69, 166, 118, 83, 90),
	(3, 76, 70, 169, 120, 84, 91),
	(3, 77, 71, 172, 122, 86, 93),
	(3, 78, 72, 175, 124, 87, 94),
	(3, 79, 73, 178, 126, 88, 96),
	(3, 80, 74, 181, 128, 90, 97),
	(4, 1, 21, 23, 21, 20, 20),
	(4, 2, 22, 24, 22, 20, 20),
	(4, 3, 22, 25, 22, 20, 21),
	(4, 4, 23, 27, 23, 21, 21),
	(4, 5, 24, 28, 24, 21, 21),
	(4, 6, 24, 29, 24, 21, 22),
	(4, 7, 25, 31, 25, 21, 22),
	(4, 8, 26, 32, 25, 21, 22),
	(4, 9, 27, 33, 26, 21, 23),
	(4, 10, 27, 35, 27, 22, 23),
	(4, 11, 28, 36, 28, 22, 24),
	(4, 12, 29, 37, 28, 22, 24),
	(4, 13, 30, 39, 29, 22, 24),
	(4, 14, 30, 40, 30, 22, 25),
	(4, 15, 31, 42, 30, 23, 25),
	(4, 16, 32, 43, 31, 23, 26),
	(4, 17, 33, 44, 32, 23, 26),
	(4, 18, 34, 46, 33, 23, 26),
	(4, 19, 35, 48, 33, 23, 27),
	(4, 20, 35, 49, 34, 24, 27),
	(4, 21, 36, 51, 35, 24, 28),
	(4, 22, 37, 52, 36, 24, 28),
	(4, 23, 38, 54, 37, 24, 29),
	(4, 24, 39, 55, 37, 25, 29),
	(4, 25, 40, 57, 38, 25, 30),
	(4, 26, 41, 59, 39, 25, 30),
	(4, 27, 42, 60, 40, 25, 30),
	(4, 28, 43, 62, 41, 25, 31),
	(4, 29, 43, 64, 42, 26, 31),
	(4, 30, 44, 66, 42, 26, 32),
	(4, 31, 45, 67, 43, 26, 32),
	(4, 32, 46, 69, 44, 26, 33),
	(4, 33, 47, 71, 45, 27, 33),
	(4, 34, 48, 73, 46, 27, 34),
	(4, 35, 49, 75, 47, 27, 34),
	(4, 36, 51, 77, 48, 28, 35),
	(4, 37, 52, 78, 49, 28, 36),
	(4, 38, 53, 80, 50, 28, 36),
	(4, 39, 54, 82, 51, 28, 37),
	(4, 40, 55, 84, 52, 29, 37),
	(4, 41, 56, 86, 53, 29, 38),
	(4, 42, 57, 88, 54, 29, 38),
	(4, 43, 58, 90, 55, 29, 39),
	(4, 44, 59, 93, 56, 30, 39),
	(4, 45, 61, 95, 57, 30, 40),
	(4, 46, 62, 97, 58, 30, 41),
	(4, 47, 63, 99, 59, 31, 41),
	(4, 48, 64, 101, 60, 31, 42),
	(4, 49, 65, 103, 62, 31, 43),
	(4, 50, 67, 106, 63, 32, 43),
	(4, 51, 68, 108, 64, 32, 44),
	(4, 52, 69, 110, 65, 32, 44),
	(4, 53, 70, 113, 66, 33, 45),
	(4, 54, 72, 115, 67, 33, 46),
	(4, 55, 73, 117, 69, 33, 46),
	(4, 56, 74, 120, 70, 34, 47),
	(4, 57, 76, 122, 71, 34, 48),
	(4, 58, 77, 125, 72, 34, 49),
	(4, 59, 79, 127, 74, 35, 49),
	(4, 60, 80, 130, 75, 35, 50),
	(4, 61, 81, 133, 76, 35, 51),
	(4, 62, 83, 135, 78, 36, 51),
	(4, 63, 84, 138, 79, 36, 52),
	(4, 64, 86, 141, 80, 36, 53),
	(4, 65, 87, 143, 82, 37, 54),
	(4, 66, 89, 146, 83, 37, 55),
	(4, 67, 90, 149, 85, 38, 55),
	(4, 68, 92, 152, 86, 38, 56),
	(4, 69, 94, 155, 87, 38, 57),
	(4, 70, 95, 158, 89, 39, 58),
	(4, 71, 97, 161, 90, 39, 59),
	(4, 72, 99, 164, 92, 40, 59),
	(4, 73, 100, 167, 94, 40, 60),
	(4, 74, 102, 170, 95, 41, 61),
	(4, 75, 104, 173, 97, 41, 62),
	(4, 76, 105, 176, 98, 41, 63),
	(4, 77, 107, 179, 100, 42, 64),
	(4, 78, 109, 183, 102, 42, 65),
	(4, 79, 111, 186, 103, 43, 66),
	(4, 80, 113, 189, 105, 43, 67),
	(5, 1, 20, 20, 20, 22, 23),
	(5, 2, 20, 20, 20, 23, 24),
	(5, 3, 20, 20, 21, 24, 25),
	(5, 4, 21, 21, 21, 25, 27),
	(5, 5, 21, 21, 21, 27, 28),
	(5, 6, 21, 21, 22, 28, 29),
	(5, 7, 21, 21, 22, 29, 30),
	(5, 8, 21, 22, 22, 30, 31),
	(5, 9, 21, 22, 23, 31, 33),
	(5, 10, 22, 22, 23, 33, 34),
	(5, 11, 22, 22, 24, 34, 35),
	(5, 12, 22, 23, 24, 35, 37),
	(5, 13, 22, 23, 24, 36, 38),
	(5, 14, 22, 23, 25, 38, 39),
	(5, 15, 23, 23, 25, 39, 41),
	(5, 16, 23, 24, 26, 40, 42),
	(5, 17, 23, 24, 26, 42, 43),
	(5, 18, 23, 24, 26, 43, 45),
	(5, 19, 23, 25, 27, 44, 46),
	(5, 20, 24, 25, 27, 46, 48),
	(5, 21, 24, 25, 28, 47, 49),
	(5, 22, 24, 25, 28, 49, 51),
	(5, 23, 24, 26, 29, 50, 52),
	(5, 24, 25, 26, 29, 52, 54),
	(5, 25, 25, 26, 30, 53, 55),
	(5, 26, 25, 27, 30, 55, 57),
	(5, 27, 25, 27, 30, 56, 59),
	(5, 28, 25, 27, 31, 58, 60),
	(5, 29, 26, 28, 31, 59, 62),
	(5, 30, 26, 28, 32, 61, 64),
	(5, 31, 26, 28, 32, 63, 65),
	(5, 32, 26, 29, 33, 64, 67),
	(5, 33, 27, 29, 33, 66, 69),
	(5, 34, 27, 29, 34, 68, 70),
	(5, 35, 27, 30, 34, 69, 72),
	(5, 36, 28, 30, 35, 71, 74),
	(5, 37, 28, 30, 36, 73, 76),
	(5, 38, 28, 31, 36, 75, 78),
	(5, 39, 28, 31, 37, 76, 80),
	(5, 40, 29, 31, 37, 78, 81),
	(5, 41, 29, 32, 38, 80, 83),
	(5, 42, 29, 32, 38, 82, 85),
	(5, 43, 29, 33, 39, 84, 87),
	(5, 44, 30, 33, 39, 86, 89),
	(5, 45, 30, 33, 40, 88, 91),
	(5, 46, 30, 34, 41, 90, 93),
	(5, 47, 31, 34, 41, 92, 95),
	(5, 48, 31, 35, 42, 94, 98),
	(5, 49, 31, 35, 43, 96, 100),
	(5, 50, 32, 35, 43, 98, 102),
	(5, 51, 32, 36, 44, 100, 104),
	(5, 52, 32, 36, 44, 102, 106),
	(5, 53, 33, 37, 45, 104, 108),
	(5, 54, 33, 37, 46, 106, 111),
	(5, 55, 33, 38, 46, 109, 113),
	(5, 56, 34, 38, 47, 111, 115),
	(5, 57, 34, 39, 48, 113, 118),
	(5, 58, 34, 39, 49, 115, 120),
	(5, 59, 35, 40, 49, 118, 123),
	(5, 60, 35, 40, 50, 120, 125),
	(5, 61, 35, 40, 51, 122, 127),
	(5, 62, 36, 41, 51, 125, 130),
	(5, 63, 36, 41, 52, 127, 133),
	(5, 64, 36, 42, 53, 130, 135),
	(5, 65, 37, 43, 54, 132, 138),
	(5, 66, 37, 43, 55, 135, 140),
	(5, 67, 38, 44, 55, 137, 143),
	(5, 68, 38, 44, 56, 140, 146),
	(5, 69, 38, 45, 57, 143, 149),
	(5, 70, 39, 45, 58, 145, 151),
	(5, 71, 39, 46, 59, 148, 154),
	(5, 72, 40, 46, 59, 151, 157),
	(5, 73, 40, 47, 60, 154, 160),
	(5, 74, 41, 47, 61, 156, 163),
	(5, 75, 41, 48, 62, 159, 166),
	(5, 76, 41, 49, 63, 162, 169),
	(5, 77, 42, 49, 64, 165, 172),
	(5, 78, 42, 50, 65, 168, 175),
	(5, 79, 43, 50, 66, 171, 178),
	(5, 80, 43, 51, 67, 174, 181),
	(6, 55, 108, 73, 99, 29, 42),
	(6, 56, 111, 75, 102, 29, 43),
	(6, 57, 113, 76, 104, 29, 43),
	(6, 58, 115, 77, 106, 30, 44),
	(6, 59, 118, 79, 108, 30, 44),
	(6, 60, 120, 80, 110, 30, 45),
	(6, 61, 122, 81, 112, 30, 46),
	(6, 62, 125, 83, 114, 30, 46),
	(6, 63, 127, 84, 117, 31, 47),
	(6, 64, 130, 86, 119, 31, 47),
	(6, 65, 133, 87, 121, 31, 48),
	(6, 66, 135, 89, 124, 31, 49),
	(6, 67, 138, 90, 126, 32, 49),
	(6, 68, 140, 92, 128, 32, 50),
	(6, 69, 143, 93, 131, 32, 51),
	(6, 70, 146, 95, 133, 32, 51),
	(6, 71, 149, 97, 136, 33, 52),
	(6, 72, 151, 98, 138, 33, 53),
	(6, 73, 154, 100, 141, 33, 54),
	(6, 74, 157, 102, 143, 33, 54),
	(6, 75, 160, 103, 146, 34, 55),
	(6, 76, 163, 105, 149, 34, 56),
	(6, 77, 166, 107, 151, 34, 57),
	(6, 78, 169, 108, 154, 34, 57),
	(6, 79, 172, 110, 157, 35, 58),
	(6, 80, 175, 112, 160, 35, 59),
	(7, 1, 21, 20, 21, 21, 22),
	(7, 2, 22, 20, 22, 22, 23),
	(7, 3, 22, 21, 23, 23, 24),
	(7, 4, 23, 21, 24, 23, 25),
	(7, 5, 24, 22, 24, 24, 26),
	(7, 6, 25, 22, 25, 25, 27),
	(7, 7, 26, 22, 26, 26, 28),
	(7, 8, 26, 23, 27, 27, 28),
	(7, 9, 27, 23, 28, 28, 29),
	(7, 10, 28, 24, 29, 28, 30),
	(7, 11, 29, 24, 30, 29, 31),
	(7, 12, 30, 25, 31, 30, 32),
	(7, 13, 30, 25, 32, 31, 33),
	(7, 14, 31, 26, 33, 32, 34),
	(7, 15, 32, 26, 34, 33, 36),
	(7, 16, 33, 27, 35, 34, 37),
	(7, 17, 34, 27, 36, 35, 38),
	(7, 18, 35, 28, 37, 36, 39),
	(7, 19, 36, 28, 38, 37, 40),
	(7, 20, 37, 29, 39, 38, 41),
	(7, 21, 38, 29, 40, 39, 42),
	(7, 22, 38, 30, 41, 40, 43),
	(7, 23, 39, 30, 42, 41, 44),
	(7, 24, 40, 31, 43, 42, 46),
	(7, 25, 41, 31, 45, 43, 47),
	(7, 26, 42, 32, 46, 44, 48),
	(7, 27, 43, 32, 47, 45, 49),
	(7, 28, 44, 33, 48, 46, 50),
	(7, 29, 45, 33, 49, 47, 52),
	(7, 30, 46, 34, 50, 48, 53),
	(7, 31, 48, 34, 52, 50, 54),
	(7, 32, 49, 35, 53, 51, 56),
	(7, 33, 50, 36, 54, 52, 57),
	(7, 34, 51, 36, 55, 53, 58),
	(7, 35, 52, 37, 57, 54, 60),
	(7, 36, 53, 38, 58, 56, 61),
	(7, 37, 54, 38, 59, 57, 62),
	(7, 38, 55, 39, 61, 58, 64),
	(7, 39, 56, 39, 62, 59, 65),
	(7, 40, 58, 40, 63, 61, 67),
	(7, 41, 59, 41, 65, 62, 68),
	(7, 42, 60, 41, 66, 63, 70),
	(7, 43, 61, 42, 68, 64, 71),
	(7, 44, 63, 43, 69, 66, 73),
	(7, 45, 64, 43, 71, 67, 74),
	(7, 46, 65, 44, 72, 69, 76),
	(7, 47, 66, 45, 74, 70, 77),
	(7, 48, 68, 46, 75, 71, 79),
	(7, 49, 69, 46, 77, 73, 81),
	(7, 50, 70, 47, 78, 74, 82),
	(7, 51, 72, 48, 80, 76, 84),
	(7, 52, 73, 49, 81, 77, 86),
	(7, 53, 75, 49, 83, 79, 87),
	(7, 54, 76, 50, 85, 80, 89),
	(7, 55, 77, 51, 86, 82, 91),
	(7, 56, 79, 52, 88, 83, 93),
	(7, 57, 80, 53, 90, 85, 94),
	(7, 58, 82, 53, 91, 87, 96),
	(7, 59, 83, 54, 93, 88, 98),
	(7, 60, 85, 55, 95, 90, 100),
	(7, 61, 87, 56, 97, 92, 102),
	(7, 62, 88, 57, 99, 93, 104),
	(7, 63, 90, 58, 100, 95, 106),
	(7, 64, 91, 58, 102, 97, 108),
	(7, 65, 93, 59, 104, 99, 110),
	(7, 66, 95, 60, 106, 100, 112),
	(7, 67, 96, 61, 108, 102, 114),
	(7, 68, 98, 62, 110, 104, 116),
	(7, 69, 100, 63, 112, 106, 118),
	(7, 70, 102, 64, 114, 108, 120),
	(7, 71, 103, 65, 116, 110, 122),
	(7, 72, 105, 66, 118, 112, 125),
	(7, 73, 107, 67, 120, 114, 127),
	(7, 74, 109, 68, 123, 116, 129),
	(7, 75, 111, 69, 125, 118, 131),
	(7, 76, 111, 70, 127, 120, 134),
	(7, 77, 114, 71, 129, 122, 136),
	(7, 78, 116, 72, 131, 124, 138),
	(7, 79, 118, 73, 134, 126, 141),
	(7, 80, 120, 74, 136, 128, 143),
	(8, 1, 20, 20, 20, 23, 22),
	(8, 2, 20, 20, 20, 24, 23),
	(8, 3, 20, 20, 21, 25, 24),
	(8, 4, 20, 21, 21, 27, 25),
	(8, 5, 20, 21, 21, 28, 27),
	(8, 6, 21, 21, 21, 29, 28),
	(8, 7, 21, 21, 22, 30, 29),
	(8, 8, 21, 21, 22, 31, 30),
	(8, 9, 21, 21, 22, 33, 31),
	(8, 10, 21, 22, 23, 34, 33),
	(8, 11, 21, 22, 23, 35, 34),
	(8, 12, 21, 22, 23, 37, 35),
	(8, 13, 21, 22, 24, 38, 36),
	(8, 14, 22, 22, 24, 39, 38),
	(8, 15, 22, 23, 24, 41, 39),
	(8, 16, 22, 23, 25, 42, 40),
	(8, 17, 22, 23, 25, 43, 42),
	(8, 18, 22, 23, 25, 45, 43),
	(8, 19, 22, 23, 26, 46, 44),
	(8, 20, 22, 24, 26, 48, 46),
	(8, 21, 23, 24, 26, 49, 47),
	(8, 22, 23, 24, 27, 51, 49),
	(8, 23, 23, 24, 27, 52, 50),
	(8, 24, 23, 25, 28, 54, 52),
	(8, 25, 23, 25, 28, 55, 53),
	(8, 26, 23, 25, 28, 57, 55),
	(8, 27, 23, 25, 29, 59, 56),
	(8, 28, 24, 25, 29, 60, 58),
	(8, 29, 24, 26, 30, 62, 59),
	(8, 30, 24, 26, 30, 64, 61),
	(8, 31, 24, 26, 30, 65, 63),
	(8, 32, 24, 26, 31, 67, 64),
	(8, 33, 24, 27, 31, 69, 66),
	(8, 34, 25, 27, 32, 70, 68),
	(8, 35, 25, 27, 32, 72, 69),
	(8, 36, 25, 28, 33, 74, 71),
	(8, 37, 25, 28, 33, 76, 73),
	(8, 38, 25, 28, 33, 78, 75),
	(8, 39, 26, 28, 34, 80, 76),
	(8, 40, 26, 29, 34, 81, 78),
	(8, 41, 26, 29, 35, 83, 80),
	(8, 42, 26, 29, 35, 85, 82),
	(8, 43, 26, 29, 36, 87, 84),
	(8, 44, 26, 30, 36, 89, 86),
	(8, 45, 27, 30, 37, 91, 88),
	(8, 46, 27, 30, 37, 93, 90),
	(8, 47, 27, 31, 38, 95, 92),
	(8, 48, 27, 31, 38, 98, 94),
	(8, 49, 28, 31, 39, 100, 96),
	(8, 50, 28, 32, 39, 102, 98),
	(8, 51, 28, 32, 40, 104, 100),
	(8, 52, 28, 32, 40, 106, 102),
	(8, 53, 28, 33, 41, 108, 104),
	(8, 54, 29, 33, 42, 111, 106),
	(8, 55, 29, 33, 42, 113, 109),
	(8, 56, 29, 34, 43, 115, 111),
	(8, 57, 29, 34, 43, 118, 113),
	(8, 58, 30, 34, 44, 120, 115),
	(8, 59, 30, 35, 44, 123, 118),
	(8, 60, 30, 35, 45, 125, 120),
	(8, 61, 30, 35, 46, 127, 122),
	(8, 62, 30, 36, 46, 130, 125),
	(8, 63, 31, 36, 47, 133, 127),
	(8, 64, 31, 36, 47, 135, 130),
	(8, 65, 31, 37, 48, 138, 132),
	(8, 66, 32, 37, 49, 140, 135),
	(8, 67, 32, 38, 49, 143, 137),
	(8, 68, 32, 38, 50, 146, 140),
	(8, 69, 32, 38, 51, 149, 143),
	(8, 70, 33, 39, 51, 151, 145),
	(8, 71, 33, 39, 52, 154, 148),
	(8, 72, 33, 40, 53, 157, 151),
	(8, 73, 33, 40, 54, 160, 154),
	(8, 74, 34, 41, 54, 163, 156),
	(8, 75, 34, 41, 55, 166, 159),
	(8, 76, 34, 41, 56, 169, 162),
	(8, 77, 35, 42, 57, 172, 165),
	(8, 78, 35, 42, 57, 175, 168),
	(8, 79, 35, 43, 58, 178, 171),
	(8, 80, 36, 43, 59, 181, 174),
	(9, 1, 20, 20, 21, 22, 22),
	(9, 2, 20, 20, 22, 23, 23),
	(9, 3, 21, 21, 22, 24, 24),
	(9, 4, 21, 21, 23, 25, 25),
	(9, 5, 21, 21, 23, 26, 26),
	(9, 6, 21, 22, 24, 27, 27),
	(9, 7, 22, 22, 24, 28, 29),
	(9, 8, 22, 22, 25, 29, 30),
	(9, 9, 22, 23, 25, 30, 31),
	(9, 10, 23, 23, 26, 31, 32),
	(9, 11, 23, 24, 26, 33, 33),
	(9, 12, 23, 24, 27, 34, 34),
	(9, 13, 24, 24, 27, 35, 36),
	(9, 14, 24, 25, 28, 36, 37),
	(9, 15, 24, 25, 29, 37, 38),
	(9, 16, 25, 26, 29, 38, 39),
	(9, 17, 25, 26, 30, 40, 41),
	(9, 18, 25, 26, 30, 41, 42),
	(9, 19, 26, 27, 31, 42, 43),
	(9, 20, 26, 27, 32, 43, 45),
	(9, 21, 26, 28, 32, 45, 46),
	(9, 22, 27, 28, 33, 46, 47),
	(9, 23, 27, 29, 34, 47, 49),
	(9, 24, 28, 29, 34, 49, 50),
	(9, 25, 28, 30, 35, 50, 52),
	(9, 26, 28, 30, 36, 51, 53),
	(9, 27, 29, 30, 36, 53, 54),
	(9, 28, 29, 31, 37, 54, 56),
	(9, 29, 30, 31, 38, 56, 57),
	(9, 30, 30, 32, 38, 57, 59),
	(9, 31, 30, 32, 39, 58, 61),
	(9, 32, 31, 33, 40, 60, 62),
	(9, 33, 31, 33, 41, 61, 64),
	(9, 34, 32, 34, 41, 63, 65),
	(9, 35, 32, 34, 42, 64, 67),
	(9, 36, 33, 35, 43, 66, 69),
	(9, 37, 33, 36, 44, 68, 70),
	(9, 38, 33, 36, 45, 69, 72),
	(9, 39, 34, 37, 45, 71, 74),
	(9, 40, 34, 37, 46, 72, 75),
	(9, 41, 35, 38, 47, 74, 77),
	(9, 42, 35, 38, 48, 76, 79),
	(9, 43, 36, 39, 49, 77, 81),
	(9, 44, 36, 39, 50, 79, 82),
	(9, 45, 37, 40, 50, 81, 84),
	(9, 46, 37, 41, 51, 83, 86),
	(9, 47, 38, 41, 52, 84, 88),
	(9, 48, 38, 42, 53, 86, 90),
	(9, 49, 39, 43, 54, 88, 92),
	(9, 50, 39, 43, 55, 90, 94),
	(9, 51, 40, 44, 56, 92, 96),
	(9, 52, 40, 44, 57, 94, 98),
	(9, 53, 41, 45, 58, 96, 100),
	(9, 54, 42, 46, 59, 98, 102),
	(9, 55, 42, 46, 60, 100, 104),
	(9, 56, 43, 47, 61, 102, 106),
	(9, 57, 43, 48, 62, 104, 108),
	(9, 58, 44, 49, 63, 106, 111),
	(9, 59, 44, 49, 64, 108, 113),
	(9, 60, 45, 50, 65, 110, 115),
	(9, 61, 46, 51, 66, 112, 117),
	(9, 62, 46, 51, 67, 114, 120),
	(9, 63, 47, 52, 68, 117, 122),
	(9, 64, 47, 53, 69, 119, 124),
	(9, 65, 48, 54, 71, 121, 126),
	(9, 66, 49, 55, 72, 123, 129),
	(9, 67, 49, 55, 73, 126, 131),
	(9, 68, 50, 56, 74, 128, 134),
	(9, 69, 51, 57, 75, 130, 136),
	(9, 70, 51, 58, 76, 133, 139),
	(9, 71, 52, 59, 78, 135, 142),
	(9, 72, 53, 59, 79, 138, 144),
	(9, 73, 54, 60, 80, 140, 147),
	(9, 74, 54, 61, 81, 143, 150),
	(9, 75, 55, 62, 83, 145, 152),
	(9, 76, 56, 63, 84, 148, 155),
	(9, 77, 57, 64, 85, 151, 158),
	(9, 78, 57, 65, 87, 153, 161),
	(9, 79, 58, 66, 88, 156, 164),
	(9, 80, 59, 67, 89, 159, 166),
	(11, 1, 21, 20, 20, 22, 22),
	(11, 2, 22, 20, 21, 23, 23),
	(11, 3, 22, 21, 21, 24, 24),
	(11, 4, 23, 21, 22, 25, 25),
	(11, 5, 23, 22, 22, 26, 26),
	(11, 6, 24, 22, 23, 27, 27),
	(11, 7, 24, 23, 24, 28, 28),
	(11, 8, 25, 23, 24, 28, 29),
	(11, 9, 25, 24, 25, 29, 30),
	(11, 10, 26, 24, 25, 30, 31),
	(11, 11, 26, 25, 26, 31, 33),
	(11, 12, 27, 25, 27, 32, 34),
	(11, 13, 27, 26, 27, 33, 35),
	(11, 14, 28, 26, 28, 34, 36),
	(11, 15, 29, 27, 29, 36, 37),
	(11, 16, 29, 27, 29, 37, 38),
	(11, 17, 30, 28, 30, 38, 40),
	(11, 18, 30, 29, 31, 39, 41),
	(11, 19, 31, 29, 31, 40, 42),
	(11, 20, 32, 30, 32, 41, 43),
	(11, 21, 32, 30, 33, 42, 45),
	(11, 22, 33, 31, 34, 43, 46),
	(11, 23, 34, 32, 34, 44, 47),
	(11, 24, 34, 32, 35, 46, 49),
	(11, 25, 35, 33, 36, 47, 50),
	(11, 26, 35, 33, 36, 48, 51),
	(11, 27, 36, 34, 37, 49, 53),
	(11, 28, 37, 35, 38, 50, 54),
	(11, 29, 38, 35, 39, 52, 56),
	(11, 30, 38, 36, 40, 53, 57),
	(11, 31, 39, 37, 41, 54, 58),
	(11, 32, 40, 37, 42, 56, 60),
	(11, 33, 41, 38, 42, 57, 61),
	(11, 34, 41, 39, 43, 58, 63),
	(11, 35, 42, 39, 44, 60, 64),
	(11, 36, 43, 40, 45, 61, 66),
	(11, 37, 44, 41, 46, 62, 68),
	(11, 38, 45, 41, 47, 64, 69),
	(11, 39, 45, 42, 48, 65, 71),
	(11, 40, 46, 43, 49, 67, 72),
	(11, 41, 47, 44, 50, 68, 74),
	(11, 42, 48, 44, 51, 70, 76),
	(11, 43, 49, 45, 52, 71, 77),
	(11, 44, 50, 46, 52, 73, 79),
	(11, 45, 50, 47, 53, 74, 81),
	(11, 46, 51, 48, 54, 76, 83),
	(11, 47, 52, 48, 56, 77, 84),
	(11, 48, 53, 49, 57, 79, 86),
	(11, 49, 54, 50, 58, 81, 88),
	(11, 50, 55, 51, 59, 82, 90),
	(11, 51, 56, 52, 60, 84, 92),
	(11, 52, 57, 53, 61, 86, 94),
	(11, 53, 58, 54, 62, 87, 96),
	(11, 54, 59, 54, 63, 89, 98),
	(11, 55, 60, 55, 64, 91, 100),
	(11, 56, 61, 56, 65, 93, 102),
	(11, 57, 62, 57, 66, 94, 104),
	(11, 58, 63, 58, 68, 96, 106),
	(11, 59, 64, 59, 69, 98, 108),
	(11, 60, 65, 60, 70, 100, 110),
	(11, 61, 66, 61, 71, 102, 112),
	(11, 62, 67, 62, 72, 104, 114),
	(11, 63, 68, 63, 74, 106, 117),
	(11, 64, 69, 64, 75, 108, 119),
	(11, 65, 71, 65, 76, 110, 121),
	(11, 66, 72, 66, 78, 112, 123),
	(11, 67, 73, 67, 79, 114, 126),
	(11, 68, 74, 68, 80, 116, 128),
	(11, 69, 75, 69, 82, 118, 130),
	(11, 70, 76, 70, 83, 120, 133),
	(11, 71, 78, 71, 84, 122, 135),
	(11, 72, 79, 73, 86, 125, 138),
	(11, 73, 80, 74, 87, 127, 140),
	(11, 74, 81, 75, 89, 129, 143),
	(11, 75, 83, 76, 90, 131, 145),
	(11, 76, 84, 77, 92, 134, 148),
	(11, 77, 85, 78, 93, 136, 151),
	(11, 78, 87, 80, 95, 138, 153),
	(11, 79, 88, 81, 96, 141, 156),
	(11, 80, 89, 82, 98, 143, 159);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
