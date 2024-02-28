-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 09:27 PM
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--S
-- Database: `new_e_market_place`
--

-- --------------------------------------------------------


--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Zik', 'muhammadzik124@gmail.com', '1234'),
(2, 'Maha', 'mahabaig7@gmail.com', '1234'),
(3, 'Shahliza', 'shahlizaahmed27@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productId` int(11) NOT NULL,
  `proName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `proPic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customerQty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `sId`, `productId`, `proName`, `proPic`, `price`, `size`, `customerQty`) VALUES
(19, 'tvfudko1opep0ci6g0f3h4ldaf', 17, 'Long Dress for Girl', '15189689721UGEDSEFN.jpg', 6000, 'Medium', 1),
(21, 'tvfudko1opep0ci6g0f3h4ldaf', 18, 'Navy blue t-shirt', '151897129113ZIZJNP5.jpg', 350, 'Large', 2),
(25, 'vdhe4099r0ha8vlb3huq663lag', 3, 'sweater for man', '1518640117DP.jpg', 500, 'Small', 1),
(37, 's69irrhc5tp9ibm54r3le10ri5', 19, 'Shirt for man', '15192239131A8LJPNK0.jpg', 600, 'Small', 1),
(39, '96uhjb4e9ok03mme96jm6b2i3l', 16, 'T-shirt for man blue', '15189673741NRJO577I.jpg', 350, 'Small', 1),
(41, 'mpeh0a7qn5s6cfsanfp2gptovj', 21, 'kids party dress', '15192322481MVGHSYR2.jpg', 1000, 'Small', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `SL` int(255) NOT NULL,
  `post_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`SL`, `post_id`, `email`, `name`, `comment`) VALUES
(34, 4, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'new comment'),
(35, 3, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'hello'),
(36, 4, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'hello2'),
(37, 2, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'yap'),
(38, 2, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'yap yap'),
(39, 3, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'hmmmm'),
(40, 5, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'No.'),
(41, 6, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'Yes'),
(42, 6, 'example@gmail.com', 'Someone', 'Yap bro.'),
(43, 7, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'Yes. There product is so nice.');

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `post_id` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `post_text` varchar(200) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`post_id`, `email`, `name`, `post_text`, `date`, `time`) VALUES
(2, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'This is a post.', '09/12/23', '12:55:59pm'),
(3, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'This is another post.', '09/12/23', '12:56:15pm'),
(4, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'hmmm', '09/12/23', '12:59:48pm'),
(5, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'Hello !!\r\nCan I pay by easypaisa?', '11/12/23', '09:46:44pm'),
(6, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'Is SwiftCart shipping in Swat?', '11/12/23', '11:23:28pm'),
(7, 'shahlizaahmed27@gmail.com', 'Shahliza Ahmed', 'Is the product of SwiftCart quality full?', '20/12/23', '10:33:50am');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_info`
--

CREATE TABLE `delivery_info` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cardNumber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `holderName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exDate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deliAddress` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delivery_info`
--

INSERT INTO `delivery_info` (`id`, `sId`, `card`, `cardNumber`, `holderName`, `exDate`, `sCode`, `name`, `email`, `deliAddress`, `phone`) VALUES
(52906700, 'uo0hsfrc7ng0a9afg7rocrh3tp', 'visa', '4146987456321456', 'Manto', '02/2026', '232', 'Manto', 'manto@gmail.com', 'Gulshan-e-Iqbal, Karachi', '03123456789'),
(322468051, 'nna91p3a0t1lou5do4igkej042', 'master', '4146987456321123', 'M Irfan', '32', '456', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'DHA, Lahore', '03214567890'),
(358180135, 'c75ikqk2elu5jku940438oedvb', 'visa', '4146985412365478', 'M Irfan', '02', '459', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'I-8, Islamabad', '03451234567'),
(418366133, 'c75ikqk2elu5jku940438oedvb', 'visa', '4146985412365478', 'M Irfan', '484', '459', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'Gulberg, Lahore', '03007894561'),
(668871983, 'c75ikqk2elu5jku940438oedvb', 'master', '4146741258963214', 'M Irfan', '02/26', '848', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'F-10, Islamabad', '03127894562'),
(1002115184, 'c75ikqk2elu5jku940438oedvb', 'visa', '4146987456321456', 'M Irfan', '64', '564', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'Clifton, Karachi', '03214567890'),
(1278926331, 'c75ikqk2elu5jku940438oedvb', 'amex', '4146321456987451', 'M Irfan', '484', '4888', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'Gulshan-e-Iqbal, Karachi', '03451234567'),
(1477111444, 'c75ikqk2elu5jku940438oedvb', 'visa', '4146985412365478', 'M Irfan', '02/21', '4598', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'I-9, Islamabad', '03127894562'),
(1561335873, 'c75ikqk2elu5jku940438oedvb', 'amex', '4146321456987451', 'M Irfan', '484', '4888', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'Gulberg, Lahore', '03007894561'),
(1825695665, 'nna91p3a0t1lou5do4igkej042', 'visa', '4146984578415478', 'M Irfan', '02/19', '325', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 'F-8, Islamabad', '03451234567'),
(2102457211, 'uo0hsfrc7ng0a9afg7rocrh3tp', 'amex', '371599107031520', 'M', '02/2021', '123', 'Manto', 'manto@gmail.com', 'Gulistan-e-Johar, Karachi', '03123456789');

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE `productlist` (
  `id` int(11) NOT NULL,
  `shopName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productPic` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productFor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sellerQuantity` int(11) DEFAULT NULL,
  `Day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boost` int(10) NOT NULL DEFAULT '0',
  `keyword` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productlist`
--

INSERT INTO `productlist` (`id`, `shopName`, `email`, `productPic`, `productFor`, `productName`, `description`, `price`, `quantity`, `sellerQuantity`, `Day`, `Month`, `Year`, `boost`, `keyword`) VALUES
(3, 'Pick n Pay', 'mahabaig7@gmail.com', '1518640117DP.jpg', 'Men\'s Fashion', 'sweater for man', 'Off blue sweater for man \r\nFull cotton.\r\nAll size available.', 500, 12, 12, '20', '3', '2018', 1, 'mensmansboysmales'),
(16, 'Pick n Pay', 'mahabaig7@gmail.com', '15189673741NRJO577I.jpg', 'Men\'s Fashion', 'T-shirt for man blue', 'Blue  t-shirt for man - special Edition', 350, 3, 3, '30', '11', '19', 1, 'mensmansboysmales'),
(17, 'Apple ', 'shahlizaahmed27@gmail.com', '15189689721UGEDSEFN.jpg', 'Women\'s Fashion', 'Long Dress for Girl', 'Special Edition Long Dress for women', 7000, 10, 5, '21', '3', '2018', 0, 'womenswomansgirlsfemales'),
(18, 'Apple ', 'shahlizaahmed27@gmail.com', '151897129113ZIZJNP5.jpg', 'Men\'s Fashion', 'Navy blue t-shirt', 'Half sleeve t-shirt for man', 450, 14, 7, '20', '3', '2018', 1, 'mensmansboysmales'),
(19, 'Yummy', 'any@gmail.com', '15192239131A8LJPNK0.jpg', 'Men\'s Fashion', 'Shirt for man', 'Long sleeve formal Shirt for man - Special Edition.\r\nSize : M, S, L and XL available.\r\n', 600, 7, 9, '21', '3', '2018', 1, 'mensmansboysmales'),
(20, 'Pick n Pay', 'mahabaig7@gmail.com', '151923159514FWA29ML.jpg', 'Men\'s Fashion', 'Black formal shirt for man', 'Full sleeve Black  shirt for man - Limited Edition.\r\nfull cotton. \r\nSize  : M, S, L, XL available.', 650, 12, 10, '21', '3', '2018', 0, 'mensmansboysmales'),
(21, 'Pick n Pay', 'mahabaig7@gmail.com', '15192322481MVGHSYR2.jpg', 'Baby\'s Fashion', 'kids party dress', 'Beautiful party dress for children.\r\nComfortable. \r\nSize available.', 1000, 12, 2, '21', '3', '2018', 1, 'childrentoybaby'),
(24, 'Apple ', 'shahlizaahmed27@gmail.com', '15215283231L3XCNF23.jpg', 'Men\'s Fashion', 'T-Shirt', 'Gray color T-Shirt for man.', 320, 15, 7, '20', '3', '2018', 0, 'mensmansboysmales'),
(25, 'Apple ', 'shahlizaahmed27@gmail.com', '1521537526oppo As7.jpg', 'Phone and Tablets', 'Oppo A57', 'GENERAL:\r\nRelease date:	November 2016\r\nForm factor:	Touchscreen\r\nDimensions (mm):	149.10 x 72.90 x 7.65\r\nWeight (g)	:  147.00\r\nBattery capacity (mAh):	2900\r\nRemovable battery:	No\r\nColors:	Rose Gold, Gold\r\n\r\nDISPLAY:\r\nScreen size (inches):	5.20\r\nTouchscreen:	Yes\r\nResolution:	720x1280 pixels\r\n\r\nHARDWARE:\r\nProcessor:	1.4GHz octa-core\r\nProcessor make:	Qualcomm Snapdragon 435\r\nRAM:	3GB\r\nInternal storage:	32GB\r\nExpandable storage:	Yes\r\nExpandable storage type:	microSD\r\nExpandable storage up to (GB):	2', 18990, 7, 4, '20', '3', '2018', 0, 'phonemobilembltablet'),
(26, 'Apple ', 'shahlizaahmed27@gmail.com', '1521538743iphonex.png', 'Phone and Tablets', 'iPhone X', 'Display	5.8-inch (diagonal) all-screen OLED Multi-Touch display\r\nOS	iOS 11\r\nCamera	Primary- Dual 12 MP,secondary-7 MP\r\nCPU	Hexa-core\r\nBATTERY	Non-removable Li-Ion battery\r\nRAM	3GB\r\nROM	64/256 GB\r\nSensor	Face ID\r\nBarometer\r\n\r\nThree-axis gyro\r\n\r\nAccelerometer\r\n\r\nProximity sensor\r\n\r\nAmbient light sensor', 94476, 10, 0, '25', '03', '18', 1, 'phonemobilembltablet'),
(27, 'Apple ', 'shahlizaahmed27@gmail.com', '1521564374basketball.jpg', 'Sports and Travels', 'Basket Ball', 'Orange color Basket Ball.', 350, 6, 6, '24', '03', '18', 0, 'sportstravelsbastektballcricketbatfootball'),
(28, 'Apple ', 'shahlizaahmed27@gmail.com', '1521564673cricketbat.jpg', 'Sports and Travels', 'Cricket Bat', 'MRF cricket bat.', 550, 11, 11, '24', '03', '18', 0, 'sportstravelsbastektballcricketbatfootball'),
(29, 'Apple ', 'shahlizaahmed27@gmail.com', '1521603328mi 4x.jpg', 'Phone and Tablets', 'Mi 4x', 'Mi 4x\r\nRam: 2GB.\r\nStorage: 32GB.\r\nCamera: Rear: 13mp and Front: 5mp.', 10400, 6, NULL, NULL, NULL, NULL, 0, 'phonemobilembltablet'),
(30, 'Boi Bhandar', 'zik2319@gmail.com', '157505681658542854_172413980341936_1181573764014407680_n.jpg', 'Others', 'Digital Image Processing [News]', 'Writer: Rafeal C.\r\nEdition: 12th.\r\nNews print.', 180, 10, NULL, NULL, NULL, NULL, 0, 'othersbook'),
(33, 'Boi Bhandar', 'zik2319@gmail.com', '157500947351417385_621294401655199_936946187909464064_o.jpg', 'Others', 'Cracking the Coding Interview', 'Author: Gayle Laakmann.\r\nEdition: 6th.', 320, 18, 18, '30', '11', '19', 0, 'othersbook');

-- --------------------------------------------------------


--
-- Table structure for table `sellerinfo`
--

CREATE TABLE `sellerinfo` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seller_photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `seller_cnic` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellerinfo`
--
INSERT INTO `sellerinfo` (`email`, `address`, `category`, `postal_code`, `seller_photo`, `seller_cnic`) VALUES
('zik2319@gmail.com', 'Karimabad, Karachi', 'Book', '75300', '1575008645logo.png', '1575008645Picture1.png'),
('mahabaig7@gmail.com', 'Gulshan-e-Iqbal, Karachi', 'Apparel', '75300', '1518968495DP.jpg', '1518968495allah.jpg'),
('shahlizaahmed27@gmail.com', 'Liberty Market, Lahore', 'Apparel', '54000', '1521524648IMG_5319.JPG', '1521524648IMG_6344.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `store` int(100) NOT NULL DEFAULT '0',
  `store_id` bigint(20) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_banner` varchar(200) NOT NULL,
  `store_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`email`, `store`, `store_id`, `store_name`, `store_banner`, `store_description`) VALUES
('zik2319@gmail.com', 1, 1305742819, 'Boi Bhandar', '1575008645fb_banner_2.png', 'Book Shop'),
('shahlizaahmed27@gmail.com', 2, 1476664186, 'Apple ', '1521524648IMG_2185.JPG', 'Store Store Store Store Store Store'),
('mahabaig7@gmail.com', 3, 1894735621, 'Pick n Pay', '1518968495banner 2.jpg', 'Pick n Pay offers customers fantastic quality clothing at the best prices. There is something for everyone in the family, from mom and dad to brother, sister and even baby.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `account_type` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--
INSERT INTO `users` (`account_type`, `name`, `email`, `phone`, `password`, `gender`, `hash`, `active`) VALUES
('Business', 'Zikrullah Rehman', 'zik2319@gmail.com', 03123456789, '$2y$10$BHzIm9zXbMx2MwXL0Ko4m.QF0WFMIuVwbo67.aPl3i3/99oPrDcnK', 'Male', '49182f81e6a13cf5eaa496d51fea6406', 1),
('Business', 'Maha', 'mahabaig7@gmail.com', 03212345678, '$2y$10$YL2xbi6U/xlofB2QTGcNAeSexqqbPvfEj.NNwhdFk1LgflK4uVfR.', 'Female', '846c260d715e5b854ffad5f70a516c88', 1),
('Business', 'Shahliza Ahmed', 'shahlizaahmed27@gmail.com', 03007894561, '$2y$10$1GeAYs9VB4GFU.jyNiqAg.FddlzqJfHfMbajh5jzRQ0VYf0.tAhEu', 'Female', '9f53d83ec0691550f7d2507d57f4f5a2', 1),
('Personal', 'Someone', 'example@gmail.com', 03012345678, '$2y$10$mXqaLULY6OmVEQwQJ97FLuyrlzcNjkbjR1722aCVh0aY16Eg9O.rW', 'Male', 'e2c0be24560d78c5e599c2a9c9d0bbd2', 0),
('Personal', 'Manto', 'manto@gmail.com', 03184958585, '$2y$10$Amn8BHGLbP9b3j8pWYwsJu5786FhHPvxzLZhQUKCHxfUvw.mGVA92', 'Male', '310dcbbf4cce62f762a2aaa148d556bd', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`SL`);
  
ALTER TABLE `comment`
ADD CONSTRAINT `fk_comment_community`
FOREIGN KEY (`post_id`)
REFERENCES `community` (`post_id`);

ALTER TABLE `comment`
ADD CONSTRAINT `fk_comment_users_email`
FOREIGN KEY (`email`)
REFERENCES `users` (`email`);

ALTER TABLE `comment`
ADD CONSTRAINT `fk_comment_users_name`
FOREIGN KEY (`name`)
REFERENCES `users` (`name`);


--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`post_id`);

ALTER TABLE `community`
ADD CONSTRAINT `fk_community_users`
FOREIGN KEY (`email`)
REFERENCES `users` (`email`);

--
-- Indexes for table `delivery_info`
--
ALTER TABLE `delivery_info`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `delivery_info`
ADD CONSTRAINT `fk_deliveryinfo_cart`
FOREIGN KEY (`sId`)
REFERENCES `cart` (`sId`);

ALTER TABLE `delivery_info`
ADD CONSTRAINT `fk_deliveryinfo_users_email`
FOREIGN KEY (`email`)
REFERENCES `users` (`email`);

ALTER TABLE `delivery_info`
ADD CONSTRAINT `fk_deliveryinfo_users_phone`
FOREIGN KEY (`phone`)
REFERENCES `users` (`phone`);

--
-- Indexes for table `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `productlist`
ADD CONSTRAINT `fk_productlist_store_email`
FOREIGN KEY (`email`)
REFERENCES `store` (`email`);

ALTER TABLE `productlist`
ADD CONSTRAINT `fk_productlist_store_name`
FOREIGN KEY (`store_name`)
REFERENCES `store` (`store_name`);


--
-- Indexes for table `sellerinfo`
--
ALTER TABLE `sellerinfo`
  ADD PRIMARY KEY (`email`);
  
ALTER TABLE `sellerinfo`
ADD CONSTRAINT `fk_sellerinfo_user`
FOREIGN KEY (`email`)
REFERENCES `users` (`email`);


--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);
  
ALTER TABLE `store`
ADD CONSTRAINT `fk_store_sellerinfo`
FOREIGN KEY (`email`)
REFERENCES `sellerinfo` (`email`);


--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

ALTER TABLE `users` ADD INDEX (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `SL` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `productlist`
--
ALTER TABLE `productlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

-- --------------------------------------------------------
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
