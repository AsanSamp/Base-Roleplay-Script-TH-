-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 06:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajail_logs`
--

CREATE TABLE `ajail_logs` (
  `id` int(11) NOT NULL,
  `JailedDBID` int(11) NOT NULL,
  `JailedName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `JailedBy` varchar(32) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bannedlist`
--

CREATE TABLE `bannedlist` (
  `id` int(11) NOT NULL,
  `CharacterDBID` int(11) NOT NULL,
  `MasterDBID` int(11) NOT NULL,
  `CharacterName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `BannedBy` varchar(32) NOT NULL,
  `IpAddress` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ban_logs`
--

CREATE TABLE `ban_logs` (
  `id` int(11) NOT NULL,
  `CharacterDBID` int(11) NOT NULL,
  `MasterDBID` int(11) NOT NULL,
  `CharacterName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `BannedBy` varchar(32) NOT NULL,
  `Date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `BusinessDBID` int(11) NOT NULL,
  `BusinessOwnerDBID` int(11) NOT NULL DEFAULT 0,
  `BusinessInteriorX` float NOT NULL,
  `BusinessInteriorY` float NOT NULL,
  `BusinessInteriorZ` float NOT NULL,
  `BusinessInteriorWorld` int(11) NOT NULL,
  `BusinessInteriorIntID` int(11) NOT NULL,
  `BusinessEntranceX` float NOT NULL,
  `BusinessEntranceY` float NOT NULL,
  `BusinessEntranceZ` float NOT NULL,
  `BusinessName` varchar(90) NOT NULL DEFAULT 'Nameless',
  `BusinessType` int(11) NOT NULL DEFAULT 0,
  `BusinessLocked` tinyint(1) NOT NULL DEFAULT 0,
  `BusinessEntranceFee` int(11) NOT NULL DEFAULT 1,
  `BusinessLevel` int(11) NOT NULL,
  `BusinessMarketPrice` int(11) NOT NULL DEFAULT 5000,
  `BusinessCashbox` int(11) NOT NULL DEFAULT 0,
  `BusinessProducts` int(11) NOT NULL DEFAULT 0,
  `BusinessBankPickupLocX` float NOT NULL,
  `BusinessBankPickupLocY` float NOT NULL,
  `BusinessBankPickupLocZ` float NOT NULL,
  `BusinessBankPickupWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`BusinessDBID`, `BusinessOwnerDBID`, `BusinessInteriorX`, `BusinessInteriorY`, `BusinessInteriorZ`, `BusinessInteriorWorld`, `BusinessInteriorIntID`, `BusinessEntranceX`, `BusinessEntranceY`, `BusinessEntranceZ`, `BusinessName`, `BusinessType`, `BusinessLocked`, `BusinessEntranceFee`, `BusinessLevel`, `BusinessMarketPrice`, `BusinessCashbox`, `BusinessProducts`, `BusinessBankPickupLocX`, `BusinessBankPickupLocY`, `BusinessBankPickupLocZ`, `BusinessBankPickupWorld`) VALUES
(1, 0, 389.816, 173.86, 1008.38, 5898, 3, 594.918, -1249.47, 18.242, 'Los Santos Bank', 4, 0, 0, 9999999, 1410065407, 0, 0, 362.298, 173.805, 1008.38, 5898),
(2, 0, 527.08, -1285.94, 17.242, 7895, 0, 546.95, -1291.43, 17.248, 'GROTTIS VEHICLESHOP', 6, 0, 0, 999999, 999999999, 0, 0, 0, 0, 0, 0),
(3, 0, 372.249, -132.599, 1001.49, 16414, 5, 2104.06, -1806.36, 13.555, 'IDLE STACK PIZZA', 1, 0, 0, 35, 6000000, 0, 0, 0, 0, 0, 0),
(4, 0, 207.673, -110.849, 1005.13, 11727, 15, 2244.5, -1664.91, 15.477, 'BINCO SKINSHOP', 8, 0, 0, 0, 9800000, 0, 0, 0, 0, 0, 0),
(5, 0, -31.082, -91.395, 1003.55, 17609, 18, 2001.6, -1761.25, 13.539, '69 SHOP', 5, 0, 0, 0, 4500000, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `master_dbid` int(11) NOT NULL,
  `char_dbid` int(11) NOT NULL,
  `char_name` varchar(32) NOT NULL,
  `create_date` varchar(60) NOT NULL,
  `create_ip` varchar(60) NOT NULL,
  `pAdmin` int(4) NOT NULL DEFAULT 0,
  `pHelper` int(4) NOT NULL DEFAULT 0,
  `pLastSkin` int(11) NOT NULL DEFAULT 264,
  `pLastPosX` float NOT NULL DEFAULT 1642.02,
  `pLastPosY` float NOT NULL DEFAULT -2334.05,
  `pLastPosZ` float NOT NULL DEFAULT 13.5469,
  `pLastInterior` int(11) NOT NULL DEFAULT 0,
  `pLastWorld` int(11) NOT NULL DEFAULT 0,
  `pLevel` int(11) NOT NULL DEFAULT 1,
  `pEXP` int(11) NOT NULL DEFAULT 0,
  `pAge` varchar(20) NOT NULL DEFAULT 'Invalid',
  `pOrigin` varchar(60) NOT NULL DEFAULT 'Invalid',
  `pStory` varchar(90) NOT NULL DEFAULT 'Nothing',
  `pStoryTwo` varchar(90) NOT NULL DEFAULT 'Nothing',
  `pMoney` int(11) NOT NULL DEFAULT 5000,
  `pBank` int(11) NOT NULL DEFAULT 15000,
  `pPaycheck` int(11) NOT NULL DEFAULT 5000,
  `pPhone` int(11) NOT NULL,
  `pLastOnline` varchar(90) NOT NULL,
  `pLastOnlineTime` int(11) NOT NULL,
  `pAdminjailed` tinyint(1) NOT NULL,
  `pAdminjailTime` int(11) NOT NULL,
  `pOfflinejailed` tinyint(1) NOT NULL DEFAULT 0,
  `pOfflinejailedReason` varchar(128) NOT NULL,
  `pFaction` int(11) NOT NULL DEFAULT 0,
  `pFactionRank` int(11) NOT NULL DEFAULT 0,
  `pOwnedVehicles1` int(11) NOT NULL DEFAULT 0,
  `pOwnedVehicles2` int(11) NOT NULL DEFAULT 0,
  `pOwnedVehicles3` int(11) NOT NULL DEFAULT 0,
  `pOwnedVehicles4` int(11) NOT NULL DEFAULT 0,
  `pOwnedVehicles5` int(11) NOT NULL DEFAULT 0,
  `pVehicleSpawned` tinyint(1) NOT NULL DEFAULT 0,
  `pVehicleSpawnedID` int(11) NOT NULL DEFAULT 0,
  `pWeapons0` tinyint(4) NOT NULL DEFAULT 0,
  `pWeapons1` tinyint(4) NOT NULL DEFAULT 0,
  `pWeapons2` tinyint(4) NOT NULL DEFAULT 0,
  `pWeapons3` tinyint(4) NOT NULL DEFAULT 0,
  `pWeaponsAmmo0` smallint(6) NOT NULL DEFAULT 0,
  `pWeaponsAmmo1` smallint(6) NOT NULL DEFAULT 0,
  `pWeaponsAmmo2` smallint(6) NOT NULL DEFAULT 0,
  `pWeaponsAmmo3` smallint(6) NOT NULL DEFAULT 0,
  `pTimeplayed` int(11) NOT NULL DEFAULT 0,
  `pMaskID` int(11) NOT NULL,
  `pMaskIDEx` int(11) NOT NULL,
  `pInProperty` int(11) NOT NULL DEFAULT 0,
  `pInBusiness` int(11) NOT NULL DEFAULT 0,
  `pHasRadio` tinyint(1) NOT NULL DEFAULT 0,
  `pRadio1` int(11) NOT NULL DEFAULT 0,
  `pRadio2` int(11) NOT NULL DEFAULT 0,
  `pMainSlot` int(11) NOT NULL DEFAULT 1,
  `pGascan` int(11) NOT NULL DEFAULT 0,
  `pSpawnPoint` int(11) NOT NULL DEFAULT 0,
  `pSpawnPointHouse` int(11) NOT NULL DEFAULT 0,
  `pWeaponsLicense` int(11) NOT NULL DEFAULT 0,
  `pDriversLicense` int(11) NOT NULL DEFAULT 0,
  `pActiveListings` int(11) NOT NULL DEFAULT 0,
  `pPrisonTimes` int(11) NOT NULL DEFAULT 0,
  `pJailTimes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`master_dbid`, `char_dbid`, `char_name`, `create_date`, `create_ip`, `pAdmin`, `pHelper`, `pLastSkin`, `pLastPosX`, `pLastPosY`, `pLastPosZ`, `pLastInterior`, `pLastWorld`, `pLevel`, `pEXP`, `pAge`, `pOrigin`, `pStory`, `pStoryTwo`, `pMoney`, `pBank`, `pPaycheck`, `pPhone`, `pLastOnline`, `pLastOnlineTime`, `pAdminjailed`, `pAdminjailTime`, `pOfflinejailed`, `pOfflinejailedReason`, `pFaction`, `pFactionRank`, `pOwnedVehicles1`, `pOwnedVehicles2`, `pOwnedVehicles3`, `pOwnedVehicles4`, `pOwnedVehicles5`, `pVehicleSpawned`, `pVehicleSpawnedID`, `pWeapons0`, `pWeapons1`, `pWeapons2`, `pWeapons3`, `pWeaponsAmmo0`, `pWeaponsAmmo1`, `pWeaponsAmmo2`, `pWeaponsAmmo3`, `pTimeplayed`, `pMaskID`, `pMaskIDEx`, `pInProperty`, `pInBusiness`, `pHasRadio`, `pRadio1`, `pRadio2`, `pMainSlot`, `pGascan`, `pSpawnPoint`, `pSpawnPointHouse`, `pWeaponsLicense`, `pDriversLicense`, `pActiveListings`, `pPrisonTimes`, `pJailTimes`) VALUES
(2, 1, 'Admin_Admin', 'July 26, 2019 18:02:31', '127.0.0.1', 1339, 0, 299, 1972.66, -2101, 13.547, 0, 0, 1, 10, '13/07/2003', 'Thai', '', '', 1700, 44858, 37000, 95693, 'June 1, 2020 23:41:11', 2, 0, 0, 0, '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 357593, 40, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 4, 'Asan_Rodnuan', 'September 24, 2019 21:17:36', '127.0.0.1', 0, 0, 264, 1287.25, 177.586, 20.421, 0, 0, 1, 0, '13/07/2003', 'Thai', '', '', 5000, 15000, 5000, 100924, 'September 24, 2019 21:17:51', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 228079, 42, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `criminal_record`
--

CREATE TABLE `criminal_record` (
  `idx` int(11) NOT NULL,
  `player_name` varchar(32) NOT NULL,
  `charge_reason` varchar(128) NOT NULL,
  `add_date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `DBID` int(11) NOT NULL,
  `FactionName` varchar(90) NOT NULL,
  `FactionAbbrev` varchar(30) NOT NULL,
  `FactionSpawnX` float NOT NULL,
  `FactionSpawnY` float NOT NULL,
  `FactionSpawnZ` float NOT NULL,
  `FactionInterior` int(11) NOT NULL DEFAULT 0,
  `FactionWorld` int(11) NOT NULL DEFAULT 0,
  `FactionJoinRank` int(11) NOT NULL,
  `FactionAlterRank` int(11) NOT NULL,
  `FactionChatRank` int(11) NOT NULL,
  `FactionTowRank` int(11) NOT NULL,
  `FactionChatColor` int(11) NOT NULL,
  `FactionType` tinyint(4) NOT NULL,
  `FactionJob` int(11) NOT NULL,
  `FactionHouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`DBID`, `FactionName`, `FactionAbbrev`, `FactionSpawnX`, `FactionSpawnY`, `FactionSpawnZ`, `FactionInterior`, `FactionWorld`, `FactionJoinRank`, `FactionAlterRank`, `FactionChatRank`, `FactionTowRank`, `FactionChatColor`, `FactionType`, `FactionJob`, `FactionHouse`) VALUES
(1, 'Los Santos Police Department', 'POLICE', 297.29, 187.044, 1007.17, 3, 1339, 19, 3, 19, 7, -2130738945, 2, 1, 0),
(2, 'The Los Santos Fire & Medical Department', 'MEDIC&FIRE', 1175.81, -1313.68, -44.284, 0, 1339, 14, 3, 14, 6, -2130738945, 2, 2, 0),
(3, 'The Los Santos County Sheriff\'s Department', 'SHERIFF', 254.167, 1446.28, -8.381, 0, 1339, 15, 3, 15, 6, -2130738945, 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `faction_ranks`
--

CREATE TABLE `faction_ranks` (
  `factionid` int(11) NOT NULL,
  `FactionRank1` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank2` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank3` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank4` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank5` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank6` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank7` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank8` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank9` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank10` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank11` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank12` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank13` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank14` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank15` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank16` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank17` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank18` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank19` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank20` varchar(60) NOT NULL DEFAULT 'NotSet'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faction_ranks`
--

INSERT INTO `faction_ranks` (`factionid`, `FactionRank1`, `FactionRank2`, `FactionRank3`, `FactionRank4`, `FactionRank5`, `FactionRank6`, `FactionRank7`, `FactionRank8`, `FactionRank9`, `FactionRank10`, `FactionRank11`, `FactionRank12`, `FactionRank13`, `FactionRank14`, `FactionRank15`, `FactionRank16`, `FactionRank17`, `FactionRank18`, `FactionRank19`, `FactionRank20`) VALUES
(1, 'Chief of Police', 'Assistant Chief of Police', 'Deputy Chief of Police', 'Commander', 'Captain III', 'Captain II', 'Captain I', 'Lieutenant II', 'Lieutenant I', ' Sergeant II', ' Sergeant I', 'Detective III', 'Detective II', 'Detective I', 'Police Officer III+1', 'Police Officer III', 'Police Officer II', 'Police Officer I', 'Police Cadet', 'NotSet'),
(2, 'Chief of Fire & Medical', 'Chief of Fire', 'Chief of Medical', 'Assistant Chief Fire & Medical', 'Supervisory Medic', 'Supervisory Fire', 'Medic Officer III', 'Medic Officer II', 'Medic Officer I', 'Fire Officer III', 'Fire Officer II', 'Fire Officer I', 'Medic Officer & Fire Officer', 'Cadet', '', '', '', '', '', ''),
(3, 'SHERIFF', 'Undersheriff', 'Assistant Sheriff', 'Captain III', 'Captain II', 'Captain I', 'Lieutenant II', 'Lieutenant I', 'Sergeant III', 'Sergeant II', 'Sergeant I', 'Deputy Sheriff III', 'Deputy Sheriff II', 'Deputy Sheriff I', 'Sheriff Cadet', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kick_logs`
--

CREATE TABLE `kick_logs` (
  `id` int(11) NOT NULL,
  `KickedDBID` int(11) NOT NULL,
  `KickedName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `KickedBy` varchar(32) NOT NULL,
  `Date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `acc_dbid` int(11) NOT NULL,
  `acc_name` varchar(32) NOT NULL,
  `acc_pass` varchar(128) NOT NULL,
  `secret_word` varchar(128) NOT NULL,
  `forum_name` varchar(60) NOT NULL DEFAULT 'Null',
  `register_date` varchar(90) NOT NULL,
  `register_ip` varchar(60) NOT NULL,
  `active_ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`acc_dbid`, `acc_name`, `acc_pass`, `secret_word`, `forum_name`, `register_date`, `register_ip`, `active_ip`) VALUES
(2, 'Admin', '1880238606c28c2b3cde34c25c724a225e7238d3', '1880238606c28c2b3cde34c25c724a225e7238d3', 'Null', 'July 26, 2019 18:02:01', '127.0.0.1', '127.0.0.1'),
(7, 'Asan', '1880238606c28c2b3cde34c25c724a225e7238d3', '1880238606c28c2b3cde34c25c724a225e7238d3', 'Null', 'September 24, 2019 21:17:08', '127.0.0.1', '127.0.0.1'),
(8, 'Admins', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Null', 'May 30, 2020 23:52:09', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `PropertyDBID` int(11) NOT NULL,
  `PropertyOwnerDBID` int(11) NOT NULL DEFAULT 0,
  `PropertyType` int(11) NOT NULL,
  `PropertyFaction` int(11) NOT NULL DEFAULT 0,
  `PropertyEntranceX` float NOT NULL,
  `PropertyEntranceY` float NOT NULL,
  `PropertyEntranceZ` float NOT NULL,
  `PropertyEntranceInterior` int(11) NOT NULL,
  `PropertyEntranceWorld` int(11) NOT NULL,
  `PropertyInteriorX` int(11) NOT NULL,
  `PropertyInteriorY` int(11) NOT NULL,
  `PropertyInteriorZ` int(11) NOT NULL,
  `PropertyInteriorIntID` int(11) NOT NULL,
  `PropertyInteriorWorld` int(11) NOT NULL,
  `PropertyMarketPrice` int(11) NOT NULL DEFAULT 1000,
  `PropertyLevel` int(11) NOT NULL DEFAULT 1,
  `PropertyLocked` tinyint(1) NOT NULL DEFAULT 0,
  `PropertyCashbox` int(11) NOT NULL DEFAULT 0,
  `PropertyPlacePosX` float NOT NULL,
  `PropertyPlacePosY` float NOT NULL,
  `PropertyPlacePosZ` float NOT NULL,
  `PropertyWeapon1` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon2` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon3` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon4` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon5` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon6` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon7` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon8` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon9` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon10` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon11` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon12` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon13` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon14` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon15` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon16` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon17` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon18` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon19` int(11) NOT NULL DEFAULT 0,
  `PropertyWeapon20` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo1` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo2` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo3` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo4` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo5` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo6` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo7` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo8` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo9` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo10` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo11` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo12` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo13` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo14` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo15` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo16` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo17` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo18` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo19` int(11) NOT NULL DEFAULT 0,
  `PropertyWeaponAmmo20` int(11) NOT NULL DEFAULT 0,
  `PropertyHasBoombox` tinyint(1) NOT NULL DEFAULT 0,
  `PropertyBoomboxPosX` float NOT NULL,
  `PropertyBoomboxPosY` float NOT NULL,
  `PropertyBoomboxPosZ` float NOT NULL,
  `PropertyBoomboxRotX` float NOT NULL,
  `PropertyBoomboxRotY` float NOT NULL,
  `PropertyBoomboxRotZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`PropertyDBID`, `PropertyOwnerDBID`, `PropertyType`, `PropertyFaction`, `PropertyEntranceX`, `PropertyEntranceY`, `PropertyEntranceZ`, `PropertyEntranceInterior`, `PropertyEntranceWorld`, `PropertyInteriorX`, `PropertyInteriorY`, `PropertyInteriorZ`, `PropertyInteriorIntID`, `PropertyInteriorWorld`, `PropertyMarketPrice`, `PropertyLevel`, `PropertyLocked`, `PropertyCashbox`, `PropertyPlacePosX`, `PropertyPlacePosY`, `PropertyPlacePosZ`, `PropertyWeapon1`, `PropertyWeapon2`, `PropertyWeapon3`, `PropertyWeapon4`, `PropertyWeapon5`, `PropertyWeapon6`, `PropertyWeapon7`, `PropertyWeapon8`, `PropertyWeapon9`, `PropertyWeapon10`, `PropertyWeapon11`, `PropertyWeapon12`, `PropertyWeapon13`, `PropertyWeapon14`, `PropertyWeapon15`, `PropertyWeapon16`, `PropertyWeapon17`, `PropertyWeapon18`, `PropertyWeapon19`, `PropertyWeapon20`, `PropertyWeaponAmmo1`, `PropertyWeaponAmmo2`, `PropertyWeaponAmmo3`, `PropertyWeaponAmmo4`, `PropertyWeaponAmmo5`, `PropertyWeaponAmmo6`, `PropertyWeaponAmmo7`, `PropertyWeaponAmmo8`, `PropertyWeaponAmmo9`, `PropertyWeaponAmmo10`, `PropertyWeaponAmmo11`, `PropertyWeaponAmmo12`, `PropertyWeaponAmmo13`, `PropertyWeaponAmmo14`, `PropertyWeaponAmmo15`, `PropertyWeaponAmmo16`, `PropertyWeaponAmmo17`, `PropertyWeaponAmmo18`, `PropertyWeaponAmmo19`, `PropertyWeaponAmmo20`, `PropertyHasBoombox`, `PropertyBoomboxPosX`, `PropertyBoomboxPosY`, `PropertyBoomboxPosZ`, `PropertyBoomboxRotX`, `PropertyBoomboxRotY`, `PropertyBoomboxRotZ`) VALUES
(1, 1, 1, 0, 2066.24, -1717.19, 14.136, 0, 0, 244, 305, 999, 1, 24536, 1000, 0, 0, 0, 248.601, 304.066, 999.148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 1, 0, 2067.47, -1731.4, 13.876, 0, 0, 2496, -1693, 1015, 3, 36325, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 1, 0, 2039.03, -1761.23, 13.547, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `VehicleDBID` int(11) NOT NULL,
  `VehicleOwnerDBID` int(11) NOT NULL,
  `VehicleFaction` int(11) NOT NULL DEFAULT 0,
  `VehicleModel` int(11) NOT NULL,
  `VehicleColor1` int(11) NOT NULL DEFAULT 0,
  `VehicleColor2` int(11) NOT NULL DEFAULT 0,
  `VehiclePaintjob` int(11) NOT NULL DEFAULT -1,
  `VehicleParkPosX` float NOT NULL,
  `VehicleParkPosY` float NOT NULL,
  `VehicleParkPosZ` float NOT NULL,
  `VehicleParkPosA` float NOT NULL,
  `VehicleParkInterior` int(11) NOT NULL DEFAULT 0,
  `VehicleParkWorld` int(11) NOT NULL DEFAULT 0,
  `VehiclePlates` varchar(32) NOT NULL,
  `VehicleLocked` int(11) NOT NULL,
  `VehicleImpounded` tinyint(1) NOT NULL DEFAULT 0,
  `VehicleImpoundPosX` float NOT NULL,
  `VehicleImpoundPosY` float NOT NULL,
  `VehicleImpoundPosZ` float NOT NULL,
  `VehicleImpoundPosA` float NOT NULL,
  `VehicleSirens` int(11) NOT NULL DEFAULT 0,
  `VehicleFuel` int(11) NOT NULL DEFAULT 100,
  `VehicleWeapons1` int(11) NOT NULL DEFAULT 0,
  `VehicleWeapons2` int(11) NOT NULL DEFAULT 0,
  `VehicleWeapons3` int(11) NOT NULL DEFAULT 0,
  `VehicleWeapons4` int(11) NOT NULL DEFAULT 0,
  `VehicleWeapons5` int(11) NOT NULL DEFAULT 0,
  `VehicleWeaponsAmmo1` int(11) NOT NULL DEFAULT 0,
  `VehicleWeaponsAmmo2` int(11) NOT NULL DEFAULT 0,
  `VehicleWeaponsAmmo3` int(11) NOT NULL DEFAULT 0,
  `VehicleWeaponsAmmo4` int(11) NOT NULL DEFAULT 0,
  `VehicleWeaponsAmmo5` int(11) NOT NULL DEFAULT 0,
  `VehicleLastDrivers1` int(11) NOT NULL DEFAULT 0,
  `VehicleLastDrivers2` int(11) NOT NULL DEFAULT 0,
  `VehicleLastDrivers3` int(11) NOT NULL DEFAULT 0,
  `VehicleLastDrivers4` int(11) NOT NULL DEFAULT 0,
  `VehicleLastPassengers1` int(11) NOT NULL DEFAULT 0,
  `VehicleLastPassengers2` int(11) NOT NULL DEFAULT 0,
  `VehicleLastPassengers3` int(11) NOT NULL DEFAULT 0,
  `VehicleLastPassengers4` int(11) NOT NULL DEFAULT 0,
  `VehicleBattery` float NOT NULL DEFAULT 100,
  `VehicleEngine` float NOT NULL DEFAULT 100,
  `VehicleTimesDestroyed` int(11) NOT NULL DEFAULT 0,
  `VehicleXMR` tinyint(1) NOT NULL DEFAULT 0,
  `VehicleAlarmLevel` int(11) NOT NULL DEFAULT 0,
  `VehicleLockLevel` int(11) NOT NULL DEFAULT 0,
  `VehicleImmobLevel` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`VehicleDBID`, `VehicleOwnerDBID`, `VehicleFaction`, `VehicleModel`, `VehicleColor1`, `VehicleColor2`, `VehiclePaintjob`, `VehicleParkPosX`, `VehicleParkPosY`, `VehicleParkPosZ`, `VehicleParkPosA`, `VehicleParkInterior`, `VehicleParkWorld`, `VehiclePlates`, `VehicleLocked`, `VehicleImpounded`, `VehicleImpoundPosX`, `VehicleImpoundPosY`, `VehicleImpoundPosZ`, `VehicleImpoundPosA`, `VehicleSirens`, `VehicleFuel`, `VehicleWeapons1`, `VehicleWeapons2`, `VehicleWeapons3`, `VehicleWeapons4`, `VehicleWeapons5`, `VehicleWeaponsAmmo1`, `VehicleWeaponsAmmo2`, `VehicleWeaponsAmmo3`, `VehicleWeaponsAmmo4`, `VehicleWeaponsAmmo5`, `VehicleLastDrivers1`, `VehicleLastDrivers2`, `VehicleLastDrivers3`, `VehicleLastDrivers4`, `VehicleLastPassengers1`, `VehicleLastPassengers2`, `VehicleLastPassengers3`, `VehicleLastPassengers4`, `VehicleBattery`, `VehicleEngine`, `VehicleTimesDestroyed`, `VehicleXMR`, `VehicleAlarmLevel`, `VehicleLockLevel`, `VehicleImmobLevel`) VALUES
(1, 1, 0, 596, 0, 1, -1, 1705.42, -1485.91, 13.3828, 87.5097, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_faction`
--

CREATE TABLE `vehicles_faction` (
  `VehicleDBID` int(11) NOT NULL,
  `VehicleModel` int(11) NOT NULL,
  `VehicleColor1` int(11) NOT NULL,
  `VehicleColor2` int(11) NOT NULL,
  `VehicleParkPosX` float NOT NULL,
  `VehicleParkPosY` float NOT NULL,
  `VehicleParkPosZ` float NOT NULL,
  `VehicleParkPosA` float NOT NULL,
  `VehicleWorld` int(11) NOT NULL,
  `VehicleFaction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles_faction`
--

INSERT INTO `vehicles_faction` (`VehicleDBID`, `VehicleModel`, `VehicleColor1`, `VehicleColor2`, `VehicleParkPosX`, `VehicleParkPosY`, `VehicleParkPosZ`, `VehicleParkPosA`, `VehicleWorld`, `VehicleFaction`) VALUES
(6, 597, 0, 1, 637.453, -610.114, 16.336, 0.337, 0, 3),
(7, 597, 0, 1, 634.082, -610.324, 16.336, 9.447, 0, 3),
(8, 597, 0, 1, 630.345, -610.215, 16.336, 11.954, 0, 3),
(9, 597, 0, 1, 627.153, -610.93, 16.64, 3.517, 0, 3),
(10, 599, 0, 1, 613.497, -596.559, 17.233, 266.285, 0, 3),
(11, 497, 0, 16, 614.012, -573.723, 26.143, 271.918, 0, 3),
(12, 596, 0, 1, 1602.17, -1684.07, 5.891, 86.794, 0, 1),
(13, 596, 0, 1, 1602.06, -1687.77, 5.653, 91.362, 0, 1),
(14, 596, 0, 1, 1601.61, -1692.17, 5.891, 87.703, 0, 1),
(15, 596, 0, 1, 1603.29, -1695.66, 5.891, 95.394, 0, 1),
(16, 597, 0, 1, 1602.02, -1700.21, 5.891, 89.943, 0, 1),
(17, 597, 0, 1, 1601.94, -1704.5, 5.891, 92.209, 0, 1),
(18, 541, 0, 1, 1544.92, -1613.97, 13.383, 269.798, 0, 1),
(19, 541, 0, 1, 1544.61, -1610.46, 13.383, 274.522, 0, 1),
(20, 415, 1, 1, 1543.99, -1606.79, 13.383, 266.375, 0, 1),
(21, 497, 0, 1, 1566.54, -1645.77, 28.402, 81.926, 0, 1),
(22, 497, 0, 0, 1565, -1706.11, 28.395, 90.989, 0, 1),
(23, 416, 1, 3, 1176.46, -1308.82, 13.958, 268.581, 0, 2),
(24, 489, 1, 3, 1124.29, -1328.09, 13.317, 2.415, 0, 2),
(25, 489, 3, 3, 1122.61, -1332.34, 12.962, 5.618, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `xmr_categories`
--

CREATE TABLE `xmr_categories` (
  `XMRDBID` int(11) NOT NULL,
  `XMRCategoryName` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xmr_stations`
--

CREATE TABLE `xmr_stations` (
  `XMRStationDBID` int(11) NOT NULL,
  `XMRCategory` int(11) NOT NULL,
  `XMRStationName` varchar(90) NOT NULL,
  `XMRStationURL` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajail_logs`
--
ALTER TABLE `ajail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bannedlist`
--
ALTER TABLE `bannedlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ban_logs`
--
ALTER TABLE `ban_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`BusinessDBID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`char_dbid`);

--
-- Indexes for table `criminal_record`
--
ALTER TABLE `criminal_record`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`DBID`);

--
-- Indexes for table `faction_ranks`
--
ALTER TABLE `faction_ranks`
  ADD PRIMARY KEY (`factionid`),
  ADD UNIQUE KEY `factionid` (`factionid`);

--
-- Indexes for table `kick_logs`
--
ALTER TABLE `kick_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`acc_dbid`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`PropertyDBID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`VehicleDBID`);

--
-- Indexes for table `vehicles_faction`
--
ALTER TABLE `vehicles_faction`
  ADD PRIMARY KEY (`VehicleDBID`);

--
-- Indexes for table `xmr_categories`
--
ALTER TABLE `xmr_categories`
  ADD PRIMARY KEY (`XMRDBID`);

--
-- Indexes for table `xmr_stations`
--
ALTER TABLE `xmr_stations`
  ADD PRIMARY KEY (`XMRStationDBID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajail_logs`
--
ALTER TABLE `ajail_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bannedlist`
--
ALTER TABLE `bannedlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ban_logs`
--
ALTER TABLE `ban_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `BusinessDBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `char_dbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `criminal_record`
--
ALTER TABLE `criminal_record`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `DBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faction_ranks`
--
ALTER TABLE `faction_ranks`
  MODIFY `factionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kick_logs`
--
ALTER TABLE `kick_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `acc_dbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `PropertyDBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `VehicleDBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles_faction`
--
ALTER TABLE `vehicles_faction`
  MODIFY `VehicleDBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `xmr_categories`
--
ALTER TABLE `xmr_categories`
  MODIFY `XMRDBID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xmr_stations`
--
ALTER TABLE `xmr_stations`
  MODIFY `XMRStationDBID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
