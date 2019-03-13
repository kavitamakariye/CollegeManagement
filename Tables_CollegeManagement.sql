-- ---------------------------------------------
-- Use table 'CollegeManagement'
-- --------------------------------------------

USE CollegeManagement;

-- ---------------------------------------------
--  Table structure for Absence
-- ---------------------------------------------

CREATE TABLE `Absences` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
);

-- ---------------------------------------------
--  Table structure for Classes
-- ---------------------------------------------

CREATE TABLE `Classes` (
  `name` varchar(30) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL
);

-- ---------------------------------------------
--  Table structure for Scores
-- ---------------------------------------------

CREATE TABLE `Scores` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL
);

-- ---------------------------------------------
--  Table structure for Student
-- ---------------------------------------------

CREATE TABLE `Students` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `street` varchar(50) NOT NULL,
  `state` char(2) NOT NULL DEFAULT 'PA',
  `zip` mediumint(8) UNSIGNED NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` enum('M','F') NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lunch_cost` float DEFAULT NULL,
  `student_id` int(10) UNSIGNED NOT NULL
);

-- ---------------------------------------------
--  Table structure for Tests
-- ---------------------------------------------


CREATE TABLE `Tests` (
  `data` date NOT NULL,
  `type` enum('T','Q') NOT NULL,
  `maxscore` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL
);



