-- ---------------------------------------------
-- Use table 'CollegeManagement'
-- ---------------------------------------------

USE CollegeManagement;


-- ---------------------------------------------
-- Updating column name to table 'Scores'
-- ---------------------------------------------


ALTER TABLE Scores
CHANGE EventID TestID INT(10) UNSIGNED NOT NULL;
