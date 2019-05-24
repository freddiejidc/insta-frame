-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2019 at 05:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mygallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `idGallery` int(11) NOT NULL,
  `titleGallery` longtext NOT NULL,
  `descGallery` longtext NOT NULL,
  `imgFullNameGallery` longtext NOT NULL,
  `orderGallery` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`idGallery`, `titleGallery`, `descGallery`, `imgFullNameGallery`, `orderGallery`) VALUES
(10, 'uhulplhg', '5000', 'iuhibib.5cbac140cd0d84.94260573.jpg', '10'),
(11, 'gredgre', 'grere', 'grfdeg.5cbb474ae95641.89943366.jpg', '11'),
(12, 'fre', 'c.lfm,;ew', 'bfdrl.5cbb4944347982.31039768.jpg', '12'),
(13, 'vfgdgzd', 'bfdgd', 'poihlkuu.5cbb4a89ab1d11.06751667.png', '13'),
(14, 'bgregl;re,', 'bfrdl;bgd,', 'vdslv,msdl.5cbb4cd0a7af41.73375287.jpg', '14'),
(15, 'New', 'New', 'new.5cbb4cef8f1da9.73272967.png', '15'),
(16, 'vfdvdf', 'vfdf', 'qwewe.5cbb5263a6a424.39884571.jpg', '16'),
(17, 'vfvdfl', 'grfdgrkl', 'yoyogo.5cbb527f662d66.60965992.jpg', '17'),
(20, 'vdsvdfv', 'vdsvdsvc', 'fcsdcfde.5cbb61964a6eb3.18258988.png', '20'),
(21, 'Johny James', 'Lorem ipsum dolor sit amet, ea dolores torquatos ius. Fabulas delenit oportere sea ut. Vis an putent assueverit, per in ridens aliquando, homero tibique minimum ut qui. Per prima saperet ex, ex fabulas ceteros eam, munere bonorum deserunt mel ei.  Sea aeque ponderum id, ad pro case vero. Mei iusto omnium in, vel menandri perpetua interesset ex. Mea ignota doctus ea, no assum insolens intellegat sed, in vero omittantur eum. Partem ancillae ex quo, feugait nostrum dissentiunt mel et, ex usu nibh solet. Qui veniam impedit cu, eum ad assum delenit honestatis. Ea paulo dissentiet liberavisse eum.  Ne duo ludus referrentur deterruisset, eum appetere verterem consulatu et, diam fugit scripta ad mel. His iriure hendrerit eu, eu illud facilisis eos. Feugiat fastidii deterruisset per et, an iudico pericula ius, pro eu propriae perfecto. Tibique necessitatibus no sea, facer oporteat per an. Ex vis noluisse consulatu definitionem, aliquip petentium mei ea. Mei melius deseruisse an, vis ullum detraxit cu.  Cum cu impedit signiferumque, fuisset invidunt cu mel, eam commune intellegebat ad. Nobis aliquid tacimates ad nam. Partem ornatus has et, vivendo fastidii salutatus in duo. Te autem errem forensibus eam, ferri mediocritatem cum at, sed quas liber maiorum id.  No mel recteque erroribus, ius te nonumy delenit, ad qui fabellas postulant complectitur. Duis sensibus accommodare in vix. Vis porro eripuit in, nominavi tractatos ut cum, apeirian percipitur cum an. Mel id melius inimicus, mea in graece definitiones. Postea omittam nec ea, tale imperdiet sea no.  Sed cu impedit honestatis, cum mazim tritani ei. Est ex veniam sententiae, te inani simul phaedrum his. Brute quaeque ut usu, pri eu omnes scriptorem, id eos utamur luptatum. Ad sed brute oblique, omnis utinam usu et. Ut tincidunt dissentiet conclusionemque has, no cum fabellas dignissim interpretaris.  Duo ad nulla oratio. Explicari dissentiet ei sed, quo praesent facilisis ut. At zril regione pro, te facilis volumus his. Inermis nonumes quo an. Vix dicam delectus corrumpit ne, eam mentitum menandri sententiae cu. Ut vix elit omnis feugiat, pri ut esse pertinacia. Ea quando recteque his, ex veniam habemus perfecto vel, mea ne reque dicat.  Latine corpora ne nec, esse clita delicatissimi duo eu. Nisl utroque usu at, mea an munere reformidans necessitatibus, labitur efficiendi vel eu. At case assum pro. Vero vidisse copiosae sed in, mei noluisse consectetuer ad, justo accusam offendit vix ei. Eius clita evertitur est ne, no commune similique eum, et porro omnes has.  Deleniti salutatus sententiae cu vel, ullum ceteros ad vim. Nec falli tacimates an, has nullam periculis urbanitas te. At cum dicat graeci corpora. Sanctus scripserit concludaturque nec ei.  His cu justo oratio discere, mei iusto consul ubique cu. Error aeterno definitiones te vis. Pri ea quod iusto errem. Nostrud impedit sed ei, vel choro torquatos consequuntur et. Eos duis moderatius te, cu solum simul duo. At cum solum accusata torquatos, utinam vivendo ei has.', 'tommy-lee.5cbc7d83623cf9.26173357.jpg', '11'),
(22, 'Rude Bow', 'grgrrkelgreglrgreglregrekgrelgrekgergkreglregerkgerlgerkgerlgrekgerklgrkgerkgrkelgkregkerlgrgkergk', 'fam.5cbf295fc60ca3.79272434.jpg', '12'),
(23, 'csafdcs', 'vfdvgfd', 'gallery.5cc93441d43ad7.32086150.jpg', '12'),
(24, 'vfvfd', '40000', 'vfvf.5cc9501e6f4a46.90371363.jpg', '13'),
(25, 'vfcd', '600', 'vdfs.5cc95215bc83e4.57527067.jpg', '14'),
(26, 'bvbvc', '500', 'mjhm,j.5cc952be380fa8.94243041.png', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`idGallery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `idGallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
