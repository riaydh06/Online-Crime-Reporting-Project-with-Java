-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2017 at 09:36 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ohsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `complain_table`
--

CREATE TABLE `complain_table` (
  `complain_id` int(11) NOT NULL,
  `username` varchar(54) NOT NULL,
  `complain_title` varchar(54) NOT NULL,
  `complain_description` varchar(500) NOT NULL,
  `venue` varchar(54) NOT NULL,
  `image_name` varchar(200) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain_table`
--

INSERT INTO `complain_table` (`complain_id`, `username`, `complain_title`, `complain_description`, `venue`, `image_name`, `status`) VALUES
(41, 'nasim', 'Hijack', 'Hijack pubkkklhj', 'dinajpur', '', 'Approved'),
(42, 'nasim', 'Kidnapping', 'kihvajhdfjgfajdda', 'dinajpur', '', 'Approved'),
(44, 'jobayersozib', 'Harresment in passport office', 'complain description', 'Bogra passport office', '2.jpg', 'Approved'),
(45, 'jobayersozib', 'New complain', 'My new complain', 'Bogra police line', '', 'Approved'),
(46, 'jobayermahamud', 'Harresment in passport office', 'khjdkjhjfkh', 'Bogra passport office', '1.jpg', 'Approved'),
(47, 'jobayersozib', 'ghjgjhgjhgjg', 'gjhgjhgjhg', 'ghjghjgjhgjh', '', 'Approved'),
(48, 'jobayersozib', 'Harresment in passport office', 'hjfghfgh', 'Bogra passport office', '2.jpg', 'Approved'),
(52, 'jobayersozib', 'title', 'description', 'venue', 'img', 'Approved'),
(53, 'jobayersozib', 'title', 'description', 'venue', 'img', 'Approved'),
(54, 'jobayersozib', 'title', 'description', 'venue', 'img', 'Approved'),
(55, 'jobayersozib', 'title', 'description', 'venue', 'img', 'Approved'),
(56, 'jobayersozib', 'File uploded', 'description', 'venue', 'img', 'Approved'),
(57, 'jobayersozib', 'out', 'description', 'venue', 'img', 'Pending'),
(58, 'jobayersozib', 'jhdjh', 'description', 'venue', 'img', 'Pending'),
(59, 'jobayersozib', 'jhdjh', 'description', 'venue', 'img', 'Pending'),
(60, 'jobayersozib', 'title', 'description', 'venue', 'img', 'Approved'),
(61, 'jobayersozib', 'hgjhgh', 'description', 'venue', '1.jpg', 'Pending'),
(62, 'jobayersozib', 'hgjhgh', 'description', 'venue', '3.jpg', 'Pending'),
(63, 'jobayersozib', 'final ', 'jgjhghjgjhgjhgjhg', 'Bogra passport office', '1.jpg', 'Pending'),
(65, 'jobayersozib', 'kjghkjfhgkjfh', 'oiugifugoidf', 'dfijfgj', 'banner.jpg', 'Pending'),
(66, 'sohag', 'hijack', 'deails hijack', 'baserha', 'crime-banner.jpg', 'Pending'),
(67, 'riad', '33', 'dee', 'eewew', 'Sgr-Riaydh-980392028756474_future.jpg', 'Pending'),
(68, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(69, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(70, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(71, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(72, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(73, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(74, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(75, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(76, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(77, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(78, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(79, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(80, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(81, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(82, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(83, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(84, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(85, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(86, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(87, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(88, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(89, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(90, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(91, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(92, 'jobayermahamud', 'fdkfgkl', 'mjewrhywe', 'wehjrgewjhr', 'social-icons.jpg', 'Pending'),
(93, 'riad', 'reuyuyeru', 'urhgugry', 'dhfgbhbhdf', 'ME.png', 'Pending'),
(94, 'riad', '353535', 'Bullying might happen once or over and over again. If bullying includes physical or sexual harm or damage to property, makes you feel intimidated or afraid to go to school, or disrupts the regular school day in a threatening , it is probably also assault or harassment. These behaviors are against school rules and many are also', '355353', '12370_1097018120311319_9095649233584266725_n.jpg', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `registration_table`
--

CREATE TABLE `registration_table` (
  `name` varchar(54) NOT NULL,
  `username` varchar(54) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(20) NOT NULL,
  `retypepassword` varchar(20) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `user_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_table`
--

INSERT INTO `registration_table` (`name`, `username`, `email`, `password`, `retypepassword`, `mobile`, `address`, `user_type`) VALUES
('jobayer', 'jobayermahamud', 'riaydh06@gmail.com', '1234', '1234', '01717979764', 'Bogra', 'General'),
('jobayer mahamud kamal', 'jobayersozib', 'riaydh06@gmail.com', '1234', '1234', '01717979764', 'Bogra', 'Admin'),
('nasim vai poo', 'nasim', 'huzzatul22@gmail.com', '1234', '12345', '9869697436', 'Bogra', 'Admin'),
('riad', 'riad', 'riaydh06@gmail.com', '1234', '1234', '34334', 'dfdfdf', 'General'),
('sohag', 'sohag', 'riaydh06@gmail.com', '4567', '4567', '34334', 'birganj', 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain_table`
--
ALTER TABLE `complain_table`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `registration_table`
--
ALTER TABLE `registration_table`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complain_table`
--
ALTER TABLE `complain_table`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
