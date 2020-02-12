-- phpMyAdmin SQL Dump

-- version 4.8.4

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Generation Time: May 05, 2019 at 08:41 PM

-- Server version: 10.1.37
-- PHP Version: 7.3.1



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT = 0;

START TRANSACTION;

SET time_zone = "+00:00";




/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;




--

-- Database: `database project`

--


-- --------------------------------------------------------



--

-- Table structure for table `appointment_details`

--



CREATE TABLE `appointment_details` (
  `APP_ID` int(10) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `TREAT_ID` int(10) NOT NULL,
  `CANCELLED` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `appointment_details`

--



INSERT INTO `appointment_details` (`APP_ID`, `PATIENT_ID`, `DATE`, `TIME`, `TREAT_ID`, `CANCELLED`) VALUES
(100000, 1, '2019-01-21', '12:30:00', 10001, 'NO'),
(100001, 9, '2019-01-21', '11:00:00', 10002, 'NO'),
(100002, 4, '2019-01-21', '13:30:00', 10002, 'NO'),
(100003, 15, '2019-01-23', '15:30:00', 10003, 'NO'),
(100004, 20, '2019-02-22', '09:00:00', 10003, 'NO'),
(100005, 16, '2019-02-22', '09:30:00', 10004, 'YES'),
(100006, 16, '2019-02-23', '09:00:00', 10004, 'NO'),
(100007, 3, '2019-03-10', '09:00:00', 10005, 'YES'),
(100008, 3, '2019-03-11', '09:00:00', 10005, 'NO'),
(100009, 4, '2019-03-23', '10:30:00', 10007, 'NO'),
(100010, 17, '2019-03-23', '11:00:00', 10003, 'NO'),
(100011, 10, '2019-03-23', '12:30:00', 10003, 'NO'),
(100012, 1, '2019-03-24', '12:30:00', 10004, 'NO'),
(100013, 8, '2019-03-25', '11:00:00', 10004, 'NO'),
(100014, 5, '2019-03-25', '13:30:00', 10001, 'NO'),
(100015, 14, '2019-03-25', '15:30:00', 10005, 'YES'),
(100016, 14, '2019-03-26', '09:30:00', 10005, 'NO'),
(100017, 20, '2019-03-27', '09:00:00', 10005, 'NO'),
(100018, 16, '2019-03-27', '09:30:00', 10003, 'NO'),
(100019, 7, '2019-03-28', '09:00:00', 10002, 'NO'),
(100020, 4, '2019-03-29', '10:30:00', 10002, 'NO'),
(100021, 17, '2019-03-29', '11:00:00', 10001, 'NO'),
(100022, 17, '2019-03-29', '12:30:00', 10002, 'NO');



-- --------------------------------------------------------



--

-- Table structure for table `bill_invoice`

--



CREATE TABLE `bill_invoice` (
  `INVOICE_ID` varchar(15) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `TREAT_COST` decimal(5,2) DEFAULT NULL,
  `LATECANCEL_FEE` decimal(5,2) DEFAULT NULL,
  `TOTAL_COST` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `bill_invoice`

--



INSERT INTO `bill_invoice` (`INVOICE_ID`, `PATIENT_ID`, `TREAT_COST`, `LATECANCEL_FEE`, `TOTAL_COST`) VALUES
('INV_01', 1, '50.00', NULL, '50.00'),
('INV_02', 9, '75.00', NULL, '75.00'),
('INV_03', 4, '75.00', NULL, '75.00'),
('INV_04', 15, '60.00', NULL, '60.00'),
('INV_05', 20, '60.00', NULL, '60.00'),
('INV_06', 16, '65.00', '10.00', '70.00'),
('INV_07', 3, '55.00', '10.00', '65.00'),
('INV_08', 4, '100.00', NULL, '100.00'),
('INV_09', 17, '60.00', NULL, '60.00'),
('INV_10', 10, '60.00', NULL, '60.00'),
('INV_11', 1, '65.00', NULL, '65.00'),
('INV_12', 8, '65.00', NULL, '65.00'),
('INV_13', 5, '50.00', NULL, '50.00'),
('INV_14', 14, '55.00', '10.00', '65.00'),
('INV_15', 20, '55.00', NULL, '55.00'),
('INV_16', 16, '60.00', NULL, '60.00'),
('INV_17', 7, '75.00', NULL, '75.00'),
('INV_18', 4, '75.00', NULL, '75.00'),
('INV_19', 17, '50.00', NULL, '50.00'),
('INV_20', 17, '75.00', NULL, '75.00');




-- --------------------------------------------------------



--

-- Table structure for table `patient_details`

--



CREATE TABLE `patient_details` (
  `PATIENT_ID` int(10) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SURNAME` varchar(50) DEFAULT NULL,
  `ADDRESS LINE 1` varchar(50) DEFAULT NULL,
  `ADDRESS LINE 2` varchar(50) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `DATE OF BIRTH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `patient_details`

--



INSERT INTO `patient_details` (`PATIENT_ID`, `NAME`, `SURNAME`, `ADDRESS LINE 1`, `ADDRESS LINE 2`, `PHONE`, `EMAIL`, `DATE OF BIRTH`) VALUES
(1, 'Mary', 'Schmitt', '54 Hill Mor', 'Clonakilty Cork', '0870521234', NULL, '1975-09-21'),
(2, 'Ann', 'Shannon', '44 Moyola Park', 'Clonakilty Cork', '0870123456', 'ann@gmail.com', '1983-02-24'),
(3, 'Marie', 'Gallagher', '23 fairlands', 'Clonakilty Cork', '0872233412', 'marie@gmail.com', '1995-07-02'),
(4, 'Martin', 'OConnor', '45 Hill Estate', 'Clonakilty Cork', '0870521255', 'martin@gmail.com', '1979-11-25'),
(5, 'Edel', 'Doonan', '78 Hill Mor', 'Clonakilty Cork', '0898873445', 'edel@gmail.com', '1999-04-01'),
(6, 'Enda', 'Dolan', '101 Hill Estate', 'Clonakilty Cork', '0870671234', 'enda@gmail.com', '2001-03-05'),
(7, 'Aisling', 'Healy', '22 Newcastle Rd', 'Clonakilty Cork', '0870521234', 'aisling@gmail.com', '2005-12-27'),
(8, 'James', 'Moran', '55 Hynes Ave', 'Clonakilty Cork', '0850421234', 'james@gmail.com', '1970-01-21'),
(9, 'Andrew', 'McGovern', '63 Hill Mor', 'Clonakilty Cork', '0897786679', 'andrew@gmail.com', '2002-09-16'),
(10, 'Mary', 'Boyle', '50 fairlands', 'Clonakilty Cork', '0831235544', 'maryb@gmail.com', '1999-02-13'),
(11, 'Morris', 'McManus', '72 fairlands', NULL, '0870555667', 'morris@gmail.com', '2000-08-26'),
(12, 'Melissa', 'Foley', '26 Barna', 'Clonakilty Cork', '0872344455', 'melissa@gmail.com', '1965-09-21'),
(13, 'Aoife', 'Keady', '59 Hill Estate', 'Clonakilty Cork', '0870527788', 'aoife@gmail.com', '1997-02-22'),
(14, 'Frank', 'MacIntyre', '19 fairlands', 'Clonakilty Cork', '0890001234', 'frank@gmail.com', '1998-05-07'),
(15, 'Francis', 'Bonner', '11 Moyola Park', 'Clonakilty Cork', '0837052123', 'francis@gmail.com', '1996-11-20'),
(16, 'Fionn', 'Gerahty', '03 Hill Estate', 'Clonakilty Cork', '0891233445', 'fionn@gmail.com', '1978-06-23'),
(17, 'Amy', 'Mckenna', '88 Newcastle Rd', 'Clonakilty Cork', '0870529999', 'amy@gmail.com', '1993-10-24'),
(18, 'Dean', 'Doherty', '99 Hill Estate', 'Clonakilty Cork', '0850256677', 'dean@gmail.com', '1992-01-19'),
(19, 'Cathal', 'Molloy', '49 Newcastle Rd', 'Clonakilty Cork', '0870544444', 'cathal@gmail.com', '1991-03-21'),
(20, 'Dan', 'Hegarty', '01 Spiddal Estate', 'Clonakilty Cork', '0890501222', 'dan@gmail.com', '1998-02-04');




-- --------------------------------------------------------



--

-- Table structure for table `payment_details`

--



CREATE TABLE `payment_details` (
  `PAYMENT_ID` varchar(15) NOT NULL,
  `INVOICE_ID` varchar(15) NOT NULL,
  `PAYMENT_TYPE` varchar(50) DEFAULT NULL,
  `TOTAL_COST` decimal(5,2) DEFAULT NULL,
  `PAID_NOTPAID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `payment_details`

--



INSERT INTO `payment_details` (`PAYMENT_ID`, `INVOICE_ID`, `PAYMENT_TYPE`, `TOTAL_COST`, `PAID_NOTPAID`) VALUES
('P_01', 'INV_01', 'CREDIT CARD', '50.00', 'PAID'),
('P_02', 'INV_02', 'CREDIT CARD', '75.00', 'PAID'),
('P_03', 'INV_03', 'CASH', '75.00', 'PAID'),
('P_04', 'INV_04', 'CHEQUE', '60.00', 'PAID'),
('P_05', 'INV_05', NULL, '60.00', 'NOT PAID'),
('P_06', 'INV_06', 'CREDIT CARD', '70.00', 'PAID'),
('P_07', 'INV_07', 'CASH', '65.00', 'PAID'),
('P_08', 'INV_08', 'CREDIT CARD', '100.00', 'PAID'),
('P_09', 'INV_09', 'CREDIT CARD', '60.00', 'PAID'),
('P_10', 'INV_10', 'CREDIT CARD', '60.00', 'PAID'),
('P_11', 'INV_11', 'CASH', '65.00', 'PAID'),
('P_12', 'INV_12', 'CASH', '65.00', 'PAID'),
('P_13', 'INV_13', 'CASH', '50.00', 'PAID'),
('P_14', 'INV_14', NULL, '65.00', 'NOT PAID'),
('P_15', 'INV_15', 'CHEQUE', '55.00', 'PAID'),
('P_16', 'INV_16', 'CREDIT CARD', '60.00', 'PAID'),
('P_17', 'INV_17', 'CREDIT CARD', '75.00', 'PAID'),
('P_18', 'INV_18', 'CREDIT CARD', '75.00', 'PAID'),
('P_19', 'INV_19', 'CASH', '50.00', 'PAID'),
('P_20', 'INV_20', 'CASH', '75.00', 'PAID');



-- --------------------------------------------------------



--

-- Table structure for table `specialists`

--



CREATE TABLE `specialists` (
  `SPEC_CODE` varchar(15) NOT NULL,
  `TREAT_ID` int(10) NOT NULL,
  `SPEC_NAME` varchar(50) DEFAULT NULL,
  `SPEC_ADDRESS` varchar(50) DEFAULT NULL,
  `SPEC_NUMBER` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `specialists`

--



INSERT INTO `specialists` (`SPEC_CODE`, `TREAT_ID`, `SPEC_NAME`, `SPEC_ADDRESS`, `SPEC_NUMBER`) VALUES
('S_01', 10008, 'Dr.Doonan', 'Kinsale, Co.Cork', '091553467'),
('S_02', 10009, 'Dr.Regan', 'Cobh, Co.Cork', '091553224'),
('S_03', 10010, 'Dr.Gallagher', 'Dungarvan, Co.Cork', '091553115');




-- --------------------------------------------------------



--

-- Table structure for table `specialist_referrals`

--



CREATE TABLE `specialist_referrals` (
  `SPEC_REF` varchar(15) NOT NULL,
  `PATIENT_ID` int(10) NOT NULL,
  `SPEC_CODE` varchar(15) NOT NULL,
  `DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `specialist_referrals`

--



INSERT INTO `specialist_referrals` (`SPEC_REF`, `PATIENT_ID`, `SPEC_CODE`, `DATE`, `TIME`) VALUES
('SR_01', 16, 'S_01', '2019-02-22', '09:30:00'),
('SR_02', 17, 'S_01', '2019-02-24', '10:30:00'),
('SR_03', 10, 'S_02', '2019-02-24', '09:30:00'),
('SR_04', 12, 'S_03', '2019-02-24', '09:00:00'),
('SR_05', 15, 'S_03', '2019-02-24', '11:00:00'),
('SR_06', 17, 'S_03', '2019-02-24', '09:00:00'),
('SR_07', 19, 'S_02', '2019-02-24', '09:00:00'),
('SR_08', 4, 'S_01', '2019-02-24', '09:30:00');



-- --------------------------------------------------------



--

-- Table structure for table `treatment_details`

--



CREATE TABLE `treatment_details` (
  `TREAT_ID` int(10) NOT NULL,
  `TREAT_TYPE` varchar(50) DEFAULT NULL,
  `TREAT_COST` decimal(5,2) DEFAULT NULL,
  `SPEC_REQUIRED` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--

-- Dumping data for table `treatment_details`

--



INSERT INTO `treatment_details` (`TREAT_ID`, `TREAT_TYPE`, `TREAT_COST`, `SPEC_REQUIRED`) VALUES
(10001, 'Checkup', '50.00', 'NO'),
(10002, 'Filling & Repair', '75.00', 'NO'),
(10003, 'Root Canal', '60.00', 'NO'),
(10004, 'Tooth Extraction', '65.00', 'NO'),
(10005, 'Routine Oral Clean', '55.00', 'NO'),
(10006, 'Oral X-ray', '70.00', 'NO'),
(10007, 'Braces Consultation', '100.00', 'NO'),
(10008, 'Gum Surgery Consultation', '150.00', 'YES'),
(10009, 'Wisdom Teeth Removal', '200.00', 'YES'),
(10010, 'Dentures', '500.00', 'YES');





--

-- Indexes for dumped tables

--





--

-- Indexes for table `appointment_details`

--


ALTER TABLE `appointment_details`
  ADD PRIMARY KEY (`APP_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `TREAT_ID` (`TREAT_ID`);



--

-- Indexes for table `bill_invoice`

--


ALTER TABLE `bill_invoice`
  ADD PRIMARY KEY (`INVOICE_ID`),
  ADD KEY `TREAT_COST` (`TREAT_COST`,`TOTAL_COST`),
  ADD KEY `Bill_AB_2` (`PATIENT_ID`);



--

-- Indexes for table `patient_details`

--


ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`PATIENT_ID`);



--

-- Indexes for table `payment_details`

--


ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`PAYMENT_ID`),
  ADD KEY `INVOICE_ID` (`INVOICE_ID`,`TOTAL_COST`);



--

-- Indexes for table `specialists`

--


ALTER TABLE `specialists`
  ADD PRIMARY KEY (`SPEC_CODE`),
  ADD KEY `TREAT_ID` (`TREAT_ID`);



--

-- Indexes for table `specialist_referrals`

--


ALTER TABLE `specialist_referrals`
  ADD PRIMARY KEY (`SPEC_REF`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `SPEC_CODE` (`SPEC_CODE`);



--

-- Indexes for table `treatment_details`

--


ALTER TABLE `treatment_details`
  ADD PRIMARY KEY (`TREAT_ID`),
  ADD KEY `TREAT_COST` (`TREAT_COST`);






--

-- Constraints for dumped tables

--



--

-- Constraints for table `appointment_details`

--


ALTER TABLE `appointment_details`
  ADD CONSTRAINT `app_AB_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient_details` (`PATIENT_ID`),
  ADD CONSTRAINT `app_AB_2` FOREIGN KEY (`TREAT_ID`) REFERENCES `treatment_details` (`TREAT_ID`);



--

-- Constraints for table `bill_invoice`

--


ALTER TABLE `bill_invoice`
  ADD CONSTRAINT `Bill_AB_1` FOREIGN KEY (`TREAT_COST`) REFERENCES `treatment_details` (`TREAT_COST`),
  ADD CONSTRAINT `Bill_AB_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient_details` (`PATIENT_ID`);



--

-- Constraints for table `payment_details`

--

ALTER TABLE `payment_details`
  ADD CONSTRAINT `Pay_AB_1` FOREIGN KEY (`INVOICE_ID`) REFERENCES `bill_invoice` (`INVOICE_ID`);



--

-- Constraints for table `specialists`

--


ALTER TABLE `specialists`
  ADD CONSTRAINT `Spec_AB_1` FOREIGN KEY (`TREAT_ID`) REFERENCES `treatment_details` (`TREAT_ID`);



--

-- Constraints for table `specialist_referrals`

--


ALTER TABLE `specialist_referrals`
  ADD CONSTRAINT `SpecR_AB_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient_details` (`PATIENT_ID`),
  ADD CONSTRAINT `SpecR_AB_2` FOREIGN KEY (`SPEC_CODE`) REFERENCES `specialists` (`SPEC_CODE`);


COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
