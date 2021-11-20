-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 12:42 PM
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
(1, 'Djordje', 'djole96@gmail.com', 'Adminpanel', 'DefaultUser1.jpg', 'Serbia', ' This application is created by Djole, if you willing to contact me, please click this link. <br/>\r\n                        <a href=\"#\"> Djole-Media </a> <br/>\r\n                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.', '069-5544-33', 'Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Best Products', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(2, 'Best Offers', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(3, '100% Satisfy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `memory` int(10) NOT NULL,
  `storage` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `memory`, `storage`) VALUES
(74, '127.0.0.1', 1, '399', 8, 256),
(76, '127.0.0.1', 1, '1898', 8, 256);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Laptops', 'yes', 'laptop1.jpg'),
(2, 'Macbook', 'yes', 'macbook.png'),
(3, 'Tablet', 'no', 'ipad.png'),
(4, 'Apple', 'yes', 'iphone.jpg'),
(5, 'Mobile\r\n', 'yes', 'mobile1.jpg'),
(6, 'Desktop', 'no', 'pc1.png');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(2, 75, 'Coupon Huawei T3 10 ', '49', '2408', 11, 2);

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
(15, 1, 650, 1193992377, 1, 8, 256, '2021-11-17', 'Complete'),
(16, 1, 1898, 1193992377, 1, 8, 256, '2021-11-17', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Apple', 'yes', 'apple.jpg'),
(2, 'Acer', 'no', 'acer.jpg'),
(3, 'Altos', 'no', 'Altos-Gamer-X4.jpg'),
(4, 'Asus', 'no', 'Asus-Logo.jpg'),
(5, 'Samsung', 'yes', 'samsung.png'),
(6, 'honor', 'yes', 'Honor-Logo.jpg'),
(7, 'Huawei', 'no', 'Huawei_Standard_logo.jpg'),
(8, 'HP', 'no', 'HP.jpg'),
(9, 'Xiaomi', 'yes', 'Xiaomi_logo.jpg'),
(10, 'Lenovo', 'yes', 'Lenovo.jpg'),
(11, 'Dell', 'no', 'Dell_Logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 126916918, 2500, 'Back Code', 1234, 4321, '09/11/2021'),
(2, 1554609558, 75, 'Back Code', 12345, 54321, '17/11/2021'),
(3, 805184890, 180, 'Paypall', 2408, 824, '17/11/2021'),
(5, 1193992377, 650, 'Western Union', 123456, 654321, '17/11/2021');

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
(15, 1, 1193992377, '73', 1, 8, 256, 'Complete'),
(16, 1, 1193992377, '76', 1, 8, 256, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(28, 1, 1, 2, '2021-11-17 13:39:49', 'Acer NX.HVUEX.00H ', 'product-1', '157166_5f801d746c40e.jpg', '157166_5f801d74796d0.jpg', '157166_5f801d74863d3.jpg', 980, 'NX.HVUEX.00H', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 950),
(29, 1, 1, 2, '2021-11-17 13:39:52', 'Acer Swift SF314', 'product-2', '157169_5f8020c1ebb09.jpg', '157169_5f8020c2051f6.jpg', '157169_5f8020c212860.jpg', 875, 'Swift SF314-42-R50U', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(30, 1, 2, 1, '2021-11-17 13:39:54', 'Apple MacBook Air 13,3', 'product-3', '159565_60b0bbeef2ab3.png', '159565_60b0bbeed7e4b.png', '159565_60b0bc3026e36.png', 2000, 'Apple MacBook Air 13,3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 1899),
(31, 1, 2, 1, '2021-11-17 13:39:56', 'Apple MacBook Pro 13,3', 'product-4', '159553_60a21307cb23e.png', '159553_60a21307af28d.png', '161064_6023f169ccfea.jpg', 3000, 'Apple MacBook ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(33, 4, 4, 1, '2021-11-17 13:39:58', 'Apple iPhone 12 256gb', 'product-5', '157517_5f9aeeeaedc95.jpg', '164179_6082496650c18.png', '157514_5f9aea9c5c20c.jpg', 650, 'iPhone 12', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 625),
(34, 4, 4, 1, '2021-11-17 13:40:00', 'Apple iPhone 12 mini ', 'product-6', '164179_6082496650c18.png', '164182_6082626f8bed4.jpg', '164182_6082626ac414c.png', 550, 'iPhone 12 mini', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 525),
(35, 4, 4, 1, '2021-11-17 13:40:02', 'Apple iPhone 12 Pro', 'product-7', '157543_5f9b155cdf5e0.jpg', '157553_5f9b230115240.jpg', '157553_5f9b23013184c.jpg', 1200, 'iPhone 12 Pro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(36, 4, 5, 1, '2021-11-17 13:40:04', 'Apple iPhone SE2', 'product-8', '157514_5f9aea9c5c20c.jpg', '157602_600e8c49b6c11.png', '157600_600e920e9734d.png', 280, 'Apple iPhone SE2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 250),
(37, 3, 6, 3, '2021-11-17 13:40:06', 'Desktop Altos Alexander S', 'product-9', '182900_618243dcddd59.png', '164751_60a7770f5320e.png', '163363_60703ba6c3996.png', 1750, 'Desktop ra?unar Altos Alexander S', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 1550),
(38, 3, 6, 3, '2021-11-17 13:40:09', 'Desktop  Altos Eagle TI II', 'product-10', '166505_6111527b0cff6.png', '160113_5fdb66b96ffdf.png', '182897_61814980cdbac.png', 1329, 'Desktop  Altos Eagle TI II', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 1238),
(39, 2, 3, 5, '2021-11-17 13:40:11', 'Samsung Galaxy Tab A7', 'product-11', '156390_5f9059dd93334.jpg', '156390_5f9059dd6488c.jpg', '156390_5f9059dd4953b.jpg', 225, 'Samsung Galaxy Tab A7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(40, 2, 4, 1, '2021-11-17 13:40:13', 'Tablet Apple iPad 10,2', 'product-12', '180782_6167fdf61d67d.png', '157101_5f7dc04027be7.jpg', '180783_6167f953908e9.png', 755, 'Tablet Apple iPad 10,2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 690),
(41, 2, 4, 1, '2021-11-17 13:40:17', 'Apple iPad 9 10,2', 'product-13', '180778_6156fde16784a.png', '180779_6156ff480ba37.png', '157101_5f7dc04027be7.jpg', 420, 'Apple iPad 9', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 400),
(42, 4, 5, 6, '2021-11-17 13:40:20', 'Honor 50', 'product-14', '180913_61791f77cfb86.png', '180913_61791f77ed6f0.jpg', '180913_61791f7886bec.jpg', 600, 'Honor 50', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(43, 1, 1, 7, '2021-11-17 13:40:22', 'Huawei MateBook X Pro', 'product-15', '155506_5f86c1272208b.jpg', '155506_5f86c1272e3f1.jpg', '155506_5f86c12715493.jpg', 1999, 'MateBook X', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(44, 4, 5, 9, '2021-11-17 13:40:24', 'Xiaomi Mi 10T Pro', 'product-16', '157809_5f9b2e5535a51.jpg', '157809_5f9b2e9665007.jpg', '157809_5f9b2e551c3ab.jpg', 356, 'Xiaomi Mi 10T Pro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 320),
(45, 4, 5, 5, '2021-11-17 13:40:27', 'Samsung Galaxy S20 FE', 'product-17', '164606_61726df7b3214.png', '164606_61726df75c6ab.png', '164606_61726df77c1d6.png', 588, 'Samsung Galaxy S20', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 500),
(46, 1, 1, 4, '2021-11-17 13:40:36', 'Asus UM433IQ-WB711T ', 'product-18', '159372_5ffeb70c1d66f.png', '159372_5ffeb70bd7fc5.jpg', '159372_5ffeb70c4823b.jpg', 1245, 'Laptop Asus ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(47, 1, 1, 10, '2021-11-17 13:40:38', 'Laptop Dell G5 15,6', 'product-19', '161178_6036662b777ff.png', '161178_6036662b211ee.jpg', '160178_5ff42e735bf9e.jpg', 1565, 'Laptop Dell', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(48, 1, 1, 8, '2021-11-17 13:40:41', 'Laptop HP 6XD42EA 14', 'product-20', '152754_5fe470932124b.jpg', '152754_5fe47092ea96f.jpg', '152754_5fe470934ebad.png', 333, 'Laptop HP', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(49, 1, 1, 11, '2021-11-17 13:40:43', ' Lenovo IP Creator 5', 'product-21', '182752_618b7aa88b5b1.png', '182752_618b7aa8d2cf1.png', '182752_618b7aa8b5438.png', 999, ' Lenovo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(50, 4, 5, 5, '2021-11-17 13:40:46', 'Samsung Galaxy S21', 'product-22', '160542_6000219ed2ae7.png', '160542_6000219f2f97a.png', '160542_6000219f14eb7.png', 750, 'Galaxy S21', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 690),
(51, 4, 5, 7, '2021-11-17 13:40:48', 'Huawei P40 PRO', 'product-23', '180888_617660e5098aa.jpg', '151310_5ece515541781.jpg', '151310_5ecbac6e439ae.jpg', 450, 'Huawei P40 PRO', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 390),
(52, 2, 3, 5, '2021-11-17 13:40:50', 'Samsung Galaxy Tab A7', 'product-24', '156391_60376359be520.png', '156391_6037639af3e1d.jpg', '156391_60376359a1191.jpg', 180, 'Galaxy Tab A7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(53, 4, 5, 9, '2021-11-17 13:40:54', 'Xiaomi Mi 11T', 'product-25', '180919_615ff5f8e789e.png', '180919_615ff5f88852b.jpg', '180919_615ff5f8c739f.jpg', 568, 'Xiaomi Mi 11T', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(54, 3, 6, 3, '2021-11-17 13:41:05', 'Desktop Altos Renoir Pro', 'product-26', '166504_61114e17aafee.png', '165639_60cb384ee23ca.png', '160050_612360970149a.png', 895, 'Altos Renoir Pro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 855),
(55, 4, 5, 7, '2021-11-17 13:41:09', 'Huawei Nova 9', 'product-27', '180887_6171e80ce7790.jpg', '180887_6171e80c8b264.jpg', '180887_6171e80d0fdce.png', 390, 'Huawei Nova 9', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(56, 1, 1, 4, '2021-11-17 13:41:11', ' Asus UX363JA-WB502T ', 'product-28', '165906_60f81871cf63a.png', '165906_60f81871a5768.png', '165906_60f818724030b.png', 1200, ' Asus', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 1150),
(57, 1, 1, 8, '2021-11-17 13:41:14', 'HP Omen 1U6L0EA 15,6', 'product-29', '172196_614988986be09.png', '172196_614988980d418.png', '172196_6149889850e81.png', 5000, 'HP Omen', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 4699),
(58, 1, 1, 11, '2021-11-17 13:41:16', 'Laptop Lenovo Legion 7', 'product-30', '182754_6189343ca4357.png', '182754_6189343cc2935.png', '182754_6189343c881e9.png', 1599, 'Lenovo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(59, 4, 5, 9, '2021-11-17 13:41:18', 'Poco X3 Pro', 'product-31', '166071_60f14618b5949.png', '166071_60f146185ccca.jpg', '166071_60f146187c94b.jpg', 299, 'Poco', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(60, 4, 5, 5, '2021-11-17 13:41:20', 'Galaxy S21 Ultra', 'product-32', '160547_6000240d394b0.png', '160547_6000244e60ee5.jpg', '160547_6000240d5300c.jpg', 1150, 'Galaxy S21 Ultra', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(61, 2, 3, 7, '2021-11-17 13:41:22', ' Huawei MatePad 11', 'product-33', '166418_6114efeaedb9c.png', '166418_6114efeb90538.jpg', '166418_6114efebc41a2.jpg', 380, 'Huawei ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 350),
(62, 1, 1, 4, '2021-11-17 13:41:24', ' Asus UX535LI-OLED', 'product-34', '165908_60f80db366110.png', '165908_60f80db3039af.png', '165908_60f80db3833f4.png', 4750, ' Asus UX535LI-OLED-WB523R ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 4450),
(63, 1, 1, 10, '2021-11-17 13:41:27', 'DELL PRO01689 15,6', 'product-35', '160178_5ff42e735bf9e.jpg', '160178_5ff42e731b411.jpg', '160178_5ff42e733b0ec.png', 650, 'DELL PRO', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(64, 1, 1, 8, '2021-11-17 13:41:30', ' HP Pavilion 15', 'product-36', '155316_5f310e0393548.jpg', '159645_5fd0a11d26ae3.jpg', '155316_5f310e037c6b4.jpg', 3500, ' HP Pavilion 15', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 3200),
(65, 1, 1, 11, '2021-11-17 13:41:34', 'Laptop Lenovo Slim 7', 'product-37', '176848_61893dd0a733e.png', '176848_61893dd06e0df.png', '176848_61893dd08a980.png', 879, 'Laptop Lenovo Slim 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(66, 5, 5, 5, '2021-11-17 13:41:37', 'Samsung Galaxy Z Fold 3', 'product-38', '170244_6113edf16be74.jpg', '170244_6113edf15153a.jpg', '170244_6113edf119a3d.jpg', 2225, 'Samsung Galaxy Z Fold 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 1999),
(67, 4, 5, 9, '2021-11-17 13:41:41', 'Xiaomi Mobilni telefon 11i', 'product-39', '166259_60f5536220edb.jpg', '166259_60f5536256185.jpg', '166259_60f553623b55d.png', 644, 'Xiaomi Mobilni telefon 11i', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(68, 1, 1, 11, '2021-11-17 13:41:43', ' Lenovo Yoga 7', 'product-40', '182593_61674e5bb30ec.jpg', '182593_61674e5bea9fb.png', '182593_61674e5c26715.jpg', 1150, ' Lenovo Yoga 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(69, 2, 3, 5, '2021-11-17 13:41:45', ' Samsung S7 FE ', 'product-41', '172190_61408cf03b65a.jpg', '172190_61408cf0abba8.jpg', '172190_61408cf0571b1.jpg', 200, ' Samsung S7 FE ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 189),
(70, 1, 1, 4, '2021-11-17 13:41:48', ' Asus X515JA-BQ301T ', 'product-42', '170259_61497e3a4bcba.png', '170259_61497e3a76ca4.png', '170259_61497e3aabc5f.png', 1456, ' Asus', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(71, 1, 1, 10, '2021-11-17 13:41:51', 'Laptop Dell Vostro 3500', 'product-43', '183279_617fc14952b48.png', '183279_617fc1491b2ab.jpg', '183279_617fc148ef8ad.jpg', 556, 'Laptop Dell Vostro', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(72, 1, 1, 8, '2021-11-17 13:41:54', 'HP Spectre x360', 'product-44', '155838_60755bcccc150.jpg', '155838_60755bccb1ab2.jpg', '155838_60755bcc909c6.jpg', 1232, 'HP Spectre', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 1050),
(73, 5, 1, 7, '2021-11-17 13:41:56', 'Huawei MateBook D14', 'product-45', '182732_6166c4e09cd6e.png', '182732_6166c4e042ef6.png', '182732_6166c4e080236.png', 679, 'Huawei MateBook D14', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 650),
(74, 5, 5, 7, '2021-11-17 13:41:58', 'Huawei P30', 'product-47', '180888_617660ffc07fe.jpg', '8646577.jpg', '8646577-1.jpg', 437, 'Huawei P30', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'sale', 399),
(75, 2, 3, 7, '2021-11-17 13:42:00', 'Huawei T3 10', 'product-48', '142267_602651f2b19cf.png', '142267_602651f20aca0.jpg', '142267_602651f2ce023.png', 99, 'Huawei T3 10', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0),
(76, 1, 1, 11, '2021-11-17 13:42:04', ' Lenovo Yoga Slim 7', 'product-49', '182592_6167425a1a5de.jpg', '182592_61674259d9ee1.png', '182592_616742599c87b.jpg', 1898, ' Lenovo Yoga Slim 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.</p>', 'new', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Laptop', 'yes', 'laptop.jpg'),
(2, 'Tablet', 'no', 'tablet.jpg'),
(3, 'Desktop PC', 'no', 'pc.jpg'),
(4, 'Mobile', 'yes', 'mobile.jpg'),
(5, 'Others', 'no', 'other.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide number 1', '40b5066457016771e503b06dcd8320e7.jpg', 'http://localhost/Ecommerce/shop.php'),
(2, 'Slide number 2', '6fd173b475de349458546f2696fb5931.jpg', 'http://localhost/Ecommerce/details.php?pro_id=35'),
(3, 'Slide number 3', 'e684965160bedbe42be6b5851fdd4d7b.jpg', 'http://localhost/Ecommerce/details.php?pro_id=53'),
(5, 'Slide number 4', 'af2ac5737d1d641ceedd0e41802dcd44.jpg', 'http://localhost/Ecommerce/details.php?pro_id=47');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions', 'termLink', '<p>A <strong>Terms and Conditions agreement</strong> is the agreement that includes the terms, the rules and the guidelines of acceptable behavior and other useful sections to which users must agree in order to use or access your website and mobile app.</p>\r\n<p><a href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#Download_Terms_And_Conditions_Template\">Our free Terms and Conditions template</a> will get you started with creating your own custom Terms and Conditions agreement.</p>\r\n<div id=\"toc_container\">\r\n<div id=\"toc\">\r\n<div class=\"toc_list_container\">\r\n<ul class=\"toc_list\">\r\n<li><a class=\"space_h2\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#What_Are_Terms_And_Conditions_Agreements\"><span class=\"toc_text_position\">1.</span> <span class=\"toc_text_title\">What are Terms and Conditions Agreements?</span></a></li>\r\n<li><a class=\"space_h3\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#Is_A_Terms_And_Conditions_Agreement_Required\"><span class=\"toc_text_position\">1.1.</span> <span class=\"toc_text_title\">Is a Terms and Conditions Agreement Required?</span></a></li>\r\n<li><a class=\"space_h2\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#Faq_Terms_And_Conditions\"><span class=\"toc_text_position\">2.</span> <span class=\"toc_text_title\">FAQ: Terms and Conditions</span></a></li>\r\n<li><a class=\"space_h3\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#What_Information_To_Include_In_A_Terms_And_Conditions_Agreement\"><span class=\"toc_text_position\">2.1.</span> <span class=\"toc_text_title\">What Information to include in a Terms and Conditions Agreement</span></a></li>\r\n<li><a class=\"space_h3\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#How_To_Enforce_Terms_And_Conditions_Agreements\"><span class=\"toc_text_position\">2.2.</span> <span class=\"toc_text_title\">How to Enforce Terms and Conditions Agreements</span></a></li>\r\n<li><a class=\"space_h2\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#Examples_Of_Terms_And_Conditions_Agreements\"><span class=\"toc_text_position\">3.</span> <span class=\"toc_text_title\">Examples of Terms and Conditions Agreements</span></a></li>\r\n<li><a class=\"space_h2\" href=\"https://www.termsfeed.com/blog/sample-terms-and-conditions-template/#Download_Terms_And_Conditions_Template\"><span class=\"toc_text_position\">4.</span> <span class=\"toc_text_title\">Download Terms and Conditions Template</span></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(2, 'Refund Policy', 'refundLink', 'People are often hesitant to buy online, which can lead to low conversion rates and sales. Return and Refund Policies for Ecommerce stores have been proven to increase the number of people who end up making a purchase once they\'re on your website.\r\nPerhaps more importantly, however, having a Return and Refund Policy in place can help reduce your expenses when it comes to return deliveries. For instance, consider the fact that in the United States alone, Statista\'s most up-to-date statistics show that return deliveries cost businesses $550 Billion between 2016 and 2020.'),
(3, 'Sample Terms and Conditions Template', 'promoTermConditions', '<p>A Terms and Conditions agreement is the agreement that includes the terms, the rules and the guidelines of acceptable behavior and other useful sections to which users must agree in order to use or access your website and mobile app.<br /><br />Our free Terms and Conditions template will get you started with creating your own custom Terms and Conditions agreement.<br /><br />&nbsp;&nbsp;&nbsp; 1. What are Terms and Conditions Agreements?<br />&nbsp;&nbsp;&nbsp; 1.1. Is a Terms and Conditions Agreement Required?<br />&nbsp;&nbsp;&nbsp; 2. FAQ: Terms and Conditions<br />&nbsp;&nbsp;&nbsp; 2.1. What Information to include in a Terms and Conditions Agreement<br />&nbsp;&nbsp;&nbsp; 2.2. How to Enforce Terms and Conditions Agreements<br />&nbsp;&nbsp;&nbsp; 3. Examples of Terms and Conditions Agreements<br />&nbsp;&nbsp;&nbsp; 4. Download Terms and Conditions Template</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

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
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

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
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

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
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
