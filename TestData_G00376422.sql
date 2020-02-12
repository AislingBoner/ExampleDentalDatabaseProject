--

-- Database: `database project`

--

--
-- INSERT Test Data SQL script

-- 


-- --------------------------------------------------------


--

-- Dumping data for table `patient_details`

--



INSERT INTO `PATIENT_DETAILS` (`PATIENT_ID`, `NAME`,  `SURNAME`, `ADDRESS LINE 1`, `ADDRESS LINE 2`, `PHONE`, `EMAIL`, `DATE OF BIRTH`) VALUES
(01, 'Mary', 'Schmitt','54 Hill Mor', 'Clonakilty Cork', '0870521234', NULL, '1975-09-21'), 
(02, 'Ann', 'Shannon','44 Moyola Park', 'Clonakilty Cork', '0870123456', 'ann@gmail.com', '1983-02-24'),
(03, 'Marie', 'Gallagher','23 fairlands', 'Clonakilty Cork', '0872233412', 'marie@gmail.com', '1995-07-02'), 
(04, 'Martin', 'OConnor','45 Hill Estate', 'Clonakilty Cork', '0870521255', 'martin@gmail.com', '1979-11-25'),
(05, 'Edel', 'Doonan','78 Hill Mor', 'Clonakilty Cork', '0898873445', 'edel@gmail.com', '1999-04-01'),
(06, 'Enda', 'Dolan','101 Hill Estate', 'Clonakilty Cork', '0870671234', 'enda@gmail.com', '2001-03-05'),
(07, 'Aisling', 'Healy','22 Newcastle Rd', 'Clonakilty Cork', '0870521234', 'aisling@gmail.com', '2005-12-27'),
(08, 'James', 'Moran','55 Hynes Ave', 'Clonakilty Cork', '0850421234', 'james@gmail.com', '1970-01-21'),
(09, 'Andrew', 'McGovern','63 Hill Mor', 'Clonakilty Cork', '0897786679', 'andrew@gmail.com', '2002-09-16'),
(10, 'Mary', 'Boyle','50 fairlands', 'Clonakilty Cork', '0831235544', 'maryb@gmail.com', '1999-02-13'),
(11, 'Morris', 'McManus','72 fairlands', NULL, '0870555667', 'morris@gmail.com', '2000-08-26'),
(12, 'Melissa', 'Foley','26 Barna', 'Clonakilty Cork', '0872344455', 'melissa@gmail.com', '1965-09-21'),
(13, 'Aoife', 'Keady','59 Hill Estate', 'Clonakilty Cork', '0870527788', 'aoife@gmail.com', '1997-02-22'),
(14, 'Frank', 'MacIntyre','19 fairlands', 'Clonakilty Cork', '0890001234', 'frank@gmail.com', '1998-05-07'),
(15, 'Francis', 'Bonner','11 Moyola Park', 'Clonakilty Cork', '0837052123', 'francis@gmail.com', '1996-11-20'),
(16, 'Fionn', 'Gerahty','03 Hill Estate', 'Clonakilty Cork', '0891233445', 'fionn@gmail.com', '1978-06-23'),
(17, 'Amy', 'Mckenna','88 Newcastle Rd', 'Clonakilty Cork', '0870529999', 'amy@gmail.com', '1993-10-24'),
(18, 'Dean', 'Doherty','99 Hill Estate', 'Clonakilty Cork', '0850256677', 'dean@gmail.com', '1992-01-19'),
(19, 'Cathal', 'Molloy','49 Newcastle Rd', 'Clonakilty Cork', '0870544444', 'cathal@gmail.com', '1991-03-21'),
(20, 'Dan', 'Hegarty','01 Spiddal Estate', 'Clonakilty Cork', '0890501222', 'dan@gmail.com', '1998-02-04');



--

-- Dumping data for table `appointment_details`

--



INSERT INTO `APPOINTMENT_DETAILS` (`APP_ID`, `PATIENT_ID`,  `DATE`, `TIME`, `TREAT_ID`, `CANCELLED`) VALUES
(100000, 01, '2019-01-21', '12:30', 10001, 'NO'), 
(100001, 09, '2019-01-21', '11:00', 10002,'NO'),
(100002, 04, '2019-01-21','13:30', 10002, 'NO'), 
(100003, 15, '2019-01-23','15:30', 10003, 'NO'),
(100004, 20, '2019-02-22','09:00', 10003, 'NO'),
(100005, 16, '2019-02-22','09:30', 10004, 'YES'),
(100006, 16, '2019-02-23','09:00', 10004, 'NO'),
(100007, 03, '2019-03-10','09:00', 10005, 'YES'),
(100008, 03, '2019-03-11','09:00', 10005, 'NO'),
(100009, 04, '2019-03-23','10:30', 10007, 'NO'),
(100010, 17,'2019-03-23','11:00', 10003, 'NO'),
(100011, 10, '2019-03-23','12:30', 10003, 'NO'),
(100012, 01, '2019-03-24','12:30',  10004, 'NO'), 
(100013, 08, '2019-03-25','11:00', 10004, 'NO'),
(100014, 05, '2019-03-25','13:30', 10001, 'NO'), 
(100015, 14, '2019-03-25','15:30', 10005, 'YES'),
(100016, 14, '2019-03-26','09:30', 10005, 'NO'),
(100017, 20, '2019-03-27','09:00', 10005, 'NO'),
(100018, 16, '2019-03-27','09:30', 10003, 'NO'),
(100019, 07, '2019-03-28','09:00', 10002, 'NO'),
(100020, 04, '2019-03-29','10:30', 10002, 'NO'),
(100021, 17,'2019-03-29','11:00', 10001, 'NO'),
(100022, 17, '2019-03-29','12:30', 10002, 'NO');



--

-- Dumping data for table `treatment_details`

--



INSERT INTO `treatment_details`(`TREAT_ID`, `TREAT_TYPE`, `TREAT_COST`, `SPEC_REQUIRED`) VALUES 
(10001, 'Checkup', 50.00, 'NO'),
(10002, 'Filling & Repair',75.00,'NO'), 
(10003, 'Root Canal', 60.00, 'NO'), 
(10004, 'Tooth Extraction', 65.00, 'NO'), 
(10005, 'Routine Oral Clean', 55.00, 'NO'), 
(10006, 'Oral X-ray', 70.00, 'NO'), 
(10007, 'Braces Consultation', 100.00, 'NO'), 
(10008, 'Gum Surgery Consultation', 150.00, 'YES'), 
(10009, 'Wisdom Teeth Removal', 200.00, 'YES'), 
(10010, 'Dentures', 500.00, 'YES');


--

-- Dumping data for table `specialists`

--

INSERT INTO `SPECIALISTS`(`SPEC_CODE`, `TREAT_ID`, `SPEC_NAME`, `SPEC_ADDRESS`, `SPEC_NUMBER`) VALUES 
('S_01', 10008, 'Dr.Doonan','Kinsale, Co.Cork','091553467'), 
('S_02', 10009, 'Dr.Regan','Cobh, Co.Cork','091553224'), 
('S_03', 10010, 'Dr.Gallagher','Dungarvan, Co.Cork','091553115');



--

-- Dumping data for table `specialist_referrals`

--

INSERT INTO specialist_referrals (SPEC_REF, PATIENT_ID, SPEC_CODE, DATE, TIME) VALUES 
('SR_01', 16, 'S_01', '2019-02-22', '09:30:00'),
('SR_02', 17, 'S_01', '2019-02-24', '10:30:00'),
('SR_03', 10, 'S_02', '2019-02-24', '09:30:00'),
('SR_04', 12, 'S_03', '2019-02-24', '09:00:00'),
('SR_05', 15, 'S_03', '2019-02-24', '11:00:00'),
('SR_06', 17, 'S_03', '2019-02-24', '09:00:00'),
('SR_07', 19, 'S_02', '2019-02-24', '09:00:00'),
('SR_08', 04, 'S_01', '2019-02-24', '09:30:00');




--

-- Dumping data for table `bill_invoice`

--

INSERT INTO bill_invoice (INVOICE_ID, PATIENT_ID, TREAT_COST, LATECANCEL_FEE, TOTAL_COST) VALUES
('INV_01', 01, 50.00, NULL, 50.00),
('INV_02', 09, 75.00, NULL, 75.00),
('INV_03', 04, 75.00, NULL, 75.00),
('INV_04', 15, 60.00, NULL, 60.00),
('INV_05', 20, 60.00, NULL, 60.00),
('INV_06', 16, 65.00, 10.00, 70.00),
('INV_07', 03, 55.00, 10.00, 65.00),
('INV_08', 04, 100.00, NULL, 100.00),
('INV_09', 17, 60.00, NULL, 60.00),
('INV_10', 10, 60.00, NULL, 60.00),
('INV_11', 01, 65.00, NULL, 65.00),
('INV_12', 08, 65.00, NULL, 65.00),
('INV_13', 05, 50.00, NULL, 50.00),
('INV_14', 14, 55.00, 10.00, 65.00),
('INV_15', 20, 55.00, NULL, 55.00),
('INV_16', 16, 60.00, NULL, 60.00),
('INV_17', 07, 75.00, NULL, 75.00),
('INV_18', 04, 75.00, NULL, 75.00),
('INV_19', 17, 50.00, NULL, 50.00),
('INV_20', 17, 75.00, NULL, 75.00);



--

-- Dumping data for table `payment_details`

--

INSERT INTO payment_details (PAYMENT_ID, INVOICE_ID, PAYMENT_TYPE, TOTAL_COST, PAID_NOTPAID) VALUES
('P_01', 'INV_01', 'CREDIT CARD', 50.00, 'PAID'),
('P_02', 'INV_02', 'CREDIT CARD', 75.00, 'PAID'),
('P_03', 'INV_03', 'CASH', 75.00, 'PAID'),
('P_04', 'INV_04', 'CHEQUE', 60.00, 'PAID'),
('P_05', 'INV_05', NULL, 60.00, 'NOT PAID'),
('P_06', 'INV_06', 'CREDIT CARD', 70.00, 'PAID'),
('P_07', 'INV_07', 'CASH', 65.00, 'PAID'),
('P_08', 'INV_08', 'CREDIT CARD', 100.00, 'PAID'),
('P_09', 'INV_09', 'CREDIT CARD', 60.00, 'PAID'),
('P_10', 'INV_10', 'CREDIT CARD', 60.00, 'PAID'),
('P_11', 'INV_11', 'CASH', 65.00, 'PAID'),
('P_12', 'INV_12', 'CASH', 65.00, 'PAID'),
('P_13', 'INV_13', 'CASH', 50.00, 'PAID'),
('P_14', 'INV_14', NULL, 65.00, 'NOT PAID'),
('P_15', 'INV_15', 'CHEQUE', 55.00, 'PAID'),
('P_16', 'INV_16', 'CREDIT CARD', 60.00, 'PAID'),
('P_17', 'INV_17', 'CREDIT CARD', 75.00, 'PAID'),
('P_18', 'INV_18', 'CREDIT CARD', 75.00, 'PAID'),
('P_19', 'INV_19', 'CASH', 50.00, 'PAID'),
('P_20', 'INV_20', 'CASH', 75.00, 'PAID');



