-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2017 at 01:40 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feed`
--
CREATE DATABASE IF NOT EXISTS `feed` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `feed`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `des` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fullname` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fullname`, `contactnumber`, `username`, `password`) VALUES
('', '', 'malith', 'malith'),
('malith', '', '', ''),
('kalana', 'kalana', 'kalana', 'kalana'),
('malith', '077', 'madhura', 'madhura'),
('buddhi imesha', '0777', 'buddhi', 'buddhi'),
('kalana', '0777', 'kalana', 'kalana'),
('harindu', '0777123456', 'harindu', 'harindu');

-- --------------------------------------------------------

--
-- Table structure for table `kfc`
--

CREATE TABLE `kfc` (
  `product` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kfc`
--

INSERT INTO `kfc` (`product`, `des`, `price`) VALUES
('<img src ="img/kfc1.png" width="150" height="150"', 'Zinger Burger', '380'),
('<img src ="img/kfc2.jpg" width="150" height="150"', 'Chicken Grilled Bucket 8PC', '1900'),
('<img src ="img/kfc3.jpg" width="150" height="150"', 'Shrimp Star', '480'),
('<img src ="img/kfc4.jpeg" width="150" height="150"', 'Chicken Bucket 12 PC', '2400'),
('<img src ="img/kfc5.jpg" width="150" height="150"', 'Spicy Wings 20 PC', '1380');

-- --------------------------------------------------------

--
-- Table structure for table `mc`
--

CREATE TABLE `mc` (
  `product` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mc`
--

INSERT INTO `mc` (`product`, `des`, `price`) VALUES
('<img src ="img/mc1.png" width="150" height="150"', 'Happy Meal Rice-Chicken', '450'),
('<img src ="img/mc2.png" width="150" height="150"', 'Fries', '200'),
('<img src ="img/mc3.png" width="150" height="150"', 'Big Mac', '580'),
('<img src ="img/mc4.png" width="150" height="150"', 'Chicken McNuggets 9PC', '680'),
('<img src ="img/mc5.png" width="150" height="150"', 'McSpicy Chicken Rice', '370');

-- --------------------------------------------------------

--
-- Table structure for table `pizzahut`
--

CREATE TABLE `pizzahut` (
  `product` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizzahut`
--

INSERT INTO `pizzahut` (`product`, `des`, `price`) VALUES
('<img src ="img/pizza1.png" width="150" height="150"', 'Chocolate Melt Lava Cake', '240'),
('<img src ="img/pizza2.png" width="150" height="150"', 'Cheesy Garlic Bread ', '365'),
('<img src ="img/pizza3.png" width="150" height="150"', 'Chicken Bacon ', '940'),
('<img src ="img/pizza4.png" width="150" height="150"', 'Cheese Lovers ', '940'),
('<img src ="img/pizza5.png" width="150" height="150"', 'Devilled Chicken', '940');
--
-- Database: `feedme`
--
CREATE DATABASE IF NOT EXISTS `feedme` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `feedme`;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` varchar(29) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`pid`, `name`, `price`, `qty`) VALUES
('01', 'tea', '28', '20'),
('23', 'rwa', '2313', '3');
--
-- Database: `hela`
--
CREATE DATABASE IF NOT EXISTS `hela` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hela`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin123', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `itemid` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`itemid`, `pname`, `startdate`, `enddate`, `image`) VALUES
('I01', 'GreenTea pack(1KG)', '2017-01-01', '2017-01-31', '<img src ="images/tea1.jpg" width="100" height="100"'),
('I02', 'BackTea Pack(1KG)', '2017-01-01', '2017-01-31', '<img src ="images/tea2.jpg" width="100" height="100"'),
('I03', 'Hela Tae Tea Set ', '2017-01-01', '2017-01-31', '<img src ="images/tea3.jpg" width="100" height="100"');

-- --------------------------------------------------------

--
-- Table structure for table `biddetails`
--

CREATE TABLE `biddetails` (
  `bid` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biddetails`
--

INSERT INTO `biddetails` (`bid`, `itemid`, `image`, `user`) VALUES
('23', 'I01', '<img src =', 'malith'),
('45', 'I01', '<img src =', 'malith'),
('2300', 'I01', '<img src =', 'madhura');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `username` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL,
  `url` varchar(60) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`username`, `itemid`, `url`, `qty`) VALUES
('malith', 'I01', '<img src =', '32'),
('malith', 'I02', '<img src=', '45'),
('malith', 'I02', '<img src=', '65');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetails`
--

CREATE TABLE `cartdetails` (
  `itemid` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cartdetails`
--

INSERT INTO `cartdetails` (`itemid`, `qty`, `image`, `username`, `price`) VALUES
('I01', '55', '<img', 'kal', '1000'),
('I01', '56', '<img', 'kal', '1000'),
('I01', '44', '<img', 'kal', '1000'),
('I04', '3', '<img', 'buddhi', '2000'),
('I01', '4', '<img', 'malith', '1000'),
('I01', '54', '<img', 'malith', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fullname` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fullname`, `contactnumber`, `username`, `password`) VALUES
('malith', 'no 95', 'malith', 'malith'),
('', '', 'mal', 'mal'),
('teshani kusuma', '071355864', 'kusuraj97', 'kusuma'),
('malith', 'no 95', 'malith', 'malith'),
('', '', 'madhura', 'madhura'),
('kal', 'kal', 'kal', 'kal'),
('null', 'no', 'madhura', 'madhura'),
('null', 'buddhi', 'buddhi', 'buddhi'),
('null', 'new', 'new', 'new'),
('null', 'pathirana 1234', 'pathirana', 'pathirana'),
('null', 'madhura', 'madhura', 'madhura'),
('madhura', 'malith', 'malithmadhuranga', 'malithmadhuranga'),
('mal', 'mal', 'mali', 'mali'),
('kalani', 'kallll', 'kalani123', 'kalani123'),
('kkka', ';kja', 'kakka', 'kakka');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `message`) VALUES
('Malith Madhuranga', 'madhuranga@gmail.com', 'Cannot view items'),
('malith', 'feedback', 'feedback');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `itemid` varchar(20) NOT NULL,
  `des` varchar(50) NOT NULL,
  `availableqty` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`itemid`, `des`, `availableqty`, `url`, `price`) VALUES
('I01', 'GreenTea (1KG)', '100', '<img src ="images/tea1.jpg" width="100" height="100"', '1000'),
('I02', 'BlackTea (1KG)', '100', '<img src="images/tea2.jpg" width="100" height="100" ', '2000'),
('I03', ' HelaTae Tea Set', '100', '<img src ="images/tea3.jpg" width="100" height="100"', '5000'),
('I04', 'Orange flavored tea (1KG)', '100', '<img src ="images/tea4.jpg" width="100" height="100"', '2000'),
('08', 'm', 'm', 'm', '344'),
('srgs', '', '', '', ''),
('', 'malith', '09', 's577', ''),
('product', 'product', 'product', 'product', 'product'),
('product1', 'product2', 'product2', 'product2', 'product2'),
('product3', 'product3', 'product3', 'product3', 'product3');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`username`, `password`) VALUES
('staff', 'staff'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `itemid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`itemid`) VALUES
('I01'),
('I01'),
('I02');

-- --------------------------------------------------------

--
-- Table structure for table `usercart`
--

CREATE TABLE `usercart` (
  `username` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `imageurl` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercart`
--

INSERT INTO `usercart` (`username`, `itemid`, `qty`, `imageurl`) VALUES
('malith', 'I01', '32', '<img src ='),
('mal', 'I01', '3', '<img src ='),
('mal', 'I01', '44', '<img src ='),
('malith', 'I01', '', '<img src =');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist2`
--

CREATE TABLE `watchlist2` (
  `username` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL,
  `imageurl` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchlist2`
--

INSERT INTO `watchlist2` (`username`, `itemid`, `imageurl`) VALUES
('malith', 'I01', '<img src ='),
('malith', 'I02', '<img src='),
('malith', 'I01', '<img src ='),
('malith', 'I01', '<img src ='),
('malith', 'I01', '<img src ='),
('mal', 'I01', '<img src ='),
('malith', 'I01', '<img src ='),
('malith', 'I01', '<img src ='),
('madhura', 'I02', '<img src=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `itemid` (`itemid`);
--
-- Database: `helatae`
--
CREATE DATABASE IF NOT EXISTS `helatae` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `helatae`;
--
-- Database: `tea factory`
--
CREATE DATABASE IF NOT EXISTS `tea factory` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tea factory`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `username`, `itemid`) VALUES
('p01', 'malith', 'i01');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `fullname` varchar(50) NOT NULL,
  `contactnumber` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fullname`, `contactnumber`, `username`, `password`) VALUES
('malith madhuranga', '0777malith', 'malith', 'malith'),
('kamal', 'pamal', 'pamal', 'pamal'),
('madhura', '0777', 'madhura', 'madhura'),
('janith', '235423', 'gal', 'gal'),
('tiffany', '424', 'tiffany', 'tiffany'),
('harindu', '2394329', 'harindu', 'harindu'),
('malith', 'malith', 'kal', 'kal'),
('malith', '0487', 'gal', 'gal'),
('', '', '', ''),
('', '', '', ''),
('malith', '0087987', 'mal', 'mal'),
('', '', '', ''),
('malithmadhura', '098797', 'charith', 'charith');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `fullname` varchar(50) NOT NULL,
  `contactnumber` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`fullname`, `contactnumber`) VALUES
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `itemid` varchar(20) NOT NULL,
  `itemname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`itemid`, `itemname`) VALUES
('i01', 'tea'),
('i01', 'tea');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`username`, `password`) VALUES
('malith', 'malith'),
('jTextField1', 'jTextField2'),
('jTextField1gitu', 'jTextField2'),
('jjj', 'jTextField2'),
('mal', 'mal'),
('kkkk', 'jTextField2'),
('uuuu', 'jTextField2'),
('malith', 'lalith'),
('malith', 'mallll');
--
-- Database: `userdetails`
--
CREATE DATABASE IF NOT EXISTS `userdetails` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `userdetails`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
