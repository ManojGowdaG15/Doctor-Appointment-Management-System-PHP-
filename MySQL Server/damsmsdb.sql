-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 12:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `feedback` text NOT NULL,
  `suggestions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `name`, `email`, `phone`, `feedback`, `suggestions`) VALUES
(1, 'manoj', 'manoj15@gmail.com', '9988998899', 'excellent', 'nice'),
(2, 'Manoj', 'manoj15@gmail.com', '9988998899', 'excellent', 'it was nice'),
(3, 'Dilip Sirvi', 'dilip@gmail.com', '1111122222', 'excellent', 'it was nice'),
(4, '', '', '', 'good', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(9, 657996284, 'Vidya P', 8095534540, 'vidyashreepvidya@gmail.com', '2024-04-30', '07:30:00', '9', 0, '', '2024-04-19 11:00:24', NULL, NULL, NULL),
(10, 257955410, 'Vidya P', 8095534540, 'vidyashreepvidya@gmail.com', '2024-04-23', '17:19:00', '5', 5, '', '2024-04-22 09:47:22', 'plz come sharp at 10:20 in the hospital block no 2', 'Approved', '2024-04-29 11:15:31'),
(11, 484004139, 'deeksha', 964125874, 'deeksha107@gmail.com', '2024-04-30', '10:30:00', '5', 5, 'not feeling well from 2 day ', '2024-04-29 11:14:07', 'plz come to hospetal   on the time @10 :00 block 5 and submit your reports in the counter', 'Approved', '2024-04-29 11:18:06'),
(12, 699247216, 'Dilip ', 2365476454, 'dilip@gmail.com', '2024-05-23', '07:30:00', '5', 5, 'Fever along with cold.', '2024-05-02 11:41:25', 'plz come to the clinic at 7:00 and submit ur reports in the counter as per the booking of ur time we will reffer', 'Approved', '2024-05-02 11:44:16'),
(13, 537936471, 'Manoj', 9988998899, 'manoj15@gmail.com', '2024-05-06', '14:00:00', '5', 6, 'From last few days i am suffering from the fever and running nose..', '2024-05-05 07:14:09', 'please come to clinic sharp 1:50 and submit your details in the clinic reception. ', 'Approved', '2024-05-26 14:54:20'),
(14, 877656653, 'Dilip Sirvi', 9988998899, 'dilip@gmail.com', '2024-05-14', '21:51:00', '5', 5, 'not well', '2024-05-13 14:20:17', NULL, NULL, NULL),
(15, 123500714, 'manoj', 964125874, 'manoj15@gmail.com', '2024-05-14', '21:06:00', '5', 5, 'ad', '2024-05-13 14:38:22', NULL, NULL, NULL),
(16, 844679544, 'Ram', 1111122222, 'ram123@gmail.com', '2024-05-19', '14:32:00', '5', 6, 'my son is too sick\r\n', '2024-05-18 14:59:15', NULL, NULL, NULL),
(17, 150433746, 'Manoj ', 9353441852, 'manoj15@gmail.com', '2024-06-15', '02:00:00', '5', 6, 'Doctor my son is not well from last two days, high fewer, cough and body pain.', '2024-05-26 14:45:13', 'please come to clinic sharp 1:50 and submit your details in the clinic reception.', 'Approved', '2024-05-26 14:57:14'),
(18, 481900272, 'manoj15', 9353441852, 'manoj15@gmail.com', '2024-06-14', '22:34:00', '5', 6, '', '2024-06-13 16:03:30', NULL, NULL, NULL),
(19, 438056282, 'Spoorthi', 9353441852, 'spoorti123@gmail.com', '2024-06-16', '15:28:00', '1', 18, 'heart problem', '2024-06-15 06:56:15', 'come at 1:00pm sharp and submit your records', 'Approved', '2024-06-15 07:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(1, 'Manoj', 9977665544, 'manoj15@gmail.com', '5', 'b401fa0ce7c220fa8affed4353f38c36', '2024-04-22 09:44:45'),
(6, 'Dr. Amrita Roy', 8899887755, 'amrita@gmail.com', '5', 'f925916e2754e5e03f75dd58a5733251', '2024-05-05 07:10:45'),
(7, 'Dr. Madan Kumar B J', 9353441852, 'madan@gmail.com', '2', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:28:27'),
(8, 'Dr. Sharanya Babu K', 9353441852, 'sharanya@gmail.com', '2', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:31:27'),
(9, 'Dr. Anusha H L', 9353441852, 'anusha@gmail.com', '2', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:32:56'),
(10, 'Dr. Arvind Shenoi', 9353441852, 'arvind@gmail.com', '5', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:36:43'),
(11, 'Dr. Abhishek Kulkarni', 9353441852, 'abhishek@gmail.com', '5', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:39:44'),
(12, 'Dr. Vandana Kent', 9353441852, 'vandana@gmail.com', '5', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:40:52'),
(13, 'Dr. Abhijit Bagde', 9353441852, 'abhijit@gmail.com', '5', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:46:02'),
(14, 'Dr Anjali Otiv', 9353441852, 'anjali@gmail.com', '5', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:46:50'),
(15, 'Dr Anand Subramaniam', 9353441852, 'anand@gmail.com', '6', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:47:44'),
(16, 'Dr. Nidhi Rawal', 9353441852, 'nidhi@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:48:30'),
(17, 'Dr. Ashok Seth', 9353441852, 'ashok@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:50:33'),
(18, 'Dr. Devi Shetty', 9353441852, 'deviShetty@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2024-06-02 13:51:41'),
(19, 'Dr. Sandeep Attawar', 9353441852, 'sandeep@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 07:51:47'),
(20, 'Dr. Nikhil Kumar', 9353441852, 'nikhil@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 07:53:04'),
(21, 'Dr Manoj Luthra', 9353441852, 'manoj@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 07:55:47'),
(22, 'Dr. Swathi Sanjee', 9353441852, 'swathi@gmail.com', '3', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 07:58:17'),
(23, 'Dr. Deepak Somasundar', 9353441852, 'deepak@gmail.com', '3', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 07:59:11'),
(24, 'Dr. Surbhi Chaturvedi', 9353441852, 'surbhi@gmail.com', '3', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 08:00:41'),
(25, 'Dr. Meena Gnanasekharan', 9353441852, 'meena@gmail.com', '6', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:36:40'),
(26, 'Dr. Sarika Manoli', 9353441852, 'sarika@gmail.com', '6', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:37:56'),
(27, 'Dr. Kaustubh Gosavi', 9353441852, 'kaustubh@gmail.com', '6', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:39:12'),
(28, 'Dr. Rohit Madhurkar', 9353441852, 'rohit@gmail.com', '7', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:40:30'),
(29, 'Dr. Kusuma Jayaram', 9353441852, 'kusuma@gmail.com', '7', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:42:08'),
(30, 'Dr. Sagar MP', 9353441852, 'sagar@gmail.com', '7', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:43:09'),
(31, 'Dr. Nitish Mandal', 9353441852, 'nitish@gmail.com', '8', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:44:11'),
(32, 'Dr. Shruti Bachalli', 9353441852, 'shruthi@gmail.com', '8', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:45:51'),
(33, 'Dr. Ambrish Mithal', 9353441852, 'ambrish@gmail.com', '9', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:46:51'),
(34, 'Dr. Emmy Grewal', 9353441852, 'emmy@gmail.com', '9', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:55:52'),
(35, 'Dr. Sushil Kotru', 9353441852, 'sushil@gmail.com', '9', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:56:35'),
(36, 'Dr. Shreya Sharma', 9353441852, 'shreya@gmail.com', '9', 'f925916e2754e5e03f75dd58a5733251', '2024-07-04 10:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"Times New Roman\', Times, serif\"><b><h1 style=\"color:blue;\"><i class=\"fa fa-gg\" style=\"font-size:30px;color: blue;\"></i> DAMS</h1><br>\r\n<a href=\"index.php\"><b style=\"color:blue;\">Doctor Appointment System</b></a></b><b> &nbsp;where everything seems pointless, whether it’s job, education or business, health is everyone’s topmost priority. \r\n\r\nBecause if we’re not healthy, how could we focus on other things in life?\r\n\r\nAnd to make sure everything’s going right inside our body, doctors are the one that comes first in the line. </b></font></div><div><font color=\"#202124\" face=\"Times New Roman\', Times, serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"Times New Roman\', Times, serif\"><b>This project is a smart appointment booking system that provides patients or any user an easy way of booking a doctor’s appointment online. This is a web based application that overcomes the issue of managing and booking appointments according to user’s choice or demands. The task sometimes becomes very tedious for the compounder or doctor himself in manually allotting appointments for the users as per their availability.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'No, 23, 80 Feet Main Rd, NGEF Layout, Stage 2, Naagarabhaavi, Bengaluru, Karnataka 560072\r\n', 'DAMS@gmail.com', 9945824877, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Cardiologist', '2024-05-02 14:22:33'),
(2, 'Dermatologist', '2024-05-02 14:23:42'),
(3, 'Neurologist', '2024-11-09 14:24:14'),
(5, 'Paediatrician', '2024-05-02 14:25:06'),
(6, 'Psychiatrist', '2024-05-02 14:25:31'),
(7, 'Radiologist', '2024-05-02 14:25:52'),
(8, 'Anesthesiologist', '2024-05-02 14:27:18'),
(9, 'Endocrinologist', '2024-05-02 14:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `passsword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `passsword`) VALUES
(1, 'admin@admin.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
