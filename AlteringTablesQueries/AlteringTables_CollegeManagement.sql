-- -----------------------------------
-- Use table 'CollegeManagement'
-- -----------------------------------

USE CollegeManagement;

-- ------------------------------------



-- ------------------------------------
-- Indexes for table `Absences`
-- ------------------------------------
ALTER TABLE `Absences`
  ADD PRIMARY KEY (`student_id`,`date`);

-- ------------------------------------PRIMARY KEY (`student_id`,`date`);
-- Indexes for table `Tests`
-- ------------------------------------
ALTER TABLE `Tests`
  ADD PRIMARY KEY (`test_id`);

-- ------------------------------------
-- Indexes for table `Scores`
-- ------------------------------------
ALTER TABLE `Scores`
  ADD PRIMARY KEY (`test_id`,`student_id`);


