-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 15, 2020 at 02:08 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '1234567891', 'Bihar', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '12345698712', 'Bengal', 'Ckumar123@'),
('myadav', 'MINTU YADAV', 'myadav.cse17@chitkarauniversi', '8628808560', 'Chitkara University Baddi  kalu jhanda 173103', '123'),
('nidha', 'nidha', 'nidha@gmail.com', '253647899654', 'Maharashtra', 'nidha'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '12365478964', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '8964756213', 'Gujarath', 'rakshith');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `F_ID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE',
  PRIMARY KEY (`F_ID`,`R_ID`),
  KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 40, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(59, 'Meurig Fish', 60, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg', 'ENABLE'),
(60, 'Chocolate Hazelnut Truffle', 99, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Happy Happy Choco Chip Shake', 80, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Spring Rolls', 65, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg', 'ENABLE'),
(63, 'Baahubali Thali', 75, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(65, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 4, 'images/coffee.jpg', 'DISABLE'),
(66, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Paneer', 85, 'it', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa', 40, 'Cocktail Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Paneer Pakora', 45, 'it gives whole new dimension even to the most boring or dull vegetable', 2, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Puff', 35, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/puff.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Pizza', 200, 'Pure Vegetable and Tasty.', 2, 'images/Pizza.jpg', 'ENABLE'),
(78, 'French Fries', 75, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(79, 'Pakora', 45, 'TASTY', 2, 'images/Pakora.jpg', 'ENABLE'),
(80, 'Bhatoora', 120, 'North Indian Flavour', 7, 'images/bhatoora.jpg', 'ENABLE'),
(81, 'Oreo-Shake', 150, 'oreo cholocate shake', 7, 'images/oreo-shake.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '865479621', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '58945625226', 'Karnataka', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '851441246326', 'Bengal', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '223544677888', 'Bihar', 'Dhiraj'),
('myadav', 'MINTU YADAV', 'mintu08.yadav@gmail.com', '8628808560', 'Chitkara University Baddi  kalu jhanda 173103', '123456'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '12345678912', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_ID` int(30) NOT NULL AUTO_INCREMENT,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  PRIMARY KEY (`order_ID`),
  KEY `F_ID` (`F_ID`),
  KEY `username` (`username`),
  KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-12-03', 'ckumar', 1),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 2, '2019-12-03', 'ckumar', 1),
(3, 61, 'Happy Happy Choco Chip Shake', 80, 2, '0201-12-03', 'ckumar', 1),
(4, 65, 'Coffee', 25, 4, '2019-12-03', 'ckumar', 4),
(5, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2019-12-03', 'ckumar', 1),
(6, 65, 'Coffee', 25, 2, '2020-02-03', 'ckumar', 4),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 7, '2020-02-03', 'ckumar', 1),
(8, 65, 'Coffee', 25, 2, '2020-03-13', 'ckumar', 4),
(9, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-15', 'ckumar', 3),
(10, 59, 'Meurig Fish', 60, 1, '2020-03-18', 'ckumar', 2),
(11, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-03-18', 'ckumar', 3),
(12, 65, 'Coffee', 25, 1, '2020-03-20', 'ckumar', 4),
(13, 59, 'Meurig Fish', 60, 4, '2020-03-22', 'ckumar', 2),
(14, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-03-22', 'ckumar', 1),
(15, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2020-03-25', 'ckumar', 3),
(16, 65, 'Coffee', 25, 1, '2020-04-04', 'ckumar', 4),
(17, 66, 'Tea', 20, 7, '2020-04-04', 'ckumar', 4),
(18, 59, 'Meurig Fish', 60, 5, '2020-04-04', 'birju', 2),
(19, 63, 'Baahubali Thali', 75, 1, '2020-04-08', 'birju', 3),
(20, 68, 'Paneer Pakora', 75, 1, '2020-04-08', 'birju', 6),
(21, 62, 'Spring Rolls', 65, 1, '2020-04-10', 'birju', 2),
(22, 68, 'Paneer Pakora', 75, 1, '2020-04-14', 'birju', 6),
(23, 62, 'Spring Rolls', 65, 1, '2020-04-14', 'birju', 2),
(24, 65, 'Coffee', 25, 1, '2020-04-14', 'birju', 4),
(25, 68, 'Paneer Pakora', 75, 1, '2020-04-14', 'birju', 6),
(26, 59, 'Meurig Fish', 60, 6, '2019-03-05', 'birju', 2),
(27, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(28, 59, 'Meurig Fish', 60, 1, '2019-03-05', 'birju', 2),
(29, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-03-05', 'birju', 1),
(30, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(31, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(32, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(33, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'ckumar', 3),
(34, 59, 'Meurig Fish', 60, 1, '2019-03-15', 'ckumar', 2),
(35, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-15', 'ckumar', 1),
(36, 62, 'Spring Rolls', 65, 1, '2019-03-15', 'ckumar', 2),
(37, 72, 'Paneer Pakora', 45, 6, '2019-03-15', 'ckumar', 2),
(38, 78, 'French Fries', 75, 7, '2019-03-15', 'ckumar', 2),
(39, 78, 'French Fries', 75, 1, '2019-03-15', 'ckumar', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'ckumar', 2),
(41, 77, 'Pizza', 200, 2, '2019-03-16', 'ckumar', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(43, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(45, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'ckumar', 2),
(47, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'ckumar', 3),
(48, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-25', 'ckumar', 3),
(49, 62, 'Spring Rolls', 65, 6, '2019-03-25', 'ckumar', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'ckumar', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'ckumar', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'ckumar', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2019-03-30', 'ckumar', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'ckumar', 2),
(55, 62, 'Spring Rolls', 65, 1, '2019-04-01', 'ckumar', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'ckumar', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'ckumar', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-01', 'ckumar', 3),
(59, 59, 'Meurig Fish', 60, 6, '2019-04-02', 'ckumar', 2),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-04-02', 'ckumar', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'ckumar', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'ckumar', 2),
(69, 79, 'Pakora', 45, 1, '2020-04-13', 'myadav', 2),
(70, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-04-13', 'myadav', 1),
(71, 73, 'Puff', 35, 1, '2020-04-13', 'myadav', 2),
(72, 63, 'Baahubali Thali', 75, 1, '2020-04-13', 'myadav', 3),
(73, 59, 'Meurig Fish', 60, 1, '2020-04-13', 'myadav', 2),
(74, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-04-13', 'myadav', 1),
(75, 73, 'Puff', 35, 1, '2020-04-13', 'myadav', 2),
(76, 63, 'Baahubali Thali', 75, 1, '2020-04-13', 'myadav', 3),
(77, 59, 'Meurig Fish', 60, 1, '2020-04-13', 'myadav', 2),
(78, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-04-13', 'myadav', 1),
(79, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(80, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(81, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(82, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(83, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(84, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(85, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(86, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(87, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(88, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(89, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-04-14', 'myadav', 1),
(90, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(91, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(92, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-04-14', 'myadav', 1),
(93, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(94, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(95, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-04-14', 'myadav', 1),
(96, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2020-04-14', 'myadav', 1),
(97, 70, 'Tea', 20, 1, '2020-04-14', 'myadav', 2),
(98, 69, 'Coffee', 25, 1, '2020-04-14', 'myadav', 2),
(99, 63, 'Baahubali Thali', 75, 1, '2020-04-14', 'myadav', 3),
(100, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(101, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(102, 59, 'Meurig Fish', 60, 1, '2020-04-14', 'myadav', 2),
(103, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-14', 'myadav', 3),
(104, 59, 'Meurig Fish', 60, 1, '2020-04-15', 'myadav', 2),
(105, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-04-15', 'myadav', 3),
(106, 63, 'Baahubali Thali', 75, 1, '2020-04-15', 'myadav', 3),
(107, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-04-15', 'myadav', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `R_ID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`R_ID`),
  UNIQUE KEY `M_ID_2` (`M_ID`),
  KEY `M_ID` (`M_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998884455', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '8965721456', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '89654485542', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '56987466233', 'Baddi', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '5644625632', 'Baddi', 'dhiraj'),
(7, 'spice Shuttle', 'nami08yadav@gmail.com', '8628808560', 'Chitkara University Baddi  kalu jhanda 173103', 'myadav');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
