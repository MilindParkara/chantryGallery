-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 04, 2017 at 05:47 AM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chantry`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galleryImage`
--

CREATE TABLE `tb_galleryImage` (
  `image_id` int(3) NOT NULL,
  `image_thumb` varchar(3) NOT NULL,
  `image_title` varchar(35) NOT NULL,
  `image_desc` varchar(150) NOT NULL,
  `image_mainImage` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galleryImage`
--

INSERT INTO `tb_galleryImage` (`image_id`, `image_thumb`, `image_title`, `image_desc`, `image_mainImage`) VALUES
(1, '001', 'Bulbasaur', 'Bulbasaur is a quadruped, reptilian creature that somewhat resembles a toad or a young dinosaur with a spotted blue-green hide. It has three white toe', 'forest'),
(2, '004', 'Charmander', 'Charmander is an orange reptilian creature resembling a tailed bipedal salamander with some dinosaur qualities, particularly like those of theropods. ', 'lava'),
(3, '007', 'Squirtle', 'Squirtle is a short, tailed bipedal Pokemon. However, it has also been shown to be able to walk on all fours. They resemble a light blue turtle with t', 'beach'),
(4, '025', 'Pikachu', 'Pikachu is a short, chubby, rodent-like Pokemon with yellow fur all over its body. Pikachu\'s ears are long and come to a point with black tips. It has', 'grass');

-- --------------------------------------------------------

--
-- Table structure for table `tb_galleryImage2`
--

CREATE TABLE `tb_galleryImage2` (
  `img_id` int(11) NOT NULL,
  `img_thumb` varchar(50) NOT NULL,
  `img_title` varchar(50) NOT NULL,
  `img_mainImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_galleryImage2`
--

INSERT INTO `tb_galleryImage2` (`img_id`, `img_thumb`, `img_title`, `img_mainImage`) VALUES
(1, 'thumb_1', 'image1', '1'),
(2, 'thumb_2', 'image2', '2'),
(3, 'thumb_3', 'image3', '3'),
(4, 'thumb_4', 'image4', '4'),
(5, 'thumb_5', 'image5', '5'),
(6, 'thumb_6', 'image6', '6'),
(7, 'thumb_7', 'image7', '7'),
(8, 'thumb_8', 'image8', '8'),
(9, 'thumb_9', 'image9', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galleryImage`
--
ALTER TABLE `tb_galleryImage`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tb_galleryImage2`
--
ALTER TABLE `tb_galleryImage2`
  ADD PRIMARY KEY (`img_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galleryImage`
--
ALTER TABLE `tb_galleryImage`
  MODIFY `image_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_galleryImage2`
--
ALTER TABLE `tb_galleryImage2`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
