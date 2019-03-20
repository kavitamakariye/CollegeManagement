-- ---------------------------------------------
-- Use table 'CollegeManagement'
-- ---------------------------------------------

USE CollegeManagement;


-- ---------------------------------------------
-- Adding column Maxsscore to table 'Tess'
-- ---------------------------------------------

ALTER TABLE Tests
ADD COLUMN Maxscore INT NOT NULL
AFTER Type; 
