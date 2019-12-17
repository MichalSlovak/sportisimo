-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 17. pro 2019, 21:57
-- Verze serveru: 10.4.8-MariaDB
-- Verze PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `sportisimo`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `brands`
--

CREATE TABLE `brands` (
  `idbrands` int(11) NOT NULL,
  `created_by` date DEFAULT current_timestamp(),
  `modify_by` date NOT NULL DEFAULT current_timestamp(),
  `brands_name` varchar(455) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Zde jsem z vašich stránek stáhnul demo data pro tuto aplikaci
--

INSERT INTO `brands` (`idbrands`, `created_by`, `modify_by`, `brands_name`) VALUES
(1, '2019-12-17', '2019-12-17', 'Abus'),
(2, '2019-12-17', '2019-12-17', 'Acer'),
(3, '2019-12-17', '2019-12-17', 'adidas'),
(4, '2019-12-17', '2019-12-17', 'ADVENTURE MENU'),
(5, '2019-12-17', '2019-12-17', 'Alapai'),
(6, '2019-12-17', '2019-12-17', 'Alice Company'),
(7, '2019-12-17', '2019-12-17', 'Alpina'),
(8, '2019-12-17', '2019-12-17', 'Alpina Sports'),
(9, '2019-12-17', '2019-12-17', 'ALPINE PRO'),
(10, '2019-12-17', '2019-12-17', 'Amazonas'),
(11, '2019-12-17', '2019-12-17', 'Amulet'),
(12, '2019-12-17', '2019-12-17', 'Antarctica'),
(13, '2019-12-17', '2019-12-17', 'AQUA MARINA'),
(14, '2019-12-17', '2019-12-17', 'AQUADESIGN'),
(15, '2019-12-17', '2019-12-17', 'Arcore'),
(16, '2019-12-17', '2019-12-17', 'Arena'),
(17, '2019-12-17', '2019-12-17', 'Ares'),
(18, '2019-12-17', '2019-12-17', 'Aress'),
(19, '2019-12-17', '2019-12-17', 'Aress Gymnastics'),
(20, '2019-12-17', '2019-12-17', 'Asics'),
(21, '2019-12-17', '2019-12-17', 'Atomic'),
(22, '2019-12-17', '2019-12-17', 'Avenue'),
(23, '2019-12-17', '2019-12-17', 'AXA'),
(24, '2019-12-17', '2019-12-17', 'Axis'),
(25, '2019-12-17', '2019-12-17', 'B'),
(26, '2019-12-17', '2019-12-17', 'Babolat'),
(27, '2019-12-17', '2019-12-17', 'Bama'),
(28, '2019-12-17', '2019-12-17', 'Bauer'),
(29, '2019-12-17', '2019-12-17', 'BBB'),
(30, '2019-12-17', '2019-12-17', 'BCA'),
(31, '2019-12-17', '2019-12-17', 'Beardski'),
(32, '2019-12-17', '2019-12-17', 'Bellelli'),
(33, '2019-12-17', '2019-12-17', 'Bergamont'),
(34, '2019-12-17', '2019-12-17', 'Bergans'),
(35, '2019-12-17', '2019-12-17', 'Bergun'),
(36, '2019-12-17', '2019-12-17', 'Best Walk'),
(37, '2019-12-17', '2019-12-17', 'Bestway'),
(38, '2019-12-17', '2019-12-17', 'Bikeworkx'),
(39, '2019-12-17', '2019-12-17', 'Bio Wash'),
(40, '2019-12-17', '2019-12-17', 'Birkenstock'),
(41, '2019-12-17', '2019-12-17', 'Birki'),
(42, '2019-12-17', '2019-12-17', 'Bladerunner'),
(43, '2019-12-17', '2019-12-17', 'Bliz'),
(44, '2019-12-17', '2019-12-17', 'Blizzard'),
(45, '2019-12-17', '2019-12-17', 'Body Glove'),
(46, '2019-12-17', '2019-12-17', 'Bolle'),
(47, '2019-12-17', '2019-12-17', 'Boma'),
(48, '2019-12-17', '2019-12-17', 'Boot Doc'),
(49, '2019-12-17', '2019-12-17', 'Bottecchia'),
(50, '2019-12-17', '2019-12-17', 'Boxeur des Rues'),
(51, '2019-12-17', '2019-12-17', 'Briko'),
(52, '2019-12-17', '2019-12-17', 'Brugi'),
(53, '2019-12-17', '2019-12-17', 'Bula'),
(54, '2019-12-17', '2019-12-17', 'Butterfly'),
(55, '2019-12-17', '2019-12-17', 'C'),
(56, '2019-12-17', '2019-12-17', 'Calter'),
(57, '2019-12-17', '2019-12-17', 'Campingaz'),
(58, '2019-12-17', '2019-12-17', 'Carra'),
(59, '2019-12-17', '2019-12-17', 'Carrera'),
(60, '2019-12-17', '2019-12-17', 'Castelli'),
(61, '2019-12-17', '2019-12-17', 'CCM'),
(62, '2019-12-17', '2019-12-17', 'Cebe'),
(63, '2019-12-17', '2019-12-17', 'Champion'),
(64, '2019-12-17', '2019-12-17', 'Chimpanzee'),
(65, '2019-12-17', '2019-12-17', 'Coleman'),
(66, '2019-12-17', '2019-12-17', 'Collonil'),
(67, '2019-12-17', '2019-12-17', 'Colmar'),
(68, '2019-12-17', '2019-12-17', 'Columbia'),
(69, '2019-12-17', '2019-12-17', 'Compostick'),
(70, '2019-12-17', '2019-12-17', 'Compressport'),
(71, '2019-12-17', '2019-12-17', 'Contigo'),
(72, '2019-12-17', '2019-12-17', 'Converse'),
(73, '2019-12-17', '2019-12-17', 'Coqui'),
(74, '2019-12-17', '2019-12-17', 'Craft'),
(75, '2019-12-17', '2019-12-17', 'Crazy Ears'),
(76, '2019-12-17', '2019-12-17', 'Cressi'),
(77, '2019-12-17', '2019-12-17', 'Crops'),
(78, '2019-12-17', '2019-12-17', 'Crossroad'),
(79, '2019-12-17', '2019-12-17', 'Crowned'),
(80, '2019-12-17', '2019-12-17', 'D'),
(81, '2019-12-17', '2019-12-17', 'Dainese'),
(82, '2019-12-17', '2019-12-17', 'Dakine'),
(83, '2019-12-17', '2019-12-17', 'Dalbello'),
(84, '2019-12-17', '2019-12-17', 'DC'),
(85, '2019-12-17', '2019-12-17', 'Deda'),
(86, '2019-12-17', '2019-12-17', 'Disney'),
(87, '2019-12-17', '2019-12-17', 'Dive pro'),
(88, '2019-12-17', '2019-12-17', 'Donic'),
(89, '2019-12-17', '2019-12-17', 'Dynastar'),
(90, '2019-12-17', '2019-12-17', 'E'),
(91, '2019-12-17', '2019-12-17', 'Eastpak'),
(92, '2019-12-17', '2019-12-17', 'Eisbär'),
(93, '2019-12-17', '2019-12-17', 'Elan'),
(94, '2019-12-17', '2019-12-17', 'ELJET'),
(95, '2019-12-17', '2019-12-17', 'Ergon'),
(96, '2019-12-17', '2019-12-17', 'Errea'),
(97, '2019-12-17', '2019-12-17', 'Etape'),
(98, '2019-12-17', '2019-12-17', 'Exel'),
(99, '2019-12-17', '2019-12-17', 'F'),
(100, '2019-12-17', '2019-12-17', 'Fabric'),
(101, '2019-12-17', '2019-12-17', 'Fat Pipe'),
(102, '2019-12-17', '2019-12-17', 'Fila'),
(103, '2019-12-17', '2019-12-17', 'Finis'),
(104, '2019-12-17', '2019-12-17', 'Finmark'),
(105, '2019-12-17', '2019-12-17', 'Finnsub'),
(106, '2019-12-17', '2019-12-17', 'Fischer'),
(107, '2019-12-17', '2019-12-17', 'Fitfab Strong'),
(108, '2019-12-17', '2019-12-17', 'Fitforce'),
(109, '2019-12-17', '2019-12-17', 'Fjällräven'),
(110, '2019-12-17', '2019-12-17', 'FLLÖS'),
(111, '2019-12-17', '2019-12-17', 'Force'),
(112, '2019-12-17', '2019-12-17', 'Fox'),
(113, '2019-12-17', '2019-12-17', 'Freeroad'),
(114, '2019-12-17', '2019-12-17', 'FREEZ'),
(115, '2019-12-17', '2019-12-17', 'Friedola'),
(116, '2019-12-17', '2019-12-17', 'FTWO'),
(117, '2019-12-17', '2019-12-17', 'FUNNY WHEELS'),
(118, '2019-12-17', '2019-12-17', 'FZ Forza'),
(119, '2019-12-17', '2019-12-17', 'G'),
(120, '2019-12-17', '2019-12-17', 'Gabel'),
(121, '2019-12-17', '2019-12-17', 'Galaxy'),
(122, '2019-12-17', '2019-12-17', 'Gatorade'),
(123, '2019-12-17', '2019-12-17', 'Giant Dragon'),
(124, '2019-12-17', '2019-12-17', 'Gizmo Riders'),
(125, '2019-12-17', '2019-12-17', 'Goal Zero'),
(126, '2019-12-17', '2019-12-17', 'Goldwin'),
(127, '2019-12-17', '2019-12-17', 'GRANITE'),
(128, '2019-12-17', '2019-12-17', 'Grower’s Cup'),
(129, '2019-12-17', '2019-12-17', 'H'),
(130, '2019-12-17', '2019-12-17', 'Halti'),
(131, '2019-12-17', '2019-12-17', 'Hannah'),
(132, '2019-12-17', '2019-12-17', 'Harrows'),
(133, '2019-12-17', '2019-12-17', 'Hayes'),
(134, '2019-12-17', '2019-12-17', 'Head'),
(135, '2019-12-17', '2019-12-17', 'Helly Hansen'),
(136, '2019-12-17', '2019-12-17', 'Hi-Tec'),
(137, '2019-12-17', '2019-12-17', 'High Peak'),
(138, '2019-12-17', '2019-12-17', 'Holmenkol'),
(139, '2019-12-17', '2019-12-17', 'Horsefeathers'),
(140, '2019-12-17', '2019-12-17', 'Hotronic'),
(141, '2019-12-17', '2019-12-17', 'HS Sport'),
(142, '2019-12-17', '2019-12-17', 'Husky'),
(143, '2019-12-17', '2019-12-17', 'Hydro-force'),
(144, '2019-12-17', '2019-12-17', 'Hyper'),
(145, '2019-12-17', '2019-12-17', 'I'),
(146, '2019-12-17', '2019-12-17', 'Ice Bug'),
(147, '2019-12-17', '2019-12-17', 'Icebreaker'),
(148, '2019-12-17', '2019-12-17', 'Imexpo'),
(149, '2019-12-17', '2019-12-17', 'Impac'),
(150, '2019-12-17', '2019-12-17', 'Instinct'),
(151, '2019-12-17', '2019-12-17', 'Isostar'),
(152, '2019-12-17', '2019-12-17', 'J'),
(153, '2019-12-17', '2019-12-17', 'JD BUG'),
(154, '2019-12-17', '2019-12-17', 'Jetboil'),
(155, '2019-12-17', '2019-12-17', 'JR GEAR'),
(156, '2019-12-17', '2019-12-17', 'Julbo'),
(157, '2019-12-17', '2019-12-17', 'Junior League'),
(158, '2019-12-17', '2019-12-17', 'Junsd'),
(159, '2019-12-17', '2019-12-17', 'K'),
(160, '2019-12-17', '2019-12-17', 'K2'),
(161, '2019-12-17', '2019-12-17', 'Kama'),
(162, '2019-12-17', '2019-12-17', 'Kappa'),
(163, '2019-12-17', '2019-12-17', 'KARI TRAA'),
(164, '2019-12-17', '2019-12-17', 'Karpos'),
(165, '2019-12-17', '2019-12-17', 'Kästle'),
(166, '2019-12-17', '2019-12-17', 'Keen'),
(167, '2019-12-17', '2019-12-17', 'Keller'),
(168, '2019-12-17', '2019-12-17', 'Keller Combative'),
(169, '2019-12-17', '2019-12-17', 'Kenda'),
(170, '2019-12-17', '2019-12-17', 'Kensis'),
(171, '2019-12-17', '2019-12-17', 'Kjus'),
(172, '2019-12-17', '2019-12-17', 'Klimatex'),
(173, '2019-12-17', '2019-12-17', 'KMC'),
(174, '2019-12-17', '2019-12-17', 'Komperdell'),
(175, '2019-12-17', '2019-12-17', 'Kona'),
(176, '2019-12-17', '2019-12-17', 'L'),
(177, '2019-12-17', '2019-12-17', 'La Siesta'),
(178, '2019-12-17', '2019-12-17', 'Laceto'),
(179, '2019-12-17', '2019-12-17', 'Lafuma'),
(180, '2019-12-17', '2019-12-17', 'LAMAX'),
(181, '2019-12-17', '2019-12-17', 'Lange'),
(182, '2019-12-17', '2019-12-17', 'Leatherman'),
(183, '2019-12-17', '2019-12-17', 'Ledlenser'),
(184, '2019-12-17', '2019-12-17', 'Leki'),
(185, '2019-12-17', '2019-12-17', 'Lenz'),
(186, '2019-12-17', '2019-12-17', 'Level'),
(187, '2019-12-17', '2019-12-17', 'Levelwear'),
(188, '2019-12-17', '2019-12-17', 'Lewro'),
(189, '2019-12-17', '2019-12-17', 'Lezyne'),
(190, '2019-12-17', '2019-12-17', 'Lifefit'),
(191, '2019-12-17', '2019-12-17', 'Light my fire'),
(192, '2019-12-17', '2019-12-17', 'Line'),
(193, '2019-12-17', '2019-12-17', 'Loap'),
(194, '2019-12-17', '2019-12-17', 'Loman'),
(195, '2019-12-17', '2019-12-17', 'Long Island'),
(196, '2019-12-17', '2019-12-17', 'Lotto'),
(197, '2019-12-17', '2019-12-17', 'Luma'),
(198, '2019-12-17', '2019-12-17', 'M'),
(199, '2019-12-17', '2019-12-17', 'M-Wave'),
(200, '2019-12-17', '2019-12-17', 'Madshus'),
(202, '2019-12-17', '2019-12-17', 'Mango'),
(203, '2019-12-17', '2019-12-17', 'Marimex'),
(204, '2019-12-17', '2019-12-17', 'Marker'),
(205, '2019-12-17', '2019-12-17', 'McDavid'),
(206, '2019-12-17', '2019-12-17', 'Merrell'),
(207, '2019-12-17', '2019-12-17', 'Met'),
(208, '2019-12-17', '2019-12-17', 'Mico'),
(209, '2019-12-17', '2019-12-17', 'Mikasa'),
(210, '2019-12-17', '2019-12-17', 'Miller'),
(211, '2019-12-17', '2019-12-17', 'Mitas'),
(212, '2019-12-17', '2019-12-17', 'Miton'),
(213, '2019-12-17', '2019-12-17', 'Mizuno'),
(214, '2019-12-17', '2019-12-17', 'Molten'),
(215, '2019-12-17', '2019-12-17', 'Mosquitno'),
(216, '2019-12-17', '2019-12-17', 'Motorex'),
(217, '2019-12-17', '2019-12-17', 'Mud'),
(218, '2019-12-17', '2019-12-17', 'Mysterious'),
(219, '2019-12-17', '2019-12-17', 'N'),
(220, '2019-12-17', '2019-12-17', 'Neon'),
(221, '2019-12-17', '2019-12-17', 'New Balance'),
(222, '2019-12-17', '2019-12-17', 'New Era'),
(223, '2019-12-17', '2019-12-17', 'Nexelo'),
(224, '2019-12-17', '2019-12-17', 'Nike'),
(225, '2019-12-17', '2019-12-17', 'Nordica'),
(226, '2019-12-17', '2019-12-17', 'Northfinder'),
(227, '2019-12-17', '2019-12-17', 'Northwave'),
(228, '2019-12-17', '2019-12-17', 'Novatec'),
(229, '2019-12-17', '2019-12-17', 'Numero Uno'),
(230, '2019-12-17', '2019-12-17', 'Nutrend'),
(231, '2019-12-17', '2019-12-17', 'NUUI'),
(232, '2019-12-17', '2019-12-17', 'O'),
(233, '2019-12-17', '2019-12-17', 'O Neill'),
(234, '2019-12-17', '2019-12-17', 'O style'),
(235, '2019-12-17', '2019-12-17', 'Oakley'),
(236, '2019-12-17', '2019-12-17', 'Ocean Reef'),
(237, '2019-12-17', '2019-12-17', 'Odlo'),
(238, '2019-12-17', '2019-12-17', 'Odor-Aid'),
(239, '2019-12-17', '2019-12-17', 'Olpran'),
(240, '2019-12-17', '2019-12-17', 'Olympia'),
(241, '2019-12-17', '2019-12-17', 'ON'),
(242, '2019-12-17', '2019-12-17', 'One'),
(243, '2019-12-17', '2019-12-17', 'One Way'),
(244, '2019-12-17', '2019-12-17', 'Opro'),
(245, '2019-12-17', '2019-12-17', 'Osprey'),
(246, '2019-12-17', '2019-12-17', 'Outdoor Play'),
(247, '2019-12-17', '2019-12-17', 'Oxdog'),
(248, '2019-12-17', '2019-12-17', 'Oxybag'),
(249, '2019-12-17', '2019-12-17', 'P'),
(250, '2019-12-17', '2019-12-17', 'Peltonen'),
(251, '2019-12-17', '2019-12-17', 'Picture'),
(252, '2019-12-17', '2019-12-17', 'Pidilidi'),
(253, '2019-12-17', '2019-12-17', 'Plastkon'),
(254, '2019-12-17', '2019-12-17', 'POC'),
(255, '2019-12-17', '2019-12-17', 'POLAR'),
(256, '2019-12-17', '2019-12-17', 'Polaroid'),
(257, '2019-12-17', '2019-12-17', 'Powerbar'),
(258, '2019-12-17', '2019-12-17', 'Powerslide'),
(259, '2019-12-17', '2019-12-17', 'PrAna'),
(260, '2019-12-17', '2019-12-17', 'Private Label'),
(261, '2019-12-17', '2019-12-17', 'Pro Kennex'),
(262, '2019-12-17', '2019-12-17', 'Profilite'),
(263, '2019-12-17', '2019-12-17', 'Profimass'),
(264, '2019-12-17', '2019-12-17', 'Progress'),
(265, '2019-12-17', '2019-12-17', 'Proma'),
(266, '2019-12-17', '2019-12-17', 'Puma'),
(267, '2019-12-17', '2019-12-17', 'Q'),
(268, '2019-12-17', '2019-12-17', 'Quick'),
(269, '2019-12-17', '2019-12-17', 'R'),
(270, '2019-12-17', '2019-12-17', 'R-JET'),
(271, '2019-12-17', '2019-12-17', 'Reaper'),
(272, '2019-12-17', '2019-12-17', 'RED BULL SPECT'),
(273, '2019-12-17', '2019-12-17', 'Reebok'),
(274, '2019-12-17', '2019-12-17', 'Reusch'),
(275, '2019-12-17', '2019-12-17', 'REX'),
(276, '2019-12-17', '2019-12-17', 'Roces'),
(277, '2019-12-17', '2019-12-17', 'Rock Experience'),
(278, '2019-12-17', '2019-12-17', 'Rodi'),
(279, '2019-12-17', '2019-12-17', 'Roeckl'),
(280, '2019-12-17', '2019-12-17', 'Rollerblade'),
(281, '2019-12-17', '2019-12-17', 'Rossignol'),
(282, '2019-12-17', '2019-12-17', 'Rosti'),
(283, '2019-12-17', '2019-12-17', 'Roto'),
(284, '2019-12-17', '2019-12-17', 'Rottefella'),
(285, '2019-12-17', '2019-12-17', 'Roxy'),
(286, '2019-12-17', '2019-12-17', 'Rsp'),
(287, '2019-12-17', '2019-12-17', 'Rucanor'),
(288, '2019-12-17', '2019-12-17', 'Runto'),
(289, '2019-12-17', '2019-12-17', 'Russell Athletic'),
(290, '2019-12-17', '2019-12-17', 'Ryde'),
(291, '2019-12-17', '2019-12-17', 'S'),
(292, '2019-12-17', '2019-12-17', 'Saekodive'),
(293, '2019-12-17', '2019-12-17', 'Salice'),
(294, '2019-12-17', '2019-12-17', 'Salmiro'),
(295, '2019-12-17', '2019-12-17', 'Salomon'),
(296, '2019-12-17', '2019-12-17', 'Sapim'),
(297, '2019-12-17', '2019-12-17', 'Saucony'),
(298, '2019-12-17', '2019-12-17', 'Schwalbe'),
(299, '2019-12-17', '2019-12-17', 'Scott'),
(300, '2019-12-17', '2019-12-17', 'Sedco'),
(301, '2019-12-17', '2019-12-17', 'Select'),
(302, '2019-12-17', '2019-12-17', 'Selle Italia'),
(303, '2019-12-17', '2019-12-17', 'Sensor'),
(304, '2019-12-17', '2019-12-17', 'Sevylor'),
(305, '2019-12-17', '2019-12-17', 'SH+'),
(306, '2019-12-17', '2019-12-17', 'Shimano'),
(307, '2019-12-17', '2019-12-17', 'Sigma'),
(308, '2019-12-17', '2019-12-17', 'Skechers'),
(309, '2019-12-17', '2019-12-17', 'Skiffo'),
(310, '2019-12-17', '2019-12-17', 'Skivo'),
(311, '2019-12-17', '2019-12-17', 'Sks'),
(312, '2019-12-17', '2019-12-17', 'Sled Dogs'),
(313, '2019-12-17', '2019-12-17', 'Smartwool'),
(314, '2019-12-17', '2019-12-17', 'Smith'),
(315, '2019-12-17', '2019-12-17', 'Sorel'),
(316, '2019-12-17', '2019-12-17', 'SP Connect'),
(317, '2019-12-17', '2019-12-17', 'Spalding'),
(318, '2019-12-17', '2019-12-17', 'Specter'),
(319, '2019-12-17', '2019-12-17', 'Speedo'),
(320, '2019-12-17', '2019-12-17', 'Spektrum'),
(321, '2019-12-17', '2019-12-17', 'Spirale'),
(322, '2019-12-17', '2019-12-17', 'Spokey'),
(323, '2019-12-17', '2019-12-17', 'SPORT TEAM'),
(324, '2019-12-17', '2019-12-17', 'Sporten'),
(325, '2019-12-17', '2019-12-17', 'Sportful'),
(326, '2019-12-17', '2019-12-17', 'Sportisimo'),
(327, '2019-12-17', '2019-12-17', 'Sportourer'),
(328, '2019-12-17', '2019-12-17', 'Sprinter'),
(329, '2019-12-17', '2019-12-17', 'Spyder'),
(330, '2019-12-17', '2019-12-17', 'SRAM'),
(331, '2019-12-17', '2019-12-17', 'Starling'),
(332, '2019-12-17', '2019-12-17', 'Stiga'),
(333, '2019-12-17', '2019-12-17', 'Störrvik'),
(334, '2019-12-17', '2019-12-17', 'Střída'),
(335, '2019-12-17', '2019-12-17', 'Sulov'),
(336, '2019-12-17', '2019-12-17', 'Suntour'),
(337, '2019-12-17', '2019-12-17', 'Suretti'),
(338, '2019-12-17', '2019-12-17', 'Suspect Animal'),
(339, '2019-12-17', '2019-12-17', 'Suunto'),
(340, '2019-12-17', '2019-12-17', 'Swans'),
(341, '2019-12-17', '2019-12-17', 'Swix'),
(342, '2019-12-17', '2019-12-17', 'T'),
(343, '2019-12-17', '2019-12-17', 'Tatonka'),
(344, '2019-12-17', '2019-12-17', 'Tecnica'),
(345, '2019-12-17', '2019-12-17', 'TECNIFIBRE'),
(346, '2019-12-17', '2019-12-17', 'Telcek'),
(347, '2019-12-17', '2019-12-17', 'Teplous'),
(348, '2019-12-17', '2019-12-17', 'The North Face'),
(349, '2019-12-17', '2019-12-17', 'The Pack Society'),
(350, '2019-12-17', '2019-12-17', 'THULE'),
(351, '2019-12-17', '2019-12-17', 'Timberland'),
(352, '2019-12-17', '2019-12-17', 'Tohos'),
(353, '2019-12-17', '2019-12-17', 'Toko'),
(354, '2019-12-17', '2019-12-17', 'Topeak'),
(355, '2019-12-17', '2019-12-17', 'TRANS'),
(356, '2019-12-17', '2019-12-17', 'Tregare'),
(357, '2019-12-17', '2019-12-17', 'Trelock'),
(358, '2019-12-17', '2019-12-17', 'Tretorn'),
(359, '2019-12-17', '2019-12-17', 'TRIMM'),
(360, '2019-12-17', '2019-12-17', 'TrueCam'),
(361, '2019-12-17', '2019-12-17', 'Truly'),
(362, '2019-12-17', '2019-12-17', 'Truvativ'),
(363, '2019-12-17', '2019-12-17', 'U'),
(364, '2019-12-17', '2019-12-17', 'UFC'),
(365, '2019-12-17', '2019-12-17', 'Uhlsport'),
(366, '2019-12-17', '2019-12-17', 'Ulvang'),
(367, '2019-12-17', '2019-12-17', 'Umbro'),
(368, '2019-12-17', '2019-12-17', 'Under Armour'),
(369, '2019-12-17', '2019-12-17', 'Unihoc'),
(370, '2019-12-17', '2019-12-17', 'Uriel'),
(371, '2019-12-17', '2019-12-17', 'Uvex'),
(372, '2019-12-17', '2019-12-17', 'V'),
(373, '2019-12-17', '2019-12-17', 'Vango'),
(374, '2019-12-17', '2019-12-17', 'Vans'),
(375, '2019-12-17', '2019-12-17', 'Venum'),
(376, '2019-12-17', '2019-12-17', 'Victor'),
(377, '2019-12-17', '2019-12-17', 'Vingi'),
(378, '2019-12-17', '2019-12-17', 'Viola'),
(379, '2019-12-17', '2019-12-17', 'Virtual Skate'),
(380, '2019-12-17', '2019-12-17', 'Volcom'),
(381, '2019-12-17', '2019-12-17', 'Völkl'),
(382, '2019-12-17', '2019-12-17', 'Voxx'),
(383, '2019-12-17', '2019-12-17', 'VP-COMPONENTS'),
(384, '2019-12-17', '2019-12-17', 'W'),
(385, '2019-12-17', '2019-12-17', 'Warner Bros'),
(386, '2019-12-17', '2019-12-17', 'Warrior'),
(387, '2019-12-17', '2019-12-17', 'Weldtite'),
(388, '2019-12-17', '2019-12-17', 'Westport'),
(389, '2019-12-17', '2019-12-17', 'Willard'),
(390, '2019-12-17', '2019-12-17', 'Wilson'),
(391, '2019-12-17', '2019-12-17', 'Windson'),
(392, '2019-12-17', '2019-12-17', 'Wish'),
(393, '2019-12-17', '2019-12-17', 'Wooloc'),
(394, '2019-12-17', '2019-12-17', 'Wrangler'),
(396, '2019-12-17', '2019-12-17', 'X-Action'),
(397, '2019-12-17', '2019-12-17', 'XD Design'),
(398, '2019-12-17', '2019-12-17', 'Xon'),
(400, '2019-12-17', '2019-12-17', 'Yedoo'),
(401, '2019-12-17', '2019-12-17', 'Yellowstone'),
(402, '2019-12-17', '2019-12-17', 'Yonex'),
(404, '2019-12-17', '2019-12-17', 'Zealot'),
(405, '2019-12-17', '2019-12-17', 'Zefal'),
(406, '2019-12-17', '2019-12-17', 'Zephyr'),
(407, '2019-12-17', '2019-12-17', 'Ziener'),
(408, '2019-12-17', '2019-12-17', 'Zoom'),
(409, '2019-12-17', '2019-12-17', 'Zray');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`idbrands`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `brands`
--
ALTER TABLE `brands`
  MODIFY `idbrands` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;