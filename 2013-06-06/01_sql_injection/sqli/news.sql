-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2013 at 03:19 PM
-- Server version: 5.5.31
-- PHP Version: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`) VALUES
(1, 'Naujiena 1', 'Sed congue venenatis tortor accumsan fringilla. Integer rhoncus auctor eros a egestas. In turpis erat, vehicula ac adipiscing in, varius et urna. Morbi faucibus, eros at ultrices ornare, risus mauris facilisis arcu, at placerat felis libero vitae velit. Praesent volutpat sapien sed iaculis eleifend. Ut ut nibh lacinia, pellentesque mauris lobortis, ullamcorper sem. Donec faucibus neque ac odio semper, sed varius mi accumsan. Etiam nec feugiat lorem. Vivamus congue dictum felis at mattis. Maecenas sapien felis, aliquam ut dictum et, ultricies quis leo. Morbi scelerisque iaculis rutrum. Aenean venenatis, mi eu viverra ullamcorper, lorem arcu tristique mauris, quis dictum metus mi vel odio.'),
(2, 'Naujiena 2', 'Sed malesuada, odio in elementum adipiscing, mi massa blandit augue, in scelerisque dolor dolor semper nunc. Pellentesque eget odio tempus, venenatis leo a, scelerisque enim. Duis quis laoreet purus. Aenean ante leo, tempor vitae adipiscing et, venenatis tincidunt erat. Morbi libero magna, tincidunt eu dignissim consequat, ultrices vel felis. Morbi vestibulum sapien elit, eu pharetra tellus commodo sed. Quisque nec nisl vitae augue gravida fermentum. Maecenas ac ligula id nibh venenatis consequat. Phasellus nibh mauris, iaculis viverra turpis vitae, ultricies viverra turpis.'),
(3, 'Naujiena 3', 'Fusce ultricies arcu non ante rutrum ornare. Nam erat lorem, tincidunt et laoreet et, viverra et odio. In aliquam, lacus sed malesuada pretium, enim dui pretium orci, in sagittis mauris eros quis enim. Maecenas egestas augue vitae purus adipiscing, eget pulvinar justo iaculis. Pellentesque rhoncus viverra purus, euismod mattis lacus dignissim consequat. Curabitur molestie enim et vulputate vehicula. Donec bibendum malesuada fringilla.'),
(4, 'Naujiena 4', 'Duis urna lacus, pretium ac erat vel, congue tempor orci. Ut viverra sit amet mi sit amet pulvinar. Donec facilisis turpis nec est lacinia, sit amet dictum nunc dapibus. Quisque orci massa, porta ut placerat sit amet, vestibulum non augue. Nam gravida, neque a pretium mattis, lacus dolor hendrerit elit, sit amet mollis nisi nisi vel dolor. Fusce interdum ipsum id arcu congue pretium. Nunc vel lacus in dolor commodo porta sed vitae lectus. Sed in est non justo feugiat tristique. Fusce lacinia dolor ut sapien facilisis dictum. Cras sed condimentum enim. Nulla facilisi. Suspendisse dictum enim felis, ac vestibulum libero suscipit pretium. Curabitur quis nisl vitae neque tempor aliquam. Maecenas vel sodales risus.'),
(5, 'Naujiena 5', 'Sed nibh metus, sagittis at mauris ac, interdum pretium ante. Maecenas et lobortis diam. Proin faucibus ligula sed nunc consequat, eu bibendum elit mollis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut non lectus purus. Vestibulum facilisis dapibus neque et volutpat. Maecenas sapien sem, rhoncus sed viverra vulputate, accumsan vitae risus. In nec lectus ac tortor bibendum mattis a non nibh. Donec dictum tellus vitae ante hendrerit pulvinar. Proin a viverra odio. Sed semper imperdiet eros, id fermentum diam rutrum id. Pellentesque ut tincidunt neque. Aenean volutpat semper leo, vitae feugiat diam tincidunt id.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
