-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 02:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skillshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `classid` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` text NOT NULL,
  `attendance` tinyint(1) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`classid`, `date`, `name`, `attendance`, `note`) VALUES
(1, '2022-06-13', 'Mark Otto', 0, 'going somewhere'),
(1, '2022-06-13', 'Jacob Thornton', 1, 'abcdefghiklmnopqrstuvwxyz'),
(1, '2022-06-13', 'Larry the Bird', 0, 'abcdefghiklmnopqrstuvwxyz'),
(2, '2022-06-21', 'Mark Otto', 0, 'abcdefghiklmnopqrstuvwxyz'),
(2, '2022-06-21', 'Jacob Thornton', 0, 'abcdefghiklmnopqrstuvwxyz'),
(2, '2022-06-21', 'Larry the Bird', 0, 'abcdefghiklmnopqrstuvwxyz'),
(3, '2022-06-23', 'Mark Otto', 0, 'abcdefghiklmnopqrstuvwxyz'),
(3, '2022-06-23', 'Jacob Thornton', 0, 'abcdefghiklmnopqrstuvwxyz'),
(3, '2022-06-23', 'Larry the Bird', 0, 'abcdefghiklmnopqrstuvwxyz'),
(1, '0000-00-00', 'this is Thor', 0, '2022-06-13'),
(1, '0000-00-00', 'Jesse Lindgard', 0, 'testiing 1 2 3 4'),
(1, '2022-06-13', 'Jesse', 1, '1 2 3 4 5 ');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `class_id` int(11) NOT NULL,
  `TeacherID` int(11) NOT NULL,
  `class_type` text NOT NULL,
  `info` text NOT NULL,
  `class_name` text NOT NULL,
  `contact_info` text NOT NULL,
  `owner_name` text DEFAULT NULL,
  `video` text NOT NULL,
  `Type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`class_id`, `TeacherID`, `class_type`, `info`, `class_name`, `contact_info`, `owner_name`, `video`, `Type`) VALUES
(1, 0, 'Martial arts', 'Learn to fight like Bruce Lee !!!', 'Fighting 101\r\n', '', 'teacher3', 'videos/60e96b4401e3e.mp4', ''),
(2, 0, 'Arts', 'Shading makes your character look better', 'Draw anime 101', '', '', 'videos/60e96b4401e3e.mp4', ''),
(3, 0, 'Survival skills', 'Learn to survive in the wild', 'Live like Bear Grylls', '', '', 'videos/60e96b4401e3e.mp4', ''),
(4, 0, 'Basic skills', 'Tips for life skills', 'How to basic', '', '', 'videos/60e96b4401e3e.mp4', ''),
(5, 0, 'Arts', 'Digital art for beginners', 'Digital Arts', '', '', 'videos/60e96b4401e3e.mp4', ''),
(6, 0, 'Survival skills', 'Upgrade water system', 'Better hygiene, better life', '', '', 'videos/60e96b4401e3e.mp4', ''),
(7, 0, 'Martial Arts', 'How to control fear before and during the fight', 'Self denfence', '', '', 'videos/60e96b4401e3e.mp4', ''),
(8, 0, 'Basic skills', 'Tips and tricks for beginner plumbers', 'Be a great plumber with Johnny Sins', '', '', 'videos/60e96b4401e3e.mp4', ''),
(9, 0, 'Arts', 'Tips for character design', 'Design characters', '', '', 'videos/60e96b4401e3e.mp4', ''),
(10, 0, 'Martial Arts', 'How to defend yourself when someone pushing you', 'Make your life safe', '', '', 'videos/60e96b4401e3e.mp4', ''),
(17, 0, 'martial arts', 'dfasdfsdaf', 'fsdfas', '', '', 'videos/60e96b4401e3e.mp4', ''),
(18, 0, 'martial arts', 'fasdfsdfsdfasdf', 'fasdfsdfads', '', '', 'videos/60e96b748c6c8.mp4', ''),
(19, 0, 'martial arts', 'dsafsdfasdfsd', 'fsadfasdfasdf', '', '', 'videos/60e96bb6d0b97.mp4', ''),
(20, 0, 'martial arts', 'asdfadsf', 'fsadfasdf', '', '', 'videos/60e96eb86f9db.mp4', ''),
(21, 0, 'Basic skills', 'Tips for life skills', '', '', '', 'videos/60e96b4401e3e.mp4', ''),
(22, 0, 'Basic skills', 'Tips for life skills', '', '', '', 'videos/60e96b4401e3e.mp4', ''),
(23, 0, 'Basic skills', 'Tips for life skills', '', '', '', 'videos/60e96b4401e3e.mp4', ''),
(24, 0, 'basic skills', 'az', 'asd', 'z', '', 'videos/61a5e99112c54.mp4', ''),
(25, 0, 'survival skills', 'za', 'as', 'asxz', '', 'videos/61a5e9a065322.mp4', ''),
(26, 0, 'survival skills', '0999999999', 'Survive', 'azaz', '', 'videos/61a62a8b53b6b.mp4', ''),
(27, 0, 'martial arts', '01224245', 'martial', 'as', '', 'videos/61a62ad471920.mp4', ''),
(28, 0, 'basic skills', '0218755123', 'damm', 'as', '', 'a', ''),
(29, 0, 'talents', 'facebook', 'Bad', 'tesasz', '', 'a', ''),
(30, 0, 'martial arts', 'insta', 'test2', 'asdsazxz', 'a', 'videos/61a62b988a2f4.mp4', ''),
(31, 1, '12121', 'martial arts', 'dasdsad', 'dasdsad', 'teacher3', 'videos/624ea34936700.mp4', NULL),
(32, 1, 'class 32', 'martial arts', '32', '323232323', 'teacher3', 'videos/624ea37f42dc8.mp4', NULL),
(33, 1, 'class 33 software', 'basic skills', '333333', '333333333', 'teacher3', 'videos/624ea3ea75a5a.mp4', NULL),
(34, 1, 'martial arts', 'face', 'face', 'face', 'teacher3', 'videos/624edf37e2225.mp4', NULL),
(35, 1, 'martial arts', 'dasdasd', '11 13     07 04 2022', 'asdasdasda', 'teacher3', 'videos/624f0da21dbab.mp4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `classroom_id`, `body`) VALUES
(2, 15, 1, 'hello'),
(3, 14, 1, 'xin chao'),
(4, 14, 1, 'aaaaaaaaaaaa'),
(5, 14, 1, 'bbbbbbbbbbbbbb'),
(6, 14, 1, 'dddddddddddddddd'),
(7, 14, 1, 'eeeeeeeeeeeeeee'),
(8, 15, 4, 'hello'),
(9, 16, 1, 'qwqwqwqwqwqwqwqw'),
(10, 16, 35, 'abcd'),
(11, 16, 35, 'abcd'),
(12, 16, 35, 'abcd'),
(13, 17, 1, 'aqaqaqaaqaqaqaqaqaqa'),
(14, 17, 1, 'hom nay la ngay 10 thang 4 nam 2022'),
(15, 14, 1, 'az'),
(16, 14, 1, 'az'),
(17, 14, 1, 'az');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_classroom`
--

CREATE TABLE `enrolled_classroom` (
  `StudentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `ContentID` int(11) NOT NULL,
  `ClassroomID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ContentType` text NOT NULL,
  `ContentInfo` text NOT NULL,
  `ContentName` text NOT NULL,
  `Chapter` int(11) NOT NULL,
  `Score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `RatingID` int(11) NOT NULL,
  `ClassID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `RatingScore` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`RatingID`, `ClassID`, `StudentID`, `RatingScore`) VALUES
(1, 1, 14, 8),
(2, 1, 14, 5),
(3, 1, 14, 5),
(4, 1, 14, 10),
(5, 1, 14, 10),
(6, 1, 14, 10),
(7, 1, 14, 6),
(8, 1, 14, 4),
(9, 1, 14, 4),
(10, 1, 14, 8),
(11, 1, 14, 10),
(12, 1, 14, 10),
(13, 1, 14, 5),
(15, 1, 14, 10),
(16, 1, 16, 10),
(17, 1, 16, 9),
(18, 1, 16, 10),
(19, 1, 16, 7),
(20, 1, 16, 8),
(21, 1, 16, 7);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TeacherID` int(11) NOT NULL,
  `User_Name` text NOT NULL,
  `Email` text NOT NULL,
  `hash` text NOT NULL,
  `DOB` date DEFAULT NULL,
  `Background` text DEFAULT NULL,
  `Avatar` text DEFAULT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TeacherID`, `User_Name`, `Email`, `hash`, `DOB`, `Background`, `Avatar`, `Type`) VALUES
(1, 'teacher3', 'dsjhlkfhasldkf@gmail.com', '$2y$10$1um.BI3dNoJpn4vUfwohk.vruu/IqIqdANJ6XMUa3wTAY0VpeW1d2', NULL, NULL, NULL, 'teacher'),
(2, 'student15', 'fasdfasdfsdjf@gmail.com', '$2y$10$z6pY.5GndlPjqlLggAXdw.7TGqEw0Fp.G/bBJy6aDjewjQ03yrmwu', NULL, NULL, NULL, 'student'),
(3, 'teacher44', 'fshdlfhaslkjfh@gmail.com', '$2y$10$AZ6xQcimWMh.6lDyxRyJMuFhoP4fAqKOuwnszojX.SKmPpEXDzrYy', NULL, NULL, NULL, 'teacher'),
(4, 'teacher49', 'fjshadlfhsladjfh@gmail.com', '$2y$10$.5Y2DC9xVN990jma43JxXuCqRwv.yyxtSVS1zc37wIXYSTha02H4O', NULL, NULL, NULL, 'teacher'),
(5, 'teacher12345', 'teacher12345@example.com', '$2y$10$XP5HAN2BJOFqXEx4CDC3Bu33S8iVKCEqqfqtuoWweXTs.FuO/2eTO', NULL, NULL, NULL, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `User_name` text NOT NULL,
  `Email` text NOT NULL,
  `hash` text NOT NULL,
  `Avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `User_name`, `Email`, `hash`, `Avatar`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$UlffqcCPSVA.MxBuD0qjoOG/0p/BZdf4C9uWGsXHHx3v3keGCBZWa', ''),
(2, 'Figting god', 'godfight@gmail.com', '$2y$10$o2HXT6rBID0ADAkK.dwUde4U65r62wCfpoVSs.fQuvfIBTmwQgm1a', ''),
(3, 'Borny Hitch', 'HB@gmail.com', '$2y$10$KPzqlpPtAGLM0sCIKb.XKuPAZWTIGYTZ5s7fCXqUdKZOte7FiIzsm', ''),
(4, 'Not_Bear_Grylls', 'NBG@gmail.com', '$2y$10$1tQvy8F6i1ydclX441yBUe5R6h1Sf4hu5q3ajt90kBJFBkMWtE.2S', ''),
(5, 'Johnny Sin', 'JS@gmail.com', '$2y$10$77ud6NpSLoe45hUxlAgV9O0f0.5YuiLVNxMc9nEI25ZwH3oMxBOhu', ''),
(6, 'Shindo L', 'ShindoL@gmail.com', '$2y$10$73uCIo/.eW/MDZHilMbuS.lxM/VnyJLIFF7p6HSbJri75Phlfb2Ry', ''),
(7, 'Joseph Joestar', 'bestjojo@gmail.com', '$2y$10$21nE4PEq.nlmqDPirpedeeZfWYBtwRh3zzzdKIks/JL6wewBzg5ma', ''),
(11, 'baolong', 'klasfhsjkld@gmail.com', '$2y$10$TIOJqRCuBRM9ruIgxLBnweu3zYCT16.EB/v0b0Kb1azbmH4/5wlBq', NULL),
(12, 'a', 'a@gmail.com', '$2y$10$WN9IV/RMakGKcWbM3VA1D.A21bYVRk0247jtmzrGsPMlvwS2JSxBq', NULL),
(13, 'teacher2', 'fsjdhlfashdf@gmail.com', '$2y$10$WtNoppwEdmvmP.KD1Bm1veP.fmSblcrTmmb0zN/Sc0ViQdMyIBbii', NULL),
(14, 'teacher3', 'dsjhlkfhasldkf@gmail.com', '$2y$10$1um.BI3dNoJpn4vUfwohk.vruu/IqIqdANJ6XMUa3wTAY0VpeW1d2', NULL),
(15, 'student15', 'fasdfasdfsdjf@gmail.com', '$2y$10$z6pY.5GndlPjqlLggAXdw.7TGqEw0Fp.G/bBJy6aDjewjQ03yrmwu', ''),
(16, 'teacher44', 'fshdlfhaslkjfh@gmail.com', '$2y$10$AZ6xQcimWMh.6lDyxRyJMuFhoP4fAqKOuwnszojX.SKmPpEXDzrYy', NULL),
(17, 'teacher49', 'fjshadlfhsladjfh@gmail.com', '$2y$10$.5Y2DC9xVN990jma43JxXuCqRwv.yyxtSVS1zc37wIXYSTha02H4O', NULL),
(18, 'teacher12345', 'teacher12345@example.com', '$2y$10$XP5HAN2BJOFqXEx4CDC3Bu33S8iVKCEqqfqtuoWweXTs.FuO/2eTO', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `attend_class_1` (`classid`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `TeacherID` (`TeacherID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_ibfk_1` (`classroom_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `enrolled_classroom`
--
ALTER TABLE `enrolled_classroom`
  ADD UNIQUE KEY `Fk` (`StudentID`),
  ADD KEY `FK_ER_CL` (`ClassroomID`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ContentID`),
  ADD KEY `material/quiz_ibfk_1` (`ClassroomID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RatingID`),
  ADD KEY `ClassID` (`ClassID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TeacherID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `ContentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `RatingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `TeacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attend_class_1` FOREIGN KEY (`classid`) REFERENCES `classroom` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `teacher` (`TeacherID`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrolled_classroom`
--
ALTER TABLE `enrolled_classroom`
  ADD CONSTRAINT `FK_ER_CL` FOREIGN KEY (`ClassroomID`) REFERENCES `classroom` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ER_US` FOREIGN KEY (`StudentID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`ClassroomID`) REFERENCES `classroom` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `material_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `classroom` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
