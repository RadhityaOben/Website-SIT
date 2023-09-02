-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2023 at 08:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sit`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_cat` char(6) CHARACTER NOT NULL,
  `cat_name` varchar(50) CHARACTER NOT NULL,
  `cat_img` varchar(25) NOT NULL DEFAULT 'nophoto.png',
  `parent_id` char(6) NOT NULL
) ENGINE=InnoDB;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_cat`, `cat_name`, `cat_img`, `parent_id`) VALUES
('CAT001', 'Pipa', 'CAT-64f009960f98b.png', 'CAT001'),
('CAT002', 'Fitting', 'CAT-64f0099c90349.png', 'CAT002'),
('CAT003', 'Valve', 'CAT-64f009a363f77.png', 'CAT003'),
('CAT004', 'Instrumentasi', 'CAT-64f009aae7c83.png', 'CAT004'),
('CAT005', 'Baja', 'CAT-64f009b621345.png', 'CAT005'),
('CAT006', 'Boilers', 'CAT-64f009be9ce41.png', 'CAT006'),
('CAT007', 'Lubricant Oil', 'CAT-64f009c602206.png', 'CAT007'),
('CAT008', 'Carbon Steel', 'CAT-64f00a2abdb87.png', 'CAT001'),
('CAT009', 'HDPE', 'CAT-64f00a3960bd3.png', 'CAT001'),
('CAT010', 'PPR', 'CAT-64f00a679ffb7.png', 'CAT001'),
('CAT011', 'PEX', 'CAT-64f00a5a181d8.png', 'CAT001'),
('CAT012', 'Stainless', 'CAT-64f00a740d269.png', 'CAT001'),
('CAT013', 'Tubing', 'CAT-64f00a7ea051c.png', 'CAT001'),
('CAT014', 'Pipa HDPE', 'CAT-64f0181310396.png', 'CAT002'),
('CAT015', 'Pipa PEX', 'CAT-64f0181f450a9.png', 'CAT002'),
('CAT016', 'Pipa PPR', 'CAT-64f0184a6862b.png', 'CAT002'),
('CAT017', 'Pneumatic', 'CAT-64f01830992aa.png', 'CAT002'),
('CAT018', 'Steel', 'CAT-64f018633af11.png', 'CAT002'),
('CAT019', 'Flange', 'CAT-64f018993c303.png', 'CAT002'),
('CAT020', 'Flexible Joint', 'CAT-64f017e21db61.png', 'CAT002'),
('CAT021', 'Rubber Flex Joint', 'CAT-64f018dfbfe15.png', 'CAT020'),
('CAT022', 'Stainless Flex Joint', 'CAT-64f018ebcc3b1.png', 'CAT020'),
('CAT023', 'Expansion Joint', 'CAT-64f018f8537c2.png', 'CAT020'),
('CAT024', 'General', 'CAT-64f02ebced96f.png', 'CAT003'),
('CAT025', 'Automatic', 'CAT-64f02ecdf359a.png', 'CAT003'),
('CAT026', 'Air Vent', 'CAT-64f02edbd6aa4.png', 'CAT003'),
('CAT027', 'Vacuum Breaker', 'CAT-64f02ef73ae22.png', 'CAT003'),
('CAT028', 'Air Filter', 'CAT-64f02f06ec573.png', 'CAT003'),
('CAT029', 'Liquid Drainer', 'CAT-64f02f1736cb3.png', 'CAT003'),
('CAT030', 'Rotary Joint', 'CAT-64f02f3202b0c.png', 'CAT003'),
('CAT031', 'Air Solenoid', 'CAT-64f02f439368d.png', 'CAT003'),
('CAT032', 'Control', 'CAT-64f02f54bb575.png', 'CAT003'),
('CAT033', 'Steam Trap', 'CAT-64f02f66b7e5a.png', 'CAT003'),
('CAT034', 'Steam Mix', 'CAT-64f02f74e0782.png', 'CAT003'),
('CAT035', 'Temperature Regulator', 'CAT-64f02f8761e37.png', 'CAT003'),
('CAT036', 'Ball', 'CAT-64f0304dd2bd2.png', 'CAT024'),
('CAT037', 'Butterfly', 'CAT-64f030593533a.png', 'CAT024'),
('CAT038', 'Check', 'CAT-64f030661d4f7.png', 'CAT024'),
('CAT039', 'Foot', 'CAT-64f030758f4d6.png', 'CAT024'),
('CAT040', 'Gate', 'CAT-64f030810ef3d.png', 'CAT024'),
('CAT041', 'Globe', 'CAT-64f0308e702c1.png', 'CAT024'),
('CAT042', 'Strainer', 'CAT-64f0309a4c5b2.png', 'CAT024'),
('CAT043', 'Diaphragm', 'CAT-64f030ad3fa71.png', 'CAT024'),
('CAT044', 'Asahi', 'CAT-64f031d880e0b.png', 'CAT036'),
('CAT045', 'Apollo', 'CAT-64f031e4de826.png', 'CAT036'),
('CAT046', 'GMK', 'CAT-64f031f0955b2.png', 'CAT036'),
('CAT047', 'Hitachi', 'CAT-64f031fd072dc.png', 'CAT036'),
('CAT048', 'JC', 'CAT-64f032081c74e.png', 'CAT036'),
('CAT049', 'Kitz', 'CAT-64f0321763c49.png', 'CAT036'),
('CAT050', 'Legris', 'CAT-64f032221beac.png', 'CAT036'),
('CAT051', 'Sankyo', 'CAT-64f0322cc4843.png', 'CAT036'),
('CAT052', 'TC', 'CAT-64f0323729d4f.png', 'CAT036'),
('CAT053', 'Yashikawa', 'CAT-64f03242876d0.png', 'CAT036'),
('CAT054', 'Amri', 'CAT-64f03316268d6.png', 'CAT037'),
('CAT055', 'Asahi', 'CAT-64f03327b8742.png', 'CAT037'),
('CAT056', 'GMK', 'CAT-64f033379b716.png', 'CAT037'),
('CAT057', 'Okumura', 'CAT-64f0334527d76.png', 'CAT037'),
('CAT058', 'Tozen', 'CAT-64f03351cb7ed.png', 'CAT037'),
('CAT059', 'Asahi', 'CAT-64f033d12bcc8.png', 'CAT038'),
('CAT060', 'Astam', 'CAT-64f033de82b86.png', 'CAT038'),
('CAT061', 'Douglas', 'CAT-64f033f3783cd.png', 'CAT038'),
('CAT062', 'GMK', 'CAT-64f033fe949fa.png', 'CAT038'),
('CAT063', 'Hitachi', 'CAT-64f0340c6d287.png', 'CAT038'),
('CAT064', 'Kitz', 'CAT-64f0341a0f5a5.png', 'CAT038'),
('CAT065', 'Newco', 'CAT-64f0342b3240f.png', 'CAT038'),
('CAT066', 'OMB', 'CAT-64f0343a18795.png', 'CAT038'),
('CAT067', 'Pati', 'CAT-64f0344960fb4.png', 'CAT038'),
('CAT068', 'SWI', 'CAT-64f0345b7ac75.png', 'CAT038'),
('CAT069', 'TC', 'CAT-64f0349959412.png', 'CAT038'),
('CAT070', 'Yashikawa', 'CAT-64f034b352f70.png', 'CAT038'),
('CAT071', 'Asahi', 'CAT-64f047d82d9cd.png', 'CAT039'),
('CAT072', 'GMK', 'CAT-64f047e6112a2.png', 'CAT039'),
('CAT073', 'Mitzu', 'CAT-64f047fdd8087.png', 'CAT039'),
('CAT074', 'Pati', 'CAT-64f04808e64c5.png', 'CAT039'),
('CAT075', 'Asahi', 'CAT-64f048767dfaf.png', 'CAT040'),
('CAT076', 'Douglas', 'CAT-64f0488473d7f.png', 'CAT040'),
('CAT077', 'GMK', 'CAT-64f0489781616.png', 'CAT040'),
('CAT078', 'Hitachi', 'CAT-64f048a360e3b.png', 'CAT040'),
('CAT079', 'Kitz', 'CAT-64f048b419928.png', 'CAT040'),
('CAT080', 'Pati', 'CAT-64f048c3cbc7a.png', 'CAT040'),
('CAT081', 'SWI', 'CAT-64f048cff1c00.png', 'CAT040'),
('CAT082', 'TC', 'CAT-64f048db74caa.png', 'CAT040'),
('CAT083', 'Newco', 'CAT-64f048e8a3869.png', 'CAT040'),
('CAT084', 'OMB', 'CAT-64f048f45b1c3.png', 'CAT040'),
('CAT085', 'Newco', 'CAT-64f049df9c4f4.png', 'CAT041'),
('CAT086', 'OMB', 'CAT-64f049ed7b3e4.png', 'CAT041'),
('CAT087', 'KSB', 'CAT-64f049fc2e84a.png', 'CAT041'),
('CAT088', 'Kitz', 'CAT-64f04a09b6b87.png', 'CAT041'),
('CAT089', 'GMK', 'CAT-64f04a174c2b7.png', 'CAT041'),
('CAT090', 'Hitachi', 'CAT-64f04a3aa2c5e.png', 'CAT041'),
('CAT091', 'Asahi', 'CAT-64f04a45e0022.png', 'CAT041'),
('CAT092', 'Yashikawa', 'CAT-64f04a544b170.png', 'CAT041'),
('CAT093', 'Douglas', 'CAT-64f04a60d69b1.png', 'CAT041'),
('CAT094', 'SWI', 'CAT-64f04a6cee88f.png', 'CAT041'),
('CAT095', 'Asahi', 'CAT-64f04bcca0647.png', 'CAT042'),
('CAT096', 'GMK', 'CAT-64f04bda7cec8.png', 'CAT042'),
('CAT097', 'Kitz', 'CAT-64f04be8cfae1.png', 'CAT042'),
('CAT098', 'Pati', 'CAT-64f04bfaa4fd4.png', 'CAT042'),
('CAT099', 'TC', 'CAT-64f04c06e33d5.png', 'CAT042'),
('CAT100', 'Yashikawa', 'CAT-64f04c13b9660.png', 'CAT042'),
('CAT101', 'Yoshitake', 'CAT-64f04c1e9232d.png', 'CAT042'),
('CAT102', 'Asahi', 'CAT-64f04c8e99b0c.png', 'CAT043'),
('CAT103', 'KIM', 'CAT-64f04ca05e0e5.png', 'CAT043'),
('CAT104', 'Angle', 'CAT-64f04ee431da5.png', 'CAT025'),
('CAT105', 'Cylinder', 'CAT-64f04ef277144.png', 'CAT025'),
('CAT106', 'Safety', 'CAT-64f04f00cad7c.png', 'CAT025'),
('CAT107', 'Solenoid', 'CAT-64f04f0e3e735.png', 'CAT025'),
('CAT108', 'Pressure Reducing', 'CAT-64f04f21cf44f.png', 'CAT025'),
('CAT109', 'Flow Cell', 'CAT-64f04fc180167.png', 'CAT004'),
('CAT110', 'Flow Meter', 'CAT-64f04fcdc4dda.png', 'CAT004'),
('CAT111', 'Flow Switch', 'CAT-64f04fdc6426c.png', 'CAT004'),
('CAT112', 'Level Control', 'CAT-64f04fe9e4194.png', 'CAT004'),
('CAT113', 'Pressure Gauge', 'CAT-64f04ff775d1b.png', 'CAT004'),
('CAT114', 'Pressure Switch', 'CAT-64f050078c60c.png', 'CAT004'),
('CAT115', 'Thermometer', 'CAT-64f05014e7354.png', 'CAT004'),
('CAT116', 'Flat Bar', 'CAT-64f05048820c9.png', 'CAT005'),
('CAT117', 'Round Bar', 'CAT-64f0505351ebb.png', 'CAT005'),
('CAT118', 'Cold Work Tool Steel', 'CAT-64f05089d559e.png', 'CAT116'),
('CAT119', 'Cold Work Tool SLD-MAGIC', 'CAT-64f0509d96bed.png', 'CAT116'),
('CAT120', 'Hot Work Tool Steel', 'CAT-64f050af41c9b.png', 'CAT116'),
('CAT121', 'Plastic Mold Tool Steel', 'CAT-64f050be2c0a6.png', 'CAT116'),
('CAT122', 'Steam Boiler', 'CAT-64f050f27ff4b.png', 'CAT006'),
('CAT123', 'Thermal Oil Heater', 'CAT-64f05103127a3.png', 'CAT006'),
('CAT124', 'Vapour Absorption Chiller', 'CAT-64f0511503d2c.png', 'CAT006'),
('CAT125', 'Food Grade', 'CAT-64f05141a3d43.png', 'CAT007'),
('CAT126', 'Non-Food Grade', 'CAT-64f05150511c8.png', 'CAT007'),
('CAT127', 'Compressor Fluid', 'CAT-64f0517e153f1.png', 'CAT125'),
('CAT128', 'Gear Fluid', 'CAT-64f0518f7de22.png', 'CAT125'),
('CAT129', 'Grease', 'CAT-64f0519ba11be.png', 'CAT125'),
('CAT130', 'Heat Transfer Fluid', 'CAT-64f051ad42c23.png', 'CAT125'),
('CAT131', 'Hydraulic Fluid', 'CAT-64f051bd7e1fa.png', 'CAT125'),
('CAT132', 'White Mineral Oil', 'CAT-64f051d414292.png', 'CAT125'),
('CAT133', 'Compressor Fluid', 'CAT-64f052150ed22.png', 'CAT126'),
('CAT134', 'Diesel Engine Oil', 'CAT-64f052255091e.png', 'CAT126'),
('CAT135', 'Grease', 'CAT-64f052361206e.png', 'CAT126'),
('CAT136', 'Heat Transfer Fluid', 'CAT-64f05246857c8.png', 'CAT126'),
('CAT137', 'Hydraulic Oil', 'CAT-64f0525ba1d9b.png', 'CAT126'),
('CAT138', 'Industrial Gear Oil', 'CAT-64f0526dd0065.png', 'CAT126');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` char(6) NOT NULL,
  `item_desc` varchar(1000) CHARACTER NOT NULL,
  `item_brand` varchar(25) CHARACTER NOT NULL DEFAULT '-',
  `item_type` varchar(100) CHARACTER NOT NULL DEFAULT '-',
  `item_spec1` varchar(100) CHARACTER NOT NULL DEFAULT '-',
  `item_spec2` varchar(100) CHARACTER NOT NULL DEFAULT '-',
  `item_spec3` varchar(100) CHARACTER NOT NULL DEFAULT '-',
  `item_spec4` varchar(100) CHARACTER NOT NULL DEFAULT '-',
  `catalogue` varchar(100) CHARACTER NOT NULL DEFAULT '#',
  `item_img` varchar(25) CHARACTER NOT NULL DEFAULT 'nophoto.png',
  `id_cat` char(6) NOT NULL
) ENGINE=InnoDB;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id_item`, `item_desc`, `item_brand`, `item_type`, `item_spec1`, `item_spec2`, `item_spec3`, `item_spec4`, `catalogue`, `item_img`, `id_cat`) VALUES
('ITM001', 'Menjadi penyedia kebutuhan mekanikal terlengkap untuk seluruh sektor pembangunan di seluruh wilayah Indonesia.\r\n', 'SPINDO', 'Welded &amp; Seamless', 'Welded (1/2″ – 16″) – Seamless (1/4″ – 30″)', 'SCH. 20 (Medium A) – SCH. 40', 'Carbon Steel', 'High Press Water (Hydrant)', '#', 'ITM-64f00b676e617.png', 'CAT008'),
('ITM002', 'Menjadi penyedia kebutuhan mekanikal terlengkap untuk seluruh sektor pembangunan di seluruh wilayah Indonesia.\r\n', 'Westpex', 'HDPE', '(1/2″ – 30″)', 'SCH. 20 (Medium A) – SCH. 40', '-', 'High Press Water (Hydrant)', '#', 'ITM-64f00b7d62eef.png', 'CAT009'),
('ITM003', 'Menjadi penyedia kebutuhan mekanikal terlengkap untuk seluruh sektor pembangunan di seluruh wilayah Indonesia.', 'Westpex', 'PPR', '1/2″ – 20″', 'SCH. 10 – 40', '-', 'Cold Water, Hot Water', '#', 'ITM-64f00b8cf0243.png', 'CAT010'),
('ITM004', 'Menjadi penyedia kebutuhan mekanikal terlengkap untuk seluruh sektor pembangunan di seluruh wilayah Indonesia.', 'Westpex', 'PEX', '1/2″ – 20″', 'SCH. 10 – 40', '-', 'Cold Water, Hot Water', '#', 'ITM-64f00b98595ba.png', 'CAT011'),
('ITM005', 'Menjadi penyedia kebutuhan mekanikal terlengkap untuk seluruh sektor pembangunan di seluruh wilayah Indonesia.\r\n', 'Tetsura', 'Welded &amp; Seamless', '1/2″ – 20″', 'SCH. 10 – 80', 'SS 304/L, SS 316/L', 'Steam Water Chemical', '#', 'ITM-64f00ba1b9a3b.png', 'CAT012'),
('ITM006', 'Menjadi penyedia kebutuhan mekanikal terlengkap untuk seluruh sektor pembangunan di seluruh wilayah Indonesia.\r\n', 'LEGRIS', '-', '4mm – 10mm', '-', 'Nylon, Polyurethane ( PU )', 'Angin dan Air', '#', 'ITM-64f00ba8efda7.png', 'CAT013'),
('ITM007', '', 'Westpex', '-', '-', '-', '-', '-', '#', 'ITM-64f01c2d442e7.png', 'CAT014'),
('ITM008', '', 'Westpex', 'JIS Rc Screw', '1/2″ – 3″', '-', 'SS, carbon', '-', '#', 'ITM-64f01c3603587.png', 'CAT015'),
('ITM009', '', 'Westpex', 'Jis Rc Screw', '1/2″ – 3″', '-', 'PPR', '-', '#', 'ITM-64f01c41c63db.png', 'CAT016'),
('ITM010', '', 'LEGRIS', 'JIS Rc Screw', '4 – 10mm', '-', 'Bronze, Cast Iron, SS 304/L – 316/L', '-', '#', 'ITM-64f01d79eed15.png', 'CAT017'),
('ITM011', '', 'FKK, JZ, TSP, BENKAN', 'Screw, Butt weld, Sock weld', '1/2″ – 20″', 'SCH. 10-160, ANSI 150 – 3000', 'Carbon Steel / Stainless', '-', '#', 'ITM-64f01de1936c8.png', 'CAT018'),
('ITM012', '', 'FKK, Benkan, JZ', 'Weld Neck / Weld , Sock Weld', '1/2″ – 30″', 'JIS 5 – 20K, PN 10 – 40, ANSI 150 – 300', 'Mild Steel, Cast Iron, Stainless, Brass', '-', '#', 'ITM-64f01e239fed5.png', 'CAT019'),
('ITM013', '', 'TOZEN', 'Flange JIS 10 – 20K (1 1/4″ – 16″), Screw (1/2″ – 2″)', '-', '-', '-', 'Suhu 60˚C', '#', 'ITM-64f01eb446d64.png', 'CAT021'),
('ITM014', '', 'TOZEN', 'SF 100 NW', 'Flange JIS 10 – 20K (1 1/4″ – 16″), Screw (1/2″ – 2″)', '-', 'SS 304 /L – SS 316 /L', '-', '#', 'ITM-64f01994e1d6d.png', 'CAT022'),
('ITM015', '', 'Yoshitake', 'YBF-1E – YBF-2E', 'Flange JIS 10 – 20K (1 1/4″ – 16″), Screw (1/2″ – 2″)', '-', 'SS 304 /L – SS 316 /L', '-', '#', 'ITM-64f0199cb3b50.png', 'CAT022'),
('ITM016', '', 'JF', '-', '1″ – 12″', '-', '-', 'Movement 50mm', '#', 'ITM-64f01f467a963.png', 'CAT023'),
('ITM017', '', 'Asahi', 'Safe Block Screw – Slot', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f05d836cd1e.png', 'CAT044'),
('ITM018', '', 'Apollo', '93 Series JIS Rc Screw', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f05dc8a036d.png', 'CAT045'),
('ITM019', '', 'GMK', 'Flange (JIS 10K)', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f146c6f26eb.png', 'CAT046'),
('ITM020', '', 'Hitachi', 'Flange (JIS 10K) &amp; JIS Rc Screw', '1/2″ – 10″', '-', 'Cast Iron, Malleable Iron', 'Air', '#', 'ITM-64f14715f31a5.png', 'CAT047'),
('ITM021', '', 'JC', '515, GR-LEVER Flanged JIS', '1″ – 16″', '150', 'Cast Iron, Stainless,', 'Air', '#', 'ITM-64f14789e5892.png', 'CAT048'),
('ITM022', '', 'JC', 'Flanged JIS', '1″ – 6″', '150″', 'Cast Iron, Stainless,', 'Air', '#', 'ITM-64f147b3c34cc.png', 'CAT048'),
('ITM023', '', 'JC', 'Flanged JIS', '1″ – 16″', '150 – 600', 'Cast Iron, Stainless,', 'Air', '#', 'ITM-64f147dd1209b.png', 'CAT048'),
('ITM024', '', 'KITZ', 'Rc Screw ( JIS 10K )', '1/2″ – 3″', '-', 'Kuningan, Stainless Steel, Cast Iron', '-', '#', 'ITM-64f148adb5a8b.png', 'CAT049'),
('ITM025', '', 'KITZ', 'Flange ( JIS 10K )', '1/2″ – 10″', '-', 'Cast Iron, Stainles Steel', '-', '#', 'ITM-64f148ca95b7c.png', 'CAT049'),
('ITM026', '', 'Legris', 'JIS Rc Screw', '1/2″ – 3″', '-', 'Kuningan / Brass', 'Air', '#', 'ITM-64f14918c26cb.png', 'CAT050'),
('ITM027', '', 'Sankyo', 'JIS Rc Screw', '1/2″ – 3″', '-', 'SS 304 /L, SS 316 /L', 'Air', '#', 'ITM-64f14951ce97e.png', 'CAT051'),
('ITM028', '', 'TC', 'Flange (JIS 10K)', '1/2″ – 10″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f149848b6b1.png', 'CAT052'),
('ITM029', '', 'Yashikawa', '2 way, 3 way JIS Rc Screw', '1/2″ – 3″', '-', 'SS 304 /L – SS 316 /L', 'Air', '#', 'ITM-64f149d2cc7bf.png', 'CAT053'),
('ITM030', '', 'AMRI', 'Flange ( JIS 10K )', '-', '-', 'Cast Iron', 'Air', '#', 'ITM-64f14b536a328.png', 'CAT054'),
('ITM031', '', 'Asahi', 'Lever – Gear Flange', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f14bb52d98e.png', 'CAT055'),
('ITM032', '', 'GMK', 'Flange ( JIS 10K )', '-', '-', 'Cast Iron', 'Air', '#', 'ITM-64f14bee6b228.png', 'CAT056'),
('ITM033', '', 'Okumura', 'Flange ( JIS 10K )', '-', '-', 'Cast Iron, Ductile Iron', 'Air (16Kg/CM2)', '#', 'ITM-64f14c37d9f73.png', 'CAT057'),
('ITM034', '', 'Tozen', 'Flange ( JIS 10K )', '-', '-', 'Cast Iron', 'Air', '#', 'ITM-64f14c74ae98c.png', 'CAT058'),
('ITM035', '', 'Asahi', 'Socket, Screw', '1/2″ – 3″', '-', 'PP, PVC', 'PP, PVC', '#', 'ITM-64f14d0ab1d56.png', 'CAT059'),
('ITM036', '', 'Asahi', 'Flange', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f14d40312b3.png', 'CAT059'),
('ITM037', '', 'ASTAM', 'Wafer Check Flange ( JIS 10K )', '1/2″- 4″', '-', 'Cast Iron', '-', '#', 'ITM-64f14d8b02614.png', 'CAT060'),
('ITM038', '', 'ASTAM', 'Wafer Check Flange ( JIS 10K )', '1/2″- 4″', '-', 'Cast Iron', '-', '#', 'ITM-64f14daf796ce.png', 'CAT060'),
('ITM039', '', 'DOUGLAS', 'Flange – Screw', '1/2″ – 3″', '#150 – #800', 'Forged Steel', 'Air', '#', 'ITM-64f14dddebbf8.png', 'CAT061'),
('ITM040', '', 'GMK', 'Flange JIS ( 10K )', '1/2″ – 3″', '-', 'Malleable Iron', 'Air', '#', 'ITM-64f14e122e661.png', 'CAT062'),
('ITM041', '', 'Hitachi', 'Lift JIS Rc Screw (10K – 16K)', '1/2″ – 3″', '-', 'Malleable Iron', 'Air', '#', 'ITM-64f14e4f01ff7.png', 'CAT063'),
('ITM042', '', 'Hitachi', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'Malleable Iron', '-', '#', 'ITM-64f14e795ac79.png', 'CAT063'),
('ITM043', '', 'KITZ', 'Lift, Swing, Spring - JIS Rc Screw (10K – 16K)', '1/2″ – 3″', '-', 'Cast Iron, Malleable Iron, Kuningan, Stainless Steel', 'Air', '#', 'ITM-64f14ec214260.png', 'CAT064'),
('ITM044', '', 'NEWCO', 'Flange – Screw', '1/2″ – 3″', '#150 – #800', 'Forged Steel', 'Air', '#', 'ITM-64f14f0b4511c.png', 'CAT065'),
('ITM045', '', 'OMB', 'Flange – Screw', '1/2″ – 3″', '#150 – #800', 'Forged Steel', 'Air', '#', 'ITM-64f14f4e2608f.png', 'CAT066'),
('ITM046', '', 'PATI', 'JIS Rc Screw', '1/2″ – 3″', '-', 'Kuningan / Brass', 'Air', '#', 'ITM-64f14f71a378e.png', 'CAT067'),
('ITM047', '', 'SWI', 'Flange – Screw', '1/2″ – 3″', '#150 – #800', 'Forged Steel', 'Air', '#', 'ITM-64f14fb02e38c.png', 'CAT068'),
('ITM048', '', 'TC', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'Cast Iron', '-', '#', 'ITM-64f14fdd880ec.png', 'CAT069'),
('ITM049', '', 'Yashikawa', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'SS 304 /L, SS 316 /L', 'Air', '#', 'ITM-64f14ffe636ae.png', 'CAT070'),
('ITM050', '', 'Asahi', 'Socket, Screw', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f152d094d5b.png', 'CAT071'),
('ITM051', '', 'GMK', 'Socket, Screw', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f152ff8c1cc.png', 'CAT072'),
('ITM052', '', 'MITZU', 'JIS Rc Screw', '1/2″- 4″', '-', 'Cast Iron', '-', '#', 'ITM-64f15323e3a58.png', 'CAT073'),
('ITM053', '', 'PATI', 'JIS Rc Screw', '1/2″- 4″', '-', 'Brass / Kuningan', '-', '#', 'ITM-64f153473db0f.png', 'CAT074'),
('ITM054', '', 'Asahi', 'Screw – Slot', 'Screw – Slot', '-', 'PP, PVC, PVDF', 'Air', '#', 'ITM-64f153f15f080.png', 'CAT075'),
('ITM055', '', 'Douglas', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Forged Steel', 'Air', '#', 'ITM-64f1542245a8e.png', 'CAT076'),
('ITM056', '', 'GMK', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f15449556bd.png', 'CAT077'),
('ITM057', '', 'Hitachi', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Malleable Iron', 'Air', '#', 'ITM-64f1551e66db3.png', 'CAT078'),
('ITM058', '', 'KITZ', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f1554edecd0.png', 'CAT079'),
('ITM059', '', 'ITAP', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'Brass / Kuningan', 'Air', '#', 'ITM-64f1557ad5d5c.png', 'CAT080'),
('ITM060', '', 'SWI', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Forged Steel', 'Air', '#', 'ITM-64f1561c24667.png', 'CAT081'),
('ITM061', '', 'TC', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'SS 304 /L – SS 316 /L', 'Air', '#', 'ITM-64f15654a7b07.png', 'CAT082'),
('ITM062', '', 'Newco', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Forged Steel', 'Air', '#', 'ITM-64f15680ba86e.png', 'CAT083'),
('ITM063', '', 'OMB', 'Flange – Screw', '1/2″ – 3″', '#150 – #800', 'Forged Steel', 'Air', '#', 'ITM-64f156c7d5459.png', 'CAT084'),
('ITM064', '', 'Newco', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Forged Steel', 'Air', '#', 'ITM-64f15974e98f3.png', 'CAT085'),
('ITM065', '', 'OMB', 'Flange – Screw', '1/2″ – 3″', '#150 – #800', 'Forged Steel', 'Air', '#', 'ITM-64f15824b0d5d.png', 'CAT086'),
('ITM066', '', 'KSB', 'BOA-H Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Ductile Iron', 'Air', '#', 'ITM-64f158d73213f.png', 'CAT087'),
('ITM067', '', 'KITZ', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'Brass / Kuningan', 'Air', '#', 'ITM-64f15909d78f0.png', 'CAT088'),
('ITM068', '', 'KITZ', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'Casy Iron', 'Air', '#', 'ITM-64f1592805cc9.png', 'CAT088'),
('ITM069', '', 'KITZ', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'Stainless Steel', 'Air', '#', 'ITM-64f1593d03db4.png', 'CAT088'),
('ITM070', '', 'GMK', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'Cast Iron', 'Water', '#', 'ITM-64f15a6df1a22.png', 'CAT089'),
('ITM071', '', 'Hitachi', 'Jis Rc Screw ( JIS 10K )', '1/2″- 4″', '-', 'Malleable Iron', '-', '#', 'ITM-64f15a97803df.png', 'CAT090'),
('ITM072', '', 'Hitachi', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'Malleable Iron', '-', '#', 'ITM-64f15ab0212b7.png', 'CAT090'),
('ITM073', '', 'Asahi', 'Flange JIS (10K)', '1/2″ – 3″', '-', 'PP, PVC, PVDF', 'Air', '#', 'ITM-64f15adde62b4.png', 'CAT091'),
('ITM074', '', 'Yashikawa', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'SS 304 /L, SS 316 /L', 'Air', '#', 'ITM-64f15b003251c.png', 'CAT092'),
('ITM075', '', 'Douglas', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Forged Steel', 'Air', '#', 'ITM-64f15b2422432.png', 'CAT093'),
('ITM076', '', 'SWI', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron, Forged Steel', 'Air', '#', 'ITM-64f15b4ee9945.png', 'CAT094'),
('ITM077', '', 'Asahi', 'Y-Pattern Flange, Socket', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f15b7e59d5f.png', 'CAT095'),
('ITM078', '', 'GMK', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'Cast Iron', 'Water', '#', 'ITM-64f15ba4d97c7.png', 'CAT096'),
('ITM079', '', 'KITZ', 'Rc Screw ( JIS 10K )', '1/2″ – 3″', '-', 'Kuningan / Brass', '-', '#', 'ITM-64f15bf610f62.png', 'CAT097'),
('ITM080', '', 'KITZ', 'JIS Rc Screw', '1/2″- 4″', '-', 'SS 304 /L – SS 316 /L', '-', '#', 'ITM-64f15c124bcdb.png', 'CAT097'),
('ITM081', '', 'KITZ', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'SS 304 /L – SS 316 /L', 'Air', '#', 'ITM-64f15c344f0b2.png', 'CAT097'),
('ITM082', '', 'KITZ', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f15c5859252.png', 'CAT097'),
('ITM083', '', 'PATI', 'JIS Rc Screw', '1/2″- 4″', '-', 'Kuningan / Brass', '-', '#', 'ITM-64f15caf3bc89.png', 'CAT098'),
('ITM084', '', 'TC', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'SS 304 /L – SS 316 /L', '-', '#', 'ITM-64f15cd5bd860.png', 'CAT099'),
('ITM085', '', 'Yashikawa', 'JIS Rc Screw (10K)', '1/2″ – 3″', '-', 'SS 304 /L, SS 316 /L', 'Air', '#', 'ITM-64f15cf63a593.png', 'CAT100'),
('ITM086', '', 'Yoshitake', 'Rc Screw ( JIS 10K )', '1/2″ – 3″', '-', 'Ductile Iron', '-', '#', 'ITM-64f15d48ef14a.png', 'CAT101'),
('ITM087', '', 'Yoshitake', 'Flange ( JIS 10K )', '1/2″- 4″', '-', 'SS 304 /L – SS 316 /L', '-', '#', 'ITM-64f15d605201d.png', 'CAT101'),
('ITM088', '', 'Yoshitake', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'Ductile Iron', 'Air', '#', 'ITM-64f15d850a414.png', 'CAT101'),
('ITM089', '', 'Yoshitake', 'Flange ( JIS 10K )', '1/2″ – 3″', '-', 'SS 304 /L – SS 316 /L', 'Air', '#', 'ITM-64f15d9449a62.png', 'CAT101'),
('ITM090', '', 'Asahi', 'Flange, socket', '1/2″ – 3″', '-', 'PP, PVC', 'Air', '#', 'ITM-64f15dc908e9d.png', 'CAT102'),
('ITM091', '', 'KIM', 'Flange', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f15de971809.png', 'CAT103'),
('ITM092', '', 'OMAL', 'JIS Rc Screw (Actuated By Air)', '3/8″ – 2″', '-', 'Kuningan', 'Air', '#', 'ITM-64f15e7c41325.png', 'CAT104'),
('ITM093', '', 'GMK', 'Flange (JIS 10K)', '1/2″ – 3″', '-', 'Cast Iron', 'Air', '#', 'ITM-64f15ea57d15e.png', 'CAT105'),
('ITM094', '', 'Yoshitake', 'AL-1T JIS Rc Screw', '1/2″ – 6″', '-', 'Bronze, Cast Iron', 'Air', '#', 'ITM-64f15ecc79f1f.jpg', 'CAT106'),
('ITM095', '', 'Yoshitake', 'DP-10, DP-13 Screw &amp; Flange (JIS 10K Actuated By Air)', '3/8″ – 2″', '-', 'Bronze, Cast Iron', 'Air', '#', 'ITM-64f160df41486.png', 'CAT107'),
('ITM096', '', 'Uni-d', 'Screw &amp; Flange (JIS 10K Actuated By Air)', '-', '-', 'Cast Iron', 'Air', '#', 'ITM-64f16101c9cde.png', 'CAT107'),
('ITM097', '', 'Yoshitake', 'GD-20, GD-24, GD-200 Screw &amp; Flange (JIS 10K)', '1/2″ – 8″', '-', 'Bronze, Cast Iron', 'Air', '#', 'ITM-64f1613fd4e66.png', 'CAT108'),
('ITM098', '', 'Yoshitake', 'GP-2000, GD-30, GP-1000 Screw &amp; Flange (JIS 10K)', '1/2″ – 8″', '-', '-', 'Uap', '#', 'ITM-64f1616537327.png', 'CAT108'),
('ITM099', '', 'PATI', 'PRV JIS Rc Screw (Actuated By Air)', '1/2″ – 8″', '-', 'Kuningan / Cast Iron', 'Air', '#', 'ITM-64f1618be8090.png', 'CAT108'),
('ITM100', '', 'Yoshitake', 'TA-22, TA-11, TA-3 Screw', '-', '-', 'Bronze, Ductile Iron', 'Air', '#', 'ITM-64f161cb45a3c.png', 'CAT026'),
('ITM101', '', 'Durabla', 'Screw', '1/2″- 1″', '-', 'Ductile Iron', 'Uap', '#', 'ITM-64f161f71366a.png', 'CAT027'),
('ITM102', '', 'Taiyo', '-', '-', '-', '-', 'Udara', '#', 'ITM-64f1621651c8b.png', 'CAT028'),
('ITM103', '', 'Armstrong', '1-LDC Screw', '-', '-', 'Stainless Steel', 'Air', '#', 'ITM-64f1623e1ae49.png', 'CAT029'),
('ITM104', '', 'Showa Giken', '-', '-', '-', '-', '-', '#', 'ITM-64f1626c7ad47.png', 'CAT030'),
('ITM105', '', 'Taiyo', 'SR 552 JIS Rc Screw', '1/2″ – 3/8″', '-', '-', 'Udara', '#', 'ITM-64f162a217dfa.png', 'CAT031'),
('ITM106', '', 'Hafner', 'MH310, MH510, MH520, MH531 (G-Series) JIS Rc Screw', '1/2″ – 3/8″', '-', '-', 'Udara', '#', 'ITM-64f162c26d592.png', 'CAT031'),
('ITM107', '', 'Controlli', 'Controlli VMB 1625 Screw &amp; Flange (JIS10K)', '-', '-', 'Ductile Iron', '-', '#', 'ITM-64f162fdbd8e8.png', 'CAT032'),
('ITM108', '', 'Schubert', 'Digital Positioner 8049 IP65 4-wire G 1/8″', '-', '-', '-', '-', '#', 'ITM-64f1632acaef2.png', 'CAT032'),
('ITM109', '', 'Schubert', 'Piston Actuator Flange', '1/2″- 1″', '-', 'Stainless Steel', '-', '#', 'ITM-64f163a2a9d0a.png', 'CAT032'),
('ITM110', '', 'Watts', 'Globe, Angle Flange', '1/2″- 3″', '-', 'Cast Iron', '-', '#', 'ITM-64f163c13ce4f.png', 'CAT032'),
('ITM111', '', 'Yoshitake', 'TD 10NA JIS Rc Screw', '1/2″ – 1″', '-', 'Ductile Iron', 'Uap', '#', 'ITM-64f16461623d5.png', 'CAT033'),
('ITM112', '', 'Douglas', 'Disc Trap JIS Rc Screw', '1/2″ – 3″', '-', 'Ductile Iron, Forged Steel', 'Uap', '#', 'ITM-64f164862d557.png', 'CAT033'),
('ITM113', '', 'Yoshitake', 'TSF-10 JIS Rc Screw', '1/2″ – 2″', '-', 'Ductile Iron', 'Uap', '#', 'ITM-64f164a25d4c2.png', 'CAT033'),
('ITM114', '', 'Armstrong', '811-815 JIS Rc Screw', '1/2″ – 1″', '-', 'Ductile Iron', 'Uap', '#', 'ITM-64f164c47910f.png', 'CAT033'),
('ITM115', '', 'Armstrong', 'Bimetallic Trap JIS Rc Screw', '1/2″ – 1″', '-', 'Ductile Iron', 'Uap', '#', 'ITM-64f164e02184a.png', 'CAT033'),
('ITM116', '', 'Armstrong', '2033, 103 JIS Rc Screw', '3/4″', '-', 'Kuningan, Stainless Steel', 'Hot water', '#', 'ITM-64f16510b587e.png', 'CAT034'),
('ITM117', '', 'Yoshitake', 'OB 1-2 Screw &amp; Flange (JIS 10K)', '-', '-', 'Cast Iron', 'Uap', '#', 'ITM-64f165388364d.png', 'CAT035'),
('ITM118', '', 'Nippon Flow cell', '-', '-', '-', '-', '-', '#', 'ITM-64f16582bad14.png', 'CAT109'),
('ITM119', 'Untuk air dingin hingga 50ºC\r\nUntuk air panas hingga 130 ºC', 'Powogaz', '-', 'DN 40, 50, 65', '-', '-', 'Air / Water (max. 1,6 MPa (16 bar))', '#', 'ITM-64f165daea441.png', 'CAT110'),
('ITM120', '', 'Actaris', '-', '-', '-', '-', 'Air / Water', '#', 'ITM-64f165f149c8b.png', 'CAT110'),
('ITM121', '', 'Forbes Marshall', '-', '-', '-', '-', 'Uap / Steam', '#', 'ITM-64f16605f09f5.png', 'CAT110'),
('ITM122', '', 'Johnson Control', 'F61, F261', '-', '-', '-', 'Oil, Water', '#', 'ITM-64f16650dde44.png', 'CAT111'),
('ITM123', '', 'Johnson Control', 'F62, F262', '-', '-', '-', 'Air, Gas', '#', 'ITM-64f166789d21c.png', 'CAT111'),
('ITM124', '', 'Magnetrol', 'PD, CS, TD, FS', '-', '-', '-', '-', '#', 'ITM-64f166a5c56ee.png', 'CAT112'),
('ITM125', 'Temp : \r\n- NI 1341 =  (60˚C -+ 280˚C)\r\n- NI 1342 (20˚C -+ 70˚C)', 'RTK', 'NI 1341, NI 1342', '-', '-', '-', '-', '#', 'ITM-64f166de39f9c.png', 'CAT113'),
('ITM126', 'Temp : -20 – 120˚C\r\nPressure : 0.3 – 3.3', 'Saginomiya', 'Type SNS, Type HNS', '-', '-', '-', 'Air / Gas', '#', 'ITM-64f1675a5bd2b.png', 'CAT114'),
('ITM127', '', 'Nagano Keiki', 'Bimetal, Filled System', 'Ø60, Ø75, Ø100, Ø150', '-', '-', 'Air / Gas (-50 – 500˚C)', '#', 'ITM-64f1679fd78be.png', 'CAT115'),
('ITM128', '', 'Nouva Fima', 'Bimetal, Filled System', 'Ø60, Ø75, Ø100, Ø150', '-', '-', 'Air / Gas (-50 – 500˚C)', '#', 'ITM-64f167bc6bfd9.png', 'CAT115'),
('ITM129', '', 'Jako', 'Bimetal, Filled System', 'Ø60, Ø75, Ø100, Ø150', '-', '-', 'Air / Gas (-50 – 500˚C)', '#', 'ITM-64f167d6ec409.png', 'CAT115'),
('ITM130', '', 'Forbes Marshall', 'Bimetal, Filled System', 'Ø60, Ø75, Ø100, Ø150', '-', '-', 'Air / Gas (-50 – 500˚C)', '#', 'ITM-64f167f3514b6.png', 'CAT115'),
('ITM131', '', 'Hitachi', 'Cold Work Tool Steel', '-', '-', 'Stainless Steel, Cast Iron', '-', '#', 'ITM-64f168edb0bcd.png', 'CAT118'),
('ITM132', '', 'Hitachi', 'Cold Work Tool Steel SDL-MAGIC', '-', '-', 'Stainless Steel, Cast Iron', '-', '#', 'ITM-64f1691193458.png', 'CAT119'),
('ITM133', '', 'Hitachi', 'Hot Work Tool Steel', '-', '-', 'Stainless Steel, Cast Iron', '-', '#', 'ITM-64f169342afdb.png', 'CAT120'),
('ITM134', '', 'Hitachi', 'Plastic Mold Tool Steel', '-', '-', 'Stainless Steel, Cast Iron', '-', '#', 'ITM-64f16954442d0.png', 'CAT121'),
('ITM135', '', '-', '-', '1/2″ – 6″', 'SCH 20 – 40', '-', '-', '#', 'ITM-64f1697e7e76a.png', 'CAT117'),
('ITM136', 'Kapasitas : 1500 kg/hr to 6000 kg/hr\r\n', 'THERMAX', 'COMBLOC', '-', '-', '-', 'Tekanan 10.54 kg/cm² &amp; 17.5 kg/cm²', '#', 'ITM-64f16a2d8cb4d.png', 'CAT122'),
('ITM137', '', 'THERMAX', 'THERMEON', '-', '-', '-', '-', '#', 'ITM-64f16a43a5d9e.png', 'CAT122'),
('ITM138', 'Kapasitas : 0,1 juta kcal / jam menjadi 12,0 juta kkal / hr\r\n', 'Thermax', 'Thermopac', '-', '-', '-', '-', '#', 'ITM-64f16a7a0a2c9.png', 'CAT123'),
('ITM139', '', 'Thermax', 'enerbloc', '-', '-', '-', '-', '#', 'ITM-64f16a8d68854.png', 'CAT123'),
('ITM140', 'Kapasitas Pemanas: 250 to 9250 kW\r\n', 'Thermax', 'Cooling Absorption', '-', '-', '-', '-2 - 90ºC', '#', 'ITM-64f16af64dbd3.png', 'CAT124'),
('ITM141', 'PURITY FG Compressor Fluids memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di pabrik pengolahan makanan.\r\nDiformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nKetahanan Oksidasi, \r\nMemberikan perlindungan terhadap karat dan korosi, \r\nTersedia dalam ISO VG mulai dari 32, 46, 68, dan 100', 'PURITY FG ', '-', '-', '-', '-', '-', '#', 'ITM-64f1802d03567.jpg', 'CAT127'),
('ITM142', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 150 dan 220.', 'PURITY FG', 'EP', '-', '-', '-', '-', '#', 'ITM-64f180eceed6f.png', 'CAT128'),
('ITM143', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 220 dan 460.', 'PURITY FG', 'Synthetic EP', '-', '-', '-', '-', '#', 'ITM-64f182f6aa8f6.png', 'CAT128'),
('ITM144', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\n', 'PURITY FG', 'Seamer E-Fluids', '-', '-', '-', '-', '#', 'ITM-64f1830e591cc.png', 'CAT128'),
('ITM145', 'Diformulasikan dengan SynFX yang di rancang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 150 dan 220.', 'PURITY FG2', 'MICROL™† MAX', '-', '-', '-', '-', '#', 'ITM-64f18369362a4.png', 'CAT129'),
('ITM146', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia juga EP1, EP2, dan EP00', 'PURITY FG', 'Food Grade', '-', '-', '-', '-', '#', 'ITM-64f1839058e4d.png', 'CAT129'),
('ITM147', 'Diformulasikan dengan SynFX yang di rancang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 150 dan 220.', 'PURITY FG2', 'Synthetic Food Grade', '-', '-', '-', '-', '#', 'ITM-64f183c654056.png', 'CAT129'),
('ITM148', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 150 dan 220.', 'PURITY FG2', 'Extreme Food Grade', '-', '-', '-', '-', '#', 'ITM-64f183e592632.png', 'CAT129'),
('ITM149', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 150 dan 220.', 'PURITY FG2', 'Clear Food Grade', '-', '-', '-', '-', '#', 'ITM-64f184019d4ca.png', 'CAT129'),
('ITM150', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 150 dan 220.', 'PURITY FG', '-', '-', '-', '-', '-', '#', 'ITM-64f184730824b.png', 'CAT130'),
('ITM151', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 32, 46, 68, dan 100.', 'PURITY FG ', 'AW with MICROL™†', '-', '-', '-', '-', '#', 'ITM-64f184b70daaf.png', 'CAT131'),
('ITM152', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 32, 46, 68, dan 100.', 'PURITY FG', 'AW Food-Grade', '-', '-', '-', '-', '#', 'ITM-64f184d2b1ffe.png', 'CAT131'),
('ITM153', 'Diformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nSebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\ntersedia dalam ISO VG 46 Grade.', 'PURITY FG-X', 'AW Food-Grade', '-', '-', '-', '-', '#', 'ITM-64f184efb630b.png', 'CAT131'),
('ITM154', 'Sebuah pelumas Food Grade yang terdaftar di NSF H1 dan diterima untuk digunakan dalam fasilitas pengolahan makanan di kanada.\r\nBerkualitas tinggi food grade minyak putih [Memenuhi FDA CFR 21, Bagian 172,878 dan CFR 21, Bagian 178,3620 (a)]\r\nMemberikan perlindungan terhadap karat dan korosi.\r\nWhit Mineral Oils Food Grade cocok untuk industri pengolahan makanan\r\nWhite mineral oil tersedia dalam grade: 10, 15, 35, 40, 68, 90.', 'PURITY FG', '-', '-', '-', '-', '-', '#', 'ITM-64f1853d38cd9.png', 'CAT132'),
('ITM155', 'COMPRO XL-S memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di pabrik pengolahan makanan.\r\nDiformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nKetahanan Oksidasi.\r\nMemberikan perlindungan terhadap karat dan korosi.', 'COMPRO', 'XL-S', '-', '-', '-', '-', '#', 'ITM-64f1859191375.png', 'CAT133'),
('ITM156', 'COMPRO XL-R memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di pabrik pengolahan makanan.\r\nDiformulasikan dengan SynFX yang di ranvang untuk memberikan kinerja sintetis seperti :\r\nKetahanan Oksidasi\r\nMemberikan perlindungan terhadap karat dan korosi', 'COMPRO', 'XL-R', '-', '-', '-', '-', '#', 'ITM-64f185b29c49b.png', 'CAT133'),
('ITM157', 'Duron xl oli masa depan mempunyai banyak keuntungan diantaranya :\r\nMudah di-start walaupun cuaca dingin.\r\nTemperatur mesin rendah.\r\nTarikan ringan, Kecepatan optimal.\r\nHemat BBM.\r\nGas buang / Emisi berkurang.\r\nPerforma oli setara dengan oli yang dirancang khusus untuk balap.\r\nMesin bebas dari kerak.', 'DURON', 'XL', '-', '-', '-', '-', '#', 'ITM-64f186195740c.png', 'CAT134'),
('ITM158', 'Duron xl-e oli masa depan mempunyai banyak keuntungan diantaranya :\r\nMudah di-start walaupun cuaca dingin.\r\nTemperatur mesin rendah.\r\nTarikan ringan, Kecepatan optimal.\r\nHemat BBM.\r\nGas buang / Emisi berkurang.\r\nPerforma oli setara dengan oli yang dirancang khusus untuk balap.\r\nMesin bebas dari kerak.', 'DURON', 'XL-E', '-', '-', '-', '-', '#', 'ITM-64f1863a8117a.png', 'CAT134'),
('ITM159', 'PEERLESS LLG memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di dalam sebuah industri atau pabrik.\r\nDiformulasikan dengan SynFX yang di rancang untuk memberikan kinerja sintetis seperti :\r\nKetahanan Oksidasi.\r\nMemberikan perlindungan terhadap karat dan korosi.', 'PEERLESS', 'LLG', '-', '-', '-', '-', '#', 'ITM-64f1867045e73.png', 'CAT135'),
('ITM160', 'THERMEX memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di dalam sebuah industri atau pabrik.\r\nDiformulasikan dengan SynFX yang di rancang untuk memberikan kinerja sintetis seperti :\r\nKetahanan Oksidasi.\r\nMemberikan perlindungan terhadap karat dan korosi.', 'THERMEX', '-', '-', '-', '-', '-', '#', 'ITM-64f1869fe2fd9.png', 'CAT135'),
('ITM161', 'Menyediakan efisiensi termal yang tinggi dalam sistem operasi sampai 316 ° C / 600 ° F.\r\nMenunjukkan perlawanan oksidatif yang lebih baik bila dibandingkan dengan banyak cairan kompetitif terkemuka', 'CALFLO', 'AF', '-', '-', '-', '-', '#', 'ITM-64f186cfafa6e.png', 'CAT136'),
('ITM162', 'HYDREX EXTREME memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di dalam industri.\r\nMemungkinkan sistem hidrolik untuk memulai pada suhu -49 ° C / -56 ° F, dengan rentang operasi antara -32 ° C / -26 ° F dan 64 ° C / 147 ° F.\r\nMemberikan perlindungan terhadap karat dan korosi', 'HYDREX', 'EXTREME', '-', '-', '-', '-', '#', 'ITM-64f1871dbab28.png', 'CAT137'),
('ITM163', 'Memberikan perlindungan kepada perlengkapan untuk jangka panjang.\r\nKetahanan Oksidasi.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\nTersedia dalam ISO mulai dari 22, 32, 46, 68, 80, dan 100.', 'HYDREX', 'AW', '-', '-', '-', '-', '#', 'ITM-64f1873f4cd46.png', 'CAT137'),
('ITM164', 'Idealnya cocok untuk piston, gear dan pompa baling-baling yang digunakan dalam industri, kelautan, hutan, pertambangan dan sistem hidrolik lainnya.\r\nMenggabungkan gesekan cairan minimal pada suhu yang rendah dengan perlindungan pada suhu operasi yang tinggi.\r\nTersedia dalam ISO mulai dari 22, 32, 46, dan 68.', 'HYDREX', 'MV', '-', '-', '-', '-', '#', 'ITM-64f1875abaead.png', 'CAT137'),
('ITM165', 'Direkomendasikan untuk digunakan dalam sistem suhu rendah.\r\nAnti aus karakteristik minyak hidrolik memperpanjang umur peralatan.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\nTersedia dalam ISO 15.', 'HYDREX', 'MV ARCTIC', '-', '-', '-', '-', '#', 'ITM-64f187816507b.png', 'CAT137'),
('ITM166', 'Memberikan peningkatan produktivitas di suhu yang sangat panas atau dingin.\r\nCocok untuk mesin industri digunakan dalam hutan, konstruksi, pertambangan, utilitas umum dan operasi laut.\r\nMemberikan perlindungan terhadap karat dan korosi.\r\nMemungkinkan sistem hidrolik untuk memulai pada suhu -34 ° C / -29 ° F, dengan rentang operasi antara -14 ° C / 7 ° F dan 90 ° C / 194 ° F untuk peralatan mobile, dan -14 ° C / 7 ° F untuk 78 ° C / 172 ° F untuk mesin industri.', 'HYDREX', 'XV', '-', '-', '-', '-', '#', 'ITM-64f187a2ab722.png', 'CAT137'),
('ITM167', 'Enduratex EP memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di dalam sebuah industri.\r\nMemberikan perlindungan yang cukup lama, dan ketahanan yang luar biasa terhadap kerusakan dan melindungi terhadap karat dan korosi.\r\nTersedia dalam ISO : 32, 68, 100, 150', 'ENDURATEX', 'EP', '-', '-', '-', '-', '#', 'ITM-64f187e6455f5.png', 'CAT138'),
('ITM168', 'Enduratex EP memberikan pelumasan untuk kompresor udara atau angin dan pompa vakum di dalam sebuah industri.\r\nMemberikan perlindungan yang cukup lama, dan ketahanan yang luar biasa terhadap kerusakan dan melindungi terhadap karat dan korosi.\r\nTersedia dalam ISO : 150, 220, 320, 460', 'ENDURATEX', 'Synthetic EP', '-', '-', '-', '-', '#', 'ITM-64f188079aba9.png', 'CAT138');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(6) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` char(255) NOT NULL,
  `permission` enum('superadmin','admin','user','') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `permission`) VALUES
('SAM001', 'superadmin', 'b94e7a7707c2622433574aa55dbea0fbf93a5c1f', 'superadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`),
  ADD KEY `fk_id_parent` (`parent_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `fk_category_item` (`id_cat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_id_parent` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id_cat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_category_item` FOREIGN KEY (`id_cat`) REFERENCES `category` (`id_cat`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
