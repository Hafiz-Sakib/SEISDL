-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 07:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(50) DEFAULT NULL,
  `seat_class` varchar(50) DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `flight_number`, `seat_class`, `departure_time`, `arrival_time`, `price`) VALUES
(1, '8081', 'Business', '2024-09-12 01:37:00', '2024-09-20 01:37:00', 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `price_per_night` decimal(10,2) DEFAULT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `location`, `price_per_night`, `rating`) VALUES
(2, 'akash hotel', 'India', 100.00, 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img_url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `name`, `details`, `price`, `img_url`) VALUES
(2, 'Himachal Pradesh', 'nice & Attractive place ', 500.00, 'https://plus.unsplash.com/premium_photo-1697729690458-2d64ca777c04?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
(3, 'Turkey', 'The iconic hot air balloon experience in Göreme, Turkey, located in the heart of Cappadocia. The scene showcases dozens of vibrant hot air balloons floating serenely over a unique landscape of rock formations, valleys, and ancient structures. The rugged terrain below is marked by the famous \"fairy chimneys,\" natural stone pillars shaped by erosion. The sky is a soft gradient of pale blue, adding a sense of calm and wonder to the scene. This popular tourist attraction offers visitors a breathtaking aerial view of one of Turkey\'s most extraordinary regions.', 2499.00, 'https://images.unsplash.com/photo-1526048598645-62b31f82b8f5?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
(4, 'Bangkok', 'Bangkok, the vibrant capital of Thailand, is a city that seamlessly blends modernity with rich cultural heritage, making it a top tourist destination. One of its most famous landmarks is the Grand Palace, a stunning royal complex that houses Wat Phra Kaew, the Temple of the Emerald Buddha, home to a revered Buddha statue carved from jade. Another must-see is Wat Pho, known for the massive Reclining Buddha and its significance in traditional Thai massage. On the banks of the Chao Phraya River stands Wat Arun, or the Temple of Dawn, renowned for its picturesque spires, which are especially breathtaking at sunrise and sunset. For those who love shopping, Chatuchak Weekend Market is one of the largest outdoor markets in the world, offering an incredible array of goods from clothing to street food. Bangkok\'s rich history, spiritual landmarks, and bustling markets make it an unforgettable travel experience.', 1500.00, 'https://images.unsplash.com/photo-1531169628939-e84f860fa5d6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
(5, 'Kashmir', 'Kashmir, often called \"Paradise on Earth,\" is a breathtaking region known for its stunning natural beauty. The city of Srinagar features the famous Dal Lake, where visitors can experience houseboats and vibrant Mughal gardens. Gulmarg is a renowned ski resort with high-altitude cable cars, while Pahalgam offers scenic trekking routes and rafting opportunities. Sonamarg, with its meadows and glaciers, is perfect for nature enthusiasts. The rugged beauty of Leh-Ladakh attracts adventure seekers. Kashmir\'s pristine landscapes make it a sought-after destination for travelers worldw', 1000.00, 'https://images.unsplash.com/photo-1715457573748-8e8a70b2c1be?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
(6, 'South Africa Cape Town', 'Cape Town, South Africa, is a vibrant tourist destination known for its breathtaking natural beauty and rich cultural heritage. The city is framed by the iconic Table Mountain, offering panoramic views accessible by cable car or hiking. Visitors can explore the lively Victoria & Alfred Waterfront, filled with shops, restaurants, and entertainment. Nearby, the beaches of Camps Bay and Clifton are perfect for relaxing by the ocean. History enthusiasts can visit Robben Island, where Nelson Mandela was imprisoned, or tour the colorful Bo-Kaap neighborhood. Cape Town\'s wineries, like those in Stellenbosch, also attract wine lovers from around the world.', 4499.00, 'https://images.unsplash.com/photo-1529528070131-eda9f3e90919?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGFmcmljYSUyMHRyYXZlbHxlbnwwfHwwfHx8MA%3D%3D'),
(7, 'Nepal', 'Nepal is a haven for travelers, offering a unique blend of natural beauty, cultural heritage, and adventure. Kathmandu, the capital, is rich with historical temples like Pashupatinath and Swayambhunath (Monkey Temple). For trekkers, the Annapurna Circuit and the Everest Base Camp provide unforgettable experiences amid the majestic Himalayas. Pokhara, with its serene lakes and mountain views, is perfect for relaxation and adventure sports. Chitwan National Park is ideal for wildlife safaris, where visitors can spot rhinos, tigers, and elephants. Nepal\'s diversity ensures an enriching travel experience for all.', 750.00, 'https://images.unsplash.com/photo-1544735716-392fe2489ffa?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');

-- --------------------------------------------------------

--
-- Table structure for table `tour_guides`
--

CREATE TABLE `tour_guides` (
  `guide_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_guides`
--

INSERT INTO `tour_guides` (`guide_id`, `name`, `location`, `rating`) VALUES
(2, 'Jacks', 'USA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`) VALUES
(1, 'Arnab Shikder', 'arnab@gmail.com'),
(2, 'John', 'arnabshikder2001@gmail.com'),
(3, 'John', 'abc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `guide_id` (`guide_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `tour_guides`
--
ALTER TABLE `tour_guides`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tour_guides`
--
ALTER TABLE `tour_guides`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`),
  ADD CONSTRAINT `bookings_ibfk_5` FOREIGN KEY (`guide_id`) REFERENCES `tour_guides` (`guide_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
