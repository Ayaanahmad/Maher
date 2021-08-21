-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 02:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maher`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(1, 1, 'abcd', '', 0, '', ''),
(2, 8, 'abcd', '', 0, '', ''),
(3, 1, 'abcd', '', 0, '', ''),
(4, 8, 'abcd', '', 0, '', ''),
(5, 1, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(6, 8, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(7, 1, 'abcd', '', 0, '', ''),
(8, 8, 'abcd', '', 0, '', ''),
(9, 1, 'abcd', '', 0, '', ''),
(10, 8, 'abcd', '', 0, '', ''),
(11, 1, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(12, 8, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(13, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(14, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(15, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(16, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(17, 1, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(18, 8, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(19, 1, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(20, 8, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(21, 1, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(22, 8, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(23, 11, 'admin', 'hello', 8978678909, 'h@yyy.com', 'jas skkslks kslda');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'Gravy', 'Raita'),
(2, 'Gravy', 'Masala Bhindi'),
(3, 'Gravy', 'Paneer Masala'),
(4, 'Gravy', 'Samaosa Chaat'),
(5, 'Gravy', 'Mung Bean Dal'),
(6, 'Gravy', 'Chole Chana Masala'),
(7, 'Gravy', 'Dal Makhani'),
(8, 'Bihari', 'Litti'),
(9, 'Bihari', 'Dal'),
(10, 'Bihari', 'Salad'),
(11, 'Bihari', 'Butter Milk'),
(12, 'Bihari', 'Ghee'),
(13, 'Bihari', 'Papad'),
(14, 'Bihari', 'Chole Bhature'),
(15, 'Rice', 'Dal Rice'),
(16, 'Rice', 'Khichdi'),
(17, 'Rice', 'Tomato Rice'),
(18, 'Rice', 'Pulao'),
(19, 'Tava', 'Chapatti'),
(20, 'Tava', 'Ghee Chapatti'),
(21, 'Tava', 'Bajra Chapatti'),
(22, 'Tava', 'Ghee Bajra Chapatti'),
(23, 'Tava', 'Corn flour Chapatti'),
(24, 'Tava', 'Ghee Corn flour Chapatti'),
(25, 'Tava', 'Tava Paratha');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(4, 'img/5e39236bc4b7bc0c2bb659c7_1580802923546.jpg'),
(5, 'img/the-gujarati-thali-served.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO 'menu' (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(1, 'Gravy', 'Raita', 'Raita', 'Made with Boondi and Curd with special masala', 40, 'mimg/e7e0aa16c95cca7deae0e222e8794bb5.jpg'),
(2, 'Gravy', 'Masala Bhindi', 'Masala Bhindi', 'Lady finger filled with masala and deep fried.', 30, 'mimg/1bhindi.jpg'),
(3, 'Gravy', 'Paneer Masala', 'Paneer Masala', 'Fried paneer cube dipped in gravy.', 40, 'mimg/hqdefault.jpg'),
(4, 'Gravy', 'Samosa Chaat', 'Samosa Chaat', 'Samosa mashed with vegies in chole chana gravy.', 30, 'mimg/Samosa Chaat.jpg'),
(5, 'Gravy', 'Mung Bean Dal', 'Mung Bean Dal', 'Boiled Mung Bean dipped in gravy', 30, 'mimg/mag masala.jpg'),
(6, 'Gravy', 'Chole Chana Masala', 'chole chana Masala', 'Boiled Chole Chana Made with tomatoes, onions and chole masala.', 30, 'mimg/chana-masala-recipe.jpg'),
(7, 'Gravy', 'Dal Makhani', 'Dal Makhani', 'Adad dal with butter.', 30, 'mimg/bati.jpg'),
(8, 'Bihari', 'Dal', 'Dal', 'Dal to eat with rice', 30, 'mimg/dal-fry-recipe-1.jpg'),
(9, 'Bihari', 'Salad', 'Salad', 'Mixture of onion, tomatoes, cucumber, pomegranate', 15, 'mimg/best-salad-7.jpg'),
(10, 'Bihari', 'Butter Milk', 'Butter milk', 'Butter milk garnished with pudina', 15, 'mimg/Masala-Chaas-Recipe.jpg'),
(11, 'Bihari', 'Ghee', 'Ghee', 'Ghee made by milk.', 15, 'mimg/260px-Butterschmalz-3.jpg'),
(12, 'Bihari', 'Papad', 'Papad', 'Made with urad dal.', 15, 'mimg/papad.jpg'),
(13, 'Tava', 'Chapatti', 'Chapatti', 'Chapatti made with Wheat flour', 20, 'mimg/rotli-2-960x1358.jpg'),
(14, 'Tava', 'Ghee Chapatti', 'Ghee Chapatti ', 'Ghee added on the top of chappatti', 20, 'mimg/desi_ghee_roti-e1542006374654.jpg'),
(15, 'Tava', 'Bajra Chapatti', 'Bajra Chapatti', 'Chappatti made with the bajra flour', 20, 'mimg/rotla_dsc2818-(16)-9-186406.jpg'),
(16, 'Tava', 'Corn flour Chapatti', 'Corn flour Chapatti', 'Corn flour Chapatti make by wheet lot', 20, 'mimg/jowar-bhakri-recipe-main-photo.jpg'),
(17, 'Tava', 'Ghee Bajra Chapatti', 'Ghee Bajra Chapatti', 'Ghee added on the top of chapatti', 20, 'mimg/blogger-image--689930619.jpg'),
(18, 'Tava', 'Ghee Corn flour Chapatti', 'Ghee Corn flour Chapatti', 'Ghee added on the top of chapatti.', 20, 'mimg/Bhakri_1.jpg'),
(19, 'Tava', 'Tava Paratha', 'Tava paratha', 'Paratha is made by the wheat flour', 20, 'mimg/Tawa_Paratha_Recipe-7956.jpg'),
(20, 'Rice', 'Dal Rice', 'Dal rice', 'Lunch', 30, 'mimg/DSC_0870.jpg'),
(21, 'Rice', 'Khichdi', 'Khichdi', 'khichdi served with dal.', 25, 'mimg/kadhi khichadi.jpg'),
(22, 'Rice', 'Tomato Rice', 'Tomato Rice', 'Tomato puree added in oil-fried rice.', 25, 'mimg/vagharela-bhaat-6.jpg'),
(23, 'Rice', 'Pulao', 'Pulao', 'Vegies added in the rice.', 25, 'mimg/rajwadi-khichdi-recipe-main-photo.jpg'),
(24, 'Bihari', 'Chole Bhature', 'Chole Bhature', 'Chole chana served with Puri.', 40, 'mimg/chole bhature.jpg'),
(25, 'Bihari', 'Litti', 'Litti','Flour stuffed with chana powder and baked on coal', 30, 'mimg/bati.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Milan vagh', 'Exellent', 'best hotel oh gujarat'),
(6, 'naimish gadhiya', 'Exellent', 'abcdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
