-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 05:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'HB SHOP', 'hbshop', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(3, 'bahar', 'bahar', 'bahar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `brandID` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`brandID`, `brandName`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Acer'),
(4, 'Canon'),
(15, 'Sony'),
(20, 'HP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartID` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartID`, `sid`, `productID`, `productName`, `price`, `quantity`, `image`) VALUES
(74, 'n50l1rh9ih48ec9s68biheob04', 34, 'Apple Iphone 128GB', 400.00, 1, 'upload/ec2dab14aa.png'),
(75, 'n50l1rh9ih48ec9s68biheob04', 36, 'Canon camera', 300.00, 1, 'upload/89b918b063.png'),
(155, '0g4f951pdkn93cspvl0iot4sag', 34, 'Apple Iphone 128GB', 400.00, 1, 'upload/ec2dab14aa.png'),
(156, 'bjkm9q49ding04urnp161tah2u', 36, 'Canon camera', 300.00, 1, 'upload/89b918b063.png'),
(176, '254n5br2teq9tq952a7la59ufu', 42, 'CURREN 8321 Black', 25.00, 1, 'upload/14b00d6699.jpg'),
(177, 'jt377mmju7k0msabjm08bagmsu', 42, 'CURREN 8321 Black', 25.00, 1, 'upload/14b00d6699.jpg'),
(178, 'jt377mmju7k0msabjm08bagmsu', 43, 'Samsung Galaxy A71', 400.00, 1, 'upload/18f6fab440.jpg'),
(180, 'jt377mmju7k0msabjm08bagmsu', 36, 'Canon camera', 300.00, 1, 'upload/89b918b063.png'),
(193, '9an317gpbblcu659hsublmj41p', 38, 'Samsung TAB 11 inch', 399.00, 2, 'upload/15b24c21fb.jpg'),
(197, 'f2g629blp24t1ik603e4kuqlja', 36, 'Canon camera', 300.00, 1, 'upload/89b918b063.png'),
(200, 'vbd8hjf6jr3hi5r0l1vkf6g23k', 47, 'Galaxy M30', 600.00, 1, 'upload/a937197944.jpg'),
(205, '47glcblm5obd8dnr1k1ta7lria', 36, 'Canon camera', 300.00, 1, 'upload/89b918b063.png'),
(206, '47glcblm5obd8dnr1k1ta7lria', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(210, 'kb1ver2vo8cmp471jhqrq2j34m', 36, 'Canon camera', 300.00, 1, 'upload/89b918b063.png'),
(240, 'abs92picjmd57rhtc62r9mndtv', 51, 'Canon Eos 4000D 18MP', 500.00, 1, 'upload/0bc560c549.jpg'),
(241, 'abs92picjmd57rhtc62r9mndtv', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(261, '2jobptbr71j6fb431k0h0r8ntt', 49, 'Galaxy M306167', 600.00, 1, 'upload/f4ded7d4d3.jpg'),
(262, '2jobptbr71j6fb431k0h0r8ntt', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(275, 'vv8d42rnukovn321oic1ge9m93', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(304, 'hn3do6up4kfeucfdpj0j2jveu1', 52, 'fsbv', 437.00, 1, 'upload/de3e5fd5c1.jpg'),
(318, 'cp90p0cfam70gvbf8rr9tavleg', 50, 'Iphone 11 Pro', 500.00, 1, 'upload/bae572bcaf.jpg'),
(319, '6vtk4vd4tjk9jg07vlm6oi5ln9', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(320, '6vtk4vd4tjk9jg07vlm6oi5ln9', 50, 'Iphone 11 Pro', 500.00, 1, 'upload/bae572bcaf.jpg'),
(321, 'paj24db9ic5896vsa11ajd3jmj', 50, 'Iphone 11 Pro', 500.00, 1, 'upload/bae572bcaf.jpg'),
(322, 'paj24db9ic5896vsa11ajd3jmj', 49, 'Galaxy M306167', 600.00, 1, 'upload/f4ded7d4d3.jpg'),
(323, '6prdetbhpdsprd5dsaol892k6j', 50, 'Iphone 11 Pro', 500.00, 1, 'upload/bae572bcaf.jpg'),
(324, '6prdetbhpdsprd5dsaol892k6j', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(326, '9a8hng7b7muqvom4nfudq0nh3c', 49, 'Galaxy M306167', 600.00, 1, 'upload/f4ded7d4d3.jpg'),
(328, '8sojvs8bif83jn3lh5i23g2gqu', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(331, 'gc4f3ih7t9hbtogkgjc52p7pbn', 51, 'Canon Eos 4000D 18MP', 500.00, 1, 'upload/0bc560c549.jpg'),
(332, 'ar9uhrqda6b7rfqbljgr07nd5i', 50, 'Iphone 11 Pro', 500.00, 1, 'upload/bae572bcaf.jpg'),
(335, 'h1p7mpqtjngeso1l2njknueub2', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(336, 'ljkd72sierueunscai9if5ostj', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(342, 'csiqefaa9cli6kp1r8bklr8ltj', 51, 'Canon Eos 4000D 18MP', 500.00, 1, 'upload/0bc560c549.jpg'),
(343, 'csiqefaa9cli6kp1r8bklr8ltj', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(346, 'g5n2s16oq4doe94p28grqmesh2', 50, 'Iphone 11 Pro', 500.00, 1, 'upload/bae572bcaf.jpg'),
(347, 'g5n2s16oq4doe94p28grqmesh2', 47, 'Galaxy M30', 610.00, 2, 'upload/d07b6fb692.jpg'),
(348, '7iu6hfe67n4g4v0vmiaqehagnq', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(349, 'rsh7npd8adj28lplbho64eljlt', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(350, 'pariugf90782fj3nmke9bhabsm', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(351, '0moounh0ueqsa89m7c3eb2vvag', 49, 'Galaxy M306167', 600.00, 1, 'upload/f4ded7d4d3.jpg'),
(352, 'qi09bet8fbecg6kllqlbt1drsk', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg'),
(353, 'rv4g6gs0ummf06rb1oaebs112t', 49, 'Galaxy M306167', 600.00, 1, 'upload/f4ded7d4d3.jpg'),
(354, 'ej4vtpmfd7frjppcc29pam5fnh', 44, 'Acer Monitor', 148.00, 1, 'upload/09c4e44bbf.jpg'),
(357, 'duo6ssobg81t7so6o7270nk83i', 47, 'Galaxy M30', 610.00, 1, 'upload/d07b6fb692.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catagory`
--

CREATE TABLE `tbl_catagory` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_catagory`
--

INSERT INTO `tbl_catagory` (`catId`, `catName`) VALUES
(1, 'Electronic'),
(3, 'Mobile Phone'),
(13, 'Beauty and Lifestyle'),
(14, 'Laptop'),
(15, 'Electronics'),
(18, 'Clothings'),
(21, 'Sports and Fitness'),
(28, 'Laptop'),
(29, 'HP Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `compareID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `compareID`, `productID`, `productName`, `price`, `image`) VALUES
(20, 5, 37, 'Accer Monitor', 270.00, 'upload/e938d693ef.jpg'),
(23, 10, 36, 'Canon camera', 300.00, 'upload/89b918b063.png'),
(24, 15, 47, 'Galaxy M30', 600.00, 'upload/a937197944.jpg'),
(25, 15, 36, 'Canon camera', 300.00, 'upload/89b918b063.png'),
(29, 53, 65, 'Samsung Galaxy Tab S8+', 4999.00, 'upload/2e2f7fd5cb.jpg'),
(30, 53, 61, 'Asus ZenBook', 4000.00, 'upload/6e7cb1ed9e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customerID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customerID`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `password`, `token`, `status`) VALUES
(56, 'Habibul Bahar', 'Fazill chits', 'sylhet', 'Bangladesh', '3100', '01745882557', 'habibulbaharlu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '102303665c09dd1acc5435cb8687da47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderID`, `customerID`, `productID`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(174, 42, 50, 'Iphone 11 Pro', 1, 550.00, 'upload/bae572bcaf.jpg', '2022-03-07 01:19:43', '4'),
(175, 42, 37, 'Accer Monitor', 1, 297.00, 'upload/e938d693ef.jpg', '2022-03-07 01:20:35', '3'),
(199, 45, 51, 'Canon Eos 4000D 18MP', 4, 2200.00, 'upload/0bc560c549.jpg', '2022-03-11 17:20:40', '3'),
(209, 52, 52, 'Camera', 1, 480.70, 'upload/de3e5fd5c1.jpg', '2022-03-11 21:23:05', '1'),
(210, 52, 44, 'Acer Monitor', 1, 162.80, 'upload/09c4e44bbf.jpg', '2022-03-11 21:25:24', '1'),
(223, 53, 61, 'Asus ZenBook', 1, 4400.00, 'upload/6e7cb1ed9e.jpg', '2022-03-13 13:08:33', '0'),
(224, 56, 65, 'Samsung Galaxy Tab S8+', 3, 16496.70, 'upload/2e2f7fd5cb.jpg', '2022-03-13 14:32:19', '0'),
(225, 56, 44, 'Acer EB192Q', 1, 162.80, 'upload/09c4e44bbf.jpg', '2022-03-13 14:32:19', '0'),
(226, 56, 58, 'Lenovo Tab ', 2, 15400.00, 'upload/4c88241e22.jpg', '2022-03-13 14:32:59', '0'),
(227, 56, 64, 'Canon EOS 6D ', 1, 2198.90, 'upload/3b4e06f862.jpg', '2022-03-13 14:32:59', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandID` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productID`, `productName`, `catId`, `brandID`, `body`, `price`, `image`, `type`) VALUES
(35, 'Samsung T4500', 15, 2, 'Samsung T4500 32\" HD Smart TV\r\nSamsung T4500 32\" HD Smart TV comes with Voice Assistant with One Remote Control. It helps you to discover tons of different content in one place and get maximum enjoyment. The sleek One Remote Control keeps it simple and allowing you to quickly search all your favorite content from your set-top box to game consoles, apps, and even live TV. This TV has Multiple voice assistant which helps you to quickly access favorite content, get answers, and even control your TV and other connected devices around your home. Just tell it what you want. This TV has HDMI x 2, USB x 1, Component In (Y/Pb/Pr) x 1, Composite In (AV) x 1 (Common Use for Component Y), Digital Audio Out (Optical) x 1, HDMI A / Return Ch. Support, Bluetooth, RF In (Terrestrial / Cable input), 1/1(Common Use for Terrestrial)/0, HDMI Quick Switch. The latest Samsung Smart TV offers a completely new visual experience to your playlist. It turns your TV into a virtual music system that appears in 3 different color tones. Now, all your beats will sound and look better. In this TV, the new Auto Hotspot feature automatically turns on the Internet on the TV through your mobile. The Home Cloud feature will save your most important files to the Samsung Smart TV, wirelessly and automatically. This latest Samsung T4500 Smart TV featured with Mobile to TV - Mirroring, DLNA, Bluetooth Low Energy, WiFi Direct, TV Sound to Mobile, Sound Mirroring, Digital Broadcasting DVB-T2, Analog Tuner and TV Key, Brightness Detection, Ultra Clean View, Digital Clean View, Auto Channel Search, Game Mode, 22 Local Languages, Eco Sensor, 2 x Energy Efficiency Class. This new Samsung T4500 32\" HD Smart TV has no Warranty.', 3999.0, 'upload/65f99c0f40.jpg', 1),
(36, 'Canon camera', 1, 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 300.0, 'upload/89b918b063.png', 0),
(37, 'Acer EB192Q', 1, 3, 'Acer EB192Q 18.5 Inch HD Backlit LED LCD Monitor\r\nAcer EB192Q Monitor comes with 18.5 Inch (1366x768) HD Backlit LED LCD Display. The Acer EB192Q featured with this Comfy View display which prevents reflections to provide greater eye comfort and also on this LED-backlit display with the fine details with this full HD resolution. Here used LED technology and uses less energy, delivering up to 68% power savings. The horizontal viewing angle is 95 degrees while the vertical viewing angle is 65 degrees, Colour Support: 16.7 Million Colours, Panel Technology: Twisted Nematic Film (TN Film). This Acer EB192Q Monitor featured with 95 degrees Horizontal Viewing Angle, 65 degrees Vertical Viewing Angle, TN Panel Technology, -5 to 25 degrees Tilt Angle. The high resolution, rapid response time, and superior contrast ratio of this monitor make this series ideal for viewing heavy-duty media applications and movies with detailed precision and crisp images. In this Acer monitor, the Mercury-free LED backlight technology guarantees safe usage and environmental care. Here, LED technology also uses less energy and delivers up to 68% power savings. The latest Acer EB192Q Monitor offers 03 years warranty.', 270.0, 'upload/c47576f48b.jpg', 0),
(38, 'Samsung Galaxy Tab A7', 3, 2, 'Samsung Galaxy Tab A7 WiFi 32GB ROM. 3GB RAM 10.4\" Tablet\r\nThe Latest Samsung Galaxy Tab A7 WiFi Tablet comes with a slim design, a vibrant entertainment system, and outstanding performance. It is featured with 32GB ROM. 3GB RAM storage capacity. This Samsung Galaxy Tab A7 is a stylish new companion for your daily life.\r\n\r\nSlim, Stylish and Sophisticated design:\r\nThis new Galaxy Tab A7 is designed with a true head-turner that offers great immersive experiences. It\'s beautiful symmetry design and thickness of just 7mm, it featured with sophisticated metal design in three colors. In our shop, Dark Gray color is available, that designed with an asymmetric bezel all the way around.', 3499.0, 'upload/cf59dbece6.jpg', 1),
(39, 'Sony Shake X10 ', 15, 3, 'Sony Shake X10 High-Power Home Audio Speaker System\r\nBe blown away by soul-shaking bass with the Sound Pressure Horn. An internal folded horn design efficiently increases acoustic pressure by pushing energy through an amplifying duct. The result is far more effective than traditional, energy-wasting amplifiers and signal processing, adding a boldness and body you can really feel to all your bass lines. LDAC is a new audio technology from Sony that allows you to enjoy the highest-quality wireless audio via Bluetooth. With up to 3x the data transmitted, LDAC provides an enhanced wireless listening experience for all your music. Get the crowd going with DJ effects. Four different effects set the stage for your party: Flanger creates a deep roaring effect; WAH distorts the audio; Isolator singles out a specific frequency band; and PAN sweeps the sound across speakers. You can use DJ effects with the Fiestable app and gesture control, so getting creative with your party playlists has never been easier. Pump up the atmosphere with club-like LED speaker illumination. The LED light speakers come with various color patterns, ranging from pure white to rainbow. Synchronizing with the rhythm of the beat, the power and speed of the light display matches the musical mood and atmosphere. Karaoke competitions with your friends are easy: just hook the SHAKE-X10 up to a TV, pop in a karaoke DVD and sing along to the words on the screen. Two mic inputs and features such as song reservation, scoring, and echo let you team up with friends for the ultimate sing-off. A built-in vocal fader even turns down the voice on CDs, so you can sing all your favorite songs. Hold your own mini concerts with the guitar input. Just plug in and press the Guitar key to enjoy powerful sound for your guitar. Play solo style, or connect a microphone to sing along. Download Sony | Music Center (previously called SongPal) for your smartphone or tablet and take control of your music collection. Simply connect over Bluetooth technology and you\'ll have seamless access to all your favorite tracks. The app can also be used to customize sound settings to ensure great, balanced audio. Near Field Communication (NFC) and Bluetooth technology remove the need for wired connections and complex set-up sequences. Simply touch your NFC-enabled device to the SHAKE-X10 for a quick, seamless connection, then start streaming your music collection. No NFC? No problem. Connect via Bluetooth® and you\'re ready to go.', 3899.0, 'upload/d7ea3644b8.jpg', 0),
(42, 'Samsung Galaxy Watch', 1, 2, 'Samsung Galaxy Watch 4 Classic 46mm Smartwatch\r\nSamsung Galaxy Watch 4 Classic is a 46mm Smartwatch by the electronics giant Samsung. The Smartwatch has been designed to work with the latest devices and help you learn more so you can achieve your fitness goals. It goes beyond tracking steps and calories to offer actionable insights on everything from your running style to your heart rate. Galaxy Watch4 tracks your movements so you can just slip it on and get working out. With swimming added to automatic tracking you now get seven exercises, while manual tracking works for all activities for dozens you can track. The running coach function gives you actionable advice in real-time. It comes with a thin, light design. The Super AMOLED display is all screen from edge to edge. The touch bezel allows you to easily navigate with a quick turn, touch, or tap.', 2499.0, 'upload/c13f963858.jpg', 0),
(43, 'Samsung Galaxy Book Pro 360', 3, 2, 'Samsung Galaxy Book Pro 360 Core i7 11th Gen 2-in-1 1TB SSD 15.6\" FHD Touch Laptop\r\nThe Samsung Galaxy Book Pro 360 15.6\" laptop comes with a brilliant Super AMOLED touch screen and the latest Intel 11th Gen Core processor. It features Intel Core i7-1165G7 Processor (12M Cache, 2.80 GHz up to 4.70 GHz). With a true-to-life, accurate and vibrant 15.6” Super AMOLED touch screen that has a 120 % Colour Volume (DCI-P3). Integrated AKG and Dolby Atmos sound for a truly immersive cinematic experience. The Galaxy Book Pro 360 is sleek, ultrathin, and made to make you look good. It\'s a 2-in-1 convertible designed with a 360° hinge in a class of its own. Being 11.5 mm thick and weighing 1,042g, the Galaxy Book Pro 360 delivers the mobility of smartphones and military-grade durability. It has been designed to switch to a PC or tablet. The Samsung Galaxy Book Pro 360 has 16GB of RAM with 1TB of storage. With a 24% faster CPU and a GPU that\'s 87% faster than the previous generation\'s, Intel Iris Xe graphics will change the way you experience the breakthrough in productivity, gaming, and streaming. It has a Pro Keyboard with wide, curved keys that help you do things faster and more comfortably. It has a MicroSD Card Reader that supports up to 2TB for SD. It also has 1 Thunderbolt 4 and 2 USB Type-C ports. It comes with Wi-Fi 6E (Gig+), 802.11 axes, and Bluetooth v5.1 for faster and smoother connectivity. Samsung Galaxy Book Pro 360 is powered by a 68 Wh battery for up to 21 hours on a fully charged battery. It comes with a 1-year warranty.', 999.0, 'upload/ae8c02a97f.jpg', 0),
(44, 'Acer EB192Q', 1, 3, 'Acer EB192Q 18.5 Inch HD Backlit LED LCD Monitor\r\nAcer EB192Q Monitor comes with 18.5 Inch (1366x768) HD Backlit LED LCD Display. The Acer EB192Q featured with this Comfy View display which prevents reflections to provide greater eye comfort and also on this LED-backlit display with the fine details with this full HD resolution. Here used LED technology and uses less energy, delivering up to 68% power savings. The horizontal viewing angle is 95 degrees while the vertical viewing angle is 65 degrees, Colour Support: 16.7 Million Colours, Panel Technology: Twisted Nematic Film (TN Film). This Acer EB192Q Monitor featured with 95 degrees Horizontal Viewing Angle, 65 degrees Vertical Viewing Angle, TN Panel Technology, -5 to 25 degrees Tilt Angle. The high resolution, rapid response time, and superior contrast ratio of this monitor make this series ideal for viewing heavy-duty media applications and movies with detailed precision and crisp images. In this Acer monitor, the Mercury-free LED backlight technology guarantees safe usage and environmental care. Here, LED technology also uses less energy and delivers up to 68% power savings. The latest Acer EB192Q Monitor offers 03 years warranty.', 148.0, 'upload/09c4e44bbf.jpg', 1),
(47, 'Galaxy Book Pro ', 14, 2, 'Samsung Galaxy Book Pro Core i7 11th Gen 16GB RAM 512GB SSD 15.6\" FHD Laptop\r\nThe Brand new Samsung Galaxy Book Pro is Laptop, which comes with a brilliant Super AMOLED screen. This Samsung Galaxy Book is powered by the latest Intel Core i7-1165G7 Processor (12M Cache, 2.80 GHz up to 4.70 GHz) with Intel Iris Xe Graphics and a true-to-life, accurate and vibrant 15.6” Super AMOLED screen that featured a 120 % Colour Volume (DCI-P3). Integrated AKG and Dolby Atmos sound for a truly immersive cinematic experience. In this Samsung Galaxy Book Pro, It has Intel Evo certification and the latest wi-fi chip, you get the power to flip from getting work done to fun instantly. The Galaxy Book Pro Laptop comes with a sleek, ultra-thin design. This Galaxy Book Being 11.5 mm thick and weighing 1,042g, the Galaxy Book Pro delivers the mobility of smartphones and military-grade durability. The keyboard feels good, which is a surprise considering how thin the base is. The Samsung Galaxy Book Pro features with 16GB of RAM. With a 24% faster CPU and a GPU that\'s 87% faster than the previous generation\'s, Intel Iris Xe graphics will change the way you experience the breakthrough in productivity, gaming, and streaming. It has a MicroSD Card Reader that supports up to 2TB for SD. It also has 1 Thunderbolt 4 and 2 USB Type-C ports for wide connectivity. It comes with Wi-Fi 6E (Gig+), 802.11 ax, and Bluetooth v5.1 for faster and smoother connectivity. Samsung Galaxy Book Pro is powered by a 68 Wh battery for up to 21 hours on a fully charged battery. With up to 21 hours on a fully charged battery. The Latest Samsung Galaxy Book Pro comes with a 1-year warranty.', 2999.0, 'upload/376aae4390.jpg', 0),
(50, 'Iphone 11 Pro', 1, 1, 'Been using this incredible phone for 2 years now and really impressive. The battery is still great. The phone is functioning and responding well. I guess the 11 series are the best', 500.0, 'upload/bae572bcaf.jpg', 0),
(51, 'Canon Eos 4000D 18MP', 1, 4, 'Tell distinctive stories with your photography. This beginner’s DSLR with EF-S 18-55mm f/3.5-5.6 III Lens intuitively creates stand-out photos and Full HD movies full of colour and detail – offering partial and full manual photographic control. The 18 Megapixel APS-C sensor allows you to shoot in low light, expressing your creativity with interchangeable lenses. Point and shoot with Scene Intelligent Auto and share your stories using the EOS 4000D’s Wi-Fi with the and Camera Connect app.', 500.0, 'upload/0bc560c549.jpg', 1),
(52, 'Camera', 3, 15, 'The 18 Megapixel APS-C sensor allows you to shoot in low light, expressing your creativity with interchangeable lenses. Point and shoot with Scene Intelligent Auto and share your stories using the EOS 4000D’s Wi-Fi with the and Camera Connect app.', 437.0, 'upload/efc3d24911.jpg', 0),
(54, 'HP Laptop', 28, 19, '	\r\nIntel® Core™ i3-5005U (2 GHz base frequency, 3 MB cache, 2 cores)', 250.0, 'upload/8899a1d601.jpg', 1),
(55, 'HP Bs120', 29, 20, 'The SMT-2 has a 13” HD with LED screen that is sure to provide an absolutely outstanding computing experience for your budget. With a long lasting battery, all aluminum construction and a lightweight design the SMT-2 is an excellent travel mate. The SMT-2 provides a perfect balance of convenience and portability at your fingertips.', 1000.0, 'upload/34ca8d12c3.jpg', 0),
(57, 'HP 15s-du1088TU', 29, 20, 'HP 15s-du1088TU Intel Pentium N5030 15.6 inch FHD Laptop with Win 10\r\nHP P15s-du1088TU Laptop comes with Intel Pentium Silver 5030 processor, 4GB DDR4 RAM, 1TB HDD, 15.6\" diagonal FHD backlit (1920 x 1080) Display, Intel UHD Graphics and Windows 10 Home. This laptop featured with Li-ion battery, Chicklit Keyboard, 720p HD Web camera with integrated dual array digital microphones. Here, Realtek RTL8822CE 802.11a/b/g/n/ac (2x2) Wi-Fi and Bluetooth 5 wireless and networking connectivity are also available. This laptop also has SuperSpeed USB Type-A signaling rate AC smart pin, HDMI x 1, 2.0 headphone/microphone combo ports and connectivity. This latest HP 15s-du1088TU Laptop has 01 year International Limited Warranty (Terms & condition Apply As Per HP).', 750.0, 'upload/7b4c26242e.jpg', 0),
(58, 'Lenovo Tab ', 3, 1, 'Lenovo Tab M10 2GB RAM 32GB Storage Wi-Fi 4G LTE 10-inch Tablet\r\nTreat your eyes to something truly special. The Tab M10\'s 10.1\" HD display captures everything from the intensity of an action scene to the beautiful details in family photos. At just 8.1 mm thin and 480 g, the Tab M10 is a delight to hold and fits easily into your satchel or backpack. It\'s built to be taken anywhere without weighing you down. Immerse yourself in booming sound when you enjoy music, movies, shows, and videos. Its dual front speakers and Dolby Atmos support mean you can enjoy a theater-like audio experience wherever you go. Add in the optional Kid’s Pack to keep your children—and your device—safe, thanks to a custom shock-resistant bumper and special kid’s mode that features up-to-date and curated children’s content. The Lenovo Tab M10 Tablet has a 1-year warranty', 7000.0, 'upload/4c88241e22.jpg', 1),
(59, 'Samsung 65TU', 15, 2, 'Samsung 65TU8000 65\" Crystal UHD 4K Smart LED TV\r\nSamsung 65TU8000 65\" Crystal UHD 4K Smart LED TV lets you experience your favorite movies and shows on a vibrant, stunning 4K UHD screen, using the Universal Guide to surf smoothly and select content. Everything you watch is automatically upscaled into 4K for stunningly vivid color and detail. This ultra-fast processor transforms everything you watch into stunning 4K. Experience crystal-clear colors that are fine-tuned to deliver a naturally crisp and vivid picture and colors that are fine-tuned to deliver a naturally beautiful picture. It features Game Enhancer. The TV automatically adjusts settings to help games run smoothly. It has a Motion Rate of 120Hz. Smooth action on fast-moving content. You won\'t miss anything. It is a Smart TV Powered by Tizen. Go beyond Smart TV with next-gen apps, super-easy control, and a host of enhancements that elevate the TV-watching experience. One simple on-screen guide organizes your streaming and Live TV content, while also making recommendations. Enjoy your favorite content through virtual channels. Complements your space by turning a blank screen into enticing visuals or at-a-glance news. Built-in Alexa, the Google Assistant, and Bixby voice assistants let you control your TV with your voice, get information and do so much more. It has 3 HDMI ports.', 5000.0, 'upload/657f9e7827.jpg', 0),
(60, 'Samsung Q70T', 15, 2, 'Samsung Q70T 65\" QLED UHD 4K Smart TV\r\nSamsung Q70T 65\" QLED UHD 4K Smart TV is equipped with Quantum Dot Technology, this TV unleashes a massive spectrum of a billion shades of color. A crisp 240Hz motion rate banishes blur and smooths out the picture for more fluid action. It even looks great when you’re not watching at all, thanks to Ambient Mode+. A system of dedicated warm and cool LED backlights enhances contrast details with Dual LED. It has been engineered to make the TV and gaming console work seamlessly together to reduce lag, tearing, and stuttering. The ultra-fast processor optimizes content for QLED and transforms everything you watch into stunning 4K. Minimizes motion blur on-screen so action-packed movies and sports stay smooth and crisp with a motion rate of 240. Thanks to the wide viewing angle you can get a great picture from every seat. Quantum Dots produce over a billion shades of color that stay true to life, even in bright scenes. It elevates your space by turning a blank screen into décor, artwork, pictures, or other visuals. Your TV reacts and adjusts to the lighting conditions around it. It comes with built-in Alexa, the Google Assistant, and Bixby voice assistants that let you control your TV with your voice, get information and do so much more. You can easily send smartphone content to your TV to simultaneously display live and casted content, share photos or visualize music. It comes with 4 x HDMI 2.1 Port 4. Compatible with next-generation Ultra HD Blu-ray players and HDR content decoding. Includes 1 Audio Return Channel (ARC). Dolby Digital Plus optimizes your entertainment experience with enhanced sound richness and clarity. HDR10+ advances the current industry standard of High Dynamic Range (HDR) and HDR10 TV formats. As an upgraded version of HDR10, HDR10+ adds dynamic metadata to each frame. This optimal HDR data enables advanced chipsets from leading manufacturers to create a true-to-life picture across a wider range of displays. It has no parts warranty.', 25000.0, 'upload/496141a53f.jpg', 1),
(61, 'Asus ZenBook', 1, 3, 'Asus ZenBook 14 UX425JA Core i5 10th Gen 512GB SSD 14\" FHD Laptop with Windows 10\r\nThe compact, thin and ultralight all-metal design of ZenBook 14 makes it the ideal traveling companion. It\'s also the world\'s thinnest 14-inch laptop to feature a full set of I/O ports1 — including HDMI and USB Type-A — so you can enjoy versatile connectivity wherever you are. With ZenBook 14\'s amazing battery life4, traveling without a charger isn\'t a big deal. When you do need to top up. Getting stuff done on the go is effortless with the elegant and lightweight ZenBook 14. Its small size and big capabilities will make it your go-to device for productivity and inspiration, whether you\'re inside or outside, working or relaxing, alone or collaborating. Pine Grey is a glossy shade that is calm and peaceful. It projects professional wisdom, and features a special off-center version of the iconic ZenBook spun-metal finish. ZenBook 14 has a bright and clear four-sided NanoEdge display, with slim bezels that create an 90% screen-to-body ratio for a more immersive viewing experience. The low-power 1-watt display6 delivers an incredible 400nits of brightness, while maximizing battery life. ZenBook 14 redefines what\'s possible in an ultrathin laptop to give you a full complement of I/O ports, including full-size HDMI and USB Type-A ports. The power of Thunderbolt™ 3 is also at your disposal, with two Thunderbolt 3 USB-C ports that support fast charging, 4K UHD external displays and up to 40Gbps data transfers. For easy transfers of data from your mobile devices, there\'s also a microSD card reader. ZenBook 14 features a new edge-to-edge ergonomic keyboard design that increases the size of the keyboard for more comfortable typing. And it looks stunning, too! For easy data entry, there\'s the ASUS NumberPad 2.0 that integrates a full-size LED-illuminated numeric keypad into the touchpad. The integrated infrared (IR) camera on ZenBook 14 makes face login fast and easy with Windows Hello. It even works in dim lighting conditions, so there\'s no need to type a password. ZenBook 14 has a precision-engineered ErgoLift hinge that automatically lifts the rear of the laptop slightly when it\'s opened, tilting the keyboard to the optimum typing angle. This action also raises the chassis for optimized cooling and enhanced audio quality. The latest 10th Generation Intel Core processors in ZenBook 14 deliver enhanced performance that makes light work of multitasking, productivity and entertainment. ZenBook 14 also features ultrafast PCIe 3.0 x4 SSDs and the latest Intel WiFi 6 with Gig+ (802.11ax) for superb all-round performance. ZenBook 14 includes the latest version of MyASUS, a collection of handy ASUS apps and tools that help you get more out of your ZenBook 14. Use it to team your iOS or Android phone with your laptop, to optimize your laptop\'s performance, or to contact after-sales service and support. There\'s also a huge range of popular app downloads and exclusive offers just for you! The audio system of ZenBook 14 is certified by audio specialists Harman Kardon to ensure immersive, crystal-clear sound for communications or entertainment. ZenBook 14 has been tested to meet the ultra-demanding MIL-STD-810G U.S. military standard for reliability and durability. Tests consisted of a punishing regime designed to ensure survival in harsh environments, and included power-on drop tests and operation at extremes of altitude and temperature. ZenBook 14 has also passed ASUS laptop stress tests that far exceed the standards set by the industry. It comes with 2 years International Limited Warranty (Battery 1 year).', 4000.0, 'upload/6e7cb1ed9e.jpg', 1),
(62, 'Sony Alpha A6000', 15, 15, 'The Sony Alpha A6000 DSLR Camera With 16-50mm lens\r\nUnlike many competitors, the α6000’s Fast Hybrid AF combines the strengths of both phase- and contrast-detection autofocus. With a class-leading 179 phase detection points (covering almost the entire image) and a high-speed contrast-detection function, the result is not only an impressive 11 fps burst mode, but also highly accurate movement tracking for both stills and video. 4D FOCUS enables superior autofocus performance in four dimensions: wide autofocus coverage (2D height and width), fast autofocus speed (3D depth) and enhanced predictive tracking (4D time). Capture the moment as never before. α6000’s autofocus is faster than a DSLR so you never miss a shot. And with new colours to choose from, your photos aren’t the only way to express yourself. The truth is simple: better images begin with bigger sensors, and the α6000 outclasses many cameras in its category. Its APS-C size sensor offers 1.6 times the area of 4/3 sensors, and 13 times that of the 1/2.3 sensors of typical compact digital cameras. The result is an outstanding level of quality in every image. With three times the processing speed of earlier models, the new BIONZ X is able to accurately capture textures, reduce blurry details and even suppress visual noise to ensure sharp images. These advantages apply equally to still images or video. An ultra-fast autofocus makes the α6000 one of the most versatile interchangeable lens cameras available. At a mere 0.06 seconds, you\'re assured of getting the perfect shot in any situation, from family events to sports and nature. The OLED Tru-Finder EVF is another α6000 expert-level tool, with real-time data for planning and previewing shots. Exposure Control compensates for bright/dim scenes, Focus Zoom enlarges a chosen detail and Display Mode reveals histograms and more. Imaging Edge™ Remote, Viewer, and EditImaging Edge Remote, Viewer, and EditElevate your photography with Imaging Edge desktop applications. Use \"Remote\" to remotely control shooting; \"Viewer\" to quickly preview, rate, and select photos from large image libraries; and \"Edit\" to develop RAW data into high-quality photos for delivery. Get the best from Sony RAW files, and manage your productions more efficiently. Capture One Express (for Sony) is a free award-winning editing software that provides RAW development, easy management and powerful editing tools. Capture One Pro (for Sony) can be bought for even more editing tools and tethered shooting capability.', 3000.0, 'upload/53fd723e05.jpg', 1),
(63, 'Canon EF-S 10-18mm', 15, 4, 'Canon EF-S 10-18mm f/4.5-5.6 IS STM Lens\r\nCanon EF-S IS STM Lens is built in 10 to 18mm (35mm Equivalent Focal Length: 16 to 28.8mm) focal length, f/4.5 to 5.6 Maximum Aperture, f/22 to 29 Minimum Aperture with Canon EF-S Lens Mount. Benefiting both photo and video applications, an STM stepping AF motor is used to realize quick and near-silent auto focus performance along with full-time manual focus override. This lens has 107° 30\' to 74° 20\' viewing angle, 0.15x Maximum Magnification, 8.66\" / 22 cm Minimum Focus Distance, 14 Elements in 11 Groups, 7, Rounded Diaphragm Blades with Auto focus capability and 67 mm (Front) filter. Additionally, a four-stop-effective Image Stabilizer system is also featured and minimizes the appearance of camera shake for sharper handheld shooting and also it\'s Rounded seven-blade diaphragm contributes to a pleasing out of focus quality that benefits the use of shallow depth of field and selective focus techniques. This exclusive Canon Lens provides 01 year of service warranty.', 2600.0, 'upload/cafa7c21f3.jpg', 1),
(64, 'Canon EOS 6D ', 15, 4, 'Canon EOS 6D Mark II DSLR Camera (Only Body) making high-performance full-frame imaging more accessible, the 6D Mark II makes numerous advancements over its predecessor to improve upon every aspect of image capture and creation. The main update comes in the form of a 26.2MP CMOS sensor and the use of the DIGIC 7 Image Processor to deliver sharper, more vivid imagery in a variety of shooting situations. This setup offers an improved native sensitivity range of ISO 100-40000, which can then be expanded to ISO 50-102400, as well as speedy shooting rates of up to 6.5 fps.For hybrid stills/video shooters, you will enjoy the enhanced video quality as well as the ability to plug in an external mic via a 3.5mm input. Ensuring your images are tack sharp is a 45-point all-cross type AF system, which is able to track subjects with accuracy. This marks a significant improvement over its predecessor and will result in faster acquisition of your subject. Along with a revamped AF system, the sensor features Dual Pixel CMOS AF technology to provide a boost to focusing in live view and video shooting, which itself has been bumped up to Full HD at 60p. This setup works well with the 3\" 1.04m-dot vari-angle touchscreen LCD, which permits use at various angles and with intuitive controls.Users will also have the ability to create 4K time-lapse movies as well as HDR video with dedicated settings and modes. Additionally, the body design has received an upgrade with improved ergonomics and durability, including dust and water resistance. Users will have access to many connectivity options as well, such as Wi-Fi, NFC, and Bluetooth, for connecting to a smart device, and built-in GPS for geotagging your photos.This Canon DSLR camera provides 03 Years Service Warranty (No parts warranty).', 1999.0, 'upload/3b4e06f862.jpg', 1),
(65, 'Samsung Galaxy Tab S8+', 1, 2, '4K video recording at 30 fps\r\n1080p HD video recording at 30 fps or 60 fps\r\n720p HD video recording at 30 fps\r\nVDIS (Video Digital Image Stabilization)\r\nDigital zoom 8x\r\nHigh CRI LED Flash\r\nSlow Motion video support for 720p at 240 fps\r\nHyperlapse video with stabilization\r\nContinuous autofocus video\r\nFace detection\r\nTracking AF\r\nTake 9-megapixel still photos while recording 4K video\r\nPlayback zoom\r\nVideo Location tags', 4999.0, 'upload/2e2f7fd5cb.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customerID`, `productID`, `productName`, `price`, `image`) VALUES
(10, 4, 36, 'Canon camera', 300.00, 'upload/89b918b063.png'),
(11, 4, 43, 'Samsung Galaxy A71', 400.00, 'upload/18f6fab440.jpg'),
(12, 5, 43, 'Samsung Galaxy A71', 400.00, 'upload/18f6fab440.jpg'),
(13, 5, 37, 'Accer Monitor', 270.00, 'upload/e938d693ef.jpg'),
(15, 10, 36, 'Canon camera', 300.00, 'upload/89b918b063.png'),
(19, 15, 36, 'Canon camera', 300.00, 'upload/89b918b063.png'),
(22, 11, 37, 'Accer Monitor', 270.00, 'upload/e938d693ef.jpg'),
(23, 37, 50, 'Iphone 11 Pro', 500.00, 'upload/bae572bcaf.jpg'),
(24, 42, 50, 'Iphone 11 Pro', 500.00, 'upload/bae572bcaf.jpg'),
(25, 37, 39, 'Sony Sound System(Dolby)', 400.00, 'upload/d7ea3644b8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Indexes for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
