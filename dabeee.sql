-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2026 at 05:07 AM
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
-- Database: `dabeee`
--

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `school_year` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `subject_id`, `school_year`, `semester`) VALUES
(1, 1, 1, '2026-2027', '1st'),
(2, 1, 1, '2026-2027', '1st'),
(3, 1, 3, '2026-2027', '1st'),
(4, 2, 1, '2026-2027', '1st'),
(5, 2, 3, '2026-2027', '1st'),
(6, 3, 2, '2026-2027', '1st'),
(7, 3, 3, '2026-2027', '1st'),
(8, 4, 1, '2026-2027', '1st'),
(9, 5, 3, '2026-2027', '1st'),
(10, 5, 4, '2026-2027', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `student_id` int(11) NOT NULL,
  `student_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`student_id`, `student_no`, `student_name`, `course`) VALUES
(1, '2026-0001', 'Juan Dela Cruz', 'ACT'),
(2, '2026-0002', 'Maria Santos', 'ACT'),
(3, '2026-0003', 'Pedro Reyes', 'CT'),
(4, '2026-0004', 'Ana Garcia', 'ACT'),
(5, '2026-0005', 'Mark Cruz', 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_code`, `subject_name`) VALUES
(1, 'IT 101', 'Introduction Computing'),
(2, 'PROG101', 'Fundamental of Programming'),
(3, 'DB101', 'Database Management'),
(4, 'NET101', 'Data Communication and Networkiung'),
(5, 'WEB101', 'Web Development Fundamentals');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
