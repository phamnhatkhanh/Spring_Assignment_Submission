-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2023 at 08:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_assignment_submission`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` bigint(20) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `code_review_video_url` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `github_url` varchar(255) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `submitted_date` datetime(6) DEFAULT NULL,
  `code_reviewer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `branch`, `code_review_video_url`, `created_date`, `github_url`, `last_modified`, `name`, `number`, `status`, `submitted_date`, `code_reviewer_id`, `user_id`) VALUES
(2, 'main', 'https://www.youtube.com/watch?v=utXVb3R1yuE&list=PL2OrQJM8zmZ2-O_rM2Ju9zYMbY8Ta-8I4', NULL, 'https://github.dev/tp02ga/AssignmentSubmissionApp/tree/pr/3', NULL, NULL, 1, 'Completed', NULL, 2, 1),
(3, 'index=31', NULL, NULL, 'https://github.dev/tp02ga/AssignmentSubmissionApp/tree/pr/3', NULL, NULL, 8, 'In Review', NULL, 2, 1),
(4, 'api-feature-12', NULL, NULL, 'https://github.com/dalers/mywind', NULL, NULL, 3, 'Pending Submission', NULL, NULL, 1),
(5, 'backend', NULL, NULL, 'https://github.dev/ali-bouali/spring-boot-3-jwt-security', NULL, NULL, 4, 'Pending Submission', NULL, NULL, 1),
(6, 'index=31', NULL, NULL, 'https://github.dev/ali-bouali/spring-boot-3-jwt-security', NULL, NULL, 5, 'Resubmitted', NULL, NULL, 1),
(7, 'khanhpn', NULL, NULL, 'https://github.dev/ali-bouali/spring-boot-3-jwt-security', NULL, NULL, 6, 'Submitted', NULL, NULL, 1),
(8, 'tree/pr/3', NULL, NULL, 'https://github.dev/tp02ga/AssignmentSubmissionApp/tree/pr/3', NULL, NULL, 7, 'Needs Update', NULL, 2, 1),
(9, 'master', NULL, NULL, 'https://github.com/phamnhatkhanh/Spring-Boot-Ecommerce', NULL, NULL, 1, 'In Review', NULL, 2, 3),
(10, 'master', NULL, NULL, 'https://github.dev/tp02ga/AssignmentSubmissionApp/tree/pr/3', NULL, NULL, 10, 'Submitted', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `id` bigint(20) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`id`, `authority`, `user_id`) VALUES
(1, 'ROLE_STUDENT', 1),
(2, 'ROLE_CODE_REVIEWER', 2),
(3, 'ROLE_ADMIN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `created_date`, `text`, `assignment_id`, `user_id`) VALUES
(1, '2023-05-25 10:21:33.000000', 'submit code\n', 3, 1),
(2, '2023-05-25 10:21:44.000000', 'done case', 3, 1),
(3, '2023-05-25 10:22:34.000000', 'error code in line 12', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `bootcamp_duration_in_weeks` int(11) DEFAULT NULL,
  `cohort_start_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `bootcamp_duration_in_weeks`, `cohort_start_date`, `name`, `password`, `username`) VALUES
(1, NULL, '2023-05-03', 'khanhpn', '$2a$10$vHD3mHOE6GgvBaQM9gDOb.S9lLzKwj7Bxu/gKLFmG5Un15iV1hpDy', 'khanhpn'),
(2, NULL, '2023-05-12', 'CodeReviewer', '$2a$10$vHD3mHOE6GgvBaQM9gDOb.S9lLzKwj7Bxu/gKLFmG5Un15iV1hpDy', 'code_reviewer'),
(3, NULL, NULL, 'ADMIN', '$2a$10$vHD3mHOE6GgvBaQM9gDOb.S9lLzKwj7Bxu/gKLFmG5Un15iV1hpDy', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK78yjevgicje9qlhmrrhd8u1gd` (`code_reviewer_id`),
  ADD KEY `FKjbqxslhnsw4x3uc97m320ac0t` (`user_id`);

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk91upmbueyim93v469wj7b2qh` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh042x715vy568v253momwgaf8` (`assignment_id`),
  ADD KEY `FK8omq0tc18jd43bu5tjh6jvraq` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `FK78yjevgicje9qlhmrrhd8u1gd` FOREIGN KEY (`code_reviewer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKjbqxslhnsw4x3uc97m320ac0t` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FKk91upmbueyim93v469wj7b2qh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK8omq0tc18jd43bu5tjh6jvraq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKh042x715vy568v253momwgaf8` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
