-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2010 at 04:24 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE `category_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category_name` varchar(120) NOT NULL,
  `category_description` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`id`, `category_name`, `category_description`) VALUES
(5, 'category1', ''),
(6, 'category2', ''),
(7, 'category3', ''),
(8, 'category4', ''),
(9, 'category6', ''),
(10, 'category7', ''),
(11, 'category8', ''),
(12, 'category9', ''),
(13, 'category10', ''),
(14, 'category11', ''),
(15, 'category18', ''),
(16, '', ''),
(17, 'newcategory', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `customer_name` varchar(200) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_contact1` varchar(100) NOT NULL,
  `customer_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `customer_name`, `customer_address`, `customer_contact1`, `customer_contact2`, `balance`) VALUES
(3, 'customer1', 'customer1 address', '9953938493', '9874983579', 0),
(4, 'customer245', 'customer2 address', '489758437', '98479857389', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_avail`
--

CREATE TABLE `stock_avail` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(120) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `stock_avail`
--

INSERT INTO `stock_avail` (`id`, `name`, `quantity`) VALUES
(3, 'stock1', 0),
(4, 'stock2', 0),
(5, 'stock3', 1243),
(7, 'fhadsjfds', 567),
(9, 'stock4', 0),
(10, 'stock5', 230),
(11, 'stock6', 457),
(12, 'stock7', 555),
(13, 'stock8', 0),
(14, 'stock9', 0),
(15, 'stock10', 0),
(16, 'stock11', 4785),
(17, 'stock12', 0),
(19, 'stock6', 0),
(21, 'stock67', 770),
(22, 'stock673', 6773),
(23, 'stock56', 1905),
(24, 'sdds', 4758),
(25, 'adlfkji', 0),
(26, 'dlskfj', 7935),
(27, 'sdkfjsf', 48554),
(28, 'skdfj', 0),
(29, 'ksdf', 0),
(30, 'klsdjkfd', 0),
(31, '', 34);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE `stock_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(120) NOT NULL,
  `stock_quatity` int(11) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `company_price` smallint(6) NOT NULL,
  `selling_price` smallint(6) NOT NULL,
  `category` varchar(120) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `expire_date` varchar(50) NOT NULL,
  `uom` varchar(120) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`id`, `stock_id`, `stock_name`, `stock_quatity`, `supplier_id`, `company_price`, `selling_price`, `category`, `date`, `expire_date`, `uom`) VALUES
(31, 'SD31', 'stock67', 0, 'supplier2', 45, 458, 'category3', '2010-02-26 19:37:39', '', ''),
(32, 'SD32', 'stock673', 0, 'supplier2', 45, 1245, 'category6', '2010-02-26 19:37:56', '', ''),
(33, 'SD33', 'stock56', 0, 'supplier2', 45, 78, 'category6', '2010-02-26 19:38:15', '', ''),
(35, 'SD35', 'adlfkji', 0, 'supplier3', 789, 32767, 'category3', '2010-02-26 19:58:33', '', ''),
(36, 'SD36', 'dlskfj', 0, 'sdkfj', 89, 9898, 'lkdsjf', '2010-02-26 19:58:40', '', ''),
(37, 'SD37', 'sdkfjsf', 0, '90909', 99, 90, 'skdjkjf', '2010-02-26 19:58:47', '', ''),
(38, 'SD38', 'skdfj', 0, 'kdsjf', 90, 90, 'dfkdjk', '2010-02-26 19:58:55', '', ''),
(39, 'SD39', 'ksdf', 0, 'sidjlfs', 90, 32767, 'kjsdf', '2010-02-26 19:59:02', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_entries`
--

CREATE TABLE `stock_entries` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(260) NOT NULL,
  `stock_supplier_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `quantity` int(11) NOT NULL,
  `company_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `opening_stock` int(11) NOT NULL,
  `closing_stock` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(120) NOT NULL,
  `type` varchar(50) NOT NULL,
  `salesid` varchar(120) NOT NULL,
  `total` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `mode` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `due` datetime NOT NULL,
  `subtotal` int(11) NOT NULL,
  `count1` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `stock_entries`
--

INSERT INTO `stock_entries` (`id`, `stock_id`, `stock_name`, `stock_supplier_name`, `category`, `quantity`, `company_price`, `selling_price`, `opening_stock`, `closing_stock`, `date`, `username`, `type`, `salesid`, `total`, `payment`, `balance`, `mode`, `description`, `due`, `subtotal`, `count1`) VALUES
(121, 'SE1', 'stock673', '12455', '', 34, 45, 1245, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 3555, 3000, 'cash', '', '2010-03-10 00:00:00', 3555, 1),
(122, 'SE1', 'stock67', '12455', '', 45, 45, 458, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 2025, 3555, 3000, 'cash', '', '2010-03-10 00:00:00', 3555, 2),
(123, 'SE123', 'stock67', '12455', '', 34, 45, 458, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 4060, 0, 'cash', '', '2010-03-10 00:00:00', 3060, 1),
(124, 'SE123', 'stock56', '12455', '', 34, 45, 78, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 4060, 0, 'cash', '', '2010-03-10 00:00:00', 3060, 2),
(125, 'SE125', 'stock673', '12455', '', 34, 45, 1245, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 2530, 0, 'cash', '', '2010-03-10 00:00:00', 1530, 1),
(126, 'SA48', 'stock67', '', '', 34, 0, 0, 770, 736, '2010-03-10 00:00:00', 'admin', 'sales', 'SA48', 15572, 0, 0, '', '', '0000-00-00 00:00:00', 0, 0),
(127, 'SA49', 'stock67', '', '', 34, 0, 0, 736, 702, '2010-03-10 00:00:00', 'admin', 'sales', 'SA49', 15572, 0, 0, '', '', '0000-00-00 00:00:00', 0, 0),
(128, 'SA49', 'stock56', '', '', 34, 0, 0, 1905, 1871, '2010-03-10 00:00:00', 'admin', 'sales', 'SA49', 2652, 0, 0, '', '', '0000-00-00 00:00:00', 0, 0),
(129, 'SA49', 'stock673', '', '', 34, 0, 0, 6741, 6707, '2010-03-10 00:00:00', 'admin', 'sales', 'SA49', 42330, 0, 0, '', '', '0000-00-00 00:00:00', 0, 0),
(130, 'SA52', 'stock67', '', '', 34, 0, 0, 702, 668, '2010-03-10 00:00:00', 'admin', 'sales', 'SA52', 15572, 0, 0, '', '', '0000-00-00 00:00:00', 0, 0),
(131, 'SA52', 'adlfkji', '', '', 0, 0, 0, 0, 0, '2010-03-10 00:00:00', 'admin', 'sales', 'SA52', 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, 0),
(134, 'SE132', 'stock67', '12455', '', 34, 45, 458, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 7086, 86, 'cash', '', '2010-03-10 00:00:00', 6086, 1),
(135, 'SE132', 'stock56', '12455', '', 34, 45, 78, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 7086, 86, 'cash', '', '2010-03-10 00:00:00', 6086, 2),
(136, 'SE132', 'dlskfj', '12455', '', 34, 89, 9898, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 3026, 7086, 86, 'cash', '', '2010-03-10 00:00:00', 6086, 3),
(137, 'SE137', 'stock67', '12455', '', 34, 45, 458, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 3060, 1060, 'cash', '', '2010-03-10 00:00:00', 3060, 1),
(138, 'SE137', 'stock673', '12455', '', 34, 45, 1245, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 3060, 1060, 'cash', '', '2010-03-10 00:00:00', 3060, 2),
(139, 'SE139', 'stock67', '12455', '', 34, 45, 458, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1530, 5940, 0, 'cash', 'fdg', '2010-03-10 00:00:00', 2970, 1),
(140, 'SE139', 'stock673', '12455', '', 32, 45, 1245, 0, 2010, '0000-00-00 00:00:00', 'admin', 'entry', '', 1440, 5940, 0, 'cash', 'fdg', '2010-03-10 00:00:00', 2970, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock_sales`
--

CREATE TABLE `stock_sales` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `transactionid` varchar(250) NOT NULL,
  `stock_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `selling_price` smallint(6) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(120) NOT NULL,
  `customer_id` varchar(120) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `due` datetime NOT NULL,
  `mode` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `count1` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `stock_sales`
--

INSERT INTO `stock_sales` (`id`, `transactionid`, `stock_name`, `category`, `supplier_name`, `selling_price`, `quantity`, `amount`, `date`, `username`, `customer_id`, `subtotal`, `payment`, `balance`, `due`, `mode`, `description`, `count1`) VALUES
(38, 'SA1', 'stock67', '', '', 458, 34, 15572, '2010-03-09 00:00:00', 'admin', 'customer2', 35266, 35266, 0, '2010-03-09 00:00:00', 'cash', '', 0),
(39, 'SA1', 'stock67', '', '', 458, 43, 19694, '2010-03-09 00:00:00', 'admin', 'customer2', 35266, 35266, 0, '2010-03-09 00:00:00', 'cash', '', 0),
(40, 'SA40', 'stock67', '', '', 458, 45, 20610, '2010-03-09 00:00:00', 'admin', 'customer2', 36182, 36182, 0, '2010-03-09 00:00:00', 'cash', '', 0),
(41, 'SA40', 'stock67', '', '', 458, 34, 15572, '2010-03-09 00:00:00', 'admin', 'customer2', 36182, 36182, 0, '2010-03-09 00:00:00', 'cash', '', 0),
(42, 'SA17', 'stock56', '', '', 78, 34, 2652, '2010-03-09 00:00:00', 'admin', 'customer2', 44982, 44982, 10554, '2010-03-03 00:00:00', 'cash', 'cash recevied by... concern person', 0),
(43, 'SA17', 'stock673', '', '', 1245, 34, 42330, '2010-03-09 00:00:00', 'admin', 'customer2', 44982, 44982, 10554, '2010-03-03 00:00:00', 'cash', 'cash recevied by... concern person', 0),
(44, 'SA44', 'stock673', '', '', 1245, 34, 42330, '2010-03-10 00:00:00', 'admin', 'customer245', 42330, 42330, 0, '2010-03-10 00:00:00', 'cash', 'fdgdfgdf', 0),
(45, 'SA44', 'stock67', '', '', 458, 0, 0, '2010-03-10 00:00:00', 'admin', 'customer245', 42330, 42330, 0, '2010-03-10 00:00:00', 'cash', 'fdgdfgdf', 0),
(46, 'SA46', 'stock67', '', '', 458, 34, 15572, '2010-03-10 00:00:00', 'admin', 'customer1', 57902, 57902, 0, '2010-03-10 00:00:00', 'cash', '', 0),
(47, 'SA46', 'stock673', '', '', 1245, 34, 42330, '2010-03-10 00:00:00', 'admin', 'customer1', 57902, 57902, 0, '2010-03-10 00:00:00', 'cash', '', 0),
(48, 'SA48', 'stock67', '', '', 458, 34, 15572, '2010-03-10 00:00:00', 'admin', 'customer1', 15572, 15572, 0, '2010-03-10 00:00:00', 'cash', '', 1),
(49, 'SA49', 'stock67', '', '', 458, 34, 15572, '2010-03-10 00:00:00', 'admin', 'customer1', 60554, 60554, 0, '2010-03-10 00:00:00', 'cash', '', 1),
(50, 'SA49', 'stock56', '', '', 78, 34, 2652, '2010-03-10 00:00:00', 'admin', 'customer1', 60554, 60554, 0, '2010-03-10 00:00:00', 'cash', '', 1),
(51, 'SA49', 'stock673', '', '', 1245, 34, 42330, '2010-03-10 00:00:00', 'admin', 'customer1', 60554, 60554, 0, '2010-03-10 00:00:00', 'cash', '', 1),
(52, 'SA52', 'stock67', '', '', 458, 34, 15572, '2010-03-10 00:00:00', 'admin', 'customer1', 15572, 15572, 10015, '2010-03-10 00:00:00', 'cash', '', 1),
(53, 'SA52', 'adlfkji', '', '', 32767, 0, 0, '2010-03-10 00:00:00', 'admin', 'customer1', 15572, 15572, 10015, '2010-03-10 00:00:00', 'cash', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_user`
--

CREATE TABLE `stock_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `stock_user`
--

INSERT INTO `stock_user` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_details`
--

CREATE TABLE `supplier_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` varchar(500) NOT NULL,
  `supplier_contact1` varchar(100) NOT NULL,
  `supplier_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `supplier_details`
--

INSERT INTO `supplier_details` (`id`, `supplier_name`, `supplier_address`, `supplier_contact1`, `supplier_contact2`, `balance`) VALUES
(4, '12455', 'suppler1 address', '99520001152', '98437598', 3890);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `due` datetime NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `rid` varchar(120) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `customer`, `supplier`, `subtotal`, `payment`, `balance`, `due`, `date`, `rid`) VALUES
(1, 'entry', '', '12455', 0, 0, 0, '0000-00-00 00:00:00', '2010-03-11 09:31:26', 'SE123'),
(2, 'entry', '', '12455', 0, 100, 900, '2010-03-10 00:00:00', '2010-03-11 09:39:19', 'SE125'),
(3, 'entry', '', '12455', 0, 900, 0, '2010-03-10 00:00:00', '2010-03-11 09:39:28', 'SE125'),
(4, 'entry', '', '12455', 6086, 1000, 86, '2010-03-10 00:00:00', '2010-03-11 09:42:00', 'SE132');

-- --------------------------------------------------------

--
-- Table structure for table `uom_details`
--

CREATE TABLE `uom_details` (
  `id` int(10) unsigned zerofill NOT NULL auto_increment,
  `name` varchar(120) NOT NULL,
  `spec` varchar(120) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `uom_details`
--

INSERT INTO `uom_details` (`id`, `name`, `spec`) VALUES
(0000000006, 'UOM1', 'UOM1 Specification'),
(0000000007, 'UOM2', 'UOM2 Specification'),
(0000000008, 'UOM3', 'UOM3 Specification'),
(0000000009, 'UOM4', 'UOM4 Specification');
