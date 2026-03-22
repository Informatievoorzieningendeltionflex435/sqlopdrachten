-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generatie Tijd: 30 Mei 2008 om 10:44
-- Server versie: 5.0.45
-- PHP Versie: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `reisbureau`
-- 

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `bestemmingen`
-- 

CREATE TABLE `bestemmingen` (
  `Bestemmingcode` char(5) collate latin1_general_ci NOT NULL default '',
  `Plaats` char(25) collate latin1_general_ci default NULL,
  `Land` char(25) collate latin1_general_ci default NULL,
  `Werelddeel` char(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`Bestemmingcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Gegevens worden uitgevoerd voor tabel `bestemmingen`
-- 

INSERT INTO `bestemmingen` (`Bestemmingcode`, `Plaats`, `Land`, `Werelddeel`) VALUES 
('ALANY', 'Alanya', 'Turkije', 'West-Europa'),
('ALEXA', 'Alexandrie', 'Egypte', 'Afrika'),
('ANTAL', 'Antalya', 'Turkije', 'West-Europa'),
('BAGHD', 'Baghdad', 'Irak', 'Azie'),
('BALI', 'Bali', 'Indonesie', 'Azie'),
('BANGK', 'Bangkok', 'Thailand', 'Azie'),
('BARCE', 'Barcelona', 'Spagne', 'West-Europa'),
('BASRA', 'Basra', 'Irak', 'Azie'),
('BENID', 'Benidorm', 'Spagne', 'West-Europa'),
('BOGOT', 'Bogota', 'Colombia', 'Zuid-Amerika'),
('BUENO', 'Buenos Aires', 'Argentinie', 'Zuid-Amerika'),
('CAIRO', 'Cairo', 'Egypte', 'Afrika'),
('CALGA', 'Calgary', 'Canada', 'Noord-Amerika'),
('CARAC', 'Caracas', 'Venezuela', 'Zuid-Amerika'),
('CARTA', 'Cartagena', 'Colombia', 'Zuid-Amerika'),
('CASSA', 'Cassablanca', 'Marokko', 'Afrika'),
('CHIAN', 'Chianmai', 'Thailand', 'Azie'),
('CORDO', 'Cordoba', 'Argentinie', 'Zuid-Amerika'),
('CORSI', 'Corsica', 'Frankrijk', 'West-Europa'),
('DALLA', 'Dallas', 'Verenigde Staten', 'Noord-Amerika'),
('DROME', 'Drome', 'Frankrijk', 'West-Europa'),
('DUSSD', 'Dusseldorf', 'Duitsland', 'West-Europa'),
('ELALA', 'El''Alamein', 'Egypte', 'Afrika'),
('GERON', 'Gerona', 'Spagne', 'West-Europa'),
('GITES', 'Gites', 'Frankrijk', 'West-Europa'),
('GRANC', 'Gran Canaria', 'Spagne', 'West-Europa'),
('HELSI', 'Helsinki', 'Finland', 'West-Europa'),
('ISTAN', 'Istanbul', 'Turkije', 'West-Europa'),
('JAKAR', 'Jakarta', 'Indonesie', 'Azie'),
('KIRKU', 'Kirkuk', 'Irak', 'Azie'),
('LIMA', 'Lima', 'Peru', 'Zuid-Amerika'),
('MADRI', 'Madrid', 'Spagne', 'West-Europa'),
('MANIL', 'Manila', 'Filippijnen', 'Azie'),
('MARDE', 'Mar del Plata', 'Argentinie', 'Zuid-Amerika'),
('MEDAN', 'Medan', 'Indonesie', 'Azie'),
('MEXIC', 'Mexico', 'Mexico', 'Noord-Amerika'),
('MIAMI', 'Miami', 'Verenigde Staten', 'Noord-Amerika'),
('MOIRA', 'Moirara', 'Spagne', 'West-Europa'),
('MONTE', 'Montevideo', 'Uruguay', 'Zuid-Amerika'),
('MONTR', 'Montreal', 'Canada', 'Noord-Amerika'),
('MOSUL', 'Mosul', 'Irak', 'Azie'),
('NEWOR', 'New Orleans', 'Verenigde Staten', 'Noord-Amerika'),
('OTTAW', 'Ottawa', 'Canada', 'Noord-Amerika'),
('PARIJ', 'Parijs', 'Frankrijk', 'West-Europa'),
('PATTA', 'Pattaya', 'Thailand', 'Azie'),
('RABAT', 'Rabat', 'Marokko', 'Afrika'),
('RECIF', 'Recife', 'Brazilie', 'Zuid-Amerika'),
('RIO', 'Rio de Janeiro', 'Brazilie', 'Zuid-Amerika'),
('SALOU', 'Salou', 'Spagne', 'West-Europa'),
('SANFR', 'San Francisco', 'Verenigde Staten', 'Noord-Amerika'),
('SANPA', 'San Pablo', 'Filippijnen', 'Azie'),
('SAOPA', 'Sao Paulo', 'Brazilie', 'Zuid-Amerika'),
('SURUB', 'Surubaya', 'Indonesie', 'Azie'),
('TANGE', 'Tanger', 'Marokko', 'Afrika'),
('THEBE', 'Thebes', 'Egypte', 'Afrika'),
('VERAC', 'Veracruz', 'Mexico', 'Noord-Amerika'),
('WASHI', 'Washington', 'Verenigde Staten', 'Noord-Amerika');

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `boekingen`
-- 

CREATE TABLE `boekingen` (
  `Boekingnummer` int(11) NOT NULL auto_increment,
  `Klantnummer` char(50) collate latin1_general_ci NOT NULL default '',
  `Reisnummer` int(11) default NULL,
  `Boekdatum` datetime default NULL,
  `Aantal volwassenen` tinyint(4) default NULL,
  `Aantal kinderen` tinyint(4) default NULL,
  `Betaald bedrag` double default NULL,
  PRIMARY KEY  (`Boekingnummer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=24 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `boekingen`
-- 

INSERT INTO `boekingen` (`Boekingnummer`, `Klantnummer`, `Reisnummer`, `Boekdatum`, `Aantal volwassenen`, `Aantal kinderen`, `Betaald bedrag`) VALUES 
(1, '1015', 7, '1999-03-23 00:00:00', 2, 0, 1300),
(2, '1011', 19, '1999-03-23 00:00:00', 1, 0, 0),
(3, '1022', 17, '1999-03-23 00:00:00', 2, 1, 2300),
(4, '1005', 9, '1999-03-23 00:00:00', 2, 0, 0),
(5, '1011', 2, '1999-03-23 00:00:00', 1, 0, 2000),
(6, '1010', 16, '1999-03-24 00:00:00', 2, 0, 4500),
(7, '1008', 14, '1999-03-24 00:00:00', 2, 2, 0),
(8, '1005', 21, '1999-03-24 00:00:00', 1, 0, 2500),
(9, '1009', 22, '1999-03-25 00:00:00', 2, 0, 3000),
(10, '1010', 17, '1999-03-27 00:00:00', 5, 3, 4500),
(11, '1014', 15, '1999-03-28 00:00:00', 4, 5, 0),
(12, '1001', 10, '1999-03-29 00:00:00', 2, 0, 3200),
(13, '1002', 10, '1999-04-02 00:00:00', 4, 1, 4500),
(14, '1013', 20, '1999-04-02 00:00:00', 2, 0, 0),
(15, '1003', 8, '1999-04-03 00:00:00', 3, 1, 4200),
(16, '1007', 19, '1999-04-03 00:00:00', 2, 0, 0),
(17, '1021', 24, '1999-04-04 00:00:00', 2, 1, 1000),
(18, '1018', 11, '1999-04-04 00:00:00', 4, 0, 0),
(19, '1004', 26, '1999-04-05 00:00:00', 2, 3, 2300),
(20, '1016', 28, '1999-04-05 00:00:00', 2, 1, 0),
(21, '1019', 13, '1999-04-05 00:00:00', 3, 1, 0),
(22, '1020', 21, '1999-04-06 00:00:00', 1, 0, 2500),
(23, '1017', 21, '1999-04-06 00:00:00', 1, 0, 2500);

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `klanten`
-- 

CREATE TABLE `klanten` (
  `Klantnummer` varchar(50) collate latin1_general_ci NOT NULL,
  `Voorletters` varchar(15) collate latin1_general_ci NOT NULL,
  `Voorvoegsel` varchar(15) collate latin1_general_ci NOT NULL,
  `Naam` char(25) collate latin1_general_ci default NULL,
  `Adres` char(25) collate latin1_general_ci default NULL,
  `Postcode` char(7) collate latin1_general_ci default NULL,
  `Plaats` char(25) collate latin1_general_ci default NULL,
  `Telefoonnummer` char(10) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`Klantnummer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Gegevens worden uitgevoerd voor tabel `klanten`
-- 

INSERT INTO `klanten` (`Klantnummer`, `Voorletters`, `Voorvoegsel`, `Naam`, `Adres`, `Postcode`, `Plaats`, `Telefoonnummer`) VALUES 
('1003', 'F.P', 'van der', 'Wubben', 'Evenaar 60', '3067 DA', 'Rotterdam', '0104205259'),
('1004', 'A.', '', 'Baggerman', 'Maisdreef 8', '3204 GM', 'Spijkenisse', '0181638923'),
('1005', 'K.', '', 'Pieterman', 'De wouden 93', '9405 HC', 'Assen', '0592358938'),
('1006', 'W.', '', 'Ruigrok', 'Pompstraat 47', '3082 RR', 'Rotterdam', '0104553694'),
('1008', 'J.M.', '', 'Ramaker', 'Heideanjer 44', '7721 HE', 'Dalfsen', '0529438493'),
('1010', 'W.A.J.', '', 'Jansen', 'Delkant 4', '5311 CJ', 'Gameren', '0418563829'),
('1011', 'P.', 'van', 'Galen', 'Nassaulaan 4', '3116 EV', 'Schiedam', '0104265028'),
('1012', 'R.', '', 'Brigman', 'Bolderwerk 6', '3134 MA', 'Vlaardingen', '0104354223'),
('1013', 'J.', '', 'Pedersen', 'Drinkwaterweg 404', '3063 JC', 'Rotterdam', '0104182219'),
('1014', 'A.', '', 'Slootweg', 'Platanendreef 6', '3137 CN', 'Vlaardingen', '0104730435'),
('1015', 'D.', '', 'Brugman', 'Edisonstraat 34', '3112 LW', 'Schiedam', '0104704951'),
('1016', 'J.', '', 'Jansen', 'Prinsenlaan 393', '3067 TX', 'Rotterdam', '0104804674'),
('1017', 'K.C.', '', 'Diepenhorst', 'Gemeenlandsedijk 5', '3216 AG', 'Abbenbroek', '0181669241'),
('1018', 'A.J.J.', '', 'Antes', 'Merelstraat 4', '4793 HA', 'Fijnaart', '0168462236'),
('1019', 'H.T.', '', 'Jansen', 'Ankerstraat 16', '7071 WH', 'Ulft', '0315681206'),
('1020', 'J.', '', 'Jansen', 'Buitenbrinkweg 54', '3853 LX', 'Ermelo', '0341553246'),
('1025', 'P.', '', 'Brouwer', 'Rijnstraat 22', '9700 AS', 'Groningen', '0503344556');

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `reizen`
-- 

CREATE TABLE `reizen` (
  `Reisnummer` int(11) NOT NULL auto_increment,
  `Bestemmingcode` char(5) collate latin1_general_ci NOT NULL default '',
  `Vertrekdatum` datetime default NULL,
  `Aantal dagen` tinyint(4) default NULL,
  `Prijs per persoon` double default NULL,
  PRIMARY KEY  (`Reisnummer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=29 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `reizen`
-- 

INSERT INTO `reizen` (`Reisnummer`, `Bestemmingcode`, `Vertrekdatum`, `Aantal dagen`, `Prijs per persoon`) VALUES 
(1, 'SANPA', '1999-05-12 00:00:00', 14, 2300),
(2, 'SANFR', '1999-05-17 00:00:00', 14, 3200),
(3, 'BALI', '1999-05-17 00:00:00', 21, 4300),
(4, 'CORSI', '1999-05-19 00:00:00', 23, 1600),
(5, 'CORDO', '1999-05-20 00:00:00', 21, 5300),
(6, 'MADRI', '1999-05-20 00:00:00', 10, 1400),
(7, 'SANPA', '1999-05-22 00:00:00', 23, 4900),
(8, 'RABAT', '1999-05-24 00:00:00', 12, 2770),
(9, 'TANGE', '1999-05-24 00:00:00', 23, 3650),
(10, 'VERAC', '1999-05-24 00:00:00', 14, 4900),
(11, 'MEDAN', '1999-05-27 00:00:00', 19, 5320),
(12, 'TANGE', '1999-05-30 00:00:00', 14, 2795),
(13, 'GRANC', '1999-05-03 00:00:00', 10, 1300),
(14, 'ISTAN', '1999-05-04 00:00:00', 14, 2773),
(15, 'HELSI', '1999-05-04 00:00:00', 12, 2399),
(16, 'MIAMI', '1999-05-05 00:00:00', 23, 5890),
(17, 'RABAT', '1999-05-05 00:00:00', 14, 2950),
(18, 'RABAT', '1999-05-05 00:00:00', 21, 3590),
(19, 'GITES', '1999-05-10 00:00:00', 14, 3200),
(20, 'LIMA', '1999-05-10 00:00:00', 28, 6790),
(21, 'BANGK', '1999-05-10 00:00:00', 22, 5395),
(22, 'SURUB', '1999-05-12 00:00:00', 28, 6666),
(23, 'CAIRO', '1999-05-12 00:00:00', 8, 1468),
(24, 'BARCE', '1999-05-12 00:00:00', 9, 1240),
(25, 'DUSSD', '1999-05-13 00:00:00', 4, 840),
(26, 'MOIRA', '1999-05-13 00:00:00', 10, 1630),
(27, 'MIAMI', '1999-05-15 00:00:00', 21, 5300),
(28, 'CORSI', '1999-05-15 00:00:00', 10, 2400);
