-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2017 at 01:53 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deepakgy_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `Appetizers`
--

CREATE TABLE `Appetizers` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Appetizers`
--

INSERT INTO `Appetizers` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Chilli Shrimp', 'Shrimp sauteed with onion, bell pepper, red chilli and sichuan pepper', '15.95', 'http://deepakgyawali.com.np/db_con/images/appetizers/chilli-shrimp.jpg', 0),
(2, 'Chilli Momo', 'Vegetale or Chicken Momo sauteed with onion, bell pepper, red chilli and sichuan pepper ', '13.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chilli-momo.jpg', 0),
(3, 'Chicken Chowela', 'Grilled boneless chicken marinated in typical Nepali spices', '11.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chicken-chowela.jpg', 0),
(4, 'Chilli Potato', 'Potato sauteed with onion, potato, red chilli and sichuan pepper ', '11.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chilli-potato.jpg', 0),
(5, 'Jhol Momo', 'Vegetable or Chicken Momo served in Chefs special Himalayan soup', '9.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/jhol-momo.jpg', 0),
(6, 'Himalayan Chicken Wings', 'Char broiled chicken wings marinated in spices', '9.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/himalayan-chicken-wings.jpg', 0),
(7, 'Chicken Momo', 'Momos or momo is a minced chicken marinated in Nepali spices stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chicken-momo.jpg', 0),
(8, 'Vegetable Momo', 'Minced vegetables marinated in Nepali spices, stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/vegetable-momo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Beers`
--

CREATE TABLE `Beers` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Beers`
--

INSERT INTO `Beers` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Heineken\r\n', 'Netherlands Euro Pale Lager 5.0 ABV. Heineken is a full bodied premium lager with deep golden color, light fruity aroma, a mild bitter taste and a balanced hop aroma leaving a crisp, clean finish for ultimate refreshing taste.', '2.99', 'http://deepakgyawali.com.np/db_con/images/beer/heineken.jpg', 0),
(2, 'Corona Light\r\n', 'Mexico Light Lager Corona Light is a light beer that has the endorsement and quality of the Corona brand. It is for people who enjoy life, have fun and are fond of relaxing after the days long routine.', '1.79', 'http://deepakgyawali.com.np/db_con/images/beer/coronalight.jpg', 0),
(3, 'Guinness Extra Stout\r\n', 'Ireland Irish Dry Stout. This beer icon is pitch black in color with roasted malt aromas. It has a rich, creamy mouth feel without being too heavy. The hops provide a nice balance to the malts, allowing a slight sweetness to show on the finish.', '1.79', 'http://deepakgyawali.com.np/db_con/images/beer/guinnessextrastout.jpg', 0),
(4, 'Stella Artois', 'Belgium Euro Pale Lager Traditional malted barley and the finest European hops give Stella Artois its superior quality and full characteristic flavor. The history of Stella Artois can be traced back to 1366 in Leuven, Belgium.', '1.99', 'http://deepakgyawali.com.np/db_con/images/beer/stellaartois.jpg', 0),
(5, 'Michelob Ultra', 'Missouri Light Lager Light golden in color with subtle notes of citrus, this low carb American style light lager is made from two row Munich malts and European select hops for a clean, refreshing body and finish. May your glass always be full.\r\n', '1.39', 'http://deepakgyawali.com.np/db_con/images/beer/michelobultra.jpg', 0),
(6, 'Lagunitas IPA\r\n', 'California American India Pale Ale IPA 6.2 ABV. This is Lagunitas unique version of an ancient style. It is made with 43 different hops and 65 various malts. This IPA is full of flavor with notes of spice, roasted malts, caramel, and citrus fruit.', '1.89', 'http://deepakgyawali.com.np/db_con/images/beer/lagunitasipa.jpg', 0),
(7, 'Chimay Grande Reserve Blue', 'Belgium Belgian Strong Dark Ale 9 ABV. The color of this beer is dark and inviting. A rich and lively sweetness gives way to a drier finish. A peppery spiciness is balanced by thyme, cedar a touch of nutmeg. BeerAdvocates 25 of 25 All Time Top Beers 2008.\r\n', '15.99', 'http://deepakgyawali.com.np/db_con/images/beer/chimaygrandereserveblue.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Desserts`
--

CREATE TABLE `Desserts` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Desserts`
--

INSERT INTO `Desserts` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Khir', 'Shrimp sauteed with onion, bell pepper, red chilli and sichuan pepper', '8.95', 'http://deepakgyawali.com.np/db_con/images/dessert/khir.jpg', 0),
(2, 'Rato Mohan', 'Vegetale or Chicken Momo sauteed with onion, bell pepper, red chilli and sichuan pepper ', '10.25', 'http://deepakgyawali.com.np/db_con/images/dessert/ratomohan.jpg', 0),
(3, 'Kathmandu Delight', 'Grilled boneless chicken marinated in typical Nepali spices', '11.95', 'http://deepakgyawali.com.np/db_con/images/dessert/kathmandudelight.jpg', 0),
(4, 'Chocolate Mousse', 'Potato sauteed with onion, potato, red chilli and sichuan pepper ', '9.25', 'http://deepakgyawali.com.np/db_con/images/dessert/chocolatemousse.jpg', 0),
(5, 'Green Bamboo', 'Vegetable or Chicken Momo served in Chef\'s special Himalayan soup', '7.85', 'http://deepakgyawali.com.np/db_con/images/dessert/greenbamboo.jpg', 0),
(6, 'Coconut Suprem', 'Char broiled chicken wings marinated in spices', '9.95', 'http://deepakgyawali.com.np/db_con/images/dessert/coconutsupreme.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `FoodCart`
--

CREATE TABLE `FoodCart` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` text NOT NULL,
  `img_url` text NOT NULL,
  `customer` text NOT NULL,
  `ordernumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FoodCart`
--

INSERT INTO `FoodCart` (`id`, `name`, `description`, `quantity`, `price`, `img_url`, `customer`, `ordernumber`) VALUES
(7, 'Nepali Khana Set', 'Shrimp sauteed with onion, bell pepper, red chilli and sichuan pepper', 1, '15.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/nepali-set.jpg', 'john', 0),
(8, 'Sashlick', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', 1, '19.25', 'http://deepakgyawali.com.np/db_con/images/maincourse/shashlik.jpg', 'john', 0),
(9, 'Macallan 12 Yr', 'Highlands, Scotland Matured at The Macallan distillery for a minimum of 12 years in Sherry oak casks from Spain, this is a classic, full bodied Single Malt. Deliciously smooth palate of dried fruits, spice and wood smoke, leads to notes of flowers and sherry on the finish.', 1, '59.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/macallan.jpg', 'john', 0),
(5, 'Chicken Chilli Nanglo', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', 1, '18.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/chichkenchillinanglo.jpg', 'deepak', 0);

-- --------------------------------------------------------

--
-- Table structure for table `MainCourse`
--

CREATE TABLE `MainCourse` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MainCourse`
--

INSERT INTO `MainCourse` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Sashlick', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '19.25', 'http://deepakgyawali.com.np/db_con/images/maincourse/shashlik.jpg', 0),
(2, 'Khasi Ko Karang', 'White Rice Baby Spinach Sauteed Mushroom AlooTama Bodi Aloo Cauli House Himalayan Pickle Fresh Green Chilli Onion Lemon.', '23.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/khasikokarang.jpg', 0),
(3, 'Chulo Ko Parikar', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '23.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/chulokoparikar.jpg', 0),
(4, 'Mirga Ko Masu', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '24.00', 'http://deepakgyawali.com.np/db_con/images/maincourse/mirgakomasu.jpg', 0),
(5, 'Jyogi Bhat', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '24.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/jyogibhat.jpg', 0),
(6, 'Ledo Bedo', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '22.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/ledobedo.jpg', 0),
(7, 'Gorkhali', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '19.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/gorkhali.jpg', 0),
(8, 'Nepalese Meat Masala', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '19.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/nepalesemeatmasala.jpg', 0),
(9, 'Masu Ra Saag', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '17.50', 'http://deepakgyawali.com.np/db_con/images/maincourse/masurasaag.jpg', 0),
(10, 'Tandoori Butter Chicken', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '18.50', 'http://deepakgyawali.com.np/db_con/images/maincourse/tandooributterchicken.jpg', 0),
(11, 'Lamb Babari', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '18.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/lambbabari.jpg', 0),
(12, 'Chicken Chilli Nanglo', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '18.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/chichkenchillinanglo.jpg', 0),
(13, 'Khasi Ko Chilli', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '25.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/khasikochilli.jpg', 0),
(14, 'Tareko', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '25.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/tareko.jpg', 0),
(15, 'Linas ko Macha Tarkari', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '22.95', 'http://deepakgyawali.com.np/db_con/images/maincourse/linaskomachatarkari.jpg', 0),
(16, 'Mugling Dal Bhat', 'White Basmati Rice Baby Spinach Sauteed Mushroom Choice of Chicken or Lamb or Goat Curry Aaloo Tama Bodi Himalayan House Pickle Fresh Chilli Onion Lemon.', '24.50', 'http://deepakgyawali.com.np/db_con/images/maincourse/muglingdalbhat.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `OurSpecial`
--

CREATE TABLE `OurSpecial` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OurSpecial`
--

INSERT INTO `OurSpecial` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Nepali Khana Set', 'Shrimp sauteed with onion, bell pepper, red chilli and sichuan pepper', '15.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/nepali-set.jpg', 0),
(2, 'Bread Gwaramari	', 'Vegetale or Chicken Momo sauteed with onion, bell pepper, red chilli and sichuan pepper ', '13.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/nepalese-bread.jpg', 0),
(3, 'Mutton Curry', 'Grilled boneless chicken marinated in typical Nepali spices', '11.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/mutton-curry.jpg', 0),
(4, 'Nepalese Noodle', 'Potato sauteed with onion, potato, red chilli and sichuan pepper ', '11.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/noodle-soup.jpg', 0),
(5, 'Masala Tea', 'Vegetable or Chicken Momo served in Chef\'s special Himalayan soup', '9.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/milk-tea.jpg', 0),
(6, 'Chicken Dumplings	', 'Char broiled chicken wings marinated in spices', '9.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/chicken-dumplings.jpg', 0),
(7, 'Caluliflower Pakora', 'Momos or momo is a minced chicken marinated in Nepali spices stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/cauliflower-pakora.jpg', 0),
(8, 'Vegetable Pulao	', 'Minced vegetables marinated in Nepali spices, stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/veggie-rice.jpg', 0),
(9, 'Eggplant Bhutuwa', 'Minced vegetables marinated in Nepali spices, stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/stir-eggplant.jpg', 0),
(10, 'Beans Kwati', 'Minced vegetables marinated in Nepali spices, stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://deepakgyawali.com.np/db_con/images/ourspecial/nepali-beans.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Chilli Shrimp', 'Shrimp sauteed with onion, bell pepper, red chilli and sichuan pepper', '15.95', 'http://deepakgyawali.com.np/db_con/images/appetizers/chilli-shrimp.jpg', 0),
(2, 'Chilli Momo', 'Vegetale or Chicken Momo sauteed with onion, bell pepper, red chilli and sichuan pepper ', '13.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chilli-momo.jpg', 0),
(3, 'Chicken Chowela', 'Grilled boneless chicken marinated in typical Nepali spices', '11.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chicken-chowela.jpg', 0),
(4, 'Chilli Potato', 'Potato sauteed with onion, potato, red chilli and sichuan pepper ', '11.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chilli-potato.jpg', 0),
(5, 'Jhol Momo', 'Vegetable or Chicken Momo served in Chef\'s special Himalayan soup', '9.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/jhol-momo.jpg', 0),
(6, 'Himalayan Chicken Wings', 'Char broiled chicken wings marinated in spices', '9.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/himalayan-chicken-wings.jpg', 0),
(7, 'Chicken Momo', 'Momos or momo is a minced chicken marinated in Nepali spices stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/chicken-momo.jpg', 0),
(8, 'Vegetable Momo', 'Minced vegetables marinated in Nepali spices, stuffed in flour wrap and steamed. Served with a special spicy sauce', '8.95', 'http://www.deepakgyawali.com.np/db_con/images/appetizers/vegetable-momo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `pNumber` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `fName`, `lName`, `pNumber`, `username`, `password`, `email`) VALUES
(1, 'Deepak', 'Gyawali', '12345678', 'deepak', 'deepak', 'deepakgyawali@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Wines`
--

CREATE TABLE `Wines` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wines`
--

INSERT INTO `Wines` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Caymus Cabernet 2015\r\n', 'Wine Advocate Napa, CA The perfumed black fruit preserves and chocolate laced notes completely pack the full bodied palate, with soft, velvety tannins and just enough freshness, finishing very long and very spicy. Definitely one for hedonists seeking immediate gratification.', '74.99', 'http://deepakgyawali.com.np/db_con/images/wine/caymus.jpg', 0),
(2, 'Mascota Vineyards Unanime 2013', 'James Suckling Mendoza, Argentina This is real wine for the money that shows so much depth of fruit and silky tannins. Full body yet refined and beautiful. Superb length. A wine that you want to try again and again. A blend of of 60 cabernet sauvignon, 25 malbec and 15 cabernet franc.', '24.99', 'http://deepakgyawali.com.np/db_con/images/wine/unanime.jpg', 0),
(3, 'Groth Cabernet Reserve 2011', 'Oakville, Napa, CA Distinctive notes of plum, black cherry, vanilla and spice are apparent in the extraordinary aroma and flavor profile of this special wine. Supple and elegant on the palate, with firm yet polished tannins on the lingering finish. Aged 24 months in new French oak.\r\n', '91.99', 'http://deepakgyawali.com.np/db_con/images/wine/groth.jpg', 0),
(4, 'Silver Oak Cabernet Napa 2012', 'Wine Spectator Napa, CA Notes of dill, herb and vanilla bean-scented oak lead to an elegant array of dark berry, herb, cedar, gravelly earth and underbrush flavors. The tannins cling a bit, but this is an enjoyable and approachable youngster, with a track record for aging.', '114.97', 'http://deepakgyawali.com.np/db_con/images/wine/silveroak.jpg', 0),
(5, 'Opus One 2014', 'James Suckling Napa, CA Mesmerizing aromas of flowers, bark, currants and blackberries. So perfumed. You just want to smell it. Exquisite tension and finesse with an almost Burgundian texture, yet its Napa in its soul with ripe fruit, stones, spices and Chinese tea leaf flavors.', '309.97', 'http://deepakgyawali.com.np/db_con/images/wine/opusone.jpg', 0),
(6, 'Chateau Lafite Rothschild Pauillac 2010\r\n', 'Wine Enthusiast 1st Growth, Pauillac, Bordeaux, France  Almost black in color, this stunning wine is gorgeous, rich and dense. Its grand and powerful, with a strong sense of its own importance. The beautiful tannins and the fragrant black currant fruits are palpable.', '999.97', 'http://deepakgyawali.com.np/db_con/images/wine/pauillac.jpg', 0),
(7, 'Chateau Petrus Pomerol 2005', 'Wine Spectator Pomerol, Bordeaux, France A sleeping giant. Dark ruby in color, showing aromas of blackberry, and green olive, with a hint of mineral. Full bodied, with ultrafine tannins and a supercaressing mouthfeel. Coffee, dark chocolate and berry. Chewy yet balanced. Very long in the mouth.', '4499.97', 'http://deepakgyawali.com.np/db_con/images/wine/petrus.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Wishkey`
--

CREATE TABLE `Wishkey` (
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `Description` text NOT NULL,
  `Price` text NOT NULL,
  `IMG_URL` text NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wishkey`
--

INSERT INTO `Wishkey` (`ProductID`, `ProductName`, `Description`, `Price`, `IMG_URL`, `cartid`) VALUES
(1, 'Macallan 12 Yr', 'Highlands, Scotland Matured at The Macallan distillery for a minimum of 12 years in Sherry oak casks from Spain, this is a classic, full bodied Single Malt. Deliciously smooth palate of dried fruits, spice and wood smoke, leads to notes of flowers and sherry on the finish.', '59.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/macallan.jpg', 0),
(2, 'Glenlivet 12 Yr', 'Speyside, Scotland Matured in a mixture of cask types, including American & European Oak. American oak imparts vanilla notes and gives the whisky its distinct smoothness. The mineral rich water from Josies Well ensures the best possible results to form the flavors.', '39.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/glenlivet.jpg', 0),
(3, 'Glenfiddich 12 Yr', 'Speyside Scotland The pioneer of the Single Malt Scotch category and one of the worlds most popular. Distinctively fragrant, balancing the fruitiness of pear with the richness of subtle oak. Displaying complex, elegantly rounded flavors with a creamy, mellow finish.', '67.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/glenfiddich.jpg', 0),
(4, 'Johnnie Walker Blue Label', 'Scotland Created from the rarest and most expensive whiskies in the world, individually numbered and produced in limited quantities. Johnnie Walker Blue has the authentic character and flavor of a traditional 19th century blend with traces of smoke, honey and spice on the silky finish.', '199.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/bluelabel.jpg', 0),
(5, 'Jameson 18 Yr', 'Wine Enthusiast Ireland Jameson 18 Years Old Limited Reserve is a mellow tasting rare old whiskey matured for at least 18 years in hand selected American barrels and European oak casks. Finished in first fill bourbon barrels add subtle traces of vanilla on the palate.', '129.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/jameson.jpg', 0),
(6, 'Ballantine 17 Yr', 'Lowlands, Scotland The longer maturation of Ballantines 17Yr gives an extra depth of flavor and character to the blend. Characterized by a subtle sensation of smokiness, it has a fruity and velvety texture coming from fresh fruits.\r\n', '89.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/ballantines.jpg', 0),
(7, 'Chivas Regal 25 Yr', 'Scotland In 1909, Chivas Brothers made distilling history by creating the worlds first luxury Scotch whisky, Chivas Regal 25. Each of the hand selected whiskies has been matured for a minimum of 25 years. Chivas 25 is bottled only twice a year, with each individually numbered.', '299.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/chivasregal.jpg', 0),
(8, 'Crown Royal', 'Canada A smooth blend of 50 distinct, full bodied whiskies matured in white oak barrels. The taste is enhanced by a rich, lingering finish with hints of oak and vanilla. Approachable and unpretentious. Enjoy neat, with ice, or in cola.', '42.99', 'http://deepakgyawali.com.np/db_con/images/wishkey/crownroyal.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Appetizers`
--
ALTER TABLE `Appetizers`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `Beers`
--
ALTER TABLE `Beers`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `Desserts`
--
ALTER TABLE `Desserts`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `FoodCart`
--
ALTER TABLE `FoodCart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MainCourse`
--
ALTER TABLE `MainCourse`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `OurSpecial`
--
ALTER TABLE `OurSpecial`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wines`
--
ALTER TABLE `Wines`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `Wishkey`
--
ALTER TABLE `Wishkey`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `FoodCart`
--
ALTER TABLE `FoodCart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `MainCourse`
--
ALTER TABLE `MainCourse`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
