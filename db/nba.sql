-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 09:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nba`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifs`
--

CREATE TABLE `notifs` (
  `id` int(3) NOT NULL,
  `teacher_id` int(2) NOT NULL,
  `forName` varchar(9) NOT NULL,
  `category` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `expiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifs`
--

INSERT INTO `notifs` (`id`, `teacher_id`, `forName`, `category`, `title`, `description`, `expiry`) VALUES
(21, 1, 'MCA 1 sem', 'Placements', 'Register for Companies', 'Visiting Companies are Samsung , Wipro , Infosys ,TCS', '2021-04-17'),
(22, 1, 'MCA 1 sem', 'Registration', 'Register for 2nd Sem', 'Students register for 2nd Sem at Pesu Academy', '2021-04-17'),
(23, 1, 'MCA 1 sem', 'Exams and Practical Schedule', 'Python Quiz', 'Python Quiz on Quizizz is Live now . Enter Code 894455', '2021-04-17'),
(24, 1, 'MCA 1 sem', 'Extra Curricular Activities', 'FAM Meeting', 'The 3rd FAM meeting is scheduled on 5/05/2021', '2021-04-17'),
(25, 2, 'MCA 1 sem', 'Placements', 'Web Dev Companies now Hiring', 'Check mail for Details ', '2021-04-17'),
(26, 2, 'MCA 1 sem', 'Registration', 'Anti Ragging', 'Register at www.anti-ragging.com and submit hardcopy', '2021-04-17'),
(27, 2, 'MCA 1 sem', 'Exams and Practical Schedule', 'Web Technology', 'Web Technology ISA 1 marks Uploaded', '2021-04-17'),
(28, 2, 'MCA 1 sem', 'Extra Curricular Activities', 'React Workshop', 'Register on Google Forms ', '2021-04-17'),
(29, 3, 'MCA 1 sem', 'Exams and Practical Schedule', 'Operating System Quiz', 'Students OS Quiz will be on Kahoot tommorow at 5:00', '2021-04-17'),
(30, 3, 'MCA 1 sem', 'Extra Curricular Activities', 'Mahatma Gandhi Memorial Day', 'Gather near the Statue', '2021-04-17'),
(31, 6, 'MCA 1 sem', 'Exams and Practical Schedule', 'Data Structres', 'The following students have missed DS labs Maunika paramesha pooja Anjali kumari darshan Brundha Ramya C Manasa p n  Siddartha k. You will have to complete and show the lab programs to the batch incharges tomorrow afternoon. Will schedule the meeting in ms teams', '2021-04-17'),
(32, 3, 'MCA 1 sem', 'Exams and Practical Schedule', 'Operating System', 'Tomorrow kahoot quiz @ 6:30 pm for unit 4 and unit 5 for OS. All of you have to join. Otherwise you will loose your marks', '2021-04-17'),
(33, 2, 'MCA 1 sem', 'Exams and Practical Schedule', 'Web Tech', 'Your special topic isa2 will be in online mode\nDetailed schedule will be communicated to you shortly', '2021-04-17'),
(34, 6, 'MCA 1 sem', 'Exams and Practical Schedule', 'DS Lab Quiz', 'The quiz is scheduled at 2 pm', '2021-04-17'),
(35, 6, 'MCA 1 sem', 'Exams and Practical Schedule', 'DS Theory Class', 'The assignment is scheduled at 11 today and is for 45 mins duration', '2021-04-17'),
(36, 1, 'MCA 1 sem', 'Exams and Practical Schedule', 'Python', 'Hello guys list of students should get ready for today interview at 8 PM in zoom Please share your mail I’d \nAlso should be presentable.', '2021-04-17'),
(37, 8, 'MCA 1 sem', 'Exams and Practical Schedule', 'Maths Assignment', 'Students check your Mail for Details and Questions on Assignment', '2021-04-17'),
(38, 1, 'MCA 3 sem', 'Placements', 'Register for Companies', 'Visiting Companies are Samsung , Wipro , Infosys ,TCS', '2021-04-17'),
(39, 1, 'MCA 3 sem', 'Registration', 'Register for 2nd Sem', 'Students register for 2nd Sem at Pesu Academy', '2021-04-17'),
(40, 1, 'MCA 3 sem', 'Exams and Practical Schedule', 'Python Quiz', 'Python Quiz on Quizizz is Live now . Enter Code 894455', '2021-04-17'),
(41, 1, 'MCA 3 sem', 'Extra Curricular Activities', 'FAM Meeting', 'The 3rd FAM meeting is scheduled on 5/05/2021', '2021-04-17'),
(42, 2, 'MCA 3 sem', 'Placements', 'Web Dev Companies now Hiring', 'Check mail for Details ', '2021-04-17'),
(43, 2, 'MCA 3 sem', 'Registration', 'Anti Ragging', 'Register at www.anti-ragging.com and submit hardcopy', '2021-04-17'),
(44, 2, 'MCA 3 sem', 'Exams and Practical Schedule', 'Web Technology', 'Web Technology ISA 1 marks Uploaded', '2021-04-17'),
(45, 2, 'MCA 3 sem', 'Extra Curricular Activities', 'React Workshop', 'Register on Google Forms ', '2021-04-17'),
(46, 3, 'MCA 3 sem', 'Exams and Practical Schedule', 'Operating System Quiz', 'Students OS Quiz will be on Kahoot tommorow at 5:00', '2021-04-17'),
(47, 3, 'MCA 3 sem', 'Extra Curricular Activities', 'Mahatma Gandhi Memorial Day', 'Gather near the Statue', '2021-04-17'),
(48, 6, 'MCA 3 sem', 'Exams and Practical Schedule', 'Data Structres', 'The following students have missed DS labs Maunika paramesha pooja Anjali kumari darshan Brundha Ramya C Manasa p n  Siddartha k. You will have to complete and show the lab programs to the batch incharges tomorrow afternoon. Will schedule the meeting in ms teams', '2021-04-17'),
(49, 3, 'MCA 3 sem', 'Exams and Practical Schedule', 'Operating System', 'Tomorrow kahoot quiz @ 6:30 pm for unit 4 and unit 5 for OS. All of you have to join. Otherwise you will loose your marks', '2021-04-17'),
(50, 2, 'MCA 3 sem', 'Exams and Practical Schedule', 'Web Tech', 'Your special topic isa2 will be in online mode\nDetailed schedule will be communicated to you shortly', '2021-04-17'),
(51, 6, 'MCA 3 sem', 'Exams and Practical Schedule', 'DS Lab Quiz', 'The quiz is scheduled at 2 pm', '2021-04-17'),
(52, 6, 'MCA 3 sem', 'Exams and Practical Schedule', 'DS Theory Class', 'The assignment is scheduled at 11 today and is for 45 mins duration', '2021-04-17'),
(53, 1, 'MCA 3 sem', 'Exams and Practical Schedule', 'Python', 'Hello guys list of students should get ready for today interview at 8 PM in zoom Please share your mail I’d \nAlso should be presentable.', '2021-04-17'),
(54, 8, 'MCA 3 sem', 'Exams and Practical Schedule', 'Maths Assignment', 'Students check your Mail for Details and Questions on Assignment', '2021-04-17'),
(55, 1, 'MCA 1 sem', 'Registration', 'Register for Tier 1 Companies', 'HI', '2021-04-17'),
(56, 1, 'MCA 1 sem', 'Exams and Practical Schedule', 'UNIT 3 ASSIGNMENT', '<img src=x onerror=alert(true)>', '2021-04-17'),
(59, 1, 'MCA 1 sem', 'Extra Curricular Activities', 'img src=\"x\" onerror=\"alert(true)\">', 'img src=\"x\" onerror=\"alert(true)\">', '2021-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(2) NOT NULL,
  `teacher_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`) VALUES
(1, 'Mr Santosh Katti'),
(2, 'Mr Tamal Dey'),
(3, 'Dr Thenmozhi'),
(6, 'Dr Lekha A'),
(7, 'Ms Archana A'),
(8, 'Ms Premalatha HM'),
(9, 'Mr Sreenivas P');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `type` int(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`type`, `name`, `email`, `password`) VALUES
(0, 'Dep Head', 'dephead@ca_pes.edu', 'dephead'),
(1, 'Teacher', 'teacher@ca-pes.edu', 'teacher'),
(2, 'Student', 'student@pes.edu', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifs`
--
ALTER TABLE `notifs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id_fkey` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifs`
--
ALTER TABLE `notifs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifs`
--
ALTER TABLE `notifs`
  ADD CONSTRAINT `teacher_id_fkey` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
