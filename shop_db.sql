-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 02:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(4, 5, 4, 'Pink Rose', 30, 1, 'pink_rose.png'),
(5, 5, 2, 'Cymbidium Orchid ', 100, 1, 'cymbidium_orchid.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 3, 'Rahath', 'rahath@gmail.com', '1234566778', 'Send the flowers early '),
(2, 6, 'nujhat', 'nujhat@gmail.com', '1747166665', 'Please deliver the products soon');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(10000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 3, 'rahath', '123456', 'rahath@gmail.com', 'credit card', 'flat no. block A, Chadnighat, Sylhet, Bangladesh - ', ', Lavender (1) ', 60, '21-May-2022', ''),
(2, 3, 'rahath', '12346', 'rahath@gmail.com', 'credit card', 'flat no. block A, chadnighat, Sylhet, Bangladesh', ', Lavender (1) ', 60, '21-May-2022', ''),
(3, 3, 'rahath', '1234', 'rahath@gmail.com', 'cash on delivery', 'flat no. sdwef3, wgreh4her, sylhet, Bangladesh', ', Cymbidium Orchid  (2) ', 200, '22-May-2022', ''),
(4, 3, 'gggg', '44445', 'ggfdf@gmail.com', 'cash on delivery', 'flat no. hhg, jhh, gggg, hhh', ', Cymbidium Orchid  (1) ', 100, '22-May-2022', ''),
(5, 3, 'ggg', '1747166665', 'ggfdf@gmail.com', 'cash on delivery', 'flat no. fff, gggg, fff, ggg', ', Cymbidium Orchid  (1) ', 100, '03-Jun-2022', ''),
(6, 6, 'nujhat', '12345678', 'nujhat@gmail.com', 'cash on delivery', 'flat no. sylhet, 72, sylhet, Bangladesh', ', Cymbidium Orchid  (1) , Beach Florist (1) ', 13, '24-Jul-2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(1, 'Lavender', 'Bunch of fresh Lavender.\r\n', 3, 'lavendor rose.jpg'),
(2, 'Cymbidium Orchid ', 'Fresh Orchid Collection.', 7, 'cymbidium_orchid.png'),
(4, 'Pink Rose', 'Baby Pink Rose Collection', 3, 'pink_rose.png'),
(5, 'Pink Bouquet', 'Charming pink flower bouquet.', 5, 'pink bouquet.jpg'),
(6, 'Red Tulip', 'Elegant collection of red tulip.', 3, 'red tulipa.jpg'),
(7, 'Beach Florist', 'Collection of Exotic Roses.', 6, 'beach florist.jpg'),
(8, 'White Bouquet', 'Collection of White Roses', 4, 'white bouquet.jpg'),
(9, 'Cottage Rose', 'Collection of Baby Pink Roses', 4, 'cottage rose.jpg'),
(10, 'Pink Queen', 'High-Quality Fresh Rose', 6, 'pink queen rose.jpg'),
(11, 'Yellow Tulip ', 'Fresh Tulip', 5, 'yellow tulipa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Shahriar Ahmod', 'shahriyar@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', ''),
(2, 'fariha', 'fariha@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(3, 'rahath', 'rahath@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'user'),
(4, 'Admin1', 'Admin1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(5, 'fariha123', 'fariha123@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'user'),
(6, 'nujhat', 'nujhat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(6, 6, 1, 0, 3, 'lavendor rose.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
