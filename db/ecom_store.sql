-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 04:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Djordje', 'djole96@gmail.com', 'Adminpanel', 'erika.jpg', 'Serbia', 'This application is created by Mdev Media, if you willing to contact me, please click this link. <br/>\r\n                        <a href=\"#\"> Djole-Media </a> <br/>\r\n                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.', '069-5544-33', 'Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `memory` int(10) NOT NULL,
  `storage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Laptops', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(2, 'Macbook', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, 'Tablet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(4, 'Apple', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(5, 'Mobile\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(6, 'Desktop', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet. ');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(100) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'Djordje NIkolic', 'djole@hotmail.com', '2408', 'Serbia', 'Nis', '694245455', 'sdfsd', 'erika.jpg', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `memory` int(10) NOT NULL,
  `storage` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `memory`, `storage`, `order_date`, `order_status`) VALUES
(1, 1, 2500, 126916918, 1, 8, 512, '2021-11-08', 'Complete'),
(2, 1, 75, 1554609558, 1, 8, 256, '2021-11-08', 'Pending'),
(3, 2, 225, 311884453, 3, 8, 512, '2021-11-08', 'Pending'),
(4, 1, 75, 1978570007, 1, 8, 256, '2021-11-09', 'Pending'),
(5, 1, 180, 805184890, 1, 8, 256, '2021-11-09', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` int(10) NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 126916918, 2500, 0, 1234, 4321, '09/11/2021');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `memory` int(10) NOT NULL,
  `storage` int(10) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `memory`, `storage`, `order_status`) VALUES
(1, 1, 126916918, '5', 1, 8, 512, 'Complete'),
(2, 1, 1554609558, '14', 1, 8, 256, 'Pending'),
(4, 1, 1978570007, '14', 1, 8, 256, 'Pending'),
(5, 1, 805184890, '15', 1, 8, 256, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(28, 1, 1, '2021-11-12 14:59:45', 'Acer NX.HVUEX.00H ', '157166_5f801d746c40e.jpg', '157166_5f801d74796d0.jpg', '157166_5f801d74863d3.jpg', 980, 'NX.HVUEX.00H', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(29, 1, 1, '2021-11-12 15:00:02', 'Acer Swift SF314', '157169_5f8020c1ebb09.jpg', '157169_5f8020c2051f6.jpg', '157169_5f8020c212860.jpg', 875, 'Swift SF314-42-R50U', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(30, 1, 2, '2021-11-12 15:00:10', 'Apple MacBook Air 13,3', '159565_60b0bbeef2ab3.png', '159565_60b0bbeed7e4b.png', '159565_60b0bc3026e36.png', 2000, 'Apple MacBook Air 13,3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(31, 1, 2, '2021-11-12 15:00:19', 'Apple MacBook Pro 13,3', '159553_60a21307cb23e.png', '159553_60a21307af28d.png', '161064_6023f169ccfea.jpg', 3000, 'Apple MacBook ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(33, 4, 4, '2021-11-12 13:30:05', 'Apple iPhone 12 256gb', '157517_5f9aeeeaedc95.jpg', '164179_6082496650c18.png', '157514_5f9aea9c5c20c.jpg', 650, 'iPhone 12', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(34, 4, 4, '2021-11-12 13:32:15', 'Apple iPhone 12 mini ', '164179_6082496650c18.png', '164182_6082626f8bed4.jpg', '164182_6082626ac414c.png', 550, 'iPhone 12 mini', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(35, 4, 4, '2021-11-12 13:33:26', 'Apple iPhone 12 Pro', '157543_5f9b155cdf5e0.jpg', '157553_5f9b230115240.jpg', '157553_5f9b23013184c.jpg', 1200, 'iPhone 12 Pro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(36, 4, 5, '2021-11-12 13:37:53', 'Apple iPhone SE2', '157514_5f9aea9c5c20c.jpg', '157602_600e8c49b6c11.png', '157600_600e920e9734d.png', 280, 'Apple iPhone SE2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(37, 3, 6, '2021-11-12 13:41:01', 'Desktop Altos Alexander S', '182900_618243dcddd59.png', '164751_60a7770f5320e.png', '163363_60703ba6c3996.png', 1750, 'Desktop ra?unar Altos Alexander S', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(38, 3, 6, '2021-11-12 13:42:57', 'Desktop  Altos Eagle TI II', '166505_6111527b0cff6.png', '160113_5fdb66b96ffdf.png', '182897_61814980cdbac.png', 1329, 'Desktop  Altos Eagle TI II', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(39, 2, 3, '2021-11-12 13:51:22', 'Samsung Galaxy Tab A7', '156390_5f9059dd93334.jpg', '156390_5f9059dd6488c.jpg', '156390_5f9059dd4953b.jpg', 225, 'Samsung Galaxy Tab A7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(40, 2, 4, '2021-11-12 13:52:31', 'Tablet Apple iPad 10,2', '180782_6167fdf61d67d.png', '157101_5f7dc04027be7.jpg', '180783_6167f953908e9.png', 755, 'Tablet Apple iPad 10,2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(41, 2, 4, '2021-11-12 13:53:54', 'Apple iPad 9 10,2', '180778_6156fde16784a.png', '180779_6156ff480ba37.png', '157101_5f7dc04027be7.jpg', 420, 'Apple iPad 9', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(42, 4, 5, '2021-11-12 14:13:11', 'Honor 50', '180913_61791f77cfb86.png', '180913_61791f77ed6f0.jpg', '180913_61791f7886bec.jpg', 600, 'Honor 50', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(43, 1, 1, '2021-11-12 14:29:02', 'Huawei MateBook X Pro', '155506_5f86c1272208b.jpg', '155506_5f86c1272e3f1.jpg', '155506_5f86c12715493.jpg', 1999, 'MateBook X', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(44, 4, 5, '2021-11-12 14:31:23', 'Xiaomi Mi 10T Pro', '157809_5f9b2e5535a51.jpg', '157809_5f9b2e9665007.jpg', '157809_5f9b2e551c3ab.jpg', 356, 'Xiaomi Mi 10T Pro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(45, 4, 5, '2021-11-12 14:32:26', 'Samsung Galaxy S20 FE', '164606_61726df7b3214.png', '164606_61726df75c6ab.png', '164606_61726df77c1d6.png', 588, 'Samsung Galaxy S20', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(46, 1, 1, '2021-11-12 14:34:15', 'Asus UM433IQ-WB711T ', '159372_5ffeb70c1d66f.png', '159372_5ffeb70bd7fc5.jpg', '159372_5ffeb70c4823b.jpg', 1245, 'Laptop Asus ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(47, 1, 1, '2021-11-12 14:35:12', 'Laptop Dell G5 15,6', '161178_6036662b777ff.png', '161178_6036662b211ee.jpg', '160178_5ff42e735bf9e.jpg', 1565, 'Laptop Dell', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(48, 1, 1, '2021-11-12 14:37:44', 'Laptop HP 6XD42EA 14', '152754_5fe470932124b.jpg', '152754_5fe47092ea96f.jpg', '152754_5fe470934ebad.png', 333, 'Laptop HP', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(49, 1, 1, '2021-11-12 14:39:33', ' Lenovo IP Creator 5', '182752_618b7aa88b5b1.png', '182752_618b7aa8d2cf1.png', '182752_618b7aa8b5438.png', 999, ' Lenovo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(50, 4, 5, '2021-11-12 14:40:35', 'Samsung Galaxy S21', '160542_6000219ed2ae7.png', '160542_6000219f2f97a.png', '160542_6000219f14eb7.png', 750, 'Galaxy S21', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(51, 4, 5, '2021-11-12 14:41:49', 'Huawei P40 PRO', '180888_617660e5098aa.jpg', '151310_5ece515541781.jpg', '151310_5ecbac6e439ae.jpg', 450, 'Huawei P40 PRO', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(52, 2, 3, '2021-11-12 14:43:43', 'Samsung Galaxy Tab A7', '156391_60376359be520.png', '156391_6037639af3e1d.jpg', '156391_60376359a1191.jpg', 180, 'Galaxy Tab A7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(53, 4, 5, '2021-11-12 14:44:38', 'Xiaomi Mi 11T', '180919_615ff5f8e789e.png', '180919_615ff5f88852b.jpg', '180919_615ff5f8c739f.jpg', 568, 'Xiaomi Mi 11T', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(54, 3, 6, '2021-11-12 14:45:49', 'Desktop Altos Renoir Pro', '166504_61114e17aafee.png', '165639_60cb384ee23ca.png', '160050_612360970149a.png', 895, 'Altos Renoir Pro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(55, 4, 5, '2021-11-12 14:46:42', 'Huawei Nova 9', '180887_6171e80ce7790.jpg', '180887_6171e80c8b264.jpg', '180887_6171e80d0fdce.png', 390, 'Huawei Nova 9', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(56, 1, 1, '2021-11-12 14:47:28', ' Asus UX363JA-WB502T ', '165906_60f81871cf63a.png', '165906_60f81871a5768.png', '165906_60f818724030b.png', 1200, ' Asus', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(57, 1, 1, '2021-11-12 14:48:48', 'HP Omen 1U6L0EA 15,6', '172196_614988986be09.png', '172196_614988980d418.png', '172196_6149889850e81.png', 5000, 'HP Omen', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(58, 1, 1, '2021-11-12 14:49:41', 'Laptop Lenovo Legion 7', '182754_6189343ca4357.png', '182754_6189343cc2935.png', '182754_6189343c881e9.png', 1599, 'Lenovo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(59, 4, 5, '2021-11-12 14:50:29', 'Poco X3 Pro', '166071_60f14618b5949.png', '166071_60f146185ccca.jpg', '166071_60f146187c94b.jpg', 299, 'Poco', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(60, 4, 5, '2021-11-12 14:52:05', 'Galaxy S21 Ultra', '160547_6000240d394b0.png', '160547_6000244e60ee5.jpg', '160547_6000240d5300c.jpg', 1150, 'Galaxy S21 Ultra', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(61, 2, 3, '2021-11-12 14:53:04', ' Huawei MatePad 11', '166418_6114efeaedb9c.png', '166418_6114efeb90538.jpg', '166418_6114efebc41a2.jpg', 380, 'Huawei ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(62, 1, 1, '2021-11-12 14:54:30', ' Asus UX535LI-OLED', '165908_60f80db366110.png', '165908_60f80db3039af.png', '165908_60f80db3833f4.png', 4750, ' Asus UX535LI-OLED-WB523R ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(63, 1, 1, '2021-11-12 14:55:28', 'DELL PRO01689 15,6', '160178_5ff42e735bf9e.jpg', '160178_5ff42e731b411.jpg', '160178_5ff42e733b0ec.png', 650, 'DELL PRO', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(64, 1, 1, '2021-11-12 14:56:24', ' HP Pavilion 15', '155316_5f310e0393548.jpg', '159645_5fd0a11d26ae3.jpg', '155316_5f310e037c6b4.jpg', 3500, ' HP Pavilion 15', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(65, 1, 1, '2021-11-12 14:57:20', 'Laptop Lenovo Slim 7', '176848_61893dd0a733e.png', '176848_61893dd06e0df.png', '176848_61893dd08a980.png', 879, 'Laptop Lenovo Slim 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(66, 5, 5, '2021-11-12 14:58:21', 'Samsung Galaxy Z Fold 3', '170244_6113edf16be74.jpg', '170244_6113edf15153a.jpg', '170244_6113edf119a3d.jpg', 2225, 'Samsung Galaxy Z Fold 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(67, 4, 5, '2021-11-12 15:01:21', 'Xiaomi Mobilni telefon 11i', '166259_60f5536220edb.jpg', '166259_60f5536256185.jpg', '166259_60f553623b55d.png', 644, 'Xiaomi Mobilni telefon 11i', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(68, 1, 1, '2021-11-12 15:02:23', ' Lenovo Yoga 7', '182593_61674e5bb30ec.jpg', '182593_61674e5bea9fb.png', '182593_61674e5c26715.jpg', 1150, ' Lenovo Yoga 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(69, 2, 3, '2021-11-12 15:03:29', ' Samsung S7 FE ', '172190_61408cf03b65a.jpg', '172190_61408cf0abba8.jpg', '172190_61408cf0571b1.jpg', 200, ' Samsung S7 FE ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(70, 1, 1, '2021-11-12 15:04:17', ' Asus X515JA-BQ301T ', '170259_61497e3a4bcba.png', '170259_61497e3a76ca4.png', '170259_61497e3aabc5f.png', 1456, ' Asus', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(71, 1, 1, '2021-11-12 15:05:16', 'Laptop Dell Vostro 3500', '183279_617fc14952b48.png', '183279_617fc1491b2ab.jpg', '183279_617fc148ef8ad.jpg', 556, 'Laptop Dell Vostro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(72, 1, 1, '2021-11-12 15:06:20', 'HP Spectre x360', '155838_60755bcccc150.jpg', '155838_60755bccb1ab2.jpg', '155838_60755bcc909c6.jpg', 1232, 'HP Spectre', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(73, 5, 1, '2021-11-12 15:07:03', 'Huawei MateBook D14', '182732_6166c4e09cd6e.png', '182732_6166c4e042ef6.png', '182732_6166c4e080236.png', 679, 'Huawei MateBook D14', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(74, 5, 5, '2021-11-12 15:07:53', 'Huawei P30', '180888_617660ffc07fe.jpg', '8646577.jpg', '8646577-1.jpg', 437, 'Huawei P30', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(75, 2, 3, '2021-11-12 15:08:39', 'Huawei T3 10', '142267_602651f2b19cf.png', '142267_602651f20aca0.jpg', '142267_602651f2ce023.png', 99, 'Huawei T3 10', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>'),
(76, 1, 1, '2021-11-12 15:09:25', ' Lenovo Yoga Slim 7', '182592_6167425a1a5de.jpg', '182592_61674259d9ee1.png', '182592_616742599c87b.jpg', 1898, ' Lenovo Yoga Slim 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Laptop', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(2, 'Tablet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, 'Desktop PC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(4, 'Mobile', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(5, 'Others', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'banner1.jpg'),
(2, 'Slide number 2', 'banner2.jpg'),
(3, 'Slide number 3', 'banner3.jpg'),
(5, 'Slide number 4', 'banner4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
