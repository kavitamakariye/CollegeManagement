-- ---------------------------------------------
-- Use table 'CollegeManagement'
-- --------------------------------------------

USE CollegeManagement;

-- ---------------------------------------------
--  Table structure for Student
-- ---------------------------------------------

CREATE TABLE Students (
  FirstName VARCHAR(30) NOT NULL,
  LastName VARCHAR(30) NOT NULL,
  Email VARCHAR(60) DEFAULT NULL,
  City VARCHAR(50) NOT NULL,
  State CHAR(2) NOT NULL DEFAULT 'PA',
  Zip MEDIUMINT(8) UNSIGNED NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  BirthDate DATE NOT NULL,
  Sex ENUM('M','F') NOT NULL,
  Date_Entered TIMESTAMP NOT NULL,
  Lunch_Cost FLOAT DEFAULT NULL,
  StudentID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- ---------------------------------------------
--  Table structure for Classes
-- ---------------------------------------------

CREATE TABLE Classes (
   Name VARCHAR(30) NOT NULL,
   ClassID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- ---------------------------------------------
--  Table structure for Absence
-- ---------------------------------------------

CREATE TABLE Absences (
   StudentID INT(10) UNSIGNED NOT NULL,
   AbsentDate DATE NOT NULL,
   PRIMARY KEY (StudentID,AbsentDate)
);

-- ---------------------------------------------
--  Table structure for Tests
-- ---------------------------------------------


CREATE TABLE Tests (
   TestDate DATE NOT NULL,
   Type ENUM('T','Q') NOT NULL,
   ClassID INT(10) UNSIGNED NOT NULL,
   TestID INT(10) UNSIGNED NOT NULL  AUTO_INCREMENT PRIMARY KEY
);

-- ---------------------------------------------
--  Table structure for Scores
-- ---------------------------------------------

CREATE TABLE Scores (
   StudentID INT(10) UNSIGNED NOT NULL,
   EventID INT(10) UNSIGNED NOT NULL,
   Score INT(11) NOT NULL,
   PRIMARY KEY (EventID, StudentID)
);






