-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2018 at 02:31 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DATACS`
--

-- --------------------------------------------------------

--
-- Table structure for table `Crypto`
--

CREATE TABLE `Crypto` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `liens` varchar(100) NOT NULL,
  `cryptoType` varchar(10) NOT NULL,
  `cmk` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Crypto`
--

INSERT INTO `Crypto` (`id`, `nom`, `code`, `liens`, `cryptoType`, `cmk`) VALUES
(1, 'bitcoin', 'btc', 'https://bitcoin.org/', 'coin', 1),
(2, 'ethereum', 'eth', 'https://www.ethereum.org/', 'coin', 1027),
(7, 'monero', 'xmr', 'https://getmonero.org/', 'coin', 328),
(8, 'dash', 'dash', 'https://www.dash.org/', 'coin', 131),
(9, 'doge', 'doge', 'http://dogecoin.com', 'coin', 74),
(10, 'litecoin', 'ltc', 'https://litecoin.com/', 'coin', 2),
(11, 'ripple', 'xrp', 'https://www.ripple.com/', 'coin', 52),
(12, 'sia', 'sia', 'https://sia.tech/', 'coin', 1042),
(13, 'zcash', 'zec', 'https://z.cash/', 'coin', 1437),
(14, 'nem', 'xem', 'https://nem.io/', 'coin', 873),
(15, 'bitshares', 'bts', 'https://bitshares.org/', 'coin', 463),
(16, 'verge', 'xvg', 'https://vergecurrency.com/', 'coin', 693),
(17, 'neo', 'neo', 'https://neo.org/', 'coin', 1376),
(18, 'omisego', 'omg', 'https://omisego.network/', 'token', 1808),
(19, 'pivx', 'pivx', 'https://pivx.org/', 'coin', 1169),
(20, 'tether', 'usdt', 'https://tether.to/', 'coin', 825),
(21, 'tron', 'trx', 'https://tron.network/', 'token', 1958),
(22, 'waves', 'waves', 'https://wavesplatform.com/', 'coin', 1274),
(23, 'salt', 'salt', 'https://www.saltlending.com/', 'token', 1996),
(24, 'zclassic', 'zcl', 'https://zclassic.org/', 'coin', 0),
(25, 'bitcoin cash', 'bch', 'https://www.bitcoincash.org/', 'coin', 1831),
(26, 'ethereum classic', 'etc', 'https://ethereumclassic.github.io/', 'coin', 1321),
(27, 'substratum', 'sub', 'https://substratum.net/', 'token', 1984),
(28, 'zencash', 'zen', 'https://zencash.com/', 'coin', 0),
(29, 'bytecoin', 'bcn', 'https://bytecoin.org/', 'coin', 372),
(30, 'okcash', 'ok', 'http://okcash.io/', '', 0),
(31, 'qtum', 'qtum', 'https://qtum.org/', '', 1684),
(32, 'aelf ', 'elf', 'https://aelf.io/', '', 2299),
(33, 'storj', 'storj', 'https://storj.io/', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Crypto`
--
ALTER TABLE `Crypto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Crypto`
--
ALTER TABLE `Crypto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
