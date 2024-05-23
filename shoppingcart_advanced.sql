-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2020 at 07:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart_advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address_street` varchar(255) NOT NULL,
  `address_city` varchar(100) NOT NULL,
  `address_state` varchar(100) NOT NULL,
  `address_zip` varchar(50) NOT NULL,
  `address_country` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `password`, `first_name`, `last_name`, `address_street`, `address_city`, `address_state`, `address_zip`, `address_country`, `admin`) VALUES
(1, 'admin@fyp.com', '$2y$10$B0dK4RodNBdKCi3oC/srDeXdi53iV2RaAtYfL47mF5VXPEEaCTfuG', 'Foong', 'Tze Hing', 'testing', 'testing', 'testing', '43000', 'Malaysia', 1),
(4, 'fzh200017@gmail.com', '$2y$10$nAX4CykXuGfOlcDPlLrAVei2rKBGtPWYb0MkZ2KGhE7PeHnPRkwlK', 'Foong', 'Tze Hing', 'Sb0612 Taman Bukit Kenangan View Apt', 'Kajang', 'Selangor', '43000', 'Malaysia', 0),
(5, 'pafmkt@gmail.com', '$2y$10$f0rILyRKkxBj.OzFz0bfIuR/BAXx3DtHIiwTq0TsVT.sEf0m1zoky', 'NG', 'LAN', 'sb06/12 kenangan view apt,jln bkt kenanga, kajang', 'kajang', 'Selangor', '43000', 'Afghanistan', 0),
(6, 'foongtzehing17@gmail.com', '$2y$10$7BGUxejTrsGSA.95jRKrbOPFg0kgBabS0paFCwSYrgoKlf3nzynR.', 'Foong', 'Tze Hing', 'Sb0612 Taman Bukit Kenangan View Apt', 'Kajang', 'Selangor', '43000', 'Malaysia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Hot Sale'),
(2, 'Flatbun'),
(3, 'Steamed Bun'),
(4, 'Dim Sum'),
(5, 'Finger Food');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Roti Pratha (5pcs x 400gm)', '<p>Crispy and fluffy layered pancake.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '5.20', '5.90', 94, 'pratha.jpg', '2020-03-13 17:55:22'),
(2, 'Chicken Siew Mai (10pcs x 25gm)', '<p>Steamed chicken meat dumpling wrapped in wheat pastry and garnished with Sago.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n</ul>', '8.90', '9.40', 17, 'siewmai.jpeg', '2020-03-13 18:52:49'),
(3, 'Red Bean Steam Bun (6pcs x 360gm)', '<p>Fluffy steamed dough stuffed with a sweet red bean filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '5.80', '0.00', 47, 'redbeanbun.jpeg', '2020-10-27 21:47:45'),
(4, 'Keropok Lekor (500gm)', '<p>Deep fried fish and flour sausage. A traditional snack in Malaysia.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '5.90', '6.20', 3, 'keropok.jpeg', '2020-03-14 17:42:04'),
(5, 'Roti Canai (5pcs x 450gm)', '<p>Doughy and fluffy layered pancake. In the signature style of Malaysian ‘Mamak’ restaurants.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '8.00', '0.00', 0, 'roticanai.jpeg', '2020-10-27 21:54:59'),
(6, 'Pandan Coconut Steam Bun (6pcs x 360gm)', '<p>Fluffy steamed dough stuffed with a sweet pandan coconut filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Cook From Frozen</li>\r\n</ul>', '6.00', '6.30', 500, 'pandan coconut bun.jpeg', '2020-10-27 14:36:34'),
(7, 'Curry Puff (16pcs x 25gm)', '<p>Flakey, hand wrapped, miniature pastry pies with a curried potato filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n</ul>', '8.90', '9.40', 25, 'currypuff.jpeg', '2020-10-28 17:40:23'),
(8, 'Roti Bawang (5pcs x 400gm)', '<p>Doughy and fluffy layered pancake folded with onion. In the signature style of Malaysian ‘Mamak’ restaurants.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '5.70', '6.00', 40, 'rotibawang.jpeg', '2020-10-29 05:17:02'),
(9, 'Roti Chapati (10pcs x 400gm)', '<p>Unleavened pancake.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '5.20', '5.50', 100, 'champati.jpeg', '2020-10-29 05:18:47'),
(10, 'Tandoori Naan (4pcs x 300gm)', '<p>Doughy and soft flame-baked flatbread.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '8.90', '9.40', 50, 'naan.jpeg', '2020-10-29 05:19:56'),
(11, 'Mantou (8pcs x 50gm)', '<p>Fluffy steamed dough buns rolled into a spiral.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n</ul>', '4.80', '0.00', 1, 'mantou plain.jpeg', '2020-10-29 05:22:34'),
(12, 'Sandwich Bun (10 pcs x 250gm)', '<p>Fluffy steamed dough sandwich buns.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n</ul>', '5.20', '5.50', 56, 'sandwich bun.jpeg', '2020-10-29 05:28:36'),
(13, 'Spring Roll Vegetable (20pcs x 400gm)', '<p>Crispy, hand wrapped pastry rolls with a vegetable filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n</ul>', '10.40', '11.00', 1, 'spring roll.jpeg', '2020-10-29 05:34:30'),
(14, 'Sesame Ball (10pcs x 20gm)', '<p>Chewy rice flour balls with filling and a crispy sesame seed exterior.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n</ul>', '6.40', '0.00', 49, 'sesame red bean.jpeg', '2020-10-29 05:38:26'),
(15, 'Curry Chichen Steam Bun (6pcs x 80gm)', '<p>Fluffy steamed dough stuffed with curry chicken filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '9.90', '0.00', 50, 'steambun curry chicken.jpeg', '2020-10-29 05:41:17'),
(16, 'Rendang Chicken Steam Bun', '<p>Fluffy steamed dough stuffed with rendang chicken filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>No Cooking Oil Required</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n<li>Artificial Flavouring Free</li>\r\n</ul>', '9.90', '0.00', 48, 'rendang chichek steam bun.jpeg', '2020-10-29 05:43:46'),
(17, 'Curry Potato Samosa', '<p>Crispy, hand wrapped pastry triangles with a curry potato filling.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Vegetarian & Vegan Friendly</li>\r\n<li>Cook From Frozen</li>\r\n<li>Artificial Preservative Free</li>\r\n<li>Artificial Colouring Free</li>\r\n</ul>', '10.40', '11.00', 80, 'samosa.jpeg', '2020-10-29 05:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `product_id`, `category_id`) VALUES
(6, 0, 1),
(29, 0, 2),
(5, 0, 3),
(70, 0, 4),
(18, 0, 5),
(4, 1, 1),
(2, 1, 2),
(1, 2, 1),
(12, 2, 4),
(10, 3, 1),
(9, 3, 3),
(13, 4, 5),
(16, 5, 1),
(17, 5, 2),
(47, 6, 1),
(48, 6, 3),
(58, 7, 1),
(59, 7, 5),
(62, 8, 1),
(63, 8, 2),
(64, 9, 2),
(33, 10, 2),
(67, 11, 3),
(39, 12, 3),
(82, 13, 5),
(81, 14, 4),
(76, 15, 3),
(84, 17, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `img`) VALUES
(72, 1, 'pratha.jpg'),
(76, 2, 'siewmai.jpeg'),
(75, 3, 'redbeanbun.jpeg'),
(77, 4, 'keropok.jpeg'),
(79, 5, 'roticanai.jpeg'),
(142, 6, 'pandan coconut bun.jpeg'),
(80, 7, 'currypuff.jpeg'),
(88, 8, 'rotibawang.jpeg'),
(89, 9, 'champati.jpeg'),
(90, 10, 'naan.jpeg'),
(92, 11, 'mantou pandan.jpeg'),
(91, 11, 'mantou plain.jpeg'),
(93, 11, 'pandan choco.jpeg'),
(98, 12, 'sandwich bun.jpeg'),
(122, 13, 'spring roll.jpeg'),
(123, 14, 'sesame lotus.jpeg'),
(124, 14, 'sesame pandan.jpeg'),
(125, 14, 'sesame red bean.jpeg'),
(126, 15, 'steambun curry chicken.jpeg'),
(130, 16, 'rendang chichek steam bun.jpeg'),
(137, 17, 'samosa.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`id`, `title`, `name`, `price`, `product_id`) VALUES
(53, 'Flavor', 'Plain', '4.80', 11),
(54, 'Flavor', 'Pandan', '4.80', 11),
(55, 'Flavor', 'Chocolate', '4.80', 11),
(56, 'Flavor', 'Red Bean', '6.40', 14),
(57, 'Flavor', 'Lotus', '6.40', 14),
(58, 'Flavor', 'Pandan Coconut', '6.40', 14);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  `payer_email` varchar(255) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `address_street` varchar(255) NOT NULL DEFAULT '',
  `address_city` varchar(100) NOT NULL DEFAULT '',
  `address_state` varchar(100) NOT NULL DEFAULT '',
  `address_zip` varchar(50) NOT NULL DEFAULT '',
  `address_country` varchar(100) NOT NULL DEFAULT '',
  `account_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL DEFAULT 'website'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `txn_id`, `payment_amount`, `payment_status`, `created`, `payer_email`, `first_name`, `last_name`, `address_street`, `address_city`, `address_state`, `address_zip`, `address_country`, `account_id`, `payment_method`) VALUES
(14, 'SC5F981974CB436A2716', '19.99', 'Completed', '2020-10-27 13:58:28', 'pafmkt@gmail.com', 'NG', 'LAN', 'sb06/12 kenangan view apt,jln bkt kenanga, kajang', 'kajang', 'Selangor', '43000', 'Afghanistan', 2, 'website'),
(15, 'SC5F9820B9890319EC97', '19.99', 'Completed', '2020-10-27 14:29:29', 'admin@fyp.com', 'Foong', 'Tze Hing', 'testing', 'testing', 'testing', '43000', 'Malaysia', 1, 'website'),
(16, 'SC5F982992581E7C02A2', '11.70', 'Completed', '2020-10-27 15:07:14', 'fzh200017@gmail.com', 'Foong', 'Tze Hing', 'Sb0612 Taman Bukit Kenangan View Apt', 'Kajang', 'Selangor', '43000', 'Malaysia', 4, 'website'),
(17, 'SC5F9829A3D7D6536EC4', '5.80', 'Completed', '2020-10-27 15:07:31', 'fzh200017@gmail.com', 'Foong', 'Tze Hing', 'Sb0612 Taman Bukit Kenangan View Apt', 'Kajang', 'Selangor', '43000', 'Malaysia', 4, 'website'),
(18, 'SC5F9838F48811C96D07', '5.80', 'Completed', '2020-10-27 16:12:52', 'pafmkt@gmail.com', 'NG', 'LAN', 'sb06/12 kenangan view apt,jln bkt kenanga, kajang', 'kajang', 'Selangor', '43000', 'Afghanistan', 5, 'website'),
(19, 'SC5F9A4BB54A0E75C024', '9.90', 'Completed', '2020-10-29 05:57:25', 'foongtzehing17@gmail.com', 'Foong', 'Tze Hing', 'Sb0612 Taman Bukit Kenangan View Apt', 'Kajang', 'Selangor', '43000', 'Malaysia', 6, 'website'),
(20, 'SC5F9A64E0DC72982572', '16.30', 'Completed', '2020-10-29 07:44:48', 'admin@fyp.com', 'Foong', 'Tze Hing', 'testing', 'testing', 'testing', '43000', 'Malaysia', 1, 'website');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_items`
--

CREATE TABLE `transactions_items` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` decimal(7,2) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_options` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions_items`
--

INSERT INTO `transactions_items` (`id`, `txn_id`, `item_id`, `item_price`, `item_quantity`, `item_options`) VALUES
(20, 'SC5F981974CB436A2716', 2, '19.99', 1, 'Size-L'),
(21, 'SC5F9820B9890319EC97', 3, '19.99', 1, ''),
(22, 'SC5F982992581E7C02A2', 3, '5.80', 1, ''),
(23, 'SC5F982992581E7C02A2', 4, '5.90', 1, ''),
(24, 'SC5F9829A3D7D6536EC4', 3, '5.80', 1, ''),
(25, 'SC5F9838F48811C96D07', 3, '5.80', 1, ''),
(26, 'SC5F9A4BB54A0E75C024', 16, '9.90', 1, ''),
(27, 'SC5F9A64E0DC72982572', 16, '9.90', 1, ''),
(28, 'SC5F9A64E0DC72982572', 14, '6.40', 1, 'Flavor-Pandan Coconut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`,`category_id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`,`img`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `txn_id` (`txn_id`);

--
-- Indexes for table `transactions_items`
--
ALTER TABLE `transactions_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transactions_items`
--
ALTER TABLE `transactions_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
