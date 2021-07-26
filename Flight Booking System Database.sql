-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2020 at 02:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsmith14`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AddressID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Town` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `Postcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressID`, `Address`, `Town`, `City`, `CountryID`, `Postcode`) VALUES
(1, 'Evert van de Beekstraat 202', 'Schiphol', 'Amsterdam', 1, '1118'),
(2, 'El Prat de Llobregat', 'Barcelona', 'Barcelona', 2, '08820'),
(3, 'Airport Rd', 'Belfast', 'Belfast', 3, 'BT29 4AB'),
(4, 'Melli-Beese-Ring 1', 'Schönefeld', 'Berlin', 4, '12529'),
(5, 'Edinburgh', 'Edinburgh', 'Edinburgh', 3, 'EH12 9DN'),
(6, 'Route de l\'Aéroport 21', 'Le Grand-Saconnex', 'Geneva', 5, '1215'),
(7, 'Horley', 'Gatwick', 'London', 3, 'RH6 0NP'),
(8, 'Bassingbourn Rd', 'Stansted', 'London', 3, 'CM24 1QW'),
(9, 'Ferno', 'Province of Varese', 'Milan', 6, '21010'),
(10, 'Avenue Charles de Gaulle', 'Roissy-en-France', 'Paris', 7, '95700'),
(11, 'Aviatická', 'Prague', 'Prague', 8, '161 00'),
(12, '10880 Malibu Point', 'Malibu', 'Malibu', 9, '90265'),
(13, 'Sandakerveien 64', 'Nydalen', 'Oslo', 10, '0484'),
(14, '209 E St', 'Boston', 'Boston', 9, '02127'),
(15, '569 Leaman Place', 'Brooklyn', 'New York', 9, '11251'),
(16, '533 11th Ave', 'Manhattan', 'New York', 9, '10018'),
(17, '7 Mikhaila Balonina Street', 'Volgograd', 'Volvograd', 11, '400087'),
(18, '1709 Broderick St', 'San Francisco', 'San Francisco', 9, '94115');

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `AircraftID` int(11) NOT NULL,
  `Aircraft` varchar(255) NOT NULL,
  `AircraftCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`AircraftID`, `Aircraft`, `AircraftCapacity`) VALUES
(1, 'Airbus A319-100', 156),
(2, 'Airbus A320-200', 180),
(3, 'Airbus A320neo', 186),
(4, 'Airbus A321neo', 235);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `AirportID` int(11) NOT NULL,
  `AirportName` varchar(255) NOT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `AirportPhone` varchar(255) DEFAULT NULL,
  `AirportEmail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`AirportID`, `AirportName`, `AirportCode`, `AddressID`, `AirportPhone`, `AirportEmail`) VALUES
(1, 'Amsterdam Airport Schiphol', 'AMS', 1, '+31 20 794 0800', 'info@schiphol.nl'),
(2, 'Josep Tarradellas Barcelona–El Prat Airport', 'BCN', 2, '+34 913 21 10 00', 'bcninformacion@aena.es'),
(3, 'Belfast International Airport', 'BFS', 3, '+44 28 9448 4848', 'feedback@bfs.aero'),
(4, 'Berlin Brandenburg Airport', 'BER', 4, '+49 30 609160910', NULL),
(5, 'Edinburgh Airport', 'EDI', 5, '+44 844 448 8833', 'edi_feedback@baa.com'),
(6, 'Geneva Airport', 'GVA', 6, '+41 227 177 111', 'info@gva.ch'),
(7, 'Gatwick Airport', 'LGW', 7, '+44 870 000 2468', 'gatwick_feedback@baa.com'),
(8, 'London Stansted Airport', 'STN', 8, '+44 844 335 1803', 'stansted_feedback@baa.com'),
(9, 'Milan Malpensa Airport', 'MXP', 9, '+39 2 7485 2200', NULL),
(10, 'Aéroport de Paris-Charles de Gaulle', 'CDG', 10, '+33 1 4862 2280', NULL),
(11, 'Václav Havel Airport Prague', 'PRG', 11, '+420 2 2011 3314', 'info@prg.aero');

-- --------------------------------------------------------

--
-- Table structure for table `baggageprice`
--

CREATE TABLE `baggageprice` (
  `BaggagePriceID` int(11) NOT NULL,
  `BaggagePrice` decimal(12,2) NOT NULL,
  `CurrencyID` int(11) NOT NULL,
  `BaggageTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggageprice`
--

INSERT INTO `baggageprice` (`BaggagePriceID`, `BaggagePrice`, `CurrencyID`, `BaggageTypeID`) VALUES
(1, '0.00', 1, 1),
(2, '22.49', 1, 2),
(3, '24.99', 1, 3),
(4, '36.99', 1, 4),
(5, '48.99', 1, 5),
(6, '60.99', 1, 6),
(7, '45.00', 1, 7),
(8, '45.00', 1, 8),
(9, '37.00', 1, 9),
(10, '37.00', 1, 10),
(11, '45.00', 1, 11),
(12, '37.00', 1, 12),
(13, '37.00', 1, 13),
(14, '37.00', 1, 14),
(15, '45.00', 1, 15),
(16, '0.00', 2, 1),
(17, '25.49', 2, 2),
(18, '27.99', 2, 3),
(19, '39.99', 2, 4),
(20, '51.99', 2, 5),
(21, '63.99', 2, 6),
(22, '48.00', 2, 7),
(23, '48.00', 2, 8),
(24, '40.00', 2, 9),
(25, '40.00', 2, 10),
(26, '48.00', 2, 11),
(27, '40.00', 2, 12),
(28, '40.00', 2, 13),
(29, '40.00', 2, 14),
(30, '48.00', 2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `baggagetype`
--

CREATE TABLE `baggagetype` (
  `BaggageTypeID` int(11) NOT NULL,
  `BaggageType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggagetype`
--

INSERT INTO `baggagetype` (`BaggageTypeID`, `BaggageType`) VALUES
(1, 'Cabin Bag'),
(2, '15kg Hold Bag'),
(3, '23kg Hold Bag'),
(4, '26kg Hold Bag'),
(5, '29kg Hold Bag'),
(6, '32kg Hold Bag'),
(7, 'Bicycle'),
(8, 'Canoe'),
(9, 'Sporting Firearm'),
(10, 'Golf Bag'),
(11, 'Hang Glider'),
(12, 'Other Small Sports Equipment'),
(13, 'Skis and/or Boots'),
(14, 'Snowboard'),
(15, 'Windsurfing Board');

-- --------------------------------------------------------

--
-- Table structure for table `booker`
--

CREATE TABLE `booker` (
  `BookerID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `BookerFirstName` varchar(255) NOT NULL,
  `BookerLastName` varchar(255) NOT NULL,
  `BookerEmailAddress` varchar(255) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `TelephoneNumber` varchar(255) NOT NULL,
  `EmailUpdates` int(11) NOT NULL,
  `TotalPrice` decimal(12,2) NOT NULL,
  `CurrencyID` int(11) NOT NULL,
  `BookingMade` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booker`
--

INSERT INTO `booker` (`BookerID`, `TitleID`, `BookerFirstName`, `BookerLastName`, `BookerEmailAddress`, `AddressID`, `TelephoneNumber`, `EmailUpdates`, `TotalPrice`, `CurrencyID`, `BookingMade`) VALUES
(1, 1, 'Tony', 'Stark', 'tony.stark@mcu.com', 12, '+1 310 911 1010', 0, '373.90', 1, '2020-10-28 14:06:24'),
(2, 1, 'Thor', 'Odinson', 'thor.odinson@mcu.com', 13, '+47 236 57 391', 0, '101.98', 2, '2020-10-28 15:50:32'),
(3, 3, 'Carol', 'Danvers', 'carol.danvers@mcu.com', 14, '+1 617 726 1599', 0, '107.96', 2, '2020-10-28 16:45:33'),
(4, 1, 'Steve', 'Rogers', 'steve.rogers@mcu.com', 15, '+1 718 323 7410', 1, '119.96', 1, '2020-10-28 17:05:39'),
(5, 1, 'Nick', 'Fury', 'nick.fury@mcu.com', 16, '+1 917 524 0139', 1, '181.96', 2, '2020-10-28 17:41:34'),
(6, 4, 'Natasha', 'Romanoff', 'natasha.romanoff@mcu.com', 17, '+7 844 257 53 19', 0, '121.98', 2, '2020-10-29 13:49:30'),
(7, 1, 'Scott', 'Lang', 'scott.lang@mcu.com', 18, '+1 415 480 9344', 0, '307.88', 1, '2020-10-29 15:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `bookinglineitem`
--

CREATE TABLE `bookinglineitem` (
  `BookingLineItemID` int(11) NOT NULL,
  `BookerID` int(11) NOT NULL,
  `LineItemName` varchar(255) NOT NULL,
  `LineItemCost` decimal(12,2) NOT NULL,
  `CurrencyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinglineitem`
--

INSERT INTO `bookinglineitem` (`BookingLineItemID`, `BookerID`, `LineItemName`, `LineItemCost`, `CurrencyID`) VALUES
(1, 1, 'London - Milan (Adult)', '34.99', 1),
(2, 1, 'Premium Seat', '20.99', 1),
(3, 1, 'Food Voucher', '6.00', 1),
(4, 1, 'Cabin Bag', '0.00', 1),
(5, 1, 'Other Small Sports Equipment', '37.00', 1),
(6, 1, 'London - Milan (Adult)', '34.99', 1),
(7, 1, 'Premium Seat', '20.99', 1),
(8, 1, 'Food Voucher', '6.00', 1),
(9, 1, 'Cabin Bag', '0.00', 1),
(10, 1, '23kg Hold Bag', '24.99', 1),
(11, 1, 'Milan - London (Adult)', '35.99', 1),
(12, 1, 'Premium Seat', '20.99', 1),
(13, 1, 'Food Voucher', '6.00', 1),
(14, 1, 'Cabin Bag', '0.00', 1),
(15, 1, 'Other Small Sports Equipment', '37.00', 1),
(16, 1, 'Milan - London (Adult)', '35.99', 1),
(17, 1, 'Premium Seat', '20.99', 1),
(18, 1, 'Food Voucher', '6.00', 1),
(19, 1, 'Cabin Bag', '0.00', 1),
(20, 1, '23kg Hold Bag', '24.99', 1),
(21, 2, 'Berlin - Paris (Adult)', '31.99', 2),
(22, 2, 'Food Voucher', '6.00', 2),
(23, 2, 'Cabin Bag', '0.00', 2),
(24, 2, '32kg Hold Bag', '63.99', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bookingreference`
--

CREATE TABLE `bookingreference` (
  `BookingReferenceID` int(11) NOT NULL,
  `BookerID` int(11) NOT NULL,
  `BookingReference` varchar(255) NOT NULL,
  `FlightPriceID` int(11) NOT NULL,
  `ReasonForTravel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingreference`
--

INSERT INTO `bookingreference` (`BookingReferenceID`, `BookerID`, `BookingReference`, `FlightPriceID`, `ReasonForTravel`) VALUES
(1, 1, 'ABC987', 2, 0),
(2, 1, 'ABC987', 18, 0),
(3, 2, 'DAB237', 35, 1),
(4, 3, 'ACB128', 24, 1),
(5, 3, 'ACB128', 40, 1),
(6, 4, 'BFL239', 1, 0),
(7, 4, 'BFL239', 6, 0),
(8, 5, 'BCG249', 25, 0),
(9, 5, 'BCG249', 29, 0),
(10, 6, 'TZA437', 36, 1),
(11, 7, 'FSB298', 12, 1),
(12, 7, 'FSB298', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `Country`) VALUES
(1, 'Netherlands'),
(2, 'Spain'),
(3, 'United Kingdom'),
(4, 'Germany'),
(5, 'Switzerland'),
(6, 'Italy'),
(7, 'France'),
(8, 'Czech Republic'),
(9, 'United States'),
(10, 'Norway'),
(11, 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `CurrencyID` int(11) NOT NULL,
  `CurrencyName` varchar(255) NOT NULL,
  `CurrencySymbol` varchar(255) NOT NULL,
  `CurrencyCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`CurrencyID`, `CurrencyName`, `CurrencySymbol`, `CurrencyCode`) VALUES
(1, 'Pound Sterling', '£', 'GBP'),
(2, 'Euro', '€', 'EUR'),
(3, 'United States Dollar', '$', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `FlightID` int(11) NOT NULL,
  `AircraftID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL,
  `ScheduleID` int(11) NOT NULL,
  `FlightNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FlightID`, `AircraftID`, `RouteID`, `ScheduleID`, `FlightNumber`) VALUES
(1, 2, 7, 1, 'EZY262'),
(2, 3, 11, 2, 'EZY8197'),
(3, 4, 7, 3, 'EZY266'),
(4, 1, 1, 4, 'EJU7905'),
(5, 1, 3, 5, 'EZS1410'),
(6, 2, 8, 6, 'EZY255'),
(7, 3, 9, 7, 'EJU4549'),
(8, 2, 7, 8, 'EZY262'),
(9, 2, 4, 9, 'EZS1407'),
(10, 4, 7, 10, 'EZY266'),
(11, 1, 1, 11, 'EJU7905'),
(12, 1, 5, 12, 'EZY481'),
(13, 3, 9, 13, 'EJU4551'),
(14, 2, 8, 14, 'EZY255'),
(15, 3, 9, 15, 'EJU4549'),
(16, 3, 10, 16, 'EJU4552'),
(17, 3, 11, 17, 'EJU8199'),
(18, 4, 12, 18, 'EJU8198'),
(19, 1, 6, 19, 'EZY488'),
(20, 1, 2, 20, 'EJU7910');

-- --------------------------------------------------------

--
-- Table structure for table `flightprice`
--

CREATE TABLE `flightprice` (
  `FlightPriceID` int(11) NOT NULL,
  `FlightPrice` decimal(12,2) NOT NULL,
  `CurrencyID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flightprice`
--

INSERT INTO `flightprice` (`FlightPriceID`, `FlightPrice`, `CurrencyID`, `FlightID`) VALUES
(1, '19.99', 1, 1),
(2, '34.99', 1, 2),
(3, '14.99', 1, 3),
(4, '23.99', 1, 4),
(5, '18.99', 1, 5),
(6, '27.99', 1, 6),
(7, '34.99', 1, 7),
(8, '24.99', 1, 8),
(9, '28.99', 1, 9),
(10, '17.99', 1, 10),
(11, '21.99', 1, 11),
(12, '19.99', 1, 12),
(13, '29.99', 1, 13),
(14, '25.99', 1, 14),
(15, '28.99', 1, 15),
(16, '30.99', 1, 16),
(17, '29.99', 1, 17),
(18, '35.99', 1, 18),
(19, '19.99', 1, 19),
(20, '26.99', 1, 20),
(21, '22.99', 2, 1),
(22, '37.99', 2, 2),
(23, '17.99', 2, 3),
(24, '26.99', 2, 4),
(25, '21.99', 2, 5),
(26, '30.99', 2, 6),
(27, '37.99', 2, 7),
(28, '27.99', 2, 8),
(29, '31.99', 2, 9),
(30, '20.99', 2, 10),
(31, '24.99', 2, 11),
(32, '22.99', 2, 12),
(33, '32.99', 2, 13),
(34, '28.99', 2, 14),
(35, '31.99', 2, 15),
(36, '33.99', 2, 16),
(37, '32.99', 2, 17),
(38, '38.99', 2, 18),
(39, '22.99', 2, 19),
(40, '29.99', 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `nationalitycountryofissue`
--

CREATE TABLE `nationalitycountryofissue` (
  `NationalityCountryOfIssueID` int(11) NOT NULL,
  `Nationality` varchar(255) NOT NULL,
  `CountryOfIssue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationalitycountryofissue`
--

INSERT INTO `nationalitycountryofissue` (`NationalityCountryOfIssueID`, `Nationality`, `CountryOfIssue`) VALUES
(1, 'American', 'United States'),
(2, 'Norwegian', 'Norway'),
(3, 'Russian', 'Russia'),
(4, 'Canadian', 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `PassengerID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `PassengerFirstName` varchar(255) NOT NULL,
  `PassengerLastName` varchar(255) NOT NULL,
  `BookingReferenceID` int(11) NOT NULL,
  `PassportID` int(11) NOT NULL,
  `PassengerTypeID` int(11) NOT NULL,
  `SeatingID` int(11) DEFAULT NULL,
  `PremiumFare` int(11) NOT NULL,
  `TravelInsurance` int(11) NOT NULL,
  `FoodVoucher` int(11) NOT NULL,
  `EasyJetPlusNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`PassengerID`, `TitleID`, `PassengerFirstName`, `PassengerLastName`, `BookingReferenceID`, `PassportID`, `PassengerTypeID`, `SeatingID`, `PremiumFare`, `TravelInsurance`, `FoodVoucher`, `EasyJetPlusNumber`) VALUES
(1, 1, 'Tony', 'Stark', 1, 1, 1, 1, 1, 1, 1, '1R0NMAN'),
(2, 1, 'Peter', 'Parker', 1, 2, 1, 2, 1, 1, 1, NULL),
(3, 1, 'Tony', 'Stark', 2, 1, 1, 3, 1, 1, 1, '1R0NMAN'),
(4, 1, 'Peter', 'Parker', 2, 2, 1, 4, 1, 1, 1, NULL),
(5, 1, 'Thor', 'Odinson', 3, 3, 1, NULL, 0, 0, 1, NULL),
(6, 3, 'Carol', 'Danvers', 4, 4, 1, NULL, 0, 0, 0, NULL),
(7, 3, 'Carol', 'Danvers', 5, 4, 1, NULL, 0, 0, 0, NULL),
(8, 1, 'Steve', 'Rogers', 6, 5, 1, NULL, 0, 0, 1, 'CAPTA1N'),
(9, 1, 'Bucky', 'Barnes', 6, 6, 1, NULL, 0, 0, 1, NULL),
(10, 1, 'Steve', 'Rogers', 7, 5, 1, NULL, 0, 0, 1, 'CAPTA1N'),
(11, 1, 'Bucky', 'Barnes', 7, 6, 1, NULL, 0, 0, 1, NULL),
(12, 1, 'Nick', 'Fury', 8, 7, 1, 5, 1, 1, 0, 'SH13LD'),
(13, 1, 'Nick', 'Fury', 9, 7, 1, 6, 1, 1, 0, 'SH13LD'),
(14, 4, 'Natasha', 'Romanoff', 10, 8, 1, NULL, 1, 0, 0, NULL),
(15, 1, 'Scott', 'Lang', 11, 9, 1, 7, 0, 1, 0, NULL),
(16, 4, 'Hope', 'Pym', 11, 10, 1, 8, 0, 1, 0, NULL),
(17, 3, 'Cassandra', 'Lang', 11, 11, 2, 9, 0, 1, 0, NULL),
(18, 1, 'Scott', 'Lang', 12, 9, 1, 10, 0, 1, 0, NULL),
(19, 4, 'Hope', 'Pym', 12, 10, 1, 11, 0, 1, 0, NULL),
(20, 3, 'Cassandra', 'Lang', 12, 11, 2, 12, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passengerbaggage`
--

CREATE TABLE `passengerbaggage` (
  `PassengerBaggageID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `BaggagePriceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerbaggage`
--

INSERT INTO `passengerbaggage` (`PassengerBaggageID`, `PassengerID`, `BaggagePriceID`) VALUES
(1, 1, 1),
(2, 1, 12),
(3, 2, 1),
(4, 2, 3),
(5, 3, 1),
(6, 3, 12),
(7, 4, 1),
(8, 4, 3),
(9, 5, 16),
(10, 5, 21),
(11, 6, 16),
(12, 6, 17),
(13, 7, 16),
(14, 7, 17),
(15, 8, 1),
(16, 9, 1),
(17, 10, 1),
(18, 11, 1),
(19, 12, 16),
(20, 12, 24),
(21, 13, 16),
(22, 13, 24),
(23, 14, 16),
(24, 14, 19),
(25, 14, 22),
(26, 15, 1),
(27, 15, 10),
(28, 16, 1),
(29, 16, 11),
(30, 17, 1),
(31, 18, 1),
(32, 18, 10),
(33, 19, 1),
(34, 19, 11),
(35, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passengerspecialassistance`
--

CREATE TABLE `passengerspecialassistance` (
  `PassengerSpecialAssistanceID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `SpecialAssistanceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerspecialassistance`
--

INSERT INTO `passengerspecialassistance` (`PassengerSpecialAssistanceID`, `PassengerID`, `SpecialAssistanceID`) VALUES
(1, 12, 1),
(2, 13, 1),
(3, 17, 6),
(4, 20, 6);

-- --------------------------------------------------------

--
-- Table structure for table `passengertype`
--

CREATE TABLE `passengertype` (
  `PassengerTypeID` int(11) NOT NULL,
  `PassengerType` varchar(255) NOT NULL,
  `PassengerTypeDescription` varchar(2550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengertype`
--

INSERT INTO `passengertype` (`PassengerTypeID`, `PassengerType`, `PassengerTypeDescription`) VALUES
(1, 'Adult', 'Aged 16+.'),
(2, 'Child', 'Aged 2 - 15.'),
(3, 'Infant', 'Aged < 2.');

-- --------------------------------------------------------

--
-- Table structure for table `passport`
--

CREATE TABLE `passport` (
  `PassportID` int(11) NOT NULL,
  `PassportNumber` varchar(255) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `NationalityCountryOfIssueID` int(11) NOT NULL,
  `ExpiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passport`
--

INSERT INTO `passport` (`PassportID`, `PassportNumber`, `DateOfBirth`, `NationalityCountryOfIssueID`, `ExpiryDate`) VALUES
(1, 'TS8167264', '1970-05-29', 1, '2023-10-12'),
(2, 'PP4899073', '2001-08-10', 1, '2027-01-01'),
(3, 'TO7134972', '1990-01-01', 2, '2029-06-01'),
(4, 'CD9145233', '1991-04-24', 1, '2025-04-12'),
(5, 'SR0237891', '1980-07-04', 1, '2026-07-04'),
(6, 'BB8624310', '1980-10-04', 1, '2027-05-19'),
(7, 'NF9071007', '1950-07-04', 1, '2022-12-07'),
(8, 'NR2394516', '1984-11-22', 3, '2025-10-09'),
(9, 'SL7459183', '1969-04-06', 1, '2024-09-29'),
(10, 'HP1378249', '1979-08-03', 4, '2028-03-24'),
(11, 'CL3914756', '2007-07-20', 1, '2022-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `CardID` int(11) NOT NULL,
  `BookerID` int(11) NOT NULL,
  `CardType` varbinary(255) NOT NULL,
  `CardName` varbinary(255) NOT NULL,
  `CardNumber` varbinary(255) NOT NULL,
  `CardSecurityCode` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`CardID`, `BookerID`, `CardType`, `CardName`, `CardNumber`, `CardSecurityCode`) VALUES
(1, 1, 0x9d4dcc9faae07d62ddab1ae8cce9be5c, 0x9b7b912d2f5677919d0bf7f0e9bb3bf4, 0x9686a3af9bd62498a16b4b113537ad23, 0x78dbe1aed3e8718c78d26c5540b0bd85),
(2, 2, 0x106872500377d647b849e0c44d96b702, 0x74cf882b1e5aa97b5c28ccf6df4d22b7, 0xe9a8a5e1b6b8cc29abefb98fc365e82f, 0xef21d4a64dc5f2aa4d9c6ba197072429),
(3, 3, 0xeabb2145e345fe9cbad93d60624acaf1, 0x889b5b0eaf4dd92ae075eb693d2b1189, 0x22422ba69fd0c04902f20fb1e650433d, 0x84d6e303672f99a2439123d1129bed25),
(4, 4, 0xf9cccf38510c03108df319326a482edd, 0x7003b045bf55efaa5285f201db0a3ded, 0x18f989b3aa6ba9110870bf1e04aac7e2, 0xe606ac256843fe12ef249a279b1f3c88),
(5, 5, 0x3e96e17381b8ddd7765a1a97e93c8b12, 0xb8d728b30b38727959e8c1a4775b5484, 0x695eb22cdcc6b1ff5d95988b94062835, 0x1ce5bef4c0b1efd4f043cec25a216070),
(6, 6, 0x8ff303dcc99f819cf48a3253666bbe31, 0x46a82639cfca265f0e05f8dba8cde73251494e114701ad578203216a3d2642d4, 0x322010a8345cb5998a9458959eb310f2, 0xfa060fc5b7c23d490d8f68304c463c28),
(7, 7, 0x6d5254a85f5a7e83e4541ad1c0cd63ff, 0x86263a0802bf44b305ac0c77584d0718, 0xc576e7045eebe51503252b28bafd96e1, 0x75eeb99880bfa2261aad4f89450da139);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RouteID` int(11) NOT NULL,
  `RouteName` varchar(255) NOT NULL,
  `DepartureAirport` int(11) NOT NULL,
  `ArrivalAirport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`RouteID`, `RouteName`, `DepartureAirport`, `ArrivalAirport`) VALUES
(1, 'Amsterdam - Prague', 1, 11),
(2, 'Prague - Amsterdam', 11, 1),
(3, 'Barcelona - Geneva', 2, 6),
(4, 'Geneva - Barcelona', 6, 2),
(5, 'Belfast - Edinburgh', 3, 5),
(6, 'Edinburgh - Belfast', 5, 3),
(7, 'Belfast - London (Stansted)', 3, 8),
(8, 'London (Stansted) - Belfast', 8, 3),
(9, 'Berlin - Paris', 4, 10),
(10, 'Paris - Berlin', 10, 4),
(11, 'London (Gatwick) - Milan', 7, 9),
(12, 'Milan - London (Gatwick)', 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `ScheduleID` int(11) NOT NULL,
  `DepartureTime` time NOT NULL,
  `DepartureDate` date NOT NULL,
  `ArrivalTime` time NOT NULL,
  `ArrivalDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`ScheduleID`, `DepartureTime`, `DepartureDate`, `ArrivalTime`, `ArrivalDate`) VALUES
(1, '10:35:00', '2021-05-03', '11:50:00', '2021-05-03'),
(2, '12:15:00', '2021-05-03', '15:10:00', '2021-05-03'),
(3, '18:25:00', '2021-05-03', '19:45:00', '2021-05-03'),
(4, '07:25:00', '2021-05-04', '08:55:00', '2021-05-04'),
(5, '20:10:00', '2021-05-04', '21:55:00', '2021-05-04'),
(6, '07:45:00', '2021-05-05', '09:05:00', '2021-05-05'),
(7, '09:35:00', '2021-05-05', '11:30:00', '2021-05-05'),
(8, '10:35:00', '2021-05-05', '11:50:00', '2021-05-05'),
(9, '06:40:00', '2021-05-06', '08:05:00', '2021-05-06'),
(10, '18:25:00', '2021-05-06', '19:45:00', '2021-05-06'),
(11, '07:25:00', '2021-05-07', '08:55:00', '2021-05-07'),
(12, '09:05:00', '2021-05-07', '09:55:00', '2021-05-07'),
(13, '16:45:00', '2021-05-07', '18:40:00', '2021-05-07'),
(14, '07:45:00', '2021-05-08', '09:05:00', '2021-05-08'),
(15, '09:35:00', '2021-05-08', '11:30:00', '2021-05-08'),
(16, '14:50:00', '2021-05-09', '16:40:00', '2021-05-09'),
(17, '15:45:00', '2021-05-09', '18:40:00', '2021-05-09'),
(18, '18:10:00', '2021-05-09', '19:05:00', '2021-05-09'),
(19, '18:15:00', '2021-05-09', '19:05:00', '2021-05-09'),
(20, '20:55:00', '2021-05-09', '22:35:00', '2021-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `SeatID` int(11) NOT NULL,
  `SeatCode` varchar(255) NOT NULL,
  `SeatPriceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`SeatID`, `SeatCode`, `SeatPriceID`) VALUES
(1, '1A', 1),
(2, '1B', 1),
(3, '1C', 1),
(4, '1D', 1),
(5, '1E', 1),
(6, '1F', 1),
(7, '2A', 2),
(8, '2B', 2),
(9, '2C', 2),
(10, '2D', 2),
(11, '2E', 2),
(12, '2F', 2),
(13, '1A', 3),
(14, '1B', 3),
(15, '1C', 3),
(16, '1D', 3),
(17, '1E', 3),
(18, '1F', 3),
(19, '2A', 4),
(20, '2B', 4),
(21, '2C', 4),
(22, '2D', 4),
(23, '2E', 4),
(24, '2F', 4);

-- --------------------------------------------------------

--
-- Table structure for table `seating`
--

CREATE TABLE `seating` (
  `SeatingID` int(11) NOT NULL,
  `SeatID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seating`
--

INSERT INTO `seating` (`SeatingID`, `SeatID`, `FlightID`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 1, 18),
(4, 2, 18),
(5, 18, 5),
(6, 18, 9),
(7, 7, 12),
(8, 8, 12),
(9, 9, 12),
(10, 10, 19),
(11, 11, 19),
(12, 12, 19);

-- --------------------------------------------------------

--
-- Table structure for table `seatprice`
--

CREATE TABLE `seatprice` (
  `SeatPriceID` int(11) NOT NULL,
  `SeatPrice` decimal(12,2) NOT NULL,
  `CurrencyID` int(11) NOT NULL,
  `SeatTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seatprice`
--

INSERT INTO `seatprice` (`SeatPriceID`, `SeatPrice`, `CurrencyID`, `SeatTypeID`) VALUES
(1, '20.99', 1, 1),
(2, '3.99', 1, 2),
(3, '23.99', 2, 1),
(4, '5.99', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `seattype`
--

CREATE TABLE `seattype` (
  `SeatTypeID` int(11) NOT NULL,
  `SeatType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seattype`
--

INSERT INTO `seattype` (`SeatTypeID`, `SeatType`) VALUES
(1, 'Premium'),
(2, 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `specialassistance`
--

CREATE TABLE `specialassistance` (
  `SpecialAssistanceID` int(11) NOT NULL,
  `SpecialAssistance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialassistance`
--

INSERT INTO `specialassistance` (`SpecialAssistanceID`, `SpecialAssistance`) VALUES
(1, 'Blind'),
(2, 'Wheelchair User'),
(3, 'Guide Dog'),
(4, 'Deaf'),
(5, 'Intellectual Disability'),
(6, 'Nut Allergy');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `TitleID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TitleID`, `Title`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Miss'),
(4, 'Ms');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `FK_CountryIDAddress` (`CountryID`);

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`AircraftID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `FK_AddressIDAirport` (`AddressID`);

--
-- Indexes for table `baggageprice`
--
ALTER TABLE `baggageprice`
  ADD PRIMARY KEY (`BaggagePriceID`),
  ADD KEY `FK_BaggageTypeIDBaggagePrice` (`BaggageTypeID`),
  ADD KEY `FK_CurrencyIDBaggagePrice` (`CurrencyID`);

--
-- Indexes for table `baggagetype`
--
ALTER TABLE `baggagetype`
  ADD PRIMARY KEY (`BaggageTypeID`);

--
-- Indexes for table `booker`
--
ALTER TABLE `booker`
  ADD PRIMARY KEY (`BookerID`),
  ADD KEY `FK_TitleIDBooker` (`TitleID`),
  ADD KEY `FK_AddressIDBooker` (`AddressID`),
  ADD KEY `FK_CurrencyIDBooker` (`CurrencyID`);

--
-- Indexes for table `bookinglineitem`
--
ALTER TABLE `bookinglineitem`
  ADD PRIMARY KEY (`BookingLineItemID`),
  ADD KEY `FK_BookerIDLineItem` (`BookerID`),
  ADD KEY `FK_CurrencyIDLineItem` (`CurrencyID`);

--
-- Indexes for table `bookingreference`
--
ALTER TABLE `bookingreference`
  ADD PRIMARY KEY (`BookingReferenceID`),
  ADD KEY `FK_BookerIDBookingReference` (`BookerID`),
  ADD KEY `FK_FlightPriceIDBookingReference` (`FlightPriceID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`CurrencyID`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`FlightID`),
  ADD KEY `FK_AircraftID` (`AircraftID`),
  ADD KEY `FK_RouteID` (`RouteID`),
  ADD KEY `FK_ScheduleID` (`ScheduleID`);

--
-- Indexes for table `flightprice`
--
ALTER TABLE `flightprice`
  ADD PRIMARY KEY (`FlightPriceID`),
  ADD KEY `FK_CurrencyIDFlightPrice` (`CurrencyID`),
  ADD KEY `FK_FlightIDFlightPrice` (`FlightID`);

--
-- Indexes for table `nationalitycountryofissue`
--
ALTER TABLE `nationalitycountryofissue`
  ADD PRIMARY KEY (`NationalityCountryOfIssueID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `FK_TitleIDPassenger` (`TitleID`),
  ADD KEY `FK_BookingReferenceIDPassenger` (`BookingReferenceID`),
  ADD KEY `FK_PassportIDPassenger` (`PassportID`),
  ADD KEY `FK_PassengerTypePassenger` (`PassengerTypeID`),
  ADD KEY `FK_SeatingIDPassenger` (`SeatingID`);

--
-- Indexes for table `passengerbaggage`
--
ALTER TABLE `passengerbaggage`
  ADD PRIMARY KEY (`PassengerBaggageID`),
  ADD KEY `FK_PassengerIDBaggage` (`PassengerID`),
  ADD KEY `FK_BaggagePriceIDPassBag` (`BaggagePriceID`);

--
-- Indexes for table `passengerspecialassistance`
--
ALTER TABLE `passengerspecialassistance`
  ADD PRIMARY KEY (`PassengerSpecialAssistanceID`),
  ADD KEY `FK_PassengerIDSpecialAssistance` (`PassengerID`),
  ADD KEY `FK_SpecialAssistanceIDPassenger` (`SpecialAssistanceID`);

--
-- Indexes for table `passengertype`
--
ALTER TABLE `passengertype`
  ADD PRIMARY KEY (`PassengerTypeID`);

--
-- Indexes for table `passport`
--
ALTER TABLE `passport`
  ADD PRIMARY KEY (`PassportID`),
  ADD KEY `FK_NationalityCountryOfIssueIDPassport` (`NationalityCountryOfIssueID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`CardID`),
  ADD KEY `FK_BookerIDPayment` (`BookerID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `FK_DepartureAirport` (`DepartureAirport`) USING BTREE,
  ADD KEY `FK_ ArrivalAirport` (`ArrivalAirport`) USING BTREE;

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`ScheduleID`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `FK_SeatPriceIDSeat` (`SeatPriceID`);

--
-- Indexes for table `seating`
--
ALTER TABLE `seating`
  ADD PRIMARY KEY (`SeatingID`),
  ADD KEY `FK_SeatIDSeating` (`SeatID`),
  ADD KEY `FK_FlightIDSeatingTest` (`FlightID`);

--
-- Indexes for table `seatprice`
--
ALTER TABLE `seatprice`
  ADD PRIMARY KEY (`SeatPriceID`),
  ADD KEY `FK_CurrencyIDSeatPrice` (`CurrencyID`),
  ADD KEY `FK_SeatTypeIDSeatPrice` (`SeatTypeID`);

--
-- Indexes for table `seattype`
--
ALTER TABLE `seattype`
  ADD PRIMARY KEY (`SeatTypeID`);

--
-- Indexes for table `specialassistance`
--
ALTER TABLE `specialassistance`
  ADD PRIMARY KEY (`SpecialAssistanceID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`TitleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `aircraft`
--
ALTER TABLE `aircraft`
  MODIFY `AircraftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `baggageprice`
--
ALTER TABLE `baggageprice`
  MODIFY `BaggagePriceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `baggagetype`
--
ALTER TABLE `baggagetype`
  MODIFY `BaggageTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booker`
--
ALTER TABLE `booker`
  MODIFY `BookerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bookinglineitem`
--
ALTER TABLE `bookinglineitem`
  MODIFY `BookingLineItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bookingreference`
--
ALTER TABLE `bookingreference`
  MODIFY `BookingReferenceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `CurrencyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `flightprice`
--
ALTER TABLE `flightprice`
  MODIFY `FlightPriceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `nationalitycountryofissue`
--
ALTER TABLE `nationalitycountryofissue`
  MODIFY `NationalityCountryOfIssueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `PassengerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `passengerbaggage`
--
ALTER TABLE `passengerbaggage`
  MODIFY `PassengerBaggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `passengerspecialassistance`
--
ALTER TABLE `passengerspecialassistance`
  MODIFY `PassengerSpecialAssistanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passengertype`
--
ALTER TABLE `passengertype`
  MODIFY `PassengerTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passport`
--
ALTER TABLE `passport`
  MODIFY `PassportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `CardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `ScheduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `SeatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `seating`
--
ALTER TABLE `seating`
  MODIFY `SeatingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seatprice`
--
ALTER TABLE `seatprice`
  MODIFY `SeatPriceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seattype`
--
ALTER TABLE `seattype`
  MODIFY `SeatTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `specialassistance`
--
ALTER TABLE `specialassistance`
  MODIFY `SpecialAssistanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_CountryIDAddress` FOREIGN KEY (`CountryID`) REFERENCES `country` (`CountryID`);

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `FK_AddressIDAirport` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Constraints for table `baggageprice`
--
ALTER TABLE `baggageprice`
  ADD CONSTRAINT `FK_BaggageTypeIDBaggagePrice` FOREIGN KEY (`BaggageTypeID`) REFERENCES `baggagetype` (`BaggageTypeID`),
  ADD CONSTRAINT `FK_CurrencyIDBaggagePrice` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`);

--
-- Constraints for table `booker`
--
ALTER TABLE `booker`
  ADD CONSTRAINT `FK_AddressIDBooker` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`),
  ADD CONSTRAINT `FK_CurrencyIDBooker` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`),
  ADD CONSTRAINT `FK_TitleIDBooker` FOREIGN KEY (`TitleID`) REFERENCES `title` (`TitleID`);

--
-- Constraints for table `bookinglineitem`
--
ALTER TABLE `bookinglineitem`
  ADD CONSTRAINT `FK_BookerIDLineItem` FOREIGN KEY (`BookerID`) REFERENCES `booker` (`BookerID`),
  ADD CONSTRAINT `FK_CurrencyIDLineItem` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`);

--
-- Constraints for table `bookingreference`
--
ALTER TABLE `bookingreference`
  ADD CONSTRAINT `FK_BookerIDBookingReference` FOREIGN KEY (`BookerID`) REFERENCES `booker` (`BookerID`),
  ADD CONSTRAINT `FK_FlightPriceIDBookingReference` FOREIGN KEY (`FlightPriceID`) REFERENCES `flightprice` (`FlightPriceID`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `FK_AircraftID` FOREIGN KEY (`AircraftID`) REFERENCES `aircraft` (`AircraftID`),
  ADD CONSTRAINT `FK_RouteID` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`),
  ADD CONSTRAINT `FK_ScheduleID` FOREIGN KEY (`ScheduleID`) REFERENCES `schedule` (`ScheduleID`);

--
-- Constraints for table `flightprice`
--
ALTER TABLE `flightprice`
  ADD CONSTRAINT `FK_CurrencyIDFlightPrice` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`),
  ADD CONSTRAINT `FK_FlightIDFlightPrice` FOREIGN KEY (`FlightID`) REFERENCES `flight` (`FlightID`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `FK_BookingReferenceIDPassenger` FOREIGN KEY (`BookingReferenceID`) REFERENCES `bookingreference` (`BookingReferenceID`),
  ADD CONSTRAINT `FK_PassengerTypePassenger` FOREIGN KEY (`PassengerTypeID`) REFERENCES `passengertype` (`PassengerTypeID`),
  ADD CONSTRAINT `FK_PassportIDPassenger` FOREIGN KEY (`PassportID`) REFERENCES `passport` (`PassportID`),
  ADD CONSTRAINT `FK_SeatingIDPassenger` FOREIGN KEY (`SeatingID`) REFERENCES `seating` (`SeatingID`),
  ADD CONSTRAINT `FK_TitleIDPassenger` FOREIGN KEY (`TitleID`) REFERENCES `title` (`TitleID`);

--
-- Constraints for table `passengerbaggage`
--
ALTER TABLE `passengerbaggage`
  ADD CONSTRAINT `FK_BaggagePriceIDPassBag` FOREIGN KEY (`BaggagePriceID`) REFERENCES `baggageprice` (`BaggagePriceID`),
  ADD CONSTRAINT `FK_PassengerIDBaggage` FOREIGN KEY (`PassengerID`) REFERENCES `passenger` (`PassengerID`);

--
-- Constraints for table `passengerspecialassistance`
--
ALTER TABLE `passengerspecialassistance`
  ADD CONSTRAINT `FK_PassengerIDSpecialAssistance` FOREIGN KEY (`PassengerID`) REFERENCES `passenger` (`PassengerID`),
  ADD CONSTRAINT `FK_SpecialAssistanceIDPassenger` FOREIGN KEY (`SpecialAssistanceID`) REFERENCES `specialassistance` (`SpecialAssistanceID`);

--
-- Constraints for table `passport`
--
ALTER TABLE `passport`
  ADD CONSTRAINT `FK_NationalityCountryOfIssueIDPassport` FOREIGN KEY (`NationalityCountryOfIssueID`) REFERENCES `nationalitycountryofissue` (`NationalityCountryOfIssueID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_BookerIDPayment` FOREIGN KEY (`BookerID`) REFERENCES `booker` (`BookerID`);

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `FK_ ArrivalAirport` FOREIGN KEY (`ArrivalAirport`) REFERENCES `airport` (`AirportID`),
  ADD CONSTRAINT `FK_DeptAirport` FOREIGN KEY (`DepartureAirport`) REFERENCES `airport` (`AirportID`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `FK_SeatPriceIDSeat` FOREIGN KEY (`SeatPriceID`) REFERENCES `seatprice` (`SeatPriceID`);

--
-- Constraints for table `seating`
--
ALTER TABLE `seating`
  ADD CONSTRAINT `FK_FlightIDSeatingTest` FOREIGN KEY (`FlightID`) REFERENCES `flight` (`FlightID`),
  ADD CONSTRAINT `FK_SeatIDSeating` FOREIGN KEY (`SeatID`) REFERENCES `seat` (`SeatID`);

--
-- Constraints for table `seatprice`
--
ALTER TABLE `seatprice`
  ADD CONSTRAINT `FK_CurrencyIDSeatPrice` FOREIGN KEY (`CurrencyID`) REFERENCES `currency` (`CurrencyID`),
  ADD CONSTRAINT `FK_SeatTypeIDSeatPrice` FOREIGN KEY (`SeatTypeID`) REFERENCES `seattype` (`SeatTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
