-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 12:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biometrics`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arealist`
--

CREATE TABLE `tbl_arealist` (
  `ID` int(6) UNSIGNED ZEROFILL NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `AreaType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_arealist`
--

INSERT INTO `tbl_arealist` (`ID`, `AreaName`, `AreaType`) VALUES
(000001, 'test', 'test'),
(000002, 'test1', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bio`
--

CREATE TABLE `tbl_bio` (
  `IDno` int(11) NOT NULL,
  `AccessID` text NOT NULL,
  `fpData` longblob NOT NULL,
  `fpType` int(1) NOT NULL DEFAULT '0',
  `refno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bio`
--

INSERT INTO `tbl_bio` (`IDno`, `AccessID`, `fpData`, `fpType`, `refno`) VALUES
(1, 'B001\r\n    ', 0x00f88001c82ae3735cc0413709ab71704d1555922fb54be91c6779b5675913a4fa4860b1667479103c9ad4e707d254df09f50f6d85b62f4a9ebfe0ea4b0ca9eb49e5fef096fbef06fb27fcaf2c2749cfae3f9ae21682d54fe60ecf8380432d6bafc0086e29e5227480264bd197d51be7d78ad6ffc2d96c72f4a864d7d954adcb7f1831821b5b6b862e13cf03e2d36016274f0ad3b7e7d3c01ea374cdc3354924735b6e6c262332486241ee2a38f0d4866347bfcc3f6e1df48d9eb9a598b93500f1136c9c9bfb797e3684ff29bcc48713a9905eb4b5353b184eb94eda3ab7105587a8c696e40088db382f6608c81d88520f2f0cbec07e74c51b7fd101e69b9459a0813816a70f6fb48cd0ec45fea5efaed1b273be3699600937bc04ff3fcbd4ef7e5ad444f9643496896cd89199d3227d3ea1ca60dc9a81b9e776276567b96c981b86d4ad75d63211e736d15516e037b34ac248936b3df41e99f9bd358f08177f3ffeed7f16fc1522cefad161ce360dd4ba88e8547bdd14b5fe40b53f1fa4fd0dcb4dab386f00f88101c82ae3735cc0413709ab7130bb14559223a7640f26b88a58843d48cf7447e68e3a6830458363d48d92d9a2613a0a3d0261f2734aa63bdc84f39b7bc7375348c15dc153f1dddac505b829d366b0ca8c80a1cd7610e0020e98de27ada5f432b66f8c2c0981881e1482a2fe18740cc83c981eec805c4d7f74877efd02079382f3046926c16933f169854290e769004be180092df1a0ce116b4be58381c1cd8c575500e96257173afb8c99c59a38609ad18c8f17425a9444590a48275dd81f8d4462172ae980f45f211ae8367d9a5eecfd7b3ad54bdbec5ead087391f0d4f44bb53d3fbd209baa93a58523d55d6d269fd30dd4dd03a610751b406ffb101c0ea389d9ce84334af758b13e74b7f437d567fc8bc194412a8ae251f66b7dc36484d977f38c762387e18251b4f765a4632815b387d58bdc81a5b127ff18e74e046564a8ade52dfdcde7743c5c9acd1912c78e36f81e4496cea2f99fa8c010bc22bc1f65e6ed750e21c93e18a68d6d1c6074a6e90d6002c43f72becf981ab5816b3ab20c3ea86f00f88101c82ae3735cc0413709ab7130ba145592bb51c86dbc3c739c85a328133556af025cc0417eba6528ac72ee5087b2a305fbf9371dd7ab51532a9cfb1755d1f807e693e8294c8bd65f7e797c8a94c8a74cb80bc852e200dec6baf2e1b5b73869494149d6989b04d86cbf845da55c856fd744f4c6942b1cafb811f4dd76184239013af33a8b5047a32cda637cda92b01e5b41a873bbfab526c0a4fc62e80e5500d5655961678fbbfd15a570e29ca7a25b39fbfd579d9719f6ff402dc90a24bbbdd5595df40d168e899b2048e64b3b1223ad2f9e16e38c7a8aca98713762a58ef37fd6137d5e611e954b92cb36aa720c5eb540542261caf6b88088a182195670dc1192de22da522b9c2f7c3aacbd7763de625b68c23e4af8077f75227cb6cc8502174c7fc6627ed1c1cefaa8e85e54549ac3bee4db90ddb3c6addad26a433be93ce7342050f84503e5eb9a5819042765d8c087836711b8b84737fe9ae54fffb788b76362ab1193da599706e4ed91221240641c0332178d76e9bf2e6151fd69b5c6d241606f00e88101c82ae3735cc0413709ab71f0b51455922f213416c7008155120fda11140fe82eaf9de6c3d967f459a6d90cf97f1e650ca9929be180250327d131478d757d46dcea9e085d59eb4e8a987835f448c303c8d86c743d2f26f003814160ad56e494ae63f55744d6cc3353f06e3d6799b0c40b700184ee05f8712e6634f8b7da744a9c38def31703264b5f9024594c4705e765f5ccbccf8113c67291ceaf25516dbb08b2db457eb769eea2496afdc29d3b9a4b4e9158fffba16c3425418a67891cad02a71136329df14360c1ace3ffe2e7e20cf81b90ae3c135db89c637770fc65f086995c63641a410dd865308b7b06ce8996766daf242941bf74b781869242e3fdc34f2ecd5f2f508e62d1960702888c7e7c9e86143646c689c566de698a3e9451cbb6a3184941d96dd72f3a90de24831af71eeb2ac8d826dc83bd91c0addf7fb5a50851f3776625362ad6d79a38db559ddb5bff6e0e6c1d2f5ede55e425743a84eda0b26837cf07ebd55a51fd609c155be20bfad8b95d11187e270917e889cbc6356c6f000a005400680065002000660069006e006700650072007000720069006e0074002000730061006d0070006c0065002000770061007300200063006100700074007500720065006400, 1, 1),
(2, '12121212', 0x00f88001c82ae3735cc0413709ab7170a11455921e547ce93435cf26ec27c9e631b1c0078170c0fb8661b040f043b08e117da991c6be1f5424ec3e4f3278f3ff0e0baa5cfdabcb47c7947097e60d5be5ce4a6e196e1d21f1c67cb3babea484b3d367e19ae4c8e76d7475b11d7bacb3bea7812c4734eb2a171903f0ac97c96f307ae6bae949fb62a7648ceeccda854c4810592874eb3d113b72f023bb42b95cf9a952fa1a7430def0c8b406ef51837c06c0549f8cdacc81532e8f502f1a39f02d834640564866b5f3a378c3ac6168069fdeca3a9a5c560816bde2891f31675e6f0756f3ef64e92fa88d345440aa71d0f4c733043cd0ee63202271f720f59da434f30bfe484bcf4e08370b909ab7d60c934eed90ff7d8a231b754a25cf22101606179f966340245bb64b62df3c5d9a20403fcea31e9d3079bc3035b1c128f492512f3e64a5ca200b6721b3ee484d38f619036c241a91abeca2c2914e08154db3bc860d31638776056c4c6ac30b3c3ec72581a8da717955affb856d4464df29d5661d4d05cf6f00f87e01c82ae3735cc0413709ab7130b5145592bc2d27505f776885b0bb385e4432667c649b10f478ba7d602c8071f737045db2bebd207511cc08ca1033232d89b95ca091ba53c862308376419c2f311ffe05bcdaf10ba428428bec6bad0c69d75b4249ffc7742f0fd6379bf675934ff3a4e48ce1965f5afb025f95f194029087663a663e0bf66647437eec6270f0c56c0f2c1e9bae32d5034dca63a7fc5af401aa3037a78548c8adcfd296e02a4c7dd0c4c84a9bda51743a7938613ca73dbf1131385f49218555f4bdfd76f75968636b9d07f446a3281e60ece9e5ce64897d90f8b6e620f9336f47a45b2eadc6e18acde2eca57611e09d4352488a4382c5531a04d0a14e4f061cedd1bfd0103fa9b1bf67f124f5b96f7ad38be56b0de7f99aec4fc993f5faa6bd62fa49bff47ee679779b5412f90761b6d45c4ff9eb50f1135b9e4ecd1ebf3a76e058315803a7aab373ec81240e973dc99cd4db5e5157bae8c0eac533935d2f33463717e7d9f17846e914e81fb75bc152842928d42a419225a05d6f00f87e01c82ae3735cc041234d52545be5f89644e5401e7edd29108ebc20e6ac491007cf32de5e45dcf533b4322c0c7461f0082c92551e96dddf187387d8ddc293a443f24d1a15b77ceec8ac15c2813efb0e64a5b44ad9df9e557590f3b0f698f46e4c399dec03af79e77be7af860ac2ff7ed209dc1a3766b7488d17c3e55c1f489dbb182050820873adebea127c108b5e3967d45669c0801ac61ce4a3a56d0adafdfc205faaecb6189440f865d12a633d396a2ff068533e7b71cf83dbd0f0805f08a75d6430f7ab5c860dcf96be0402fca6c778b4e2755f2db94f492de4458c0b39715a08cb3b0ea525d1341cf924efdaff247c598193e71e0677ef29bca3426a9f38956966397a3adb5834ca1d907d778b91d04895c19f47c33dabfefa727dd779f8b26a28aa18c430cabddc131419f5712de6c0b68ecbd2319332965c91ca3ea8e72294edf0cd06ef2d7bb2c91e6e27b2593ce267c2cf792e97a822463fba1583f65c104ac165d8a32a7d1a87240b4a9fa8a88be5fbe57d033a10bd5700ea9b5a6f00e88001c82ae3735cc0413709ab7170a11455921e547ce93435cf26ec27c9e631b1c0078170c0fb8661b040f043b08e117da991c6be1f5424ec3e4f3278f3ff0e0baa5cfdabcb47c7947097e60d5be5ce4a6e196e1d21f1c67cb3babea484b3d367e19ae4c8e76d7475b11d7bacb3bea7812c4734eb2a171903f0ac97c96f307ae6bae949fb62a7648ceeccda854c4810592874eb3d113b72f023bb42b95cf9a952fa1a7430def0c8b406ef51837c06c0549f8cdacc81532e8f502f1a39f02d834640564866b5f3a378c3ac6168069fdeca3a9a5c560816bde2891f31675e6f0756f3ef64e92fa88d345440aa71d0f4c733043cd0ee63202271f720f59da434f30bfe484bcf4e08370b909ab7d60c934eed90ff7d8a231b754a25cf22101606179f966340245bb64b62df3c5d9a20403fcea31e9d3079bc3035b1c128f492512f3e64a5ca200b6721b3ee484d38f619036c241a91abeca2c2914e08154db3bc860d31638776056c4c6ac30b3c3ec72581a8da717955affb856d4464df29d5661d4d05cf6f650072007000720069006e00740020007200650061006400650072002000770061007300200063006f006e006e00650063007400650064002e000d000a005400680065002000660069006e0067006500, 2, 112111);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_in_out`
--

CREATE TABLE `tbl_in_out` (
  `IDno` int(11) NOT NULL,
  `AccessID` varchar(100) NOT NULL,
  `TimeRecord` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeFlag` varchar(10) NOT NULL,
  `Remarks` text NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `AccessArea` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `ContactPerson` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL,
  `refno` int(11) NOT NULL,
  `Approved_Status` varchar(100) NOT NULL,
  `Logs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_in_out`
--

INSERT INTO `tbl_in_out` (`IDno`, `AccessID`, `TimeRecord`, `TimeFlag`, `Remarks`, `FullName`, `AccessArea`, `Status`, `ContactPerson`, `Company`, `refno`, `Approved_Status`, `Logs`) VALUES
(1, 'B001\r\n    ', '2023-04-28 22:35:38', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(2, 'B001\r\n    ', '2023-05-01 14:02:35', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(3, 'B001\r\n    ', '2023-05-01 15:01:13', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(4, 'B001\r\n    ', '2023-05-11 11:04:39', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(5, 'B001\r\n    ', '2023-05-11 11:04:39', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(6, 'B001\r\n    ', '2023-05-11 11:04:39', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(7, 'B001\r\n    ', '2023-05-11 11:04:40', 'IN', '', 'Alvin Raquem', 'test,test1', 'ACCESS GRANTED', '', 'ESI', 1, '', ''),
(8, '12121212', '2023-05-11 11:33:06', 'IN', '', 'NEDU KAAT', 'BILL', 'STUD', '122112122112', 'BIOTEC', 112111, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personnel`
--

CREATE TABLE `tbl_personnel` (
  `EmployeeID` varchar(50) NOT NULL,
  `AccessID` varchar(10) NOT NULL,
  `EntryID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `DateHired` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `AgencyCompany` varchar(50) NOT NULL,
  `ProjectAssigned` varchar(50) NOT NULL,
  `ContactNo` varchar(50) NOT NULL,
  `AccessArea` varchar(50) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Remarks` varchar(50) NOT NULL,
  `TimeIN` time NOT NULL,
  `TimeOut` time NOT NULL,
  `schedule_dates` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_personnel`
--

INSERT INTO `tbl_personnel` (`EmployeeID`, `AccessID`, `EntryID`, `FullName`, `DateHired`, `Position`, `AgencyCompany`, `ProjectAssigned`, `ContactNo`, `AccessArea`, `Image`, `Status`, `Remarks`, `TimeIN`, `TimeOut`, `schedule_dates`) VALUES
('2221121', '12121212', 112111, 'NEDU KAAT', '2112', 'MD', 'BIOTEC', 'SDSDSDDSDS', '122112122112', 'BILL', '', 'STUD', '', '00:00:00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `IDno` int(3) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) NOT NULL,
  `pass_word` varchar(50) NOT NULL,
  `email_add` varchar(50) NOT NULL,
  `userlevel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`IDno`, `user_name`, `full_name`, `LastName`, `FirstName`, `MiddleName`, `pass_word`, `email_add`, `userlevel`) VALUES
(720, 'admin', 'Juan Dela Cruz', '', '', '', 'admin', 'juandelacruz@gmail.com', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arealist`
--
ALTER TABLE `tbl_arealist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_bio`
--
ALTER TABLE `tbl_bio`
  ADD PRIMARY KEY (`IDno`);

--
-- Indexes for table `tbl_in_out`
--
ALTER TABLE `tbl_in_out`
  ADD PRIMARY KEY (`IDno`);

--
-- Indexes for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  ADD KEY `EntryID` (`EntryID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`IDno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arealist`
--
ALTER TABLE `tbl_arealist`
  MODIFY `ID` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bio`
--
ALTER TABLE `tbl_bio`
  MODIFY `IDno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_in_out`
--
ALTER TABLE `tbl_in_out`
  MODIFY `IDno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_personnel`
--
ALTER TABLE `tbl_personnel`
  MODIFY `EntryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112112;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `IDno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
