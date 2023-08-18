-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2023 at 03:56 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `communitrade_insy661`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`, `categoryDescription`) VALUES
(1, 'Electronics', 'Latest and greatest electronics'),
(2, 'Furniture', 'Quality and affordable furniture'),
(3, 'Apparel', 'Trendy and fashionable clothing'),
(4, 'Literature', 'Wide range of books'),
(5, 'Athletics', 'Sports equipment for all ages'),
(6, 'MusicGear', 'Music instruments and accessories'),
(7, 'ChildrensToys', 'Fun toys for kids'),
(8, 'Cookware', 'Essential kitchen appliances'),
(9, 'Horticulture', 'Gardening tools and plants'),
(10, 'Artwork', 'Beautiful art pieces'),
(11, 'Vehicles', 'Cars, bikes and more'),
(12, 'Jewelry', 'Elegant jewelry pieces'),
(13, 'Hardware', 'Handy tools for all your needs'),
(14, 'PetSupplies', 'Pet supplies and accessories'),
(15, 'Cosmetics', 'Beauty products for self-care'),
(16, 'Gaming', 'Board and video games'),
(17, 'OfficeSupplies', 'Office supplies and equipment'),
(18, 'Antiquities', 'Antique items with a history'),
(19, 'EventTickets', 'Tickets for concerts, sports and more'),
(20, 'CraftSupplies', 'Craft supplies for DIY projects'),
(21, 'HomeAppliances', 'Home appliances for everyday use'),
(22, 'ExerciseEquipment', 'Fitness equipment for home workouts'),
(23, 'OutdoorGear', 'Outdoor gear for camping and adventures'),
(24, 'InfantCare', 'Baby essentials for new parents'),
(25, 'Collectibles', 'Unique collectibles'),
(26, 'ComputerHardware', 'Computer parts and accessories'),
(27, 'Photography', 'Cameras for photography enthusiasts'),
(28, 'MobileDevices', 'Phones from top brands'),
(29, 'Timepieces', 'Luxury watches'),
(30, 'Instruments', 'Musical instruments for all levels');

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `listingID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `datePosted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateSold` timestamp NULL DEFAULT NULL,
  `categoryID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `sellerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`listingID`, `title`, `description`, `price`, `status`, `datePosted`, `dateSold`, `categoryID`, `locationID`, `sellerID`) VALUES
(1, 'Handcrafted Wooden Coffee Table', 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus', '925.70', 'A', '2023-04-04 12:26:48', NULL, 17, 80, 49),
(2, 'Dell XPS 13 Laptop', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '24.21', 'A', '2023-04-10 02:55:32', NULL, 27, 90, 74),
(3, 'Sonos One (Gen 2) - Voice Controlled Smart Speaker', 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id', '542.39', 'A', '2023-04-04 07:17:52', NULL, 12, 79, 34),
(4, 'Bose QuietComfort Earbuds', 'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', '973.10', 'A', '2023-06-27 02:48:51', NULL, 14, 57, 55),
(5, 'Apple HomePod', 'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed', '364.97', 'A', '2023-05-13 20:38:42', NULL, 6, 71, 64),
(6, 'DJI Osmo Mobile 3 Combo - 3-Axis Smartphone Gimbal', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl', '395.91', 'A', '2023-04-25 23:39:02', NULL, 10, 16, 80),
(7, 'Samsung Galaxy S20 FE 5G', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a', '70.20', 'S', '2023-06-30 05:41:34', '2023-06-13 03:19:09', 9, 73, 62),
(8, 'Limited Edition Nike Sneakers', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', '808.98', 'S', '2023-05-05 01:16:07', '2023-06-10 03:19:09', 29, 3, 62),
(9, 'Luxury Rolex Watch', 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', '720.83', 'A', '2023-07-21 12:05:40', NULL, 6, 87, 91),
(10, 'Bose QuietComfort Earbuds', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', '400.64', 'A', '2023-04-22 23:16:03', NULL, 12, 67, 72),
(11, 'Apple iPad Pro 12.9 inch', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', '793.18', 'A', '2023-04-28 07:08:46', NULL, 28, 93, 55),
(12, 'Ring Video Doorbell 3', 'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', '841.06', 'A', '2023-05-18 21:20:45', NULL, 9, 9, 80),
(13, 'Luxury Rolex Watch', 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', '19.32', 'S', '2023-06-23 17:55:43', '2023-04-24 03:19:09', 27, 54, 3),
(14, 'Coach Leather Wallet', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', '379.28', 'A', '2023-05-15 06:37:41', NULL, 5, 98, 81),
(15, 'Louis Vuitton Monogram Wallet', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', '651.72', 'A', '2023-05-14 16:47:45', NULL, 30, 63, 35),
(16, 'Samsung Galaxy Note20 Ultra 5G', 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', '881.96', 'A', '2023-05-06 10:11:19', NULL, 21, 83, 38),
(17, 'Patagonia Down Sweater Jacket', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', '468.72', 'A', '2023-06-18 00:17:31', NULL, 19, 46, 80),
(18, 'Sony ZV-1 Camera', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel', '950.00', 'A', '2023-05-31 10:47:40', NULL, 9, 68, 35),
(19, 'Bose QuietComfort 35 II Wireless Bluetooth Headphones', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', '780.40', 'A', '2023-06-06 10:29:09', NULL, 13, 100, 93),
(20, 'DJI Mavic Air 2 Fly More Combo', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', '29.01', 'A', '2023-04-05 08:25:12', NULL, 14, 7, 25),
(21, 'Samsung Galaxy Tab A7', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '956.14', 'A', '2023-04-15 05:47:24', NULL, 2, 60, 48),
(22, 'Dyson V11 Cordless Vacuum', 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', '192.94', 'A', '2023-05-18 05:47:24', NULL, 23, 80, 8),
(23, 'Authentic Tiffany & Co. Necklace', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '804.55', 'A', '2023-07-08 14:12:21', NULL, 30, 27, 99),
(24, 'Ray-Ban Aviator Sunglasses', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus', '480.18', 'A', '2023-04-13 21:22:54', NULL, 9, 14, 99),
(25, 'Samsung Galaxy Buds Live', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', '595.51', 'A', '2023-05-10 23:37:56', NULL, 9, 2, 32),
(26, 'Levi\'s 501 Original Fit Jeans', 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', '461.06', 'S', '2023-05-01 11:51:04', '2023-07-27 03:19:09', 5, 8, 95),
(27, 'Canon EOS 5D Mark IV DSLR Camera', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', '479.31', 'A', '2023-04-05 05:21:12', NULL, 27, 85, 87),
(28, 'KitchenAid 5 Qt. Stand Mixer', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', '153.39', 'A', '2023-05-15 14:51:54', NULL, 10, 45, 82),
(29, 'Sony X800H 43 Inch TV: 4K Ultra HD Smart LED TV', 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut', '33.59', 'A', '2023-07-29 08:34:42', NULL, 27, 19, 6),
(30, 'Gently Used Trek Mountain Bike', 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', '51.68', 'A', '2023-07-03 21:56:33', NULL, 5, 98, 83),
(31, 'Levi\'s 501 Original Fit Jeans', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', '860.17', 'A', '2023-05-18 06:43:33', NULL, 28, 6, 85),
(32, 'Breville Barista Express Espresso Machine', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', '260.33', 'A', '2023-05-09 15:12:40', NULL, 13, 25, 71),
(33, 'Apple MacBook Air with Apple M1 Chip', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', '840.80', 'A', '2023-04-15 08:32:07', NULL, 27, 52, 33),
(34, 'Google Nest WiFi Router', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', '85.50', 'A', '2023-05-30 15:59:22', NULL, 17, 67, 89),
(35, 'Brand New iPhone 12 Pro Max', 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum', '91.35', 'S', '2023-05-11 11:22:46', '2023-04-09 03:19:09', 10, 50, 80),
(36, 'Bose SoundLink Color Bluetooth Speaker II', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', '168.69', 'A', '2023-04-14 16:42:00', NULL, 16, 54, 49),
(37, 'Bose Portable Smart Speaker', 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', '660.15', 'A', '2023-05-26 06:21:22', NULL, 24, 38, 10),
(38, 'Apple Watch Series 6', 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', '439.52', 'S', '2023-05-18 06:01:24', '2023-07-04 03:19:09', 23, 22, 1),
(39, 'Apple MacBook Pro 2020', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', '789.08', 'A', '2023-07-21 08:34:56', NULL, 29, 19, 20),
(40, 'Google Pixel 5', 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', '962.41', 'S', '2023-07-25 23:49:22', '2023-07-26 03:19:09', 11, 73, 73),
(41, 'DJI Mavic Pro Drone', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', '197.67', 'A', '2023-06-14 04:45:09', NULL, 16, 53, 31),
(42, 'Bose Noise Cancelling Headphones', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', '294.97', 'A', '2023-04-01 22:53:44', NULL, 2, 79, 55),
(43, 'Canon EOS M50 Mark II', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', '769.70', 'A', '2023-05-12 21:02:51', NULL, 25, 82, 78),
(44, 'Apple HomePod', 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', '311.67', 'A', '2023-05-23 06:08:14', NULL, 18, 21, 28),
(45, 'Herman Miller Aeron Office Chair', 'rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', '116.66', 'A', '2023-06-30 22:33:45', NULL, 4, 9, 74),
(46, 'Nintendo Switch with Games', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', '422.22', 'A', '2023-07-21 11:21:23', NULL, 25, 27, 25),
(47, 'Antique Wooden Desk', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '743.94', 'A', '2023-05-30 17:04:13', NULL, 12, 70, 60),
(48, 'Samsung Galaxy Tab S7+', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', '33.80', 'A', '2023-07-02 12:15:38', NULL, 10, 10, 44),
(49, 'Limited Edition Nike Sneakers', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '914.31', 'A', '2023-04-11 00:49:30', NULL, 23, 30, 11),
(50, 'Limited Edition Nike Sneakers', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', '185.50', 'S', '2023-05-17 23:22:13', '2023-06-07 03:19:09', 25, 45, 89),
(51, 'Bose Soundbar 700', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', '699.98', 'A', '2023-06-04 09:56:48', NULL, 7, 65, 35),
(52, 'Complete Harry Potter Book Set', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', '615.07', 'A', '2023-05-05 23:20:41', NULL, 21, 68, 8),
(53, 'Apple iPad Air', 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices', '34.36', 'A', '2023-04-08 08:24:26', NULL, 24, 91, 14),
(54, 'Yamaha Acoustic Guitar', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut', '823.50', 'A', '2023-06-09 19:53:38', NULL, 18, 7, 13),
(55, 'Sony WH-1000XM4 Wireless Noise-Canceling Over-Ear Headphones', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', '742.14', 'A', '2023-04-18 12:29:40', NULL, 5, 83, 63),
(56, 'Samsung Galaxy Note20 Ultra 5G', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '988.15', 'A', '2023-07-31 14:00:08', NULL, 15, 100, 60),
(57, 'DJI Phantom 4 Pro V2.0 Quadcopter', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', '277.86', 'A', '2023-04-02 02:19:33', NULL, 8, 9, 25),
(58, 'Cuisinart 14-Cup Food Processor', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '344.63', 'A', '2023-05-01 01:59:35', NULL, 5, 36, 50),
(59, 'Tom Ford Black Orchid Perfume', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', '646.09', 'A', '2023-05-31 05:19:39', NULL, 25, 15, 29),
(60, 'Apple iPhone SE', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', '430.06', 'A', '2023-05-04 14:00:12', NULL, 28, 38, 99),
(61, 'Handcrafted Wooden Coffee Table', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', '728.19', 'A', '2023-07-19 01:44:08', NULL, 13, 99, 38),
(62, 'Samsung Galaxy Tab S7+', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '645.97', 'A', '2023-05-25 21:57:18', NULL, 5, 90, 88),
(63, 'Peloton Exercise Bike', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '194.39', 'A', '2023-05-21 02:40:30', NULL, 25, 51, 34),
(64, 'Apple iPad mini', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget', '157.17', 'A', '2023-05-27 01:04:59', NULL, 19, 18, 96),
(65, 'Peloton Exercise Bike', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et', '430.22', 'A', '2023-04-09 14:52:00', NULL, 14, 82, 11),
(66, 'Bose Frames Audio Sunglasses', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', '406.10', 'S', '2023-06-29 23:27:41', '2023-04-08 03:19:09', 3, 58, 79),
(67, 'Fender American Professional Stratocaster', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '841.04', 'A', '2023-05-24 07:03:22', NULL, 20, 26, 81),
(68, 'Yamaha Acoustic Guitar', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', '639.39', 'A', '2023-04-14 18:00:45', NULL, 17, 34, 63),
(69, 'Canon EOS 5D Mark IV DSLR Camera', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', '393.10', 'A', '2023-06-26 01:11:06', NULL, 4, 76, 10),
(70, 'Ray-Ban Aviator Sunglasses', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie', '942.17', 'S', '2023-07-16 14:56:51', '2023-07-11 03:19:09', 21, 68, 35),
(71, 'Cuisinart 14-Cup Food Processor', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '479.40', 'S', '2023-06-30 04:19:35', '2023-05-12 03:19:09', 17, 57, 18),
(72, 'Bose Portable Smart Speaker', 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut', '534.56', 'A', '2023-07-19 21:29:34', NULL, 17, 87, 97),
(73, 'DJI Mavic Air 2 Fly More Combo', 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus', '809.12', 'S', '2023-07-22 23:38:18', '2023-06-25 03:19:09', 20, 25, 58),
(74, 'All-Clad Stainless Steel Cookware Set', 'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '935.62', 'A', '2023-04-08 03:29:55', NULL, 27, 19, 52),
(75, 'Nintendo Switch Lite', 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', '130.89', 'A', '2023-05-27 12:55:20', NULL, 28, 79, 1),
(76, 'Apple iPhone SE', 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', '437.56', 'A', '2023-05-10 16:49:13', NULL, 4, 82, 5),
(77, 'Vintage Leather Jacket', 'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut', '88.55', 'A', '2023-06-25 03:08:47', NULL, 10, 14, 54),
(78, 'Bose QuietComfort Earbuds', 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', '969.59', 'A', '2023-05-18 10:01:55', NULL, 27, 69, 86),
(79, 'Sony WH-1000XM4 Wireless Noise-Canceling Over-Ear Headphones', 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', '663.65', 'A', '2023-06-08 07:37:18', NULL, 2, 5, 5),
(80, 'Peloton Exercise Bike', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', '520.41', 'A', '2023-06-29 05:57:28', NULL, 15, 9, 23),
(81, 'Bose QuietComfort 35 II Wireless Bluetooth Headphones', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', '260.52', 'A', '2023-06-10 18:40:11', NULL, 6, 31, 91),
(82, 'JBL Flip 5 Waterproof Portable Bluetooth Speaker', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', '764.08', 'A', '2023-04-14 13:51:48', NULL, 10, 59, 77),
(83, 'Microsoft Surface Pro 7', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', '904.54', 'A', '2023-06-27 21:13:51', NULL, 7, 46, 59),
(84, 'Garmin Forerunner 245 Running Watch', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent', '971.56', 'A', '2023-07-01 22:43:01', NULL, 7, 19, 25),
(85, 'Luxury Rolex Watch', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', '997.57', 'A', '2023-05-13 08:20:11', NULL, 4, 38, 95),
(86, 'Coach Leather Wallet', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', '629.11', 'A', '2023-05-22 06:37:40', NULL, 6, 95, 4),
(87, 'Nikon D850 DSLR Camera', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet', '538.69', 'A', '2023-05-28 09:40:54', NULL, 2, 52, 32),
(88, 'Weber Genesis II Gas Grill', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam', '651.12', 'A', '2023-07-15 02:27:49', NULL, 30, 33, 5),
(89, 'Fender American Professional Stratocaster', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', '722.53', 'A', '2023-05-18 23:35:58', NULL, 15, 54, 52),
(90, 'Samsung Galaxy S20 FE 5G', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', '766.75', 'A', '2023-06-23 03:56:57', NULL, 10, 67, 74),
(91, 'Sony X800H 43 Inch TV: 4K Ultra HD Smart LED TV', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', '635.96', 'A', '2023-04-06 09:08:11', NULL, 22, 14, 24),
(92, 'Bose Portable Smart Speaker', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', '704.79', 'A', '2023-05-11 20:03:36', NULL, 13, 27, 38),
(93, 'Bose SoundLink Revolve+ Bluetooth Speaker', 'aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', '949.07', 'A', '2023-04-08 18:24:44', NULL, 6, 34, 52),
(94, 'Sony WH-1000XM3 Wireless Noise-Canceling Over-Ear Headphones', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '87.01', 'S', '2023-07-14 09:14:20', '2023-05-18 03:19:09', 18, 71, 85),
(95, 'Antique Wooden Desk', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', '502.27', 'A', '2023-07-08 03:09:25', NULL, 13, 3, 68),
(96, 'YETI Tundra 45 Cooler', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '679.25', 'A', '2023-04-10 15:32:12', NULL, 6, 82, 3),
(97, 'Sony A8H 55 Inch TV: BRAVIA OLED 4K Ultra HD Smart TV', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '438.48', 'A', '2023-06-05 08:41:16', NULL, 2, 45, 28),
(98, 'Bose QuietComfort 35 II Wireless Bluetooth Headphones', 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', '558.86', 'S', '2023-07-09 21:17:34', '2023-06-19 03:19:09', 25, 51, 80),
(99, 'Google Nest WiFi Router', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', '80.33', 'A', '2023-04-18 22:19:00', NULL, 29, 92, 7),
(100, 'Samsung Galaxy S21', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', '479.10', 'S', '2023-07-15 22:29:46', '2023-07-06 03:19:09', 13, 35, 66);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationID` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `ZIPCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationID`, `city`, `ZIPCode`) VALUES
(1, 'Dagui', 'R0H 3D3'),
(2, 'Bobolice', 'Z5H 1Y9'),
(3, 'Santa Maria', 'P2G 1T1'),
(4, 'Río Sereno', 'S4W 0U9'),
(5, 'Orsk', 'O3B 7T9'),
(6, 'Ragana', 'D3U 3J4'),
(7, 'Salto', 'T2X 4K5'),
(8, 'Corzuela', 'X7O 5M0'),
(9, 'Port-de-Paix', 'G5Y 6O3'),
(10, 'Fort Worth', 'Z2U 8O9'),
(11, 'Maple Ridge', 'Q0X 8B9'),
(12, 'Uk', 'T6Q 5E4'),
(13, 'Nechanice', 'V2A 4T0'),
(14, 'Göteborg', 'R8P 3D4'),
(15, 'Florida', 'N8Y 4C8'),
(16, 'Ban Dung', 'H8M 0W3'),
(17, 'Sumberrejo', 'U8S 7M4'),
(18, 'Villefranche-sur-Saône', 'T9M 4H5'),
(19, 'Tangban', 'K2F 2Y8'),
(20, 'Khon Buri', 'E8X 1L9'),
(21, 'Laocheng', 'S0T 6V2'),
(22, 'Kalino', 'U9S 7D9'),
(23, 'Cẩm Phả Mines', 'Y5W 8K9'),
(24, 'Fontana', 'E1J 5H7'),
(25, 'Varāmīn', 'U7Q 3T5'),
(26, 'Licupis', 'Q3B 0B5'),
(27, 'Belopa', 'M8B 3V6'),
(28, 'Hengtang', 'C8R 7W3'),
(29, 'Jiangwan', 'A8C 9F5'),
(30, 'Andongsari', 'M1A 2E8'),
(31, 'Qo’ng’irot Shahri', 'A7B 9M2'),
(32, 'Xianlin', 'Q4J 6G7'),
(33, 'Cortinhas', 'G4J 0Y7'),
(34, 'Kentville', 'N8K 7W3'),
(35, 'Dalu', 'G5P 4A8'),
(36, 'Włoszczowa', 'Z3D 9U3'),
(37, 'Černošice', 'I5Y 5D4'),
(38, 'Puunage', 'M7Q 9W1'),
(39, 'Su’ao', 'V5Q 7Y9'),
(40, 'Rafaela', 'G1U 1U4'),
(41, 'Saumur', 'M6N 2D5'),
(42, 'Burgos', 'R8E 8X7'),
(43, 'La Mohammedia', 'C9G 6J1'),
(44, 'Lomé', 'G2I 6Y0'),
(45, 'Ocoruro', 'H1W 0Y5'),
(46, 'Duogongma', 'W7Z 8X3'),
(47, 'Gaspar Hernández', 'T2E 6X2'),
(48, 'Cibojong', 'N3U 3K5'),
(49, 'Finspång', 'X7M 7O8'),
(50, 'Ouésso', 'S1G 5C4'),
(51, 'Taroudant', 'J0Q 3G9'),
(52, 'Sabugal', 'R5T 5J9'),
(53, 'Makilala', 'S3A 3P1'),
(54, 'Fatukanutu', 'M5O 7H6'),
(55, 'Stockholm', 'B8Y 9P8'),
(56, 'Quwa', 'J3Y 8N3'),
(57, 'Maramag', 'C8Y 3M7'),
(58, 'Changhua', 'U9V 9S4'),
(59, 'Zhuangbian', 'F1H 0B7'),
(60, 'Zahedan', 'U6Z 2D6'),
(61, 'La Gloria', 'P0I 7R1'),
(62, 'Krajan Curahcotok', 'A1I 7L7'),
(63, 'Saint-Denis', 'V6Y 4F1'),
(64, 'Benevides', 'F1M 1W2'),
(65, 'Wright', 'I3N 1I3'),
(66, 'Matanzas', 'F3U 8F8'),
(67, 'Rabāţ-e Sangī-ye Pā’īn', 'E1E 9E6'),
(68, 'Grivenskaya', 'H3E 6U8'),
(69, 'Kurmanayevka', 'I5I 7P7'),
(70, 'Capacho Nuevo', 'V3E 5F6'),
(71, 'Xiyuan', 'M2I 8K0'),
(72, 'Pélla', 'T3Z 9M3'),
(73, 'Huangfang', 'D7W 4M9'),
(74, 'Tanrake Village', 'Z0A 6A2'),
(75, 'Vroutek', 'L7H 7P3'),
(76, 'Nerópolis', 'U6R 3Z6'),
(77, 'Dolna Banjica', 'W8L 9O5'),
(78, 'Muncar', 'M0I 7A7'),
(79, 'Horodyshche', 'L9N 8E6'),
(80, 'Odeleite', 'Y7N 1C0'),
(81, 'Ouadda', 'V3C 8O6'),
(82, 'Baiquan', 'W6G 3Q1'),
(83, 'Zlatograd', 'K3Y 7T0'),
(84, 'Bay-ang', 'U6L 0W3'),
(85, 'Liudaogou', 'K4I 9K7'),
(86, 'Bayanbaogede', 'P3P 8E9'),
(87, 'Leština', 'H9R 7L8'),
(88, 'Kiarajangkung', 'F3H 5X3'),
(89, 'Guohe', 'B9P 9Q5'),
(90, 'Bangassou', 'L9F 4R8'),
(91, 'Sundsvall', 'K1V 6V3'),
(92, 'Mashan', 'A5O 4N7'),
(93, 'Sionogan', 'X1P 4I8'),
(94, 'Xinxian', 'L8I 9H8'),
(95, 'Pedro Santana', 'F8J 8N5'),
(96, 'La Sierpe', 'H4X 0D6'),
(97, 'Kujang-ŭp', 'I6J 3M2'),
(98, 'Garça', 'Y7P 2F8'),
(99, 'Tipolo', 'W8K 1D4'),
(100, 'La Uvita', 'F2W 4T1');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `mediaID` int(11) NOT NULL,
  `mediaURL` varchar(255) NOT NULL,
  `listingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`mediaID`, `mediaURL`, `listingID`) VALUES
(1, 'http://dummyimage.com/193x185.png/dddddd/000000', 1),
(2, 'http://dummyimage.com/140x189.png/5fa2dd/ffffff', 83),
(3, 'http://dummyimage.com/203x138.png/cc0000/ffffff', 34),
(4, 'http://dummyimage.com/202x157.png/dddddd/000000', 19),
(5, 'http://dummyimage.com/142x216.png/5fa2dd/ffffff', 71),
(6, 'http://dummyimage.com/154x218.png/cc0000/ffffff', 45),
(7, 'http://dummyimage.com/128x228.png/dddddd/000000', 97),
(8, 'http://dummyimage.com/210x101.png/5fa2dd/ffffff', 84),
(9, 'http://dummyimage.com/103x234.png/cc0000/ffffff', 97),
(10, 'http://dummyimage.com/177x143.png/dddddd/000000', 76),
(11, 'http://dummyimage.com/202x141.png/5fa2dd/ffffff', 93),
(12, 'http://dummyimage.com/222x184.png/ff4444/ffffff', 97),
(13, 'http://dummyimage.com/245x147.png/5fa2dd/ffffff', 24),
(14, 'http://dummyimage.com/123x208.png/dddddd/000000', 75),
(15, 'http://dummyimage.com/126x223.png/5fa2dd/ffffff', 17),
(16, 'http://dummyimage.com/159x210.png/5fa2dd/ffffff', 100),
(17, 'http://dummyimage.com/217x200.png/ff4444/ffffff', 23),
(18, 'http://dummyimage.com/170x139.png/dddddd/000000', 21),
(19, 'http://dummyimage.com/194x222.png/cc0000/ffffff', 9),
(20, 'http://dummyimage.com/249x237.png/5fa2dd/ffffff', 39),
(21, 'http://dummyimage.com/109x121.png/dddddd/000000', 97),
(22, 'http://dummyimage.com/216x141.png/cc0000/ffffff', 80),
(23, 'http://dummyimage.com/144x215.png/dddddd/000000', 71),
(24, 'http://dummyimage.com/232x242.png/cc0000/ffffff', 4),
(25, 'http://dummyimage.com/161x167.png/dddddd/000000', 85),
(26, 'http://dummyimage.com/166x105.png/dddddd/000000', 52),
(27, 'http://dummyimage.com/235x177.png/cc0000/ffffff', 93),
(28, 'http://dummyimage.com/154x224.png/ff4444/ffffff', 46),
(29, 'http://dummyimage.com/113x122.png/5fa2dd/ffffff', 84),
(30, 'http://dummyimage.com/143x184.png/cc0000/ffffff', 20),
(31, 'http://dummyimage.com/182x108.png/dddddd/000000', 40),
(32, 'http://dummyimage.com/108x176.png/dddddd/000000', 35),
(33, 'http://dummyimage.com/155x137.png/cc0000/ffffff', 79),
(34, 'http://dummyimage.com/242x241.png/5fa2dd/ffffff', 98),
(35, 'http://dummyimage.com/158x224.png/dddddd/000000', 25),
(36, 'http://dummyimage.com/108x118.png/5fa2dd/ffffff', 39),
(37, 'http://dummyimage.com/178x110.png/ff4444/ffffff', 19),
(38, 'http://dummyimage.com/216x185.png/ff4444/ffffff', 7),
(39, 'http://dummyimage.com/141x189.png/dddddd/000000', 67),
(40, 'http://dummyimage.com/207x198.png/5fa2dd/ffffff', 30),
(41, 'http://dummyimage.com/150x248.png/cc0000/ffffff', 96),
(42, 'http://dummyimage.com/167x229.png/5fa2dd/ffffff', 62),
(43, 'http://dummyimage.com/232x156.png/cc0000/ffffff', 63),
(44, 'http://dummyimage.com/213x213.png/5fa2dd/ffffff', 76),
(45, 'http://dummyimage.com/114x223.png/5fa2dd/ffffff', 16),
(46, 'http://dummyimage.com/148x169.png/ff4444/ffffff', 97),
(47, 'http://dummyimage.com/132x243.png/cc0000/ffffff', 10),
(48, 'http://dummyimage.com/215x174.png/dddddd/000000', 24),
(49, 'http://dummyimage.com/248x208.png/cc0000/ffffff', 27),
(50, 'http://dummyimage.com/101x152.png/5fa2dd/ffffff', 79),
(51, 'http://dummyimage.com/131x248.png/dddddd/000000', 92),
(52, 'http://dummyimage.com/123x216.png/cc0000/ffffff', 16),
(53, 'http://dummyimage.com/193x215.png/ff4444/ffffff', 32),
(54, 'http://dummyimage.com/149x217.png/5fa2dd/ffffff', 65),
(55, 'http://dummyimage.com/132x244.png/5fa2dd/ffffff', 35),
(56, 'http://dummyimage.com/154x138.png/dddddd/000000', 72),
(57, 'http://dummyimage.com/120x117.png/cc0000/ffffff', 71),
(58, 'http://dummyimage.com/244x122.png/cc0000/ffffff', 91),
(59, 'http://dummyimage.com/245x157.png/cc0000/ffffff', 1),
(60, 'http://dummyimage.com/208x107.png/ff4444/ffffff', 98),
(61, 'http://dummyimage.com/195x145.png/dddddd/000000', 76),
(62, 'http://dummyimage.com/235x114.png/ff4444/ffffff', 85),
(63, 'http://dummyimage.com/209x202.png/ff4444/ffffff', 58),
(64, 'http://dummyimage.com/121x241.png/5fa2dd/ffffff', 75),
(65, 'http://dummyimage.com/146x196.png/dddddd/000000', 45),
(66, 'http://dummyimage.com/244x124.png/ff4444/ffffff', 80),
(67, 'http://dummyimage.com/205x196.png/5fa2dd/ffffff', 31),
(68, 'http://dummyimage.com/185x171.png/dddddd/000000', 79),
(69, 'http://dummyimage.com/226x124.png/dddddd/000000', 76),
(70, 'http://dummyimage.com/205x168.png/5fa2dd/ffffff', 3);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `messageID` int(11) NOT NULL,
  `messageText` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `senderID` int(11) NOT NULL,
  `receiverID` int(11) NOT NULL,
  `listingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`messageID`, `messageText`, `timestamp`, `senderID`, `receiverID`, `listingID`) VALUES
(1, 'elit ac nulla sed vel enim sit amet nunc', '2023-07-29 11:05:16', 70, 48, 77),
(2, 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '2023-05-07 21:23:47', 40, 88, 14),
(3, 'viverra eget congue eget semper rutrum nulla nunc purus', '2023-06-17 11:25:54', 1, 70, 93),
(4, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', '2023-04-17 17:59:25', 93, 73, 17),
(5, 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', '2023-04-18 10:26:05', 40, 89, 43),
(6, 'luctus nec molestie sed justo pellentesque', '2023-04-20 01:17:00', 33, 10, 65),
(7, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', '2023-06-20 23:04:26', 44, 37, 52),
(8, 'adipiscing elit proin interdum mauris non ligula', '2023-05-31 17:57:46', 22, 17, 10),
(9, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', '2023-04-24 20:45:03', 56, 67, 29),
(10, 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus', '2023-04-29 07:38:17', 35, 38, 33),
(11, 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', '2023-06-04 16:03:33', 71, 63, 50),
(12, 'eget tempus vel pede morbi porttitor lorem id ligula', '2023-05-11 23:00:36', 66, 36, 70),
(13, 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '2023-07-15 11:06:51', 64, 31, 14),
(14, 'varius nulla facilisi cras non velit nec nisi vulputate nonummy', '2023-06-27 15:27:50', 98, 2, 4),
(15, 'duis mattis egestas metus aenean fermentum donec', '2023-05-22 18:12:08', 43, 90, 92),
(16, 'erat nulla tempus vivamus in felis eu sapien cursus vestibulum', '2023-07-19 19:56:35', 29, 60, 93),
(17, 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', '2023-07-14 16:24:59', 60, 92, 16),
(18, 'rutrum nulla tellus in sagittis dui vel nisl duis', '2023-05-17 04:18:36', 35, 60, 86),
(19, 'eu mi nulla ac enim', '2023-06-04 10:16:55', 76, 27, 14),
(20, 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', '2023-04-30 08:50:56', 63, 19, 97),
(21, 'ut erat curabitur gravida nisi at nibh', '2023-07-04 07:39:00', 52, 89, 41),
(22, 'ac lobortis vel dapibus at diam nam', '2023-04-08 15:05:38', 5, 10, 48),
(23, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in', '2023-06-09 03:17:54', 59, 31, 1),
(24, 'felis ut at dolor quis odio consequat varius integer ac leo', '2023-07-06 04:18:46', 50, 71, 47),
(25, 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', '2023-06-29 08:31:10', 80, 56, 27),
(26, 'velit eu est congue elementum in hac habitasse platea dictumst', '2023-06-23 10:40:07', 4, 39, 77),
(27, 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', '2023-04-14 23:09:00', 15, 72, 28),
(28, 'sociis natoque penatibus et magnis dis parturient montes', '2023-07-16 11:00:58', 98, 68, 25),
(29, 'risus auctor sed tristique in tempus sit amet sem fusce', '2023-07-12 12:25:13', 28, 9, 29),
(30, 'quis odio consequat varius integer', '2023-07-05 04:35:12', 26, 24, 28),
(31, 'proin eu mi nulla ac enim in tempor', '2023-07-26 06:56:13', 20, 75, 9),
(32, 'etiam justo etiam pretium iaculis justo in hac habitasse', '2023-05-07 18:53:29', 13, 39, 27),
(33, 'metus aenean fermentum donec ut mauris eget', '2023-07-29 17:59:11', 84, 94, 74),
(34, 'id ornare imperdiet sapien urna pretium nisl', '2023-06-03 10:14:04', 26, 2, 11),
(35, 'nascetur ridiculus mus vivamus vestibulum sagittis sapien', '2023-05-26 06:31:36', 89, 96, 64),
(36, 'at turpis a pede posuere', '2023-04-19 16:35:59', 1, 85, 70),
(37, 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', '2023-06-26 18:21:01', 54, 31, 8),
(38, 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', '2023-05-09 10:17:23', 17, 65, 32),
(39, 'pede venenatis non sodales sed', '2023-04-21 14:04:11', 23, 31, 21),
(40, 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', '2023-06-17 19:59:05', 95, 10, 67),
(41, 'ut mauris eget massa tempor convallis nulla neque libero convallis eget', '2023-05-01 14:50:30', 76, 77, 10),
(42, 'lobortis vel dapibus at diam nam tristique tortor', '2023-05-10 05:17:19', 30, 100, 21),
(43, 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '2023-07-23 09:06:27', 21, 56, 49),
(44, 'aliquam convallis nunc proin at turpis', '2023-05-31 22:32:31', 22, 58, 41),
(45, 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit', '2023-07-01 10:58:51', 78, 66, 36),
(46, 'diam vitae quam suspendisse potenti nullam porttitor lacus', '2023-06-01 22:26:43', 33, 43, 67),
(47, 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', '2023-06-16 07:45:05', 71, 50, 94),
(48, 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '2023-07-18 06:30:48', 48, 42, 34),
(49, 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', '2023-05-01 07:41:50', 93, 76, 41),
(50, 'posuere nonummy integer non velit', '2023-06-11 07:20:55', 40, 98, 61),
(51, 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', '2023-05-03 00:12:23', 39, 75, 83),
(52, 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', '2023-04-13 06:25:31', 11, 38, 37),
(53, 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', '2023-06-07 21:37:51', 97, 33, 91),
(54, 'consequat lectus in est risus auctor sed tristique in tempus sit amet sem', '2023-07-08 22:54:50', 22, 52, 17),
(55, 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', '2023-04-19 17:59:41', 25, 28, 6),
(56, 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '2023-07-01 14:34:53', 94, 14, 45),
(57, 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', '2023-06-16 03:43:34', 37, 9, 8),
(58, 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', '2023-05-26 15:13:35', 97, 39, 81),
(59, 'nascetur ridiculus mus etiam vel', '2023-05-17 00:52:04', 77, 31, 99),
(60, 'eleifend donec ut dolor morbi vel lectus', '2023-05-18 12:04:49', 70, 18, 61),
(61, 'neque vestibulum eget vulputate ut', '2023-07-02 17:25:57', 47, 28, 52),
(62, 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', '2023-05-08 23:38:35', 24, 67, 34),
(63, 'eu nibh quisque id justo sit', '2023-06-16 14:35:46', 67, 61, 55),
(64, 'at feugiat non pretium quis lectus', '2023-04-05 20:25:10', 62, 86, 73),
(65, 'sapien urna pretium nisl ut', '2023-04-09 01:23:37', 7, 46, 89),
(66, 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', '2023-06-16 05:19:18', 64, 68, 42),
(67, 'phasellus id sapien in sapien iaculis', '2023-07-30 03:55:08', 57, 86, 13),
(68, 'nunc viverra dapibus nulla suscipit ligula', '2023-07-26 21:49:15', 77, 76, 56),
(69, 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', '2023-05-07 13:59:41', 54, 6, 67),
(70, 'curae mauris viverra diam vitae', '2023-04-25 03:23:41', 51, 10, 42),
(71, 'metus arcu adipiscing molestie hendrerit at vulputate vitae', '2023-04-26 14:11:10', 3, 81, 89),
(72, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '2023-05-23 09:40:27', 42, 33, 44),
(73, 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', '2023-06-03 05:59:56', 78, 36, 8),
(74, 'dis parturient montes nascetur ridiculus', '2023-05-16 22:03:32', 30, 67, 78),
(75, 'posuere nonummy integer non velit donec', '2023-06-05 05:05:34', 86, 91, 87),
(76, 'metus sapien ut nunc vestibulum ante', '2023-06-27 06:03:08', 68, 19, 87),
(77, 'pede justo lacinia eget tincidunt eget tempus vel pede morbi', '2023-06-30 10:12:43', 69, 87, 26),
(78, 'nunc donec quis orci eget orci vehicula condimentum curabitur in libero', '2023-05-30 13:07:25', 28, 79, 75),
(79, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', '2023-05-11 07:16:13', 48, 47, 2),
(80, 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit', '2023-04-15 16:54:35', 43, 12, 71),
(81, 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '2023-05-13 08:10:06', 76, 89, 5),
(82, 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', '2023-06-06 04:28:05', 86, 44, 50),
(83, 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', '2023-04-25 00:53:31', 96, 68, 65),
(84, 'habitasse platea dictumst aliquam augue quam sollicitudin', '2023-04-16 22:36:36', 8, 65, 74),
(85, 'sapien urna pretium nisl ut volutpat', '2023-06-16 14:24:53', 31, 30, 31),
(86, 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus', '2023-06-30 14:27:53', 13, 95, 1),
(87, 'sed vestibulum sit amet cursus id turpis integer aliquet', '2023-05-06 09:45:18', 23, 15, 100),
(88, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', '2023-04-05 14:12:11', 93, 98, 30),
(89, 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam', '2023-04-26 18:51:28', 42, 70, 63),
(90, 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien', '2023-07-14 06:19:24', 58, 5, 45),
(91, 'vulputate elementum nullam varius nulla facilisi', '2023-04-29 04:34:24', 95, 68, 65),
(92, 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', '2023-07-19 23:43:45', 43, 49, 6),
(93, 'fusce consequat nulla nisl nunc nisl', '2023-06-18 11:14:10', 31, 54, 78),
(94, 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas', '2023-06-12 11:43:29', 22, 3, 58),
(95, 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', '2023-04-02 23:03:41', 42, 79, 15),
(96, 'morbi sem mauris laoreet ut', '2023-07-19 18:03:27', 16, 12, 41),
(97, 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', '2023-05-27 19:57:40', 67, 83, 40),
(98, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', '2023-04-24 04:17:20', 87, 47, 8),
(99, 'mauris non ligula pellentesque ultrices phasellus id sapien in', '2023-07-12 10:19:58', 8, 36, 37),
(100, 'metus sapien ut nunc vestibulum ante ipsum', '2023-07-08 16:22:46', 63, 86, 30),
(101, 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', '2023-05-20 10:21:36', 17, 69, 27),
(102, 'blandit ultrices enim lorem ipsum dolor sit', '2023-04-10 00:16:06', 99, 37, 74),
(103, 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis', '2023-07-24 05:24:22', 47, 87, 77),
(104, 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', '2023-06-06 10:20:07', 92, 89, 64),
(105, 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', '2023-07-25 23:57:18', 17, 23, 75),
(106, 'sed vestibulum sit amet cursus id turpis integer', '2023-07-11 22:06:13', 83, 100, 91),
(107, 'massa volutpat convallis morbi odio odio elementum eu', '2023-05-01 06:06:34', 48, 11, 83),
(108, 'phasellus id sapien in sapien iaculis congue vivamus metus', '2023-05-05 09:53:05', 63, 44, 65),
(109, 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', '2023-07-17 00:42:13', 72, 13, 8),
(110, 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', '2023-04-11 02:51:36', 28, 10, 63),
(111, 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', '2023-04-15 14:57:42', 81, 14, 42),
(112, 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '2023-04-10 18:15:28', 5, 18, 43),
(113, 'scelerisque mauris sit amet eros suspendisse accumsan tortor', '2023-04-14 19:42:54', 48, 11, 43),
(114, 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl', '2023-04-16 12:04:28', 14, 73, 34),
(115, 'felis fusce posuere felis sed lacus', '2023-05-23 19:33:20', 60, 74, 25),
(116, 'platea dictumst aliquam augue quam sollicitudin vitae', '2023-04-06 14:20:42', 76, 48, 70),
(117, 'ut dolor morbi vel lectus', '2023-07-25 23:34:57', 20, 53, 67),
(118, 'et eros vestibulum ac est lacinia nisi venenatis', '2023-04-19 23:39:53', 80, 11, 73),
(119, 'nunc nisl duis bibendum felis', '2023-07-03 14:58:44', 38, 27, 38),
(120, 'tempus sit amet sem fusce consequat nulla nisl nunc nisl', '2023-05-08 15:42:56', 100, 56, 44),
(121, 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', '2023-05-16 11:09:27', 46, 18, 25),
(122, 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '2023-06-06 12:30:25', 40, 49, 76),
(123, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', '2023-07-12 22:44:06', 96, 16, 4),
(124, 'auctor sed tristique in tempus sit amet sem fusce consequat nulla', '2023-07-13 21:03:46', 78, 1, 90),
(125, 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '2023-07-20 05:10:47', 8, 2, 92),
(126, 'id consequat in consequat ut nulla sed accumsan felis ut at dolor', '2023-07-30 16:35:28', 93, 69, 70),
(127, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', '2023-05-05 03:54:33', 83, 72, 48),
(128, 'nisl venenatis lacinia aenean sit amet', '2023-06-07 00:47:31', 73, 67, 79),
(129, 'in blandit ultrices enim lorem ipsum dolor', '2023-07-01 08:19:49', 89, 77, 1),
(130, 'lectus in est risus auctor sed tristique in', '2023-04-04 17:21:23', 88, 84, 7),
(131, 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', '2023-06-22 06:41:58', 6, 49, 71),
(132, 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', '2023-06-24 06:43:36', 70, 90, 99),
(133, 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', '2023-06-16 08:27:20', 87, 86, 7),
(134, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', '2023-07-06 15:20:16', 33, 98, 48),
(135, 'duis consequat dui nec nisi volutpat', '2023-05-29 00:41:28', 65, 22, 96),
(136, 'eros vestibulum ac est lacinia nisi venenatis tristique', '2023-05-08 10:44:31', 37, 44, 41),
(137, 'sit amet nulla quisque arcu libero rutrum ac', '2023-07-19 18:09:10', 59, 43, 76),
(138, 'adipiscing lorem vitae mattis nibh ligula', '2023-06-04 20:55:47', 2, 30, 55),
(139, 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit', '2023-05-11 20:15:33', 86, 49, 86),
(140, 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '2023-05-22 19:19:20', 93, 46, 18),
(141, 'nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', '2023-05-11 16:51:22', 45, 32, 65),
(142, 'cras mi pede malesuada in imperdiet et commodo', '2023-04-24 08:42:40', 17, 42, 14),
(143, 'cursus id turpis integer aliquet massa id', '2023-07-18 04:58:45', 45, 27, 98),
(144, 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', '2023-07-04 14:26:23', 93, 15, 5),
(145, 'mus etiam vel augue vestibulum rutrum rutrum neque aenean', '2023-07-23 03:54:22', 37, 60, 15),
(146, 'mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', '2023-07-09 03:20:36', 3, 75, 60),
(147, 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', '2023-05-03 00:19:19', 37, 44, 41),
(148, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', '2023-05-22 11:22:24', 87, 23, 21),
(149, 'congue elementum in hac habitasse platea dictumst morbi vestibulum', '2023-07-25 09:04:28', 57, 17, 13),
(150, 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis', '2023-06-15 16:17:17', 18, 41, 3),
(151, 'imperdiet et commodo vulputate justo in blandit ultrices enim', '2023-07-08 19:42:31', 42, 82, 9),
(152, 'turpis integer aliquet massa id lobortis convallis tortor risus', '2023-06-19 12:58:02', 65, 60, 55),
(153, 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium', '2023-07-02 20:27:05', 23, 25, 79),
(154, 'felis sed lacus morbi sem mauris', '2023-04-17 14:45:03', 46, 67, 92),
(155, 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '2023-07-02 01:43:15', 79, 13, 31),
(156, 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis', '2023-04-29 06:58:12', 61, 62, 71),
(157, 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', '2023-07-14 20:28:31', 87, 59, 47),
(158, 'eu nibh quisque id justo sit', '2023-05-22 23:28:48', 86, 100, 68),
(159, 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu', '2023-05-11 01:07:24', 75, 6, 65),
(160, 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '2023-05-17 16:51:24', 3, 58, 98),
(161, 'libero nam dui proin leo odio porttitor id consequat', '2023-06-26 11:58:56', 51, 61, 45),
(162, 'metus sapien ut nunc vestibulum ante ipsum', '2023-07-20 14:24:31', 11, 7, 13),
(163, 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', '2023-06-04 05:18:59', 63, 98, 90),
(164, 'ut erat curabitur gravida nisi at', '2023-05-22 08:58:22', 73, 83, 24),
(165, 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '2023-05-25 14:34:08', 3, 71, 95),
(166, 'felis fusce posuere felis sed lacus morbi', '2023-07-25 08:00:57', 94, 84, 72),
(167, 'venenatis turpis enim blandit mi in porttitor pede justo eu', '2023-04-18 11:11:53', 72, 18, 100),
(168, 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', '2023-04-05 20:54:13', 12, 27, 85),
(169, 'sem sed sagittis nam congue risus semper', '2023-05-20 22:20:30', 12, 75, 65),
(170, 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', '2023-04-25 04:02:52', 56, 74, 58),
(171, 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', '2023-05-20 14:51:14', 6, 64, 62),
(172, 'interdum mauris ullamcorper purus sit amet nulla', '2023-07-01 14:50:10', 61, 69, 1),
(173, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', '2023-05-05 04:03:36', 11, 42, 33),
(174, 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', '2023-05-13 09:57:46', 45, 26, 4),
(175, 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '2023-06-10 07:50:42', 33, 31, 28),
(176, 'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', '2023-04-13 04:26:22', 93, 37, 73),
(177, 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', '2023-06-16 06:14:31', 27, 33, 65),
(178, 'suspendisse ornare consequat lectus in', '2023-04-21 17:18:30', 26, 42, 10),
(179, 'vitae nisi nam ultrices libero non', '2023-07-17 15:26:50', 71, 53, 17),
(180, 'ipsum primis in faucibus orci luctus et ultrices', '2023-05-19 20:17:38', 43, 100, 7),
(181, 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', '2023-04-17 21:10:29', 64, 78, 63),
(182, 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', '2023-05-19 12:24:06', 69, 50, 14),
(183, 'justo eu massa donec dapibus duis at velit eu est congue', '2023-05-06 06:09:45', 23, 3, 1),
(184, 'ut nulla sed accumsan felis ut at dolor quis odio', '2023-06-20 23:59:10', 34, 27, 26),
(185, 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', '2023-05-19 08:22:21', 7, 95, 92),
(186, 'non interdum in ante vestibulum ante ipsum', '2023-06-27 13:06:10', 99, 31, 50),
(187, 'eleifend pede libero quis orci nullam molestie', '2023-05-22 07:16:43', 11, 18, 61),
(188, 'maecenas tincidunt lacus at velit vivamus vel nulla eget', '2023-04-30 11:12:49', 40, 26, 56),
(189, 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '2023-05-18 08:47:07', 16, 58, 90),
(190, 'diam cras pellentesque volutpat dui maecenas tristique est et tempus', '2023-07-28 19:46:37', 23, 93, 49),
(191, 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', '2023-04-23 04:33:59', 30, 72, 17),
(192, 'lectus vestibulum quam sapien varius ut blandit non interdum', '2023-06-23 14:40:03', 63, 65, 10),
(193, 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', '2023-06-21 03:35:20', 96, 10, 69),
(194, 'augue vestibulum rutrum rutrum neque aenean', '2023-07-17 07:08:50', 20, 62, 16),
(195, 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', '2023-06-17 12:31:12', 10, 31, 59),
(196, 'primis in faucibus orci luctus', '2023-05-08 03:51:01', 22, 51, 99),
(197, 'sapien a libero nam dui proin leo odio porttitor', '2023-04-19 11:48:29', 23, 58, 19),
(198, 'lorem vitae mattis nibh ligula nec sem duis', '2023-07-09 09:03:41', 63, 84, 97),
(199, 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', '2023-07-25 01:19:32', 64, 41, 63),
(200, 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', '2023-05-08 01:33:38', 32, 31, 72),
(201, 'odio cras mi pede malesuada in', '2023-04-20 06:18:00', 3, 22, 71),
(202, 'lectus vestibulum quam sapien varius ut blandit', '2023-06-18 04:52:39', 31, 80, 96),
(203, 'pulvinar sed nisl nunc rhoncus dui', '2023-06-21 23:42:56', 96, 93, 54),
(204, 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna', '2023-06-07 06:25:36', 19, 30, 20),
(205, 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', '2023-04-27 11:49:58', 80, 96, 82),
(206, 'in porttitor pede justo eu massa donec', '2023-06-19 17:32:26', 34, 100, 90),
(207, 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', '2023-06-28 21:11:52', 42, 1, 35),
(208, 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', '2023-05-13 16:44:58', 16, 100, 54),
(209, 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi', '2023-07-13 09:52:54', 44, 10, 83),
(210, 'eu interdum eu tincidunt in leo maecenas', '2023-07-06 21:13:54', 37, 55, 92),
(211, 'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', '2023-04-26 13:37:00', 48, 78, 42),
(212, 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', '2023-05-11 01:40:56', 38, 32, 30),
(213, 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', '2023-06-09 23:00:35', 32, 26, 43),
(214, 'a pede posuere nonummy integer non velit donec diam', '2023-06-08 13:36:09', 24, 29, 52),
(215, 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '2023-06-22 15:36:39', 100, 5, 67),
(216, 'primis in faucibus orci luctus et ultrices posuere', '2023-06-12 00:08:23', 91, 45, 41),
(217, 'risus auctor sed tristique in tempus sit amet sem', '2023-05-14 19:24:05', 65, 80, 33),
(218, 'nullam molestie nibh in lectus pellentesque', '2023-05-19 16:55:19', 75, 58, 7),
(219, 'morbi ut odio cras mi pede malesuada in imperdiet', '2023-04-27 11:04:18', 96, 13, 50),
(220, 'ut at dolor quis odio consequat varius integer ac leo', '2023-05-01 16:58:12', 67, 90, 41),
(221, 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', '2023-04-10 12:40:08', 58, 71, 61),
(222, 'quis orci eget orci vehicula', '2023-06-01 11:30:00', 57, 56, 85),
(223, 'vitae nisl aenean lectus pellentesque eget nunc donec', '2023-06-14 02:19:46', 19, 17, 15),
(224, 'vitae nisl aenean lectus pellentesque eget nunc', '2023-04-12 11:10:06', 43, 76, 54),
(225, 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', '2023-05-11 21:13:06', 44, 62, 5),
(226, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', '2023-04-06 13:38:02', 19, 65, 55),
(227, 'in tempor turpis nec euismod scelerisque', '2023-07-08 21:00:49', 57, 71, 38),
(228, 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', '2023-07-31 02:19:04', 29, 97, 10),
(229, 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', '2023-05-28 20:40:09', 24, 33, 15),
(230, 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', '2023-04-13 17:33:01', 73, 59, 34),
(231, 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', '2023-05-31 06:44:02', 44, 39, 31),
(232, 'in tempus sit amet sem fusce consequat', '2023-05-15 15:02:33', 75, 87, 22),
(233, 'tellus semper interdum mauris ullamcorper purus', '2023-06-21 11:30:38', 50, 51, 86),
(234, 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', '2023-07-22 19:48:38', 57, 32, 71),
(235, 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', '2023-04-05 19:02:50', 31, 35, 26),
(236, 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', '2023-07-03 15:57:12', 7, 73, 98),
(237, 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', '2023-05-23 02:37:10', 30, 31, 81),
(238, 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque', '2023-06-26 19:54:25', 23, 48, 50),
(239, 'lectus pellentesque eget nunc donec quis orci', '2023-06-06 20:09:36', 62, 31, 53),
(240, 'feugiat et eros vestibulum ac', '2023-05-18 09:36:57', 94, 67, 89),
(241, 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', '2023-04-17 10:02:44', 54, 90, 76),
(242, 'in magna bibendum imperdiet nullam', '2023-06-08 21:53:25', 77, 81, 38),
(243, 'aliquam sit amet diam in magna bibendum imperdiet nullam orci', '2023-05-08 06:01:09', 71, 98, 9),
(244, 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', '2023-04-06 09:11:38', 88, 70, 55),
(245, 'maecenas leo odio condimentum id luctus nec molestie', '2023-05-08 06:33:56', 18, 13, 51),
(246, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut', '2023-06-14 08:53:01', 47, 45, 68),
(247, 'varius ut blandit non interdum in ante', '2023-05-17 01:21:35', 3, 14, 74),
(248, 'nibh in hac habitasse platea dictumst aliquam augue', '2023-06-07 00:05:51', 69, 82, 23),
(249, 'justo sit amet sapien dignissim vestibulum vestibulum', '2023-07-08 08:03:49', 42, 66, 41),
(250, 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', '2023-06-29 09:24:16', 55, 61, 63),
(251, 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis', '2023-07-15 04:12:57', 95, 74, 14),
(252, 'sit amet eleifend pede libero', '2023-07-13 01:31:10', 83, 14, 18),
(253, 'nonummy maecenas tincidunt lacus at velit vivamus', '2023-07-11 10:41:09', 48, 93, 48),
(254, 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', '2023-04-03 00:18:09', 46, 9, 93),
(255, 'sapien placerat ante nulla justo aliquam quis turpis eget', '2023-06-01 22:49:44', 70, 85, 54),
(256, 'at dolor quis odio consequat', '2023-05-15 07:31:05', 12, 87, 26),
(257, 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', '2023-07-10 05:27:02', 27, 21, 14),
(258, 'eleifend quam a odio in hac habitasse platea dictumst maecenas', '2023-04-30 20:50:03', 73, 68, 62),
(259, 'vel ipsum praesent blandit lacinia erat vestibulum', '2023-06-20 06:54:51', 57, 56, 63),
(260, 'dis parturient montes nascetur ridiculus', '2023-04-24 03:12:50', 2, 58, 79),
(261, 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', '2023-05-10 06:54:37', 14, 11, 68),
(262, 'ante vel ipsum praesent blandit lacinia erat vestibulum sed', '2023-07-02 09:31:24', 72, 3, 76),
(263, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', '2023-06-04 10:10:03', 52, 1, 8),
(264, 'id turpis integer aliquet massa', '2023-06-22 23:33:15', 81, 57, 15),
(265, 'suspendisse potenti in eleifend quam a odio in', '2023-05-17 03:03:45', 28, 68, 79),
(266, 'id nulla ultrices aliquet maecenas leo odio', '2023-05-30 08:12:54', 59, 88, 36),
(267, 'auctor gravida sem praesent id massa id nisl venenatis lacinia', '2023-07-18 16:10:46', 35, 63, 83),
(268, 'quam turpis adipiscing lorem vitae mattis nibh ligula', '2023-04-14 08:05:47', 46, 38, 94),
(269, 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', '2023-06-10 17:16:17', 56, 20, 98),
(270, 'nulla sed accumsan felis ut at dolor quis odio consequat varius', '2023-04-04 15:50:09', 4, 21, 31),
(271, 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', '2023-05-27 04:06:39', 40, 71, 32),
(272, 'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', '2023-06-15 00:49:52', 75, 78, 99),
(273, 'quis orci eget orci vehicula condimentum curabitur in libero ut massa', '2023-05-27 10:15:00', 49, 25, 84),
(274, 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2023-05-12 01:08:56', 57, 67, 61),
(275, 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', '2023-04-22 05:56:00', 82, 43, 36),
(276, 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', '2023-05-16 11:49:29', 3, 51, 3),
(277, 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', '2023-06-02 13:28:57', 20, 75, 3),
(278, 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '2023-05-06 14:08:23', 41, 42, 95),
(279, 'integer ac neque duis bibendum morbi', '2023-07-27 23:16:21', 45, 79, 86),
(280, 'a feugiat et eros vestibulum ac est lacinia nisi', '2023-07-06 06:45:04', 1, 52, 69),
(281, 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2023-04-16 11:04:37', 84, 69, 35),
(282, 'lacinia eget tincidunt eget tempus vel', '2023-07-06 18:04:26', 73, 5, 53),
(283, 'ornare imperdiet sapien urna pretium nisl ut volutpat', '2023-06-24 15:35:25', 14, 91, 46),
(284, 'amet diam in magna bibendum imperdiet nullam orci', '2023-05-07 01:55:49', 23, 29, 99),
(285, 'tortor quis turpis sed ante vivamus tortor', '2023-05-14 19:13:14', 75, 22, 38),
(286, 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', '2023-04-28 20:52:56', 3, 69, 22),
(287, 'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', '2023-04-27 05:45:06', 85, 68, 32),
(288, 'quisque porta volutpat erat quisque erat eros', '2023-05-22 16:01:11', 10, 71, 38),
(289, 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa', '2023-06-02 04:16:28', 22, 17, 85),
(290, 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis', '2023-04-28 20:03:45', 16, 33, 34),
(291, 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '2023-06-13 23:28:44', 3, 11, 91),
(292, 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent', '2023-05-06 12:44:49', 7, 60, 44),
(293, 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper', '2023-04-14 09:28:29', 53, 3, 18),
(294, 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo', '2023-07-29 23:35:12', 64, 65, 53),
(295, 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', '2023-07-01 22:51:32', 64, 65, 92),
(296, 'eu orci mauris lacinia sapien quis libero nullam sit amet', '2023-07-06 00:22:53', 24, 31, 45),
(297, 'nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', '2023-06-04 04:21:13', 48, 82, 32),
(298, 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', '2023-06-28 02:57:33', 60, 96, 55),
(299, 'nisi eu orci mauris lacinia', '2023-06-12 08:46:45', 83, 36, 86),
(300, 'posuere nonummy integer non velit donec', '2023-06-06 05:31:44', 44, 31, 69),
(301, 'ultrices aliquet maecenas leo odio', '2023-05-15 17:43:44', 61, 59, 5),
(302, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', '2023-05-13 18:59:35', 100, 19, 55),
(303, 'volutpat eleifend donec ut dolor morbi', '2023-05-17 00:22:13', 25, 67, 41),
(304, 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo', '2023-07-24 20:05:06', 89, 33, 40),
(305, 'rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', '2023-04-30 23:39:18', 21, 50, 90),
(306, 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', '2023-07-21 18:47:47', 66, 11, 15),
(307, 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', '2023-07-11 21:13:48', 34, 9, 98),
(308, 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', '2023-06-14 00:45:34', 61, 58, 72),
(309, 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', '2023-04-29 19:50:12', 29, 63, 53),
(310, 'congue diam id ornare imperdiet sapien', '2023-04-10 21:36:06', 4, 74, 96),
(311, 'consequat in consequat ut nulla sed accumsan felis', '2023-05-25 19:36:29', 59, 89, 48),
(312, 'in hac habitasse platea dictumst', '2023-07-10 11:23:00', 71, 35, 85),
(313, 'nisi venenatis tristique fusce congue diam id ornare', '2023-06-23 02:05:12', 31, 27, 14),
(314, 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', '2023-06-17 23:09:35', 66, 57, 52),
(315, 'eleifend pede libero quis orci nullam', '2023-04-24 10:04:52', 76, 85, 94),
(316, 'ante vivamus tortor duis mattis egestas', '2023-04-10 06:07:23', 85, 6, 29),
(317, 'amet nunc viverra dapibus nulla suscipit ligula in lacus', '2023-04-02 11:47:27', 78, 42, 83),
(318, 'mauris morbi non lectus aliquam sit', '2023-04-12 02:20:46', 2, 91, 45),
(319, 'porttitor lacus at turpis donec posuere metus vitae ipsum', '2023-06-08 10:36:25', 40, 62, 80),
(320, 'sit amet justo morbi ut odio cras', '2023-07-21 19:44:42', 77, 87, 72),
(321, 'dapibus dolor vel est donec odio justo sollicitudin ut', '2023-04-16 07:00:54', 54, 30, 41),
(322, 'neque duis bibendum morbi non quam nec dui luctus rutrum', '2023-07-09 23:17:15', 93, 92, 13),
(323, 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', '2023-05-26 02:27:19', 95, 45, 16),
(324, 'luctus rutrum nulla tellus in sagittis dui', '2023-05-26 04:17:16', 64, 47, 14),
(325, 'vitae mattis nibh ligula nec sem duis aliquam convallis', '2023-04-12 09:45:14', 2, 83, 52),
(326, 'mi pede malesuada in imperdiet et commodo', '2023-07-27 07:55:25', 53, 46, 37),
(327, 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '2023-07-22 19:06:15', 66, 30, 69),
(328, 'cursus id turpis integer aliquet', '2023-07-13 09:10:19', 98, 19, 9),
(329, 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', '2023-04-15 16:58:34', 77, 46, 23),
(330, 'sem fusce consequat nulla nisl nunc', '2023-07-21 20:11:31', 91, 53, 26),
(331, 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', '2023-05-20 03:52:59', 80, 41, 28),
(332, 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', '2023-05-30 06:44:14', 68, 98, 60),
(333, 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non', '2023-04-28 03:40:40', 33, 90, 73),
(334, 'morbi porttitor lorem id ligula suspendisse ornare consequat', '2023-04-10 06:14:34', 39, 12, 22),
(335, 'ut massa quis augue luctus', '2023-05-21 03:36:23', 54, 29, 68),
(336, 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie', '2023-06-23 15:45:50', 8, 22, 95),
(337, 'elit proin interdum mauris non', '2023-07-12 05:00:30', 1, 99, 66),
(338, 'in lacus curabitur at ipsum ac tellus semper interdum', '2023-06-17 10:20:55', 46, 74, 62),
(339, 'convallis tortor risus dapibus augue', '2023-05-23 04:37:58', 67, 95, 77),
(340, 'mus vivamus vestibulum sagittis sapien', '2023-07-30 02:16:00', 83, 73, 12),
(341, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', '2023-07-01 02:29:00', 20, 1, 56),
(342, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', '2023-04-05 06:06:19', 19, 97, 86),
(343, 'proin interdum mauris non ligula pellentesque ultrices phasellus id', '2023-07-14 21:36:34', 28, 34, 14),
(344, 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus', '2023-04-29 03:50:24', 21, 89, 89),
(345, 'posuere cubilia curae mauris viverra diam vitae quam suspendisse', '2023-05-20 00:39:38', 23, 55, 13),
(346, 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '2023-06-13 07:40:11', 68, 24, 99),
(347, 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', '2023-05-13 09:46:54', 12, 49, 33),
(348, 'at lorem integer tincidunt ante', '2023-04-27 06:28:56', 67, 62, 62),
(349, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '2023-04-04 22:07:05', 44, 19, 26),
(350, 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '2023-06-03 04:47:21', 92, 96, 61),
(351, 'porta volutpat quam pede lobortis ligula sit amet eleifend', '2023-05-01 04:42:45', 24, 7, 95),
(352, 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', '2023-05-15 20:02:23', 38, 4, 71),
(353, 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', '2023-07-25 00:29:56', 37, 57, 19),
(354, 'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', '2023-05-06 13:53:47', 53, 75, 35),
(355, 'fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', '2023-04-25 01:31:25', 14, 73, 11),
(356, 'congue diam id ornare imperdiet sapien urna pretium nisl', '2023-07-27 01:28:59', 55, 91, 84),
(357, 'dolor sit amet consectetuer adipiscing elit proin interdum mauris', '2023-04-24 08:39:51', 1, 49, 32),
(358, 'hac habitasse platea dictumst maecenas ut massa quis', '2023-07-19 18:18:09', 89, 79, 75),
(359, 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', '2023-05-25 20:35:57', 36, 62, 94),
(360, 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', '2023-04-10 08:14:57', 21, 2, 52),
(361, 'morbi porttitor lorem id ligula suspendisse', '2023-05-19 02:55:03', 81, 64, 5),
(362, 'libero convallis eget eleifend luctus ultricies eu nibh quisque', '2023-05-06 11:37:02', 8, 87, 37),
(363, 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', '2023-04-07 00:33:07', 30, 76, 83),
(364, 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros', '2023-05-11 05:27:13', 72, 1, 5),
(365, 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', '2023-05-02 15:21:38', 71, 79, 58),
(366, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2023-07-29 08:41:17', 38, 28, 25),
(367, 'feugiat et eros vestibulum ac est lacinia nisi venenatis', '2023-06-03 02:33:09', 10, 82, 8),
(368, 'erat nulla tempus vivamus in', '2023-06-20 19:39:40', 19, 62, 10),
(369, 'at velit eu est congue elementum', '2023-04-11 20:50:02', 2, 1, 46),
(370, 'metus arcu adipiscing molestie hendrerit at vulputate', '2023-07-22 01:31:15', 12, 55, 22),
(371, 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', '2023-05-10 02:44:22', 98, 66, 73),
(372, 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', '2023-04-22 14:18:53', 78, 25, 75),
(373, 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', '2023-05-01 04:52:05', 30, 42, 27),
(374, 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', '2023-07-25 04:31:01', 45, 4, 73),
(375, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin', '2023-07-04 05:13:00', 81, 17, 43),
(376, 'est donec odio justo sollicitudin ut', '2023-04-06 11:20:10', 74, 89, 84),
(377, 'mi in porttitor pede justo eu massa donec dapibus duis', '2023-07-29 01:09:24', 18, 87, 7),
(378, 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', '2023-06-02 16:33:41', 87, 38, 28),
(379, 'vestibulum proin eu mi nulla ac', '2023-07-12 13:17:57', 73, 9, 2),
(380, 'justo nec condimentum neque sapien placerat ante nulla', '2023-04-25 17:31:10', 98, 93, 36),
(381, 'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', '2023-04-24 05:06:31', 75, 83, 80),
(382, 'lacinia sapien quis libero nullam sit amet turpis elementum', '2023-07-27 18:33:25', 4, 68, 20),
(383, 'tortor sollicitudin mi sit amet', '2023-07-16 08:54:12', 65, 60, 41),
(384, 'integer pede justo lacinia eget', '2023-05-16 05:39:01', 53, 91, 69),
(385, 'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2023-06-21 02:55:26', 61, 70, 2),
(386, 'erat tortor sollicitudin mi sit amet lobortis sapien sapien', '2023-04-20 17:56:52', 28, 70, 58),
(387, 'venenatis turpis enim blandit mi in porttitor pede justo eu massa', '2023-04-07 10:45:49', 3, 91, 42),
(388, 'nunc vestibulum ante ipsum primis in faucibus orci luctus', '2023-07-26 14:15:42', 95, 3, 93),
(389, 'quis turpis eget elit sodales scelerisque mauris', '2023-06-22 22:06:54', 17, 65, 37),
(390, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', '2023-04-09 11:06:14', 32, 36, 54),
(391, 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', '2023-07-15 09:15:59', 53, 2, 35),
(392, 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida', '2023-06-04 22:23:31', 79, 77, 55),
(393, 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '2023-04-20 08:40:40', 11, 83, 31),
(394, 'potenti cras in purus eu magna vulputate luctus', '2023-07-28 13:24:25', 41, 44, 52),
(395, 'quis augue luctus tincidunt nulla', '2023-05-11 21:41:49', 87, 38, 38),
(396, 'phasellus sit amet erat nulla', '2023-05-27 22:27:05', 67, 84, 98),
(397, 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', '2023-04-13 12:46:09', 78, 61, 46),
(398, 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris', '2023-07-27 06:47:27', 62, 99, 32),
(399, 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', '2023-06-13 08:56:58', 7, 72, 50),
(400, 'sit amet eros suspendisse accumsan', '2023-05-07 04:17:19', 94, 49, 65),
(401, 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam', '2023-06-19 14:43:36', 25, 22, 66),
(402, 'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', '2023-04-29 21:04:03', 19, 14, 71),
(403, 'velit donec diam neque vestibulum', '2023-05-01 09:33:01', 53, 65, 71),
(404, 'sodales sed tincidunt eu felis fusce posuere felis sed', '2023-06-12 03:22:02', 56, 40, 2),
(405, 'erat quisque erat eros viverra eget', '2023-07-18 19:42:39', 36, 7, 58),
(406, 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', '2023-05-03 17:31:21', 50, 2, 59),
(407, 'aenean auctor gravida sem praesent id massa', '2023-06-25 07:20:49', 65, 55, 38),
(408, 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', '2023-07-25 05:27:26', 97, 26, 42),
(409, 'tincidunt ante vel ipsum praesent blandit', '2023-06-22 15:39:40', 46, 84, 94),
(410, 'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac', '2023-05-29 20:38:40', 43, 57, 37),
(411, 'orci vehicula condimentum curabitur in', '2023-04-24 22:18:46', 35, 94, 85),
(412, 'porttitor pede justo eu massa donec dapibus duis at velit', '2023-06-24 11:12:51', 6, 15, 41),
(413, 'elit proin interdum mauris non ligula pellentesque', '2023-05-27 10:03:29', 100, 50, 22),
(414, 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', '2023-06-01 02:09:26', 85, 76, 38),
(415, 'a suscipit nulla elit ac nulla sed vel enim sit amet', '2023-05-02 20:40:36', 7, 51, 93),
(416, 'justo etiam pretium iaculis justo in hac habitasse platea dictumst', '2023-04-18 00:03:41', 3, 90, 99),
(417, 'amet eleifend pede libero quis orci nullam molestie nibh', '2023-06-16 10:03:50', 23, 25, 73),
(418, 'ipsum primis in faucibus orci luctus et ultrices', '2023-07-24 14:58:10', 11, 53, 42),
(419, 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam', '2023-06-09 23:19:32', 29, 16, 6),
(420, 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu', '2023-07-26 21:56:12', 13, 28, 99),
(421, 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a', '2023-05-28 07:19:46', 13, 94, 6),
(422, 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', '2023-06-21 12:40:05', 93, 71, 15),
(423, 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', '2023-07-03 05:47:03', 65, 13, 61),
(424, 'donec diam neque vestibulum eget vulputate ut ultrices vel', '2023-04-25 02:21:55', 64, 79, 80),
(425, 'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', '2023-06-27 10:07:39', 48, 15, 67),
(426, 'blandit mi in porttitor pede justo eu massa donec', '2023-07-30 07:40:29', 88, 97, 87),
(427, 'consequat dui nec nisi volutpat eleifend donec ut', '2023-07-24 04:26:43', 35, 69, 84),
(428, 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', '2023-05-04 05:38:08', 54, 31, 38),
(429, 'mauris morbi non lectus aliquam sit amet diam', '2023-05-29 19:04:08', 37, 39, 35),
(430, 'at nunc commodo placerat praesent blandit nam', '2023-06-14 09:25:13', 77, 14, 33),
(431, 'semper est quam pharetra magna ac consequat metus sapien ut nunc', '2023-06-11 08:34:54', 34, 4, 86),
(432, 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', '2023-05-16 19:22:44', 31, 11, 71),
(433, 'posuere cubilia curae mauris viverra diam vitae quam', '2023-04-02 07:07:35', 11, 73, 64),
(434, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', '2023-06-11 05:15:27', 34, 98, 52),
(435, 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', '2023-04-26 03:49:03', 60, 6, 51),
(436, 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', '2023-05-19 13:42:42', 10, 47, 42),
(437, 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', '2023-05-06 10:07:09', 22, 82, 75),
(438, 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', '2023-07-21 07:51:49', 42, 1, 83),
(439, 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', '2023-04-15 19:49:34', 2, 52, 47),
(440, 'curabitur convallis duis consequat dui nec nisi volutpat eleifend', '2023-04-29 10:09:21', 47, 65, 21),
(441, 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis', '2023-06-25 07:49:12', 21, 41, 38),
(442, 'ut erat id mauris vulputate elementum nullam varius nulla', '2023-07-27 20:59:33', 36, 62, 3),
(443, 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '2023-06-11 17:42:34', 66, 83, 27),
(444, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '2023-06-08 02:45:38', 43, 64, 47),
(445, 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum', '2023-05-29 23:41:13', 74, 73, 81),
(446, 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', '2023-05-25 18:56:09', 94, 21, 91),
(447, 'donec ut mauris eget massa tempor convallis', '2023-05-12 12:03:24', 22, 44, 90),
(448, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo', '2023-06-28 03:45:59', 13, 44, 72),
(449, 'nulla nunc purus phasellus in felis donec semper', '2023-05-01 20:04:32', 55, 65, 68),
(450, 'ipsum praesent blandit lacinia erat vestibulum sed magna at', '2023-06-06 16:38:10', 16, 97, 48),
(451, 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', '2023-06-07 19:59:49', 15, 80, 41),
(452, 'vivamus vestibulum sagittis sapien cum', '2023-06-21 15:18:45', 35, 62, 95),
(453, 'vitae consectetuer eget rutrum at lorem integer tincidunt', '2023-07-01 12:55:44', 45, 20, 98),
(454, 'in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam', '2023-04-11 18:16:30', 43, 22, 37),
(455, 'libero ut massa volutpat convallis morbi odio odio elementum eu', '2023-06-28 00:34:28', 16, 61, 56),
(456, 'dui vel nisl duis ac nibh fusce lacus', '2023-07-27 19:26:12', 92, 55, 85),
(457, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien', '2023-06-16 19:11:34', 75, 62, 98),
(458, 'magna vestibulum aliquet ultrices erat', '2023-04-29 14:58:18', 72, 61, 37),
(459, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', '2023-07-16 21:05:31', 71, 23, 69),
(460, 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', '2023-06-22 09:57:41', 55, 92, 46),
(461, 'felis sed interdum venenatis turpis enim blandit mi', '2023-07-26 12:15:19', 68, 89, 19),
(462, 'pretium quis lectus suspendisse potenti in eleifend quam a', '2023-05-05 10:55:40', 75, 79, 73),
(463, 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', '2023-07-07 23:38:49', 61, 9, 11),
(464, 'at lorem integer tincidunt ante vel ipsum praesent', '2023-06-19 10:29:22', 85, 84, 10);
INSERT INTO `message` (`messageID`, `messageText`, `timestamp`, `senderID`, `receiverID`, `listingID`) VALUES
(465, 'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa', '2023-04-28 17:07:13', 3, 94, 70),
(466, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '2023-05-06 05:06:27', 42, 23, 95),
(467, 'eget orci vehicula condimentum curabitur in', '2023-04-21 10:33:41', 71, 23, 44),
(468, 'vulputate elementum nullam varius nulla facilisi cras non velit', '2023-05-01 08:55:40', 65, 32, 70),
(469, 'aliquet massa id lobortis convallis tortor risus dapibus', '2023-05-04 11:07:31', 49, 60, 55),
(470, 'tellus in sagittis dui vel nisl duis', '2023-07-07 06:02:36', 16, 40, 30),
(471, 'mauris eget massa tempor convallis nulla neque libero', '2023-06-04 11:55:42', 93, 36, 52),
(472, 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', '2023-05-23 23:40:02', 75, 21, 94),
(473, 'at nulla suspendisse potenti cras in purus', '2023-07-05 19:42:22', 26, 74, 41),
(474, 'nunc commodo placerat praesent blandit', '2023-06-22 21:52:47', 32, 4, 85),
(475, 'enim sit amet nunc viverra dapibus nulla suscipit ligula', '2023-04-15 05:07:15', 38, 99, 15),
(476, 'rutrum ac lobortis vel dapibus at diam nam', '2023-06-17 04:53:47', 54, 46, 32),
(477, 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', '2023-04-21 23:56:43', 23, 71, 89),
(478, 'quam nec dui luctus rutrum nulla tellus', '2023-05-07 17:08:08', 83, 7, 81),
(479, 'parturient montes nascetur ridiculus mus etiam vel', '2023-04-28 23:56:55', 21, 100, 75),
(480, 'semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', '2023-06-01 22:09:51', 91, 8, 37),
(481, 'non quam nec dui luctus', '2023-06-25 03:59:55', 38, 15, 61),
(482, 'ut volutpat sapien arcu sed augue', '2023-04-19 01:31:44', 98, 12, 46),
(483, 'sem praesent id massa id nisl venenatis lacinia', '2023-06-12 12:36:28', 16, 11, 99),
(484, 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', '2023-05-26 05:35:18', 56, 12, 69),
(485, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '2023-04-19 14:51:13', 26, 66, 12),
(486, 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', '2023-07-05 23:53:18', 37, 41, 17),
(487, 'convallis nunc proin at turpis a pede', '2023-04-07 06:17:48', 95, 47, 38),
(488, 'et ultrices posuere cubilia curae donec pharetra magna', '2023-05-20 05:27:30', 44, 12, 78),
(489, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum', '2023-05-24 04:20:29', 63, 36, 43),
(490, 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', '2023-07-02 19:12:14', 30, 44, 29),
(491, 'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis', '2023-07-14 22:40:07', 44, 68, 94),
(492, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', '2023-04-13 10:18:46', 84, 59, 95),
(493, 'elit proin interdum mauris non ligula pellentesque ultrices phasellus', '2023-04-05 01:26:12', 73, 81, 89),
(494, 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum', '2023-04-16 05:12:19', 4, 7, 51),
(495, 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', '2023-04-07 13:59:22', 34, 16, 42),
(496, 'duis aliquam convallis nunc proin at turpis a pede', '2023-06-24 18:49:22', 40, 20, 16),
(497, 'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '2023-07-05 08:39:51', 5, 32, 65),
(498, 'nisi volutpat eleifend donec ut dolor morbi vel lectus in', '2023-04-02 10:47:30', 14, 51, 10),
(499, 'et ultrices posuere cubilia curae duis', '2023-04-14 07:36:38', 76, 81, 63),
(500, 'et ultrices posuere cubilia curae mauris', '2023-04-16 06:37:21', 40, 25, 32);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reviewPosterID` int(11) NOT NULL,
  `reviewReceiverID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `rating`, `comment`, `timestamp`, `reviewPosterID`, `reviewReceiverID`) VALUES
(1, 2, 'Unresponsive seller', '2023-06-10 03:51:08', 58, 8),
(2, 1, 'Buyer was understanding about delay.', '2023-04-30 02:26:12', 35, 55),
(3, 1, 'Item not as described', '2023-05-29 14:18:27', 2, 41),
(4, 1, 'Unresponsive seller', '2023-06-19 19:43:34', 20, 78),
(5, 5, 'Seller was difficult to communicate with.', '2023-05-26 19:54:45', 55, 19),
(6, 2, 'Unresponsive seller', '2023-05-27 18:06:35', 65, 15),
(7, 2, 'Excellent service', '2023-04-09 07:06:23', 79, 57),
(8, 3, 'would definitely recommend.', '2023-07-06 10:02:18', 32, 63),
(9, 3, 'Unresponsive seller', '2023-05-02 07:42:57', 43, 98),
(10, 3, 'smooth transaction.', '2023-06-02 16:01:04', 18, 84),
(11, 3, 'prompt payment.', '2023-06-20 14:51:40', 40, 80),
(12, 3, 'would sell to again.', '2023-06-12 10:53:46', 10, 8),
(13, 1, 'Poor packaging', '2023-04-23 11:53:03', 5, 47),
(14, 2, 'Seller was not honest about product condition.', '2023-05-12 04:39:45', 9, 37),
(15, 3, 'Positive experience', '2023-07-27 18:42:53', 70, 97),
(16, 1, 'Poor packaging', '2023-07-20 12:26:29', 37, 52),
(17, 1, 'Positive experience', '2023-04-16 11:25:08', 16, 40),
(18, 4, 'Buyer was quick to respond to messages.', '2023-06-26 01:18:07', 19, 52),
(19, 3, 'wasted my time.', '2023-06-26 01:00:04', 71, 17),
(20, 3, 'Very friendly and helpful seller.', '2023-04-25 11:10:40', 40, 47),
(21, 2, 'Very professional', '2023-04-25 20:10:54', 44, 87),
(22, 5, 'Poor packaging', '2023-07-10 02:28:00', 24, 30),
(23, 2, 'Buyer was respectful and courteous.', '2023-07-05 06:10:38', 94, 85),
(24, 2, 'Seller was accommodating with pickup.', '2023-06-29 10:46:46', 49, 15),
(25, 4, 'Buyer did not show up for pickup.', '2023-04-09 09:01:39', 100, 99),
(26, 3, 'buyer was demanding.', '2023-06-02 10:59:35', 5, 8),
(27, 2, 'wasted my time.', '2023-06-11 21:59:54', 66, 20),
(28, 2, 'Product exactly as described.', '2023-04-06 12:53:06', 8, 99),
(29, 1, 'Seller went above and beyond.', '2023-04-29 16:54:18', 86, 2),
(30, 4, 'Buyer was punctual and polite.', '2023-06-23 14:25:55', 78, 11),
(31, 5, 'not impressed.', '2023-07-05 13:25:21', 77, 79),
(32, 1, 'great experience.', '2023-05-22 00:50:46', 64, 61),
(33, 3, 'Poor packaging', '2023-07-27 10:37:22', 17, 53),
(34, 4, 'Seller was difficult to communicate with.', '2023-07-28 09:57:38', 1, 4),
(35, 1, 'Seller was not honest about product condition.', '2023-05-03 09:13:05', 51, 64),
(36, 5, 'Buyer was not serious', '2023-04-22 21:09:31', 31, 82),
(37, 1, 'would definitely recommend.', '2023-07-02 06:48:26', 49, 72),
(38, 5, 'buyer was demanding.', '2023-05-25 07:14:58', 13, 61),
(39, 5, 'not recommended.', '2023-07-04 15:24:37', 21, 74),
(40, 2, 'Unresponsive seller', '2023-04-13 17:18:40', 79, 30),
(41, 3, 'Excellent service', '2023-07-23 18:01:39', 75, 69),
(42, 3, 'disappointed.', '2023-04-29 07:35:58', 35, 29),
(43, 1, 'prompt payment.', '2023-04-13 02:56:40', 64, 45),
(44, 1, 'Seller went above and beyond.', '2023-04-02 09:48:00', 11, 89),
(45, 1, 'fair price.', '2023-06-28 03:48:30', 43, 75),
(46, 4, 'Seller was accommodating with pickup.', '2023-06-18 17:48:09', 83, 88),
(47, 1, 'Positive experience', '2023-06-11 18:46:54', 58, 39),
(48, 2, 'Buyer was respectful and courteous.', '2023-04-25 04:33:45', 16, 84),
(49, 2, 'Great product', '2023-05-24 13:08:03', 96, 98),
(50, 5, 'Item not as described', '2023-07-12 14:11:02', 41, 10),
(51, 5, 'disappointed.', '2023-04-11 18:31:22', 92, 59),
(52, 5, 'Buyer was understanding about delay.', '2023-05-31 17:59:24', 52, 30),
(53, 3, 'Seller went above and beyond.', '2023-04-20 09:29:59', 44, 54),
(54, 3, 'Slow shipping', '2023-04-17 21:19:36', 25, 51),
(55, 1, 'disappointed.', '2023-06-11 22:57:31', 17, 5),
(56, 5, 'buyer was rude.', '2023-06-12 14:00:40', 40, 22),
(57, 5, 'wasted my time.', '2023-06-13 07:22:43', 99, 20),
(58, 3, 'Seller went above and beyond.', '2023-07-01 09:45:07', 3, 70),
(59, 1, 'Slow shipping', '2023-05-17 12:58:30', 91, 79),
(60, 1, 'Fantastic buyer', '2023-07-05 16:45:57', 82, 63);

-- --------------------------------------------------------

--
-- Table structure for table `savedlisting`
--

CREATE TABLE `savedlisting` (
  `savedListingID` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userID` int(11) NOT NULL,
  `listingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savedlisting`
--

INSERT INTO `savedlisting` (`savedListingID`, `timestamp`, `userID`, `listingID`) VALUES
(1, '2023-07-09 08:13:14', 16, 69),
(2, '2023-06-10 16:19:43', 97, 3),
(3, '2023-07-20 06:29:43', 96, 62),
(4, '2023-07-04 19:14:07', 55, 53),
(5, '2023-05-06 00:31:06', 29, 10),
(6, '2023-06-08 01:51:27', 88, 86),
(7, '2023-06-25 04:08:41', 35, 60),
(8, '2023-05-09 19:36:53', 8, 37),
(9, '2023-05-31 01:00:02', 96, 40),
(10, '2023-06-12 12:29:55', 28, 69),
(11, '2023-06-26 20:43:21', 55, 32),
(12, '2023-07-14 18:03:37', 7, 96),
(13, '2023-07-22 18:40:12', 48, 52),
(14, '2023-05-15 02:21:38', 60, 83),
(15, '2023-07-11 15:14:11', 65, 100),
(16, '2023-07-08 04:29:01', 83, 8),
(17, '2023-06-02 08:45:09', 28, 97),
(18, '2023-06-21 02:52:16', 49, 49),
(19, '2023-07-17 19:51:35', 67, 74),
(20, '2023-05-07 10:12:10', 62, 84),
(21, '2023-05-15 15:23:32', 55, 49),
(22, '2023-06-29 12:37:14', 37, 40),
(23, '2023-06-15 09:53:45', 98, 33),
(24, '2023-06-21 07:13:37', 8, 7),
(25, '2023-05-18 21:23:41', 37, 3),
(26, '2023-05-18 02:02:34', 57, 5),
(27, '2023-05-15 21:08:22', 80, 52),
(28, '2023-05-11 09:17:28', 59, 77),
(29, '2023-06-01 13:51:11', 47, 16),
(30, '2023-05-22 08:31:05', 53, 10),
(31, '2023-06-02 14:09:13', 20, 12),
(32, '2023-07-06 15:08:04', 60, 4),
(33, '2023-07-06 03:24:29', 89, 32),
(34, '2023-07-05 15:21:16', 5, 55),
(35, '2023-05-23 03:35:16', 79, 86),
(36, '2023-07-17 04:04:37', 25, 10),
(37, '2023-07-06 08:40:55', 75, 82),
(38, '2023-06-05 09:41:06', 29, 48),
(39, '2023-06-10 02:59:27', 88, 20),
(40, '2023-05-20 05:36:19', 60, 9),
(41, '2023-07-25 04:16:49', 86, 89),
(42, '2023-06-25 16:21:24', 79, 85),
(43, '2023-06-12 17:36:24', 61, 68),
(44, '2023-05-02 06:55:20', 3, 22),
(45, '2023-05-29 23:26:31', 92, 60),
(46, '2023-07-18 12:08:47', 53, 94),
(47, '2023-06-15 02:21:52', 58, 47),
(48, '2023-05-19 07:47:18', 38, 55),
(49, '2023-06-24 16:20:51', 68, 42),
(50, '2023-05-27 21:55:52', 61, 96),
(51, '2023-05-06 03:34:40', 55, 78),
(52, '2023-07-20 09:56:36', 30, 100),
(53, '2023-06-01 03:50:02', 82, 30),
(54, '2023-05-12 10:58:44', 27, 60),
(55, '2023-06-29 19:12:03', 41, 18),
(56, '2023-07-04 09:18:36', 76, 53),
(57, '2023-07-02 09:13:01', 6, 65),
(58, '2023-07-22 03:25:20', 30, 40),
(59, '2023-06-10 12:48:11', 25, 43),
(60, '2023-07-17 22:23:15', 71, 63);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `searchID` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`searchID`, `query`, `timestamp`, `userID`) VALUES
(1, 'baby stroller', '2023-05-28 10:43:31', 16),
(2, 'concert tickets', '2023-07-06 22:54:48', 67),
(3, 'guitars', '2023-07-11 07:10:05', 61),
(4, 'home appliances', '2023-06-06 17:57:51', 66),
(5, 'DIY kits', '2023-06-09 04:10:17', 25),
(6, 'fitness equipment', '2023-06-21 10:39:34', 64),
(7, 'DIY kits', '2023-04-10 07:27:10', 92),
(8, 'camera', '2023-06-08 20:25:10', 76),
(9, 'cosmetics', '2023-06-30 12:13:20', 1),
(10, 'tablet', '2023-05-01 20:02:00', 40),
(11, 'jackets', '2023-07-30 01:59:54', 28),
(12, 'sofa', '2023-06-28 05:43:38', 18),
(13, 'art supplies', '2023-06-11 11:14:36', 13),
(14, 'hair styling tools', '2023-06-05 08:36:18', 5),
(15, 'cookbooks', '2023-06-17 18:23:52', 2),
(16, 'jackets', '2023-05-29 20:32:58', 25),
(17, 'handbag', '2023-07-16 17:15:34', 5),
(18, 'lamp', '2023-04-13 23:46:41', 89),
(19, 'kitchenware', '2023-05-29 09:25:52', 68),
(20, 'jewelry', '2023-06-13 12:11:28', 78),
(21, 'board games', '2023-05-16 10:54:00', 78),
(22, 'accessories', '2023-05-14 05:29:19', 28),
(23, 'chair', '2023-05-31 01:36:11', 54),
(24, 'guitars', '2023-04-25 13:48:30', 4),
(25, 'headphones', '2023-07-01 12:27:24', 70),
(26, 'televisions', '2023-07-07 09:13:15', 58),
(27, 'video games', '2023-07-22 03:37:03', 99),
(28, 'power tools', '2023-07-09 22:57:49', 55),
(29, 'shoes', '2023-07-24 01:52:44', 27),
(30, 'outdoor furniture', '2023-06-04 18:04:33', 27),
(31, 'gardening tools', '2023-05-11 03:11:01', 78),
(32, 'home appliances', '2023-07-09 22:41:47', 18),
(33, 'clothing', '2023-05-11 06:28:47', 42),
(34, 'vinyl records', '2023-05-14 08:51:57', 69),
(35, 'home appliances', '2023-06-21 17:18:43', 88),
(36, 'computer parts', '2023-06-17 10:35:56', 97),
(37, 'chair', '2023-04-23 23:01:22', 86),
(38, 'musical instruments', '2023-06-09 06:35:08', 33),
(39, 'kitchenware', '2023-06-08 17:45:19', 32),
(40, 'home appliances', '2023-06-16 21:24:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `phoneNumber`) VALUES
(1, 'ecrannell0', 'kdeadman0@t-online.de', '2177958620'),
(2, 'agedge1', 'vtoyne1@meetup.com', '2161233622'),
(3, 'kkarpol2', 'nworssam2@istockphoto.com', '6499182954'),
(4, 'cpeschke3', 'shofton3@unc.edu', '1585480791'),
(5, 'tswinyard4', 'cquarlis4@printfriendly.com', '8989365612'),
(6, 'gduckering5', 'wgaskall5@whitehouse.gov', '1913076278'),
(7, 'crothman6', 'kgoacher6@fastcompany.com', '5636230186'),
(8, 'wfilippazzo7', 'alissandri7@washington.edu', '9342891685'),
(9, 'ecleghorn8', 'adobney8@apache.org', '6707879348'),
(10, 'csicily9', 'agrayland9@gmpg.org', '8911571069'),
(11, 'mmckendrya', 'mweatheralla@army.mil', '8171453856'),
(12, 'rpaladinib', 'vgarwillb@nature.com', '3664339531'),
(13, 'fcloakec', 'dfassanc@odnoklassniki.ru', '5687750699'),
(14, 'ndrinkhalld', 'bballantyned@squarespace.com', '4615704508'),
(15, 'egreevese', 'ddowntone@mozilla.org', '4409327134'),
(16, 'rduckerinf', 'mcaddingf@etsy.com', '4951501457'),
(17, 'ypayeg', 'jmaileg@hexun.com', '1269785410'),
(18, 'atrahearnh', 'eklaessenh@infoseek.co.jp', '5566649321'),
(19, 'ciacovozzoi', 'ftarveri@reddit.com', '7155177985'),
(20, 'mindruchj', 'cfellneej@intel.com', '5441526913'),
(21, 'sbelsonk', 'afargiek@prweb.com', '9135598654'),
(22, 'kkingsmanl', 'nballentimel@soundcloud.com', '5856172003'),
(23, 'credingtonm', 'nlynaghm@shareasale.com', '9911359744'),
(24, 'eandrolettin', 'cpaxforden@elpais.com', '5941914395'),
(25, 'lsaladinoo', 'gyarnallo@walmart.com', '1344349530'),
(26, 'rrydingsp', 'wreichardtp@auda.org.au', '6535745431'),
(27, 'ekinkadeq', 'achadbandq@lycos.com', '2121659177'),
(28, 'mbickerdyker', 'ldahlbackr@kickstarter.com', '2001887122'),
(29, 'jmableys', 'chowtopreserves@imageshack.us', '5855345597'),
(30, 'adomleot', 'stauntont@devhub.com', '1384662294'),
(31, 'bfrancombeu', 'kelgramu@acquirethisname.com', '3108156556'),
(32, 'mmactrustiev', 'gbefroyv@delicious.com', '8291872146'),
(33, 'smarkwelleyw', 'jsimsonw@jiathis.com', '6544954182'),
(34, 'twestlakex', 'mbundeyx@fastcompany.com', '2302308740'),
(35, 'kbeniniy', 'vchipperfieldy@walmart.com', '5984624168'),
(36, 'ttrevenaz', 'svolantez@addtoany.com', '1458801219'),
(37, 'hmatteris10', 'lgathercoal10@flickr.com', '2677760874'),
(38, 'twilcher11', 'jshah11@umn.edu', '2861233414'),
(39, 'ostearndale12', 'bbowdidge12@uiuc.edu', '7942712509'),
(40, 'rabrehart13', 'sfremantle13@weather.com', '2484949966'),
(41, 'rstonhard14', 'rmockford14@vkontakte.ru', '8773252773'),
(42, 'jgainsboro15', 'yburlingame15@stumbleupon.com', '2925926511'),
(43, 'bnorthleigh16', 'myerrington16@infoseek.co.jp', '9478942253'),
(44, 'adimbylow17', 'rcroad17@yahoo.com', '7205653649'),
(45, 'egiddins18', 'eshrubsall18@163.com', '4181673166'),
(46, 'wdickon19', 'agerrish19@fc2.com', '4332353697'),
(47, 'tstoffers1a', 'fkropach1a@ovh.net', '4781175194'),
(48, 'gdark1b', 'bscaife1b@1688.com', '6267065865'),
(49, 'lspirit1c', 'cebbin1c@adobe.com', '6288991379'),
(50, 'amaton1d', 'dmcterry1d@g.co', '1259549636'),
(51, 'gromagosa1e', 'dgillyatt1e@ihg.com', '4719646482'),
(52, 'epasmore1f', 'ggadie1f@blog.com', '5021412249'),
(53, 'klempke1g', 'ngreeding1g@domainmarket.com', '1778274454'),
(54, 'rpumfrey1h', 'ssieb1h@virginia.edu', '2021049173'),
(55, 'svasyanin1i', 'dchrispin1i@usda.gov', '8445715478'),
(56, 'lspracklin1j', 'tkilbane1j@example.com', '4462413450'),
(57, 'lgresley1k', 'dgrzes1k@vk.com', '7153636451'),
(58, 'gtetlow1l', 'ateaze1l@webs.com', '3275232832'),
(59, 'hjenkerson1m', 'cpenwright1m@feedburner.com', '8773015447'),
(60, 'ameace1n', 'bdalesio1n@usnews.com', '7374163653'),
(61, 'kmarryatt1o', 'dhounihan1o@biblegateway.com', '2426613057'),
(62, 'switham1p', 'rshepherdson1p@canalblog.com', '3152716320'),
(63, 'fcronk1q', 'mmotton1q@wired.com', '1169084383'),
(64, 'pleehane1r', 'jsadry1r@weibo.com', '6567610757'),
(65, 'rfather1s', 'kmeldrum1s@washington.edu', '3243728569'),
(66, 'gtyres1t', 'amackill1t@microsoft.com', '5366096040'),
(67, 'jcrampton1u', 'fhollyman1u@csmonitor.com', '8551746596'),
(68, 'gduchesne1v', 'fwarland1v@bigcartel.com', '1366375174'),
(69, 'agallichan1w', 'fguice1w@altervista.org', '5035762454'),
(70, 'smostyn1x', 'csazio1x@nature.com', '4072111159'),
(71, 'aeyers1y', 'ajuszczyk1y@comcast.net', '6587684415'),
(72, 'cwoodyatt1z', 'lveldman1z@sbwire.com', '1273071404'),
(73, 'vnye20', 'seasey20@diigo.com', '8657879274'),
(74, 'ngoare21', 'msonghurst21@people.com.cn', '5916188763'),
(75, 'lchristoffersen22', 'lmeric22@dagondesign.com', '4424742660'),
(76, 'ldelchecolo23', 'rbordessa23@wired.com', '5257179349'),
(77, 'shawsby24', 'ndelf24@home.pl', '9951094226'),
(78, 'lcutbirth25', 'tsire25@reference.com', '6566746959'),
(79, 'agalletley26', 'cbreit26@gov.uk', '7221619581'),
(80, 'cgregorin27', 'fallberry27@nationalgeographic.com', '4406307237'),
(81, 'ddulson28', 'mjolliss28@163.com', '9901845368'),
(82, 'otomala29', 'yhourston29@java.com', '6581610133'),
(83, 'lbadini2a', 'hfenwick2a@cnn.com', '3164336477'),
(84, 'omaidlow2b', 'lwhittington2b@goo.ne.jp', '5329066327'),
(85, 'wbrydell2c', 'lblaxter2c@free.fr', '7972068175'),
(86, 'hpenfold2d', 'mgosart2d@hostgator.com', '1207270053'),
(87, 'ghumphris2e', 'rfilipchikov2e@nydailynews.com', '1531112878'),
(88, 'tfoister2f', 'acollop2f@nsw.gov.au', '4339763423'),
(89, 'rwhitlaw2g', 'lcornu2g@va.gov', '6923038409'),
(90, 'adericut2h', 'clindenberg2h@nature.com', '5018721220'),
(91, 'mpellant2i', 'eknocker2i@wufoo.com', '5892189892'),
(92, 'acallaghan2j', 'mmcardell2j@deliciousdays.com', '9896502854'),
(93, 'eballingal2k', 'sfranzen2k@huffingtonpost.com', '7122846007'),
(94, 'caldine2l', 'phalegarth2l@tripod.com', '2291989083'),
(95, 'orothery2m', 'amclaverty2m@state.gov', '6234359665'),
(96, 'mscardefield2n', 'akleinstein2n@purevolume.com', '2103660223'),
(97, 'ngianasi2o', 'dglassborow2o@dyndns.org', '3567175895'),
(98, 'mpullman2p', 'flangdale2p@scribd.com', '2547390956'),
(99, 'lgreendale2q', 'rflemming2q@theatlantic.com', '2742894088'),
(100, 'creede2r', 'grustman2r@gravatar.com', '3682845399');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`listingID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `locationID` (`locationID`),
  ADD KEY `sellerID` (`sellerID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationID`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaID`),
  ADD KEY `listingID` (`listingID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageID`),
  ADD KEY `senderID` (`senderID`),
  ADD KEY `receiverID` (`receiverID`),
  ADD KEY `listingID` (`listingID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `reviewPosterID` (`reviewPosterID`),
  ADD KEY `reviewReceiverID` (`reviewReceiverID`);

--
-- Indexes for table `savedlisting`
--
ALTER TABLE `savedlisting`
  ADD PRIMARY KEY (`savedListingID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `listingID` (`listingID`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`searchID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `listingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `locationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `mediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `savedlisting`
--
ALTER TABLE `savedlisting`
  MODIFY `savedListingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `searchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listing`
--
ALTER TABLE `listing`
  ADD CONSTRAINT `listing_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`),
  ADD CONSTRAINT `listing_ibfk_2` FOREIGN KEY (`locationID`) REFERENCES `location` (`locationID`),
  ADD CONSTRAINT `listing_ibfk_3` FOREIGN KEY (`sellerID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`listingID`) REFERENCES `listing` (`listingID`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`senderID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`receiverID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`listingID`) REFERENCES `listing` (`listingID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`reviewPosterID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`reviewReceiverID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `savedlisting`
--
ALTER TABLE `savedlisting`
  ADD CONSTRAINT `savedlisting_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `savedlisting_ibfk_2` FOREIGN KEY (`listingID`) REFERENCES `listing` (`listingID`);

--
-- Constraints for table `search`
--
ALTER TABLE `search`
  ADD CONSTRAINT `search_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
