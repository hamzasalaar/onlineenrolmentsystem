# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------


#
# Delete any existing table `course`
#

DROP TABLE IF EXISTS `course`;


#
# Table structure of table `course`
#

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  KEY `DEPT_ID` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 ;

#
# Data contents of table course (27 records)
#
 
INSERT INTO `course` VALUES (21, 'BSBA Financial Management', 1, 'Financial', 'Bachelor of Science in Busines Administration ', 34, '') ; 
INSERT INTO `course` VALUES (23, 'AB Philosophy', 2, 'Philosophy', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (24, 'AB Philosophy', 3, 'Philosophy', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (25, 'AB Philosophy', 4, 'Philosophy', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (28, 'AB English', 3, 'English', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (29, 'AB English', 4, 'English', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (30, 'BSED English', 1, 'English', 'Bachelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (31, 'BSED English', 2, 'English', 'Bachelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (32, 'BSED English', 3, 'English', 'Bachelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (33, 'BSED English', 4, 'English', 'Bachelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (34, 'BSED Math', 1, 'Math', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (35, 'BSED Math', 2, 'Math', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (36, 'BSED Math', 3, 'Math', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (37, 'BSED Math', 4, 'Math', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (38, 'BSED Filipino', 1, 'Filipino', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (39, 'BSED Filipino', 2, 'Filipino', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (40, 'BSED Filipino', 3, 'Filipino', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (41, 'BSED Filipino', 4, 'Filipino', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (42, 'BEED General', 1, 'General', 'Batchelor of Elementary Education (BEED)', 35, '') ; 
INSERT INTO `course` VALUES (43, 'BEED General', 2, 'General', 'Batchelor of Elementary Education (BEED)', 35, '') ; 
INSERT INTO `course` VALUES (44, 'BEED General', 3, 'General', 'Batchelor of Elementary Education (BEED)', 35, '') ; 
INSERT INTO `course` VALUES (45, 'BEED General', 4, 'General', 'Batchelor of Elementary Education (BEED)', 35, '') ; 
INSERT INTO `course` VALUES (52, 'BSIT', 4, 'Programming', 'Bachelor of Science in Information Technology', 33, '') ; 
INSERT INTO `course` VALUES (53, 'BSIT', 1, 'None', 'Bachelor of Science in Information Technology', 34, '') ; 
INSERT INTO `course` VALUES (54, 'BSIT', 2, 'None', 'Bachelor of Science in Information Technology', 34, '') ; 
INSERT INTO `course` VALUES (55, 'BSIT', 3, 'None', 'Bachelor of Science in Information Technology', 34, '') ; 
INSERT INTO `course` VALUES (56, 'BSACT', 2, 'None', 'Bachelor of Accounting Technology', 34, '') ;
#
# End of data contents of table course
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------


#
# Delete any existing table `department`
#

DROP TABLE IF EXISTS `department`;


#
# Table structure of table `department`
#

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ;

#
# Data contents of table department (4 records)
#
 
INSERT INTO `department` VALUES (33, 'IT', 'Information Technology Department') ; 
INSERT INTO `department` VALUES (34, 'BITE', 'Business and IT Education') ; 
INSERT INTO `department` VALUES (35, 'TEA', 'Teacher Education Department') ; 
INSERT INTO `department` VALUES (36, 'arts', 'Arts Department') ;
#
# End of data contents of table department
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------


#
# Delete any existing table `grades`
#

DROP TABLE IF EXISTS `grades`;


#
# Table structure of table `grades`
#

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL,
  `SEMS` varchar(90) NOT NULL,
  PRIMARY KEY (`GRADE_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1 ;

#
# Data contents of table grades (95 records)
#
 
INSERT INTO `grades` VALUES (1, 100000056, 17, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (2, 100000056, 18, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (3, 100000056, 19, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (4, 100000056, 20, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (5, 100000056, 21, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (6, 100000056, 22, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (7, 100000056, 23, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (8, 100000056, 24, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (9, 100000057, 8, 78, 77, 89, 87, '83.6', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (10, 100000057, 40, 88, 88, 78, 76, '81.2', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (11, 100000057, 41, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (12, 100000057, 42, 76, 76, 78, 87, '80.8', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (13, 100000057, 43, 87, 77, 77, 77, '79', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (14, 100000057, 44, 78, 87, 88, 88, '85.8', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (15, 100000057, 45, 76, 76, 78, 76, '76.4', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (16, 100000057, 46, 88, 77, 98, 77, '83.4', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (17, 100000057, 47, 87, 78, 88, 88, '85.8', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (18, 100000057, 48, 87, 88, 77, 78, '81.6', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (28, 100000057, 146, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (29, 100000057, 147, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (30, 100000057, 148, 87, 87, 87, 87, '87', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (31, 100000057, 149, 98, 88, 89, 87, '89.8', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (32, 100000057, 150, 98, 98, 98, 98, '98', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (33, 100000057, 151, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (34, 100000057, 152, 87, 87, 87, 87, '87', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (35, 100000057, 153, 76, 77, 76, 77, '76.6', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (36, 100000057, 154, 78, 78, 87, 78, '79.8', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (37, 100000057, 8, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (38, 100000057, 40, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (39, 100000057, 41, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (40, 100000057, 42, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (41, 100000057, 43, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (42, 100000057, 44, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (43, 100000057, 45, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (44, 100000057, 46, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (45, 100000057, 47, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (46, 100000057, 48, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (47, 100000061, 8, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (48, 100000061, 40, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (49, 100000061, 41, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (50, 100000061, 42, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (51, 100000061, 43, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (52, 100000061, 44, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (53, 100000061, 45, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (54, 100000061, 46, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (55, 100000061, 47, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (56, 100000061, 48, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (57, 100000062, 8, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (58, 100000062, 40, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (59, 100000062, 41, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (60, 100000062, 42, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (61, 100000062, 43, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (62, 100000062, 44, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (63, 100000062, 45, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (64, 100000062, 46, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (65, 100000062, 47, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (66, 100000062, 48, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (67, 100000062, 146, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (68, 100000062, 147, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (69, 100000062, 148, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (70, 100000062, 149, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (71, 100000062, 150, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (72, 100000062, 151, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (73, 100000062, 152, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (74, 100000062, 153, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (75, 100000062, 154, 77, 77, 77, 77, '77', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (86, 100000062, 49, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (87, 100000062, 50, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (88, 100000062, 51, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (89, 100000062, 52, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (90, 100000062, 53, 99, 99, 99, 99, '99', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (91, 100000062, 54, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (92, 100000062, 55, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (93, 100000062, 56, 88, 88, 88, 88, '88', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (94, 100000062, 57, 99, 99, 99, 99, '99', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (95, 100000062, 58, 99, 99, 99, 99, '99', 'Passed', '', '') ; 
INSERT INTO `grades` VALUES (96, 100000067, 8, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (97, 100000067, 40, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (98, 100000067, 41, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (99, 100000067, 42, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (100, 100000067, 43, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (101, 100000067, 44, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (102, 100000067, 45, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (103, 100000067, 46, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (104, 100000067, 47, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (105, 100000067, 48, 0, 0, 0, 0, '0', '', '', '') ; 
INSERT INTO `grades` VALUES (106, 100000071, 56, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (107, 100000071, 61, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (108, 100000071, 56, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (109, 100000071, 61, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (110, 100000071, 56, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (111, 100000071, 61, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (112, 100000071, 72, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (113, 100000071, 42, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (114, 100000071, 92, 0, 0, 0, 0, '0', '', '', 'First') ;
#
# End of data contents of table grades
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------


#
# Delete any existing table `schoolyr`
#

DROP TABLE IF EXISTS `schoolyr`;


#
# Table structure of table `schoolyr`
#

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL AUTO_INCREMENT,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New',
  PRIMARY KEY (`SYID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

#
# Data contents of table schoolyr (21 records)
#
 
INSERT INTO `schoolyr` VALUES (1, '2016-2017', 'Second', 53, 100000056, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (2, '2016-2017', 'First', 30, 100000057, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (3, '2016-2017', 'Second', 30, 0, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (4, '2016-2017', 'Second', 30, 100000057, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (5, '2016-2017', 'First', 30, 100000057, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (6, '2016-2017', 'First', 30, 100000061, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (7, '2016-2017', 'First', 30, 100000062, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (8, '2016-2017', 'Second', 30, 100000062, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (9, '2016-2017', 'First', 31, 100000062, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (10, '2016-2017', 'First', 31, 100000062, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (11, '2016-2017', 'First', 31, 100000062, 'ENROLLED', '2016-10-01 00:00:00', '2016-10-01 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (12, '2016-2017', 'First', 30, 100000067, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (13, '2016-2017', 'First', 31, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (14, '2016-2017', 'First', 32, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (15, '2016-2017', 'First', 31, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (16, '2016-2017', 'First', 32, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (17, '2016-2017', 'First', 31, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (18, '2016-2017', 'First', 32, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (19, '2016-2017', 'First', 33, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (20, '2016-2017', 'First', 30, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ; 
INSERT INTO `schoolyr` VALUES (21, '2016-2017', 'First', 43, 100000071, 'ENROLLED', '2016-10-02 00:00:00', '2016-10-02 00:00:00', 'New') ;
#
# End of data contents of table schoolyr
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------


#
# Delete any existing table `studentschedule`
#

DROP TABLE IF EXISTS `studentschedule`;


#
# Table structure of table `studentschedule`
#

CREATE TABLE `studentschedule` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_ID` int(11) NOT NULL,
  `schedID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(30) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `ROOM` text NOT NULL,
  `CSECTION` varchar(30) NOT NULL DEFAULT 'NONE',
  `COURSE_ID` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  PRIMARY KEY (`CLASS_ID`),
  KEY `IDNO` (`IDNO`),
  KEY `schedID` (`schedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table studentschedule (0 records)
#

#
# End of data contents of table studentschedule
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------


#
# Delete any existing table `studentsubjects`
#

DROP TABLE IF EXISTS `studentsubjects`;


#
# Table structure of table `studentsubjects`
#

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL,
  `ATTEMP` int(11) NOT NULL,
  `AVERAGE` double NOT NULL,
  `OUTCOME` text NOT NULL,
  PRIMARY KEY (`STUDSUBJ_ID`),
  KEY `IDNO` (`IDNO`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1 ;

#
# Data contents of table studentsubjects (95 records)
#
 
INSERT INTO `studentsubjects` VALUES (1, 100000056, 17, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (2, 100000056, 18, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (3, 100000056, 19, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (4, 100000056, 20, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (5, 100000056, 21, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (6, 100000056, 22, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (7, 100000056, 23, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (8, 100000056, 24, 1, 'Second', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (9, 100000057, 8, 1, 'First', '2016-2017', 1, '83.6', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (10, 100000057, 40, 1, 'First', '2016-2017', 1, '81.2', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (11, 100000057, 41, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (12, 100000057, 42, 1, 'First', '2016-2017', 1, '80.80000000000001', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (13, 100000057, 43, 1, 'First', '2016-2017', 1, '79', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (14, 100000057, 44, 1, 'First', '2016-2017', 1, '85.80000000000001', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (15, 100000057, 45, 1, 'First', '2016-2017', 1, '76.4', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (16, 100000057, 46, 1, 'First', '2016-2017', 1, '83.4', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (17, 100000057, 47, 1, 'First', '2016-2017', 1, '85.80000000000001', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (18, 100000057, 48, 1, 'First', '2016-2017', 1, '81.6', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (28, 100000057, 146, 1, 'Second', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (29, 100000057, 147, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (30, 100000057, 148, 1, 'Second', '2016-2017', 1, '87', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (31, 100000057, 149, 1, 'Second', '2016-2017', 1, '89.80000000000001', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (32, 100000057, 150, 1, 'Second', '2016-2017', 1, '98', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (33, 100000057, 151, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (34, 100000057, 152, 1, 'Second', '2016-2017', 1, '87', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (35, 100000057, 153, 1, 'Second', '2016-2017', 1, '76.60000000000001', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (36, 100000057, 154, 1, 'Second', '2016-2017', 1, '79.80000000000001', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (37, 100000057, 8, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (38, 100000057, 40, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (39, 100000057, 41, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (40, 100000057, 42, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (41, 100000057, 43, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (42, 100000057, 44, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (43, 100000057, 45, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (44, 100000057, 46, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (45, 100000057, 47, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (46, 100000057, 48, 2, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (47, 100000061, 8, 1, 'First', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (48, 100000061, 40, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (49, 100000061, 41, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (50, 100000061, 42, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (51, 100000061, 43, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (52, 100000061, 44, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (53, 100000061, 45, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (54, 100000061, 46, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (55, 100000061, 47, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (56, 100000061, 48, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (57, 100000062, 8, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (58, 100000062, 40, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (59, 100000062, 41, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (60, 100000062, 42, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (61, 100000062, 43, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (62, 100000062, 44, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (63, 100000062, 45, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (64, 100000062, 46, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (65, 100000062, 47, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (66, 100000062, 48, 1, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (67, 100000062, 146, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (68, 100000062, 147, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (69, 100000062, 148, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (70, 100000062, 149, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (71, 100000062, 150, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (72, 100000062, 151, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (73, 100000062, 152, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (74, 100000062, 153, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (75, 100000062, 154, 1, 'Second', '2016-2017', 1, '77', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (86, 100000062, 49, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (87, 100000062, 50, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (88, 100000062, 51, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (89, 100000062, 52, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (90, 100000062, 53, 2, 'First', '2016-2017', 1, '99', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (91, 100000062, 54, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (92, 100000062, 55, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (93, 100000062, 56, 2, 'First', '2016-2017', 1, '88', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (94, 100000062, 57, 2, 'First', '2016-2017', 1, '99', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (95, 100000062, 58, 2, 'First', '2016-2017', 1, '99', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (96, 100000067, 8, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (97, 100000067, 40, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (98, 100000067, 41, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (99, 100000067, 42, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (100, 100000067, 43, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (101, 100000067, 44, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (102, 100000067, 45, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (103, 100000067, 46, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (104, 100000067, 47, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (105, 100000067, 48, 1, 'First', '2016-2017', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (106, 100000071, 56, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (107, 100000071, 61, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (108, 100000071, 56, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (109, 100000071, 61, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (110, 100000071, 56, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (111, 100000071, 61, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (112, 100000071, 72, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (113, 100000071, 42, 1, 'First', '2016-2017', 0, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (114, 100000071, 92, 1, 'First', '2016-2017', 0, '0', '') ;
#
# End of data contents of table studentsubjects
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------


#
# Delete any existing table `subject`
#

DROP TABLE IF EXISTS `subject`;


#
# Table structure of table `subject`
#

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL,
  PRIMARY KEY (`SUBJ_ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=latin1 ;

#
# Data contents of table subject (309 records)
#
 
INSERT INTO `subject` VALUES (8, 'English Plus', 'English Plus', 3, 'Nones', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (14, 'NSTP1', 'National Service Training Program 1', 3, 'None', 53, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (15, 'PE1', 'Physical Education 1', 2, 'None', 53, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (16, 'HUMAN', 'Humanities', 3, 'None', 53, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (17, 'COMART2', 'Communication Arts 2', 3, 'COMART1', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (18, 'COPRO-2', 'Computer Programming 2', 4, 'COPRO1', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (19, 'DATSTRUC', 'Data Structures', 4, 'COPRO1', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (20, 'DISTRUC', 'Discrete Structure', 3, 'ALGEBRA', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (21, 'NSTP2', 'National Service Training Program 2', 3, 'None', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (22, 'INTROART', 'Introduction to Arts', 3, 'None', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (23, 'PE2', 'Physical Education 2', 2, 'PE1', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (24, 'TRIGO', 'Trigonometry', 3, 'ALGEBRA', 53, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (25, 'COMART3', 'Communication Arts 3', 3, 'COMART2', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (26, 'COPRO-3', 'Computer Programming 3', 4, 'COPRO2', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (27, 'LOGIC', 'Logic Design and Switching', 3, 'DISTRUC', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (28, 'PHILGOV', 'Philippine Government', 3, 'None', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (29, 'PHYSICS1', 'Physics 1', 4, 'None', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (30, 'STAT', 'Statistics', 3, 'ALGEBRA', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (31, 'SOCSTUD', 'Social Studies', 3, 'None', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (32, 'PE3', 'Physical Education 3', 2, 'PE1', 54, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (33, 'COMART4', 'Communication Arts 4', 3, 'COMART3', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (34, 'ASSEM', 'Assembly Language', 4, 'LOGIC', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (35, 'PHILO', 'Philosophy', 3, 'None', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (36, 'SADSIGN', 'System Analysis and Design', 3, 'COPRO1', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (37, 'PHYSICS2', 'Physics 2', 4, 'Physics 1', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (38, 'DBSYS', 'Theory Database Systems', 3, 'DATSTRUC', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (39, 'PE4', 'Physical Education 4', 2, 'PE1', 54, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (40, 'Eng 111', 'CommunicationArts 1', 3, 'none', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (41, 'Fil 111', 'Kom sa Akad. Fil', 3, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (42, 'Math 1', 'Basic math ', 3, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (43, 'SCE 111', 'Earth Science', 3, 'NONE ', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (44, 'Lit 111', 'Philippines Literature ', 3, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (45, 'Rdg 1', 'Dev. Reading 1', 3, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (46, 'Psych 116', 'General Psychology', 3, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (47, 'PE 111', ' Physical Fitness', 2, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (48, 'NSTP 111', 'National Service training program 1 ', 3, 'NONE', 30, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (49, 'Eng 211', 'speech & oral communication', 3, 'Eng 121', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (50, 'Fil 211', 'Masining na pagpapahayag', 3, 'Fil 121', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (51, 'Lit 121 ', 'World literature', 3, 'Lit 111', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (52, 'SocSci 132', 'Rizal & other heroes ', 3, 'NONE', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (53, 'Ed 211', 'Child & adolescent Psychology', 3, 'Psyh 116', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (54, 'Ed 212', 'Education Technology 1', 3, 'NONE', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (55, 'FS 1', 'Observation of learners Dev\'t & the school enviroment  ', 3, 'NONE', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (56, 'Eng 212', 'The Teaching Of speaking ', 3, 'NONE ', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (57, 'Eng 213', 'The teaching of lsting & Rdg.', 2, 'NONE', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (58, 'PE 211', 'Team sports', 2, 'PE 121 ', 31, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (59, 'Stat 115', 'Intro. to Statistics ', 3, 'NONE', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (60, 'Ed 311', 'The teaching profession ', 3, 'NONE', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (61, 'Ed 312', 'Assessment of Teaching 2 ', 3, 'Ed 221', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (62, 'Ed 313', 'Principles of teaching', 3, 'Ed 224', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (63, 'FS 3', 'Micro-Teaching &the  use of technology', 1, 'FS 2', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (64, 'Eng 311', 'Arfo- Asian Literature ', 3, 'NONE ', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (65, 'Eng 312', 'Introduction to Stylistics ', 3, 'NONE', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (66, 'Eng 313', 'Translating & Editing of  text ', 3, 'NONE', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (67, 'Eng 314', 'Teaching Literature', 3, 'NONE', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (68, 'Ed 314', ' Teaching Multigrade Class', 1, 'NONE', 32, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (69, 'Ed 412', 'Use of popular Media ', 1, 'NONE', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (70, 'FS 5', 'Assestment of student Learning ', 1, 'FS 4', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (71, 'FS 6 ', 'Becoming a Teacher', 1, 'FS 5', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (72, 'Hum116', 'Art , Man & Society', 3, 'Hum 111', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (73, 'Eng 411', 'language & literature assestment', 3, 'NONE', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (74, 'Eng 412', 'lang. Curr. for sec. sch.', 3, 'NONE', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (75, 'Eng 413', 'Literary Criticism ', 3, 'NONE', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (76, 'Eng 414', 'Language Research ', 3, 'NONE', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (77, 'Eng 415', 'Dramatic & Stagecrafts', 3, 'NONE ', 33, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (78, 'CS 113', 'Basic Software Package w/ Internet Application', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (79, 'Eng 111', 'Communication Arts', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (80, 'Fil 111', 'Kom. sa Akad. Fil', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (81, 'Math 1', 'Basic Math', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (82, 'SCE 111', 'Earth Science', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (83, 'Read 1', 'Dev. Reading 1', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (84, 'Psych 116', 'General Psycology', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (85, 'PE 111', 'Physical Fitness', 2, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (86, 'NSTP 111', 'Nat\'l Service Trng. Prog. 1', 3, 'None', 42, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (87, 'Eng 211', 'Speech and Oral Communication', 3, 'Eng 121', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (88, 'Fil 211', 'Masining na Pagpapahayag', 3, 'Fil 121', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (89, 'Lit 121', 'World Literature', 3, 'Lit 111', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (90, 'SocSci 132', 'Rizal and Other Heroes', 3, 'None', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (91, 'Ed 211', 'Child Psycology', 3, 'Psych 116', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (92, 'Ed 212', 'Educational Technology 1', 3, 'None', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (93, 'FS 1', 'Observation of Learning Dev\'t and the School Environment', 1, 'None', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (94, 'Eng 212', 'The Teaching of Speaking', 3, 'Eng 121', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (95, 'Math 3', 'Elem. Theory of Numbers', 3, 'Math 2', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (96, 'PE 211', 'Team Sports', 2, 'PE 121', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (97, 'JEEP Start 1', ' ', 3, 'None', 43, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (98, 'Stat 115', 'Intro. To Statistics', 3, 'None', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (99, 'Ed 311', 'The Teaching Profession', 3, 'Ed 221', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (100, 'Ed 312', 'Assessment of Student Lrng. 1', 3, 'Ed 221', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (101, 'Ed 313', 'Priciples of Teaching 2', 3, 'Ed 224', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (102, 'FS 3', 'Micro-Teaching and the use of Technology', 3, 'FS 2', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (103, 'SocSci 311', 'Basic Geography', 3, 'None', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (104, 'Chem 1', 'Basic Chemistry', 3, 'None', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (105, 'Fil 311', 'Pagpapahalagang Pampanitikan', 3, 'Fil 221', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (106, 'Math 5', 'Elementary Algebra', 3, 'None', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (107, 'Ed 314', 'Tchg. Multigrade Class', 1, 'Ed 221, Ed 222', 44, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (108, 'Ed 412', 'Use of Popular Media', 1, 'None', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (109, 'FS 5', 'Assmt. of Study Learning', 1, 'FS 4', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (110, 'FS 6', 'Becoming a Teacher', 1, 'FS 5', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (111, 'Hum 116', 'Art, Man and Society', 3, 'Hum 111', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (112, 'Math 6', 'Mthds and Strat in Teaching Math', 3, 'Math 5', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (113, 'SocSci 411', 'Geog. and Nat Res of Phil', 3, 'SocSci311', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (114, 'HELE 111', 'Home Economic and Livinhood Eductaion', 3, 'None', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (115, 'FS PT', 'Practice Teaching(Whole Day)', 6, 'FS 6', 45, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (116, 'Ed 320', 'Methods of Research', 3, 'Stat 115', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (117, 'Ed 321', 'Social Dimension of Educ.', 3, 'Ed 312', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (118, 'Ed 322', 'Assessment of Study Lrng.', 3, 'Ed 312', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (119, 'Ed 323', 'Environment Educ.', 1, 'None', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (120, 'FS 4', 'Team Teaching: Exploring the Curr.', 1, 'FS 3', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (121, 'Lit 321', 'Children\'s Literature', 3, 'None', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (122, 'Eng 321', 'Remedial Inst\'n in Eng', 3, 'None', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (123, 'Hum 111', 'Intro. to Humanities', 3, 'None', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (124, 'Econ 110', 'Prin. of Econ/AgRfm Tax and Coop', 3, 'None', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (125, 'Phys 1', 'Fundamental of Physics', 3, 'None', 44, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (126, 'Edd 221', 'Facilitating Learning', 3, 'Ed 211', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (127, 'Ed 222', 'Educational Technology 2', 3, 'Ed 212', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (128, 'Ed 223', 'Curriculum Development', 3, 'None', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (129, 'FS 2', 'Classroom Mgt. Skill', 1, 'FS 1', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (130, 'Eng 221', 'Creative Writing', 3, 'Eng 121', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (131, 'Fil 221', 'Kontem Panitikang Fil', 3, 'None', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (132, 'Math 4', 'Plans and Solid Geometry', 3, 'Math 3', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (133, 'PE 221', 'Recreational Activities', 2, 'PE 211', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (134, 'JEEP Start 1', ' ', 3, 'None', 43, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (135, 'Eng 121', 'Writing in the Disc.', 3, 'Eng 111', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (136, 'Fil 121', 'Pagbasa at Pagsulat', 3, 'Fil 111', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (137, 'Math 2', 'Contemporary Math', 3, 'Math 1', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (138, 'SCE 121', 'Survey of BioSci', 3, 'None', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (139, 'SCE 122', 'Astronomy', 3, 'None', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (140, 'Lit 111', 'Philippine Literature', 3, 'None', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (141, 'Read 2', 'Development Rdg. 2', 3, 'Read 1', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (142, 'PE 121', 'Rhythmic Activities', 2, 'PE 111', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (143, 'NSTP 121', 'Nat\'l Service Trang. Prog. 2', 3, 'NSTP 111', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (144, 'Eng 411', 'Lang. and Lit, Assessmet', 3, 'None', 45, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (145, 'Eng 121', 'Writing in the disc.', 3, 'Eng 111', 42, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (146, 'Eng 121', 'Writing in Disc.', 3, 'Eng 111', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (147, 'Fil 121', 'Pagbasa at Pagsulat', 3, 'Fil 111', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (148, 'Math 2', 'Contemporary Math', 3, 'Math 1', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (149, 'Sce 121', 'Survey of BioSci', 3, 'None', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (150, 'Econ 110', 'Prin. Econ/AgRfrm Tax Coop', 3, 'None', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (151, 'CS 113', 'Basic Software Pkge. w/ Internet Application', 3, 'None', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (152, 'Socio 115', 'Culture, Soc. and Fam w/ ARH', 3, 'None', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (153, 'PE 121', 'Rhythmic Activities', 2, 'PE 111', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (154, 'NSTP 121', 'Nat\'l. Service Trng. Prog. 2', 3, 'NSTP 111', 30, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (155, 'Ed 221', 'Facilitating Learning', 3, 'Ed 211', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (156, 'Ed 222', 'Educational Technology 2', 3, 'Ed 212', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (157, 'Ed 223', 'Curriculum Development', 3, 'None', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (158, 'Ed 224', 'Principles of Teaching 1', 3, 'None', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (159, 'FS 2', 'Classroom Mgt. Skills', 1, 'FS 1', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (160, 'Eng 221', 'Intro. to Linguistics', 3, 'None', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (161, 'Eng 222', 'Campus Journalism', 3, 'None', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (162, 'Eng 223', 'Creative Writing', 3, 'None', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (163, 'Eng 224', 'Eng and Americal Lit.', 3, 'None', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (164, 'PE 221', 'Recreational Activities', 2, 'PE 211', 31, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (165, 'Ed 320', 'Methods of Research', 3, 'Stat 115', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (166, 'Ed 322', 'Assessment of Stud. Lrng 2', 3, 'Ed 312', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (167, 'FS 4', 'Team Tchng: Exploring the Curr.', 1, 'FS 3', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (168, 'Ed 321', 'Social Dimension of Educ. ', 3, 'Ed 311', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (169, 'Ed 323', 'Environment Educ.', 1, 'None', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (170, 'Eng 321', 'Remedial Instr\'n in Eng', 3, 'None', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (171, 'Eng 323', 'Structure of English', 3, 'None', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (172, 'Eng 324', 'Mythology and Folklore', 3, '3', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (173, 'Eng 325', 'Eng for Specific Purpose', 3, 'None', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (174, 'Eng 322', 'Prep. and Evaluation of Instructional Materials', 3, 'None', 32, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (175, 'FS PT', 'Practice Teaching(Whole Day)', 6, 'FS 5, FS 6', 33, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (176, 'Eng 111', 'Communication skills', 3, 'None', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (177, 'Fil 111', 'Komunikasyon sa akademikong Pilipino', 3, 'None', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (178, 'Math 111', 'College algebra ', 3, 'None', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (179, 'CS 111', 'Basic software Package & Internet Application ', 3, 'None ', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (180, 'Acctg 201', 'Fundamentals of Accounting 1', 3, 'None', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (181, 'PE 111', 'physical Fitness', 2, 'None ', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (182, 'NSTP 111', 'national Service trng. Prog', 3, 'None', 21, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (183, 'Hum 111', 'Art Man and Society', 3, 'None ', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (184, 'Econ 111', 'Intro. To Economics w/ LRT', 3, 'None', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (185, 'Psycho 111', 'General Psychology', 3, 'None', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (186, 'Math 117', 'Calculus for Business', 3, 'math 111', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (187, 'Acctg 211', 'Financial Acctg & Reporting ', 3, 'Acctg 202', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (188, 'Hist 111', 'Phil History w/ politics and gov\'t', 3, 'None', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (189, 'Eng 113', 'Speech and oral com.', 3, 'Eng 112', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (190, 'PE 113', 'Team Sports ', 2, 'PE 111', 57, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (191, 'Eng 114', 'Technical writng ', 3, 'Eng 113', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (192, 'Mgt 211', 'Human Behavior in Organization ', 3, 'Mgt 111', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (193, 'Cost 211', 'Cost Acctg & Cost Mgt. 1', 3, 'Acctg 212', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (194, 'Econ 114', 'MicroEconomic theory & Prac.', 3, 'Econ 112', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (195, 'CS 212', 'Funfd. of info. sys. Dev\'t', 3, 'CS 211', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (196, 'Law 211', 'law on Obiligation & contracts', 3, 'None', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (197, 'Pol Sci 211', 'Good Governance & Social Resp', 3, 'Hist 111', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (198, 'Math 211', 'Quantitative Techniques in Business', 3, 'Stat 113', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (199, 'Econ 114', 'Management Economics ', 3, 'Econ 113', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (200, 'Entrep 212', 'Phil. business enviroment', 3, 'Econ 113', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (201, 'Law 213', 'Law on sales, labor & other Comi. laws', 3, 'Law 212', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (202, 'Net Sci 112', 'Physical Science ', 3, 'Net sci 113', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (203, 'Entrep 213', 'Entrepreneurial Business Mgt', 3, 'Entrep 211', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (204, 'Soc Sci 111', 'Life & Works of Rizal', 3, 'None', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (205, 'Bre 212', 'Business Research 11', 3, 'bre 111', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (206, 'Eng1 112', 'Writing in the Dicipline ', 3, 'Eng 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (207, 'Fil 112', 'Pagbasa at Pagsulat tungo sa pananaliksik', 3, 'Fil 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (208, 'Math 113', 'Mathematics of investment', 3, 'Math 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (209, 'CS 211', 'fund. Programming & database theory & appli.', 3, 'CS 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (210, 'Mgt 111', 'Principles of mgt. & ORaganization ', 3, 'None ', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (211, 'Acctg 202', 'Fundimentals of Accounting  11', 3, 'Acctg 201', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (212, 'PE 112', 'Rhythmic Activities ', 2, 'PE 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (213, 'NSTP 112', 'Nat.Service trng Prog. 2', 3, 'NSTP 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (214, 'NSTP 112', 'Nat.Service trng Prog. 2', 3, 'NSTP 111', 21, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (215, 'Mktg', 'Principles of Marketing', 3, 'Mgt111', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (216, 'Econ112', 'Microeconomics Theory & Practice', 3, 'Econ111', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (217, 'Philos111', 'Philosophy, Values Ed. & works Ethics', 3, 'None', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (218, 'Stat 113', 'Business Stat w/ Comp. App.', 3, 'Math 113', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (219, 'Acctg 212', 'Financial Accounting and Report II', 6, 'Acctg 211', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (220, 'Lit 111', 'Philippine Literature', 3, 'Eng 112', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (221, 'Nat Sci', 'Siological Science', 3, 'none', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (222, 'PE 114', 'Recreational Activities', 2, 'PE 111', 57, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (223, 'Engl 114', 'Technical Writing', 3, 'Engl 113', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (224, 'Cost  211', 'Cost Acctg & Cost Mgt 1', 3, 'Acctg 212', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (225, 'Mgt 211', 'Human Behavioral in Organization', 3, 'Mgt 111', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (226, 'Econ 114', 'Macroeconomics Theory & PracticeT', 3, 'Econ 112', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (227, 'CS 112', 'Fund. Of Info. Sys. & Sys. Devt.', 3, 'CS 211', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (228, 'Law 211', 'Law of Obligation & Contracts', 3, 'None', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (229, 'Pol Sci 211', 'Good Governance & Social Resp.', 3, 'Hist 111', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (230, 'Math 211', 'Quantitative Techniques in Business', 3, 'Hist 111', 58, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (231, 'CS 213', 'Accounting Information System', 3, 'CS 212', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (232, 'Bre 111', 'Business Research 1', 3, 'None', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (233, 'Mgt 212', 'Mgt. Planning & Central Operation', 3, 'Mgt 111', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (234, 'Entrep 211', 'Industrial Relations', 3, 'Mgt 211', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (235, 'Law 212', 'Law on Business organization', 3, 'Law 211', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (236, 'Tax 211', 'Income Taxation', 3, 'Acctg 212', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (237, 'Mgt 213', 'Production and opreations Mgt.', 3, 'Stat 113', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (238, 'Cost 212', 'Cost Acctg & Cost Mgt. II', 3, 'Cost 211', 58, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (239, 'Econ 114', 'Management Economics', 3, 'Econ 113', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (240, 'Entrep 212', 'Phil. Business environment', 3, 'Entrep 211', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (241, 'Law 213', 'Law on sales, labor and other Coml. Laws', 3, 'Law 212', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (242, 'Net Sci 112', 'Physical Science', 3, 'Net Sci 111', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (243, 'Entrep 213', 'Entrepreneurial Business Mgt.', 3, 'Entrep 211', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (244, 'Soc Sci 111', 'Life and Works of rizal', 3, 'None', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (245, 'Bre 212', 'Business Research II', 3, 'Bre 111', 59, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (246, 'Socio 111', 'Society and culture with family planning', 3, 'none', 59, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (247, 'Entrep 214', 'Sales management', 3, 'Entrep 213', 59, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (248, 'Mgt 215', 'Business policies and formulation', 3, 'none', 59, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (249, 'Tax 212', 'Business and Transfer Taxes', 3, 'Tax 2111', 59, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (250, 'Entrep 215', 'Strategic marketing management', 3, 'Mktg 211', 59, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (251, 'OJT 211', 'On job training (200 hours)', 3, 'None', 59, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (252, 'Eng 111', 'Communication Arts 1', 3, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (253, 'Fil 111', 'Komunikasyon Sa akademikong Filipino ', 3, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (254, 'Math 111', 'College Algebra', 3, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (255, 'Psycho 111', 'Gen & Criminal Psychology w/ TVET', 3, 'None ', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (256, 'Crim 211', 'Intro to Criminology', 3, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (257, 'Hist 111', 'Phillippine History', 3, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (258, 'SMGT 111', 'Security Mgt. and Service', 3, 'None ', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (259, 'PE 111', 'Fundamentals of Matial Arts', 2, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (260, 'NSTP 111', 'Military Science 11', 3, 'None', 60, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (261, 'Eng 113', 'Technical Report Writing ', 3, 'Eng 112', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (262, 'LEA 213', 'Industrial Sec. Mgt w/ TVET', 3, 'None ', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (263, 'CLJ 211', 'Criminal Law (Book 1)', 3, 'None', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (264, 'Socio 111', 'Society & Culture w/ Pop Ed.', 3, 'None', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (265, 'Econ 111', 'Basic Economics w/ TAR', 3, 'None ', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (266, 'Crimtic 211', 'Personnel Idenfication w/ TVET ', 3, 'None', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (267, 'CS 111', 'Basic Software Pkcg Int. Application', 3, 'None', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (268, 'FIl 113', 'Masining na pagpapahayag', 3, 'Fil 112', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (269, 'PE 211', 'First Aid & water Survival ', 2, 'PE 121', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (278, 'CDI 215', 'Court Testimony', 3, 'CLJ 211', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (279, 'CDI 217', 'Fire Tech & Arson Investigation ', 3, 'None', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (280, 'LEA 217', 'Police Intellegence', 3, 'None', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (281, 'LEA 218', 'International Policing ', 3, 'None', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (282, 'PerDev 111', 'Personality Development ', 3, 'None', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (283, 'Crim 215', 'Criminology  Research & Stat', 3, 'None ', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (284, 'CLJ 214', 'Criminal Evidence ', 3, 'CLJ 211', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (285, 'Review 211', 'Refresher Evidence 1', 3, 'None', 63, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (286, 'Eng 112', 'Speech and oral Com.', 3, 'Eng 111', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (287, 'Fil 120', 'Pagbasa at pagsulat tungo sa pananaliksik', 3, 'Fil 111', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (288, 'Math 121', 'Plane trigonometry', 3, 'Math 111', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (289, 'LEA 211', 'PHIL Criminal justice', 3, 'Crim 211', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (290, 'LEA 212', 'Police or. and administration', 2, 'none', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (291, 'Ethics 111', 'Ethics and values', 3, 'none', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (292, 'Pol Sci 111', 'Pol, Sci and Phil. Constitution', 3, 'none', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (293, 'Hum 111', 'Logic ', 3, 'none', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (294, 'PE 112', 'Disarming technique', 2, 'PE 111', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (295, 'NSTP 121', 'Military Science 12', 3, 'MS 11', 60, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (296, 'Eng 113', 'Technical report wriring', 3, 'English 112', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (297, 'LEA 213', 'Industrial Sec. Mgt with TVET', 3, 'None', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (298, 'CLJ 211', 'Criminal Law (Book 1)', 3, 'none', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (300, 'Econ 111', 'Basic economics', 2, 'none', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (301, 'Crimtic 211', 'Basic Software pckg int App', 2, 'none', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (302, 'Fil 113', 'Masining na paglalayag', 3, 'Fil 112', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (303, 'PE 211', 'First Aid and water survival', 2, 'PE 211', 61, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (304, 'Eng 114', 'Technical report writing 2', 3, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (305, 'Crim 213', 'Juvenile Deliquency and crime prevention', 3, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (306, 'CDI 2111', 'Police patrol operation', 3, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (307, 'Crimtic 212', 'Poloice photography', 3, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (308, 'LEA 215', 'Fund of criminal investigation', 3, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (309, 'SMGT 112', 'Security Mgt Services', 3, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (310, 'PE 114', 'Marmanship and combat shooting', 2, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (311, 'OJT', 'On job training', 2, 'none', 61, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (312, 'LEA 214', 'Police Comparative System', 3, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (313, 'LEA 216', 'Police personnel and record mgt.', 3, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (314, 'CLJ 212', 'Criminal law (Book 2)', 3, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (315, 'Chem 111', 'General Chemistry', 3, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (316, 'CDI 212', 'traffic Mgt. and accident investigation', 2, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (317, 'Crimtic 213', 'Forensic ballistic', 2, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (318, 'Crimtic 214', 'Questioned Document', 3, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (319, 'CDI 211', 'Institutional Correction', 3, 'none', 62, '', 'First', 0) ; 
INSERT INTO `subject` VALUES (320, 'Crimtic 215', 'Polgraphy ', 3, 'none', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (321, 'LEA 219', 'Police Planning', 3, 'none', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (322, 'CLJ 213', 'Criminal procedure', 3, 'CLJ 212', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (323, 'Chem 211', 'Forensic chem and toxiclology', 3, 'Chem 111', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (324, 'CDI 216', 'White collar crime', 3, 'none', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (325, 'CDI 214', 'Organized crime', 3, 'none', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (326, 'Crimtic 216', 'Legal medicine', 3, 'none', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (327, 'CA 212', 'Non Institutional Correction', 3, 'CA  212', 62, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (328, 'Prac 1 & 2', 'ON JOB TRAINING', 6, 'none', 63, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (329, 'Review 211', 'Refreseher Course', 3, 'none', 63, '', 'Second', 0) ; 
INSERT INTO `subject` VALUES (330, 'FTS 11', 'Field trip seminar', 3, 'none', 63, '', 'Second', 0) ;
#
# End of data contents of table subject
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------


#
# Delete any existing table `tblauto`
#

DROP TABLE IF EXISTS `tblauto`;


#
# Table structure of table `tblauto`
#

CREATE TABLE `tblauto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `autocode` varchar(255) DEFAULT NULL,
  `autoname` varchar(255) DEFAULT NULL,
  `appendchar` varchar(255) DEFAULT NULL,
  `autostart` int(11) DEFAULT '0',
  `autoend` int(11) DEFAULT '0',
  `incrementvalue` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `autocode` (`autocode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

#
# Data contents of table tblauto (4 records)
#
 
INSERT INTO `tblauto` VALUES (1, 'Asset', 'Asset', 'ASitem', 0, 3, 1) ; 
INSERT INTO `tblauto` VALUES (2, 'Trans', 'Transaction', 'TrAnS', 1, 5, 1) ; 
INSERT INTO `tblauto` VALUES (3, 'SIDNO', 'IDNO', '2015', 1000000, 72, 1) ; 
INSERT INTO `tblauto` VALUES (4, 'EMPLOYEE', 'EMPID', '020010', 0, 2, 1) ;
#
# End of data contents of table tblauto
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------


#
# Delete any existing table `tbllogs`
#

DROP TABLE IF EXISTS `tbllogs`;


#
# Table structure of table `tbllogs`
#

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(55) NOT NULL,
  `LOGMODE` varchar(55) NOT NULL,
  PRIMARY KEY (`LOGID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllogs (41 records)
#
 
INSERT INTO `tbllogs` VALUES (1, 1, '2016-09-22 21:46:01', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (2, 100000022, '2016-09-22 21:46:29', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (3, 100000015, '2016-09-23 05:00:38', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (4, 100000015, '2016-09-23 05:00:45', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (5, 100000025, '2016-09-23 05:02:31', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (6, 100000025, '2016-09-23 05:02:55', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (7, 100000025, '2016-09-23 05:03:53', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (8, 100000025, '2016-09-23 05:11:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (9, 100000025, '2016-09-24 09:32:59', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (10, 1, '2016-09-24 09:46:06', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (11, 1, '2016-09-24 09:53:17', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (12, 1, '2016-09-24 09:54:45', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (13, 100000027, '2016-09-24 15:30:32', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (14, 100000015, '2016-09-27 09:34:11', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (15, 1, '2016-09-27 10:59:58', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (16, 100000015, '2016-09-27 11:00:42', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (17, 100000029, '2016-09-27 17:34:11', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (18, 100000015, '0000-00-00 00:00:00', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (19, 100000015, '2016-09-27 17:37:13', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (20, 100000029, '2016-09-27 18:27:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (21, 100000015, '2016-09-27 18:27:56', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (22, 100000015, '2016-09-27 18:29:20', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (23, 100000030, '2016-09-27 22:49:02', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (24, 100000015, '2016-09-27 22:50:10', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (25, 100000015, '2016-09-28 01:47:07', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (26, 100000033, '2016-09-28 04:43:26', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (27, 1, '2016-10-01 04:07:48', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (28, 100000056, '2016-10-01 09:22:17', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (29, 100000056, '2016-10-01 09:22:51', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (30, 100000056, '2016-10-01 09:23:30', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (31, 100000056, '2016-10-01 12:52:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (32, 100000057, '2016-10-01 15:28:47', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (33, 100000058, '2016-10-01 15:44:01', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (34, 100000057, '2016-10-01 15:44:11', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (35, 100000057, '2016-10-01 16:38:34', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (36, 100000061, '2016-10-01 16:50:27', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (37, 100000061, '2016-10-01 18:08:05', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (38, 1, '2016-10-02 01:12:39', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (39, 100000067, '2016-10-02 01:58:35', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (40, 100000068, '2016-10-02 02:16:08', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (41, 100000069, '2016-10-02 02:20:24', 'Student', 'Logged out') ;
#
# End of data contents of table tbllogs
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------


#
# Delete any existing table `tblpayment`
#

DROP TABLE IF EXISTS `tblpayment`;


#
# Table structure of table `tblpayment`
#

CREATE TABLE `tblpayment` (
  `PAYMENTID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `ENTRANCEFEE` double NOT NULL,
  `TOTALUNITS` double NOT NULL,
  `TOTALSEMESTER` double NOT NULL,
  `PARTIALPAYMENT` double NOT NULL,
  `BALANCE` double NOT NULL,
  PRIMARY KEY (`PAYMENTID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblpayment (32 records)
#
 
INSERT INTO `tblpayment` VALUES (1, 100000015, 53, 1, 'First', '5693', '4598', '10291', '1000', '0') ; 
INSERT INTO `tblpayment` VALUES (2, 100000015, 53, 1, 'Second', '5693', '5225', '10918', '2000', '0') ; 
INSERT INTO `tblpayment` VALUES (3, 100000017, 53, 1, 'First', '5693', '4598', '10291', '1000', '0') ; 
INSERT INTO `tblpayment` VALUES (4, 100000018, 53, 1, 'First', '5693', '4598', '10291', '10000', '0') ; 
INSERT INTO `tblpayment` VALUES (5, 100000019, 53, 1, 'First', '5693', '4598', '10291', '4500', '0') ; 
INSERT INTO `tblpayment` VALUES (6, 100000020, 53, 1, 'First', '5693', '4598', '10291', '6300', '0') ; 
INSERT INTO `tblpayment` VALUES (7, 100000021, 53, 1, 'First', '5693', '4598', '10291', '2000', '0') ; 
INSERT INTO `tblpayment` VALUES (8, 100000022, 53, 1, 'First', '5693', '4598', '10291', '1000', '0') ; 
INSERT INTO `tblpayment` VALUES (9, 100000022, 53, 1, 'Second', '5693', '4180', '9873', '1400', '0') ; 
INSERT INTO `tblpayment` VALUES (10, 100000022, 53, 1, 'Second', '5693', '4180', '9873', '1600', '0') ; 
INSERT INTO `tblpayment` VALUES (11, 100000025, 53, 1, 'Second', '5693', '5225', '10918', '1600', '0') ; 
INSERT INTO `tblpayment` VALUES (12, 100000025, 53, 1, 'Second', '5693', '5225', '10918', '1600', '0') ; 
INSERT INTO `tblpayment` VALUES (13, 100000027, 53, 1, 'Second', '5693', '5225', '10918', '1660', '0') ; 
INSERT INTO `tblpayment` VALUES (14, 100000028, 53, 1, 'Second', '5693', '5225', '10918', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (15, 100000029, 53, 1, 'First', '5693', '4598', '10291', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (16, 100000030, 53, 1, 'First', '5693', '4598', '10291', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (17, 100000030, 53, 1, 'Second', '5693', '5225', '10918', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (18, 100000030, 53, 1, 'Second', '5693', '5225', '10918', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (20, 100000033, 53, 1, 'First', '5693', '4598', '10291', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (21, 100000035, 53, 1, 'First', '5693', '4598', '10291', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (22, 100000035, 53, 1, 'Second', '5693', '4180', '9873', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (23, 100000056, 53, 1, 'Second', '5693', '5225', '10918', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (24, 100000057, 30, 1, 'First', '5693', '6061', '11754', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (25, 100000057, 30, 1, 'Second', '5693', '5434', '11127', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (26, 100000057, 30, 1, 'Second', '5693', '5434', '11127', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (27, 100000057, 30, 2, 'First', '5693', '5852', '11545', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (28, 100000061, 30, 1, 'First', '5693', '6061', '11754', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (29, 100000062, 30, 1, 'First', '5693', '6061', '11754', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (30, 100000062, 30, 1, 'Second', '5693', '5434', '11127', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (31, 100000062, 31, 2, 'First', '5693', '5852', '11545', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (32, 100000062, 31, 2, 'First', '5693', '5852', '11545', '0', '0') ; 
INSERT INTO `tblpayment` VALUES (33, 100000062, 31, 2, 'First', '5693', '5852', '11545', '0', '0') ;
#
# End of data contents of table tblpayment
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------


#
# Delete any existing table `tblschedule`
#

DROP TABLE IF EXISTS `tblschedule`;


#
# Table structure of table `tblschedule`
#

CREATE TABLE `tblschedule` (
  `schedID` int(11) NOT NULL AUTO_INCREMENT,
  `sched_time` varchar(30) NOT NULL,
  `sched_day` varchar(30) NOT NULL,
  `sched_semester` varchar(30) NOT NULL,
  `sched_sy` varchar(30) NOT NULL,
  `sched_room` varchar(30) NOT NULL,
  `SECTION` varchar(30) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  PRIMARY KEY (`schedID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblschedule (140 records)
#
 
INSERT INTO `tblschedule` VALUES (1, '7:30-8:30', 'MWF', 'First', '2016-2017', '1', '', 53, 0) ; 
INSERT INTO `tblschedule` VALUES (16, '7:30AM - 8:30AM', 'MW', 'First', '2016-2017', '5', '1', 42, 0) ; 
INSERT INTO `tblschedule` VALUES (17, '7:30AM - 8:30AM', 'MW', 'First', '2016-2017', '5', '1', 42, 0) ; 
INSERT INTO `tblschedule` VALUES (18, '7:30 - 8:30AM', 'MW', 'First', '2016-2017', '5', '1', 42, 0) ; 
INSERT INTO `tblschedule` VALUES (19, '7:30 - 8:30AM', 'MWF', 'First', '2016-2017', '5', '1', 30, 40) ; 
INSERT INTO `tblschedule` VALUES (20, '7:30 - 8:30 AM', 'MW', 'First', '2016-2017', '4', '1', 31, 58) ; 
INSERT INTO `tblschedule` VALUES (21, '8:30 - 9:30 AM', 'MWF', 'First', '2016-2017', '5', '1', 32, 60) ; 
INSERT INTO `tblschedule` VALUES (22, '7:30 - 8:30 AM', 'MWF', 'First', '2016-2017', '3', '1', 33, 69) ; 
INSERT INTO `tblschedule` VALUES (23, '9:30 - 10:30 AM ', 'MWF ', 'First', '2016-2017', '2', '1', 30, 42) ; 
INSERT INTO `tblschedule` VALUES (24, '9:30- 10:30 AM', 'MWF', 'First', '2016-2017', '5', '1', 31, 56) ; 
INSERT INTO `tblschedule` VALUES (25, '12:30-1:30 AM', 'MWF', 'First', '2016-2017', '1', '1', 30, 41) ; 
INSERT INTO `tblschedule` VALUES (26, '4:30-5:30 AM', 'MWF', 'First', '2016-2017', '6', '1', 30, 48) ; 
INSERT INTO `tblschedule` VALUES (27, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '3', '1', 30, 44) ; 
INSERT INTO `tblschedule` VALUES (28, '10:30-12:00 AM', 'TTH', 'First', '2016-2017', '7', '1', 30, 46) ; 
INSERT INTO `tblschedule` VALUES (29, '12:00 - 2:00 PM', 'T', 'First', '2016-2017', '3', '1', 30, 47) ; 
INSERT INTO `tblschedule` VALUES (30, '3:30 - 5:00 AM ', 'TTH', 'First', '2016-2017', '4', '1', 30, 45) ; 
INSERT INTO `tblschedule` VALUES (31, '11:30-12:30 AM', 'MWF ', 'First', '2016-2017', '1', '1', 31, 57) ; 
INSERT INTO `tblschedule` VALUES (32, '2:30-3:30 AM', 'MWF', 'First', '2016-2017', '6', '1', 31, 51) ; 
INSERT INTO `tblschedule` VALUES (33, '3:30:4:30 AM', 'W ', 'First', '2016-2017', '3', '1', 31, 55) ; 
INSERT INTO `tblschedule` VALUES (34, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '8', '1', 31, 53) ; 
INSERT INTO `tblschedule` VALUES (35, '10:30-12:00 AM', 'TTH', 'First', '2016-2017', '3', '1', 31, 49) ; 
INSERT INTO `tblschedule` VALUES (36, '1:30-3:00 PM', 'TTH ', 'First', '2016-2017', '5', '1', 31, 54) ; 
INSERT INTO `tblschedule` VALUES (37, '9:30-10:30 AM', 'MWF', 'First', '2016-2017', '6', '1', 32, 61) ; 
INSERT INTO `tblschedule` VALUES (38, '11:30-12:30 AM', 'MWF', 'First', '2016-2017', '2', '1', 32, 59) ; 
INSERT INTO `tblschedule` VALUES (39, '2:30-3:30 AM ', 'MWF', 'First', '2016-2017', '3', '1', 32, 64) ; 
INSERT INTO `tblschedule` VALUES (40, '4:30-5:30 AM', 'MWF', 'First', '2016-2017', '6', '1', 32, 68) ; 
INSERT INTO `tblschedule` VALUES (41, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '9', '1', 32, 5) ; 
INSERT INTO `tblschedule` VALUES (42, '10:30-11:30 AM', 'M', 'First', '2016-2017', '9', '1', 32, 63) ; 
INSERT INTO `tblschedule` VALUES (43, '4:00-5:30 PM', 'TTH', 'First', '2016-2017', '2', '1', 32, 67) ; 
INSERT INTO `tblschedule` VALUES (44, '1:00-2:30 PM', 'TTH ', 'First', '2016-2017', '7', '1', 32, 62) ; 
INSERT INTO `tblschedule` VALUES (45, '8:30-9:30 AM ', 'MWF', 'First', '2016-2017', '4', '1', 33, 72) ; 
INSERT INTO `tblschedule` VALUES (46, '11:30 - 12:30 AM', 'MWF', 'First', '2016-2017', '9', '1', 33, 74) ; 
INSERT INTO `tblschedule` VALUES (47, '1:30-2:30 PM', 'M', 'First', '2016-2017', '11', '1', 33, 70) ; 
INSERT INTO `tblschedule` VALUES (48, '4:30-5:30 AM', 'MWF', 'First', '2016-2017', '2', '1', 33, 73) ; 
INSERT INTO `tblschedule` VALUES (49, '8:30 - 10:00 AM', 'MWF', 'First', '2016-2017', '8', '1', 33, 75) ; 
INSERT INTO `tblschedule` VALUES (50, '10:00-11:30 AM', 'MWF', 'First', '2016-2017', '9', '1', 33, 76) ; 
INSERT INTO `tblschedule` VALUES (51, '1:00-2:00 PM', 'TH', 'First', '2016-2017', '5', '1', 33, 71) ; 
INSERT INTO `tblschedule` VALUES (52, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '2', '1', 42, 79) ; 
INSERT INTO `tblschedule` VALUES (53, '7:30-9:30 AM', 'TH', 'First', '2016-2017', '6', '1', 42, 85) ; 
INSERT INTO `tblschedule` VALUES (54, '10:30-11:30', 'MWF', 'First', '2016-2017', '4', '1', 42, 82) ; 
INSERT INTO `tblschedule` VALUES (55, '1:30-2:30 PM', 'MWF', 'First', '2016-2017', '13', '1', 42, 78) ; 
INSERT INTO `tblschedule` VALUES (56, '3:30-4:30 PM', 'MWF', 'First', '2016-2017', '1', '1', 42, 84) ; 
INSERT INTO `tblschedule` VALUES (57, '4:30-5:30 PM', 'MWF', 'First', '2016-2017', '2', '1', 42, 86) ; 
INSERT INTO `tblschedule` VALUES (58, '9:00-10:30 AM', 'TTH', 'First', '2016-2017', '5', '1', 42, 80) ; 
INSERT INTO `tblschedule` VALUES (59, '1:30-3:00 PM', 'TTH', 'First', '2016-2017', '1', '1', 42, 81) ; 
INSERT INTO `tblschedule` VALUES (60, '4:30-6:00 PM', 'TTH', 'First', '2016-2017', '4', '1', 42, 83) ; 
INSERT INTO `tblschedule` VALUES (61, '7:30-8:30 AM', 'MWF', 'First', '2016-2017', '2', '1', 43, 90) ; 
INSERT INTO `tblschedule` VALUES (62, '8:30-9:30 AM', 'MWF', 'First', '2016-2017', '2', '1', 43, 89) ; 
INSERT INTO `tblschedule` VALUES (63, '10:30-11:30 AM', 'MWF', 'First', '2016-2017', '12', '1', 43, 91) ; 
INSERT INTO `tblschedule` VALUES (64, '1:30-2:30 PM', 'MWF', 'First', '2016-2017', '6', '1', 43, 95) ; 
INSERT INTO `tblschedule` VALUES (65, '3:30-5:30 PM', 'M', 'First', '2016-2017', '1', '1', 43, 96) ; 
INSERT INTO `tblschedule` VALUES (66, '9:00-10:30 AM', 'TTH', 'First', '2016-2017', '8', '1', 43, 92) ; 
INSERT INTO `tblschedule` VALUES (67, '10:30-12:00 AM', 'TTH', 'First', '2016-2017', '5', '1', 43, 87) ; 
INSERT INTO `tblschedule` VALUES (68, '1:30-3:00 PM', 'TTH', 'First', '2016-2017', '10', '1', 43, 94) ; 
INSERT INTO `tblschedule` VALUES (69, '3:00-4:00 PM', 'T', 'First', '2016-2017', '13', '1', 43, 93) ; 
INSERT INTO `tblschedule` VALUES (70, '4:30-6:00 PM', 'TTH', 'First', '2016-2017', '1', '1', 43, 88) ; 
INSERT INTO `tblschedule` VALUES (71, '7:30-8:30 AM', 'MWF', 'First', '2016-2017', '4', '1', 44, 98) ; 
INSERT INTO `tblschedule` VALUES (72, '9:30-10:30 AM', 'MWF', 'First', '2016-2017', '8', '1', 44, 105) ; 
INSERT INTO `tblschedule` VALUES (73, '10:30-11:30 AM', 'MWF', 'First', '2016-2017', '1', '1', 44, 106) ; 
INSERT INTO `tblschedule` VALUES (74, '1:30-2:30 PM', 'MWF', 'First', '2016-2017', '2', '1', 44, 103) ; 
INSERT INTO `tblschedule` VALUES (75, '3:30-4:30 PM', 'MWF', 'First', '2016-2017', '4', '1', 44, 104) ; 
INSERT INTO `tblschedule` VALUES (76, '5:30-6:30 PM', 'F', 'First', '2016-2017', '5', '1', 44, 102) ; 
INSERT INTO `tblschedule` VALUES (77, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '5', '1', 44, 99) ; 
INSERT INTO `tblschedule` VALUES (78, '9:00-10:30 AM', 'THH', 'First', '2016-2017', '4', '1', 44, 100) ; 
INSERT INTO `tblschedule` VALUES (79, '12:00-1:30 PM', 'TTH', 'First', '2016-2017', '2', '1', 44, 101) ; 
INSERT INTO `tblschedule` VALUES (80, '3:00-4:30 PM', 'TTH', 'First', '2016-2017', '3', '1', 44, 107) ; 
INSERT INTO `tblschedule` VALUES (81, '7:30-8:30 AM', 'MWF', 'First', '2016-2017', '1', '1', 45, 114) ; 
INSERT INTO `tblschedule` VALUES (82, '8:30-9:30 AM', 'M', 'First', '2016-2017', '7', '1', 45, 109) ; 
INSERT INTO `tblschedule` VALUES (83, '10:30-11:30 AM', 'MWF', 'First', '2016-2017', '5', '1', 45, 108) ; 
INSERT INTO `tblschedule` VALUES (84, '1:30-2:30 PM', 'MWF', 'First', '2016-2017', '5', '1', 45, 111) ; 
INSERT INTO `tblschedule` VALUES (85, '3:30-4:30 AM', 'MWF', 'First', '2016-2017', '4', '1', 45, 112) ; 
INSERT INTO `tblschedule` VALUES (86, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '4', '1', 45, 113) ; 
INSERT INTO `tblschedule` VALUES (87, '10:30-11:30 AM', 'T', 'First', '2016-2017', '6', '1', 45, 110) ; 
INSERT INTO `tblschedule` VALUES (88, '3:00-4:30 PM', 'TTH', 'First', '2016-2017', '7', '1', 45, 144) ; 
INSERT INTO `tblschedule` VALUES (89, '7:30-9:30 AM', 'W', 'Second', '2016-2017', '2', '1', 42, 142) ; 
INSERT INTO `tblschedule` VALUES (90, '7:30-8:30 AM', 'MWF', 'Second', '2016-2017', '3', '1', 30, 146) ; 
INSERT INTO `tblschedule` VALUES (91, '9:30-10:30 AM', 'MWF', 'Second', '2016-2017', '1', '1', 30, 147) ; 
INSERT INTO `tblschedule` VALUES (92, '12:30-1:30 PM', 'MWF', 'Second', '2016-2017', '4', '1', 30, 148) ; 
INSERT INTO `tblschedule` VALUES (93, '2:30-3:30 PM', 'MWF', 'Second', '2016-2017', '6', '1', 30, 149) ; 
INSERT INTO `tblschedule` VALUES (94, '3:30-4:30 PM', 'MWF', 'Second', '2016-2017', '11', '1', 30, 150) ; 
INSERT INTO `tblschedule` VALUES (95, '4:30-5:30 PM', 'MWF', 'Second', '2016-2017', '9', '1', 30, 151) ; 
INSERT INTO `tblschedule` VALUES (96, '6:30-7:30 PM', 'MWF', 'Second', '2016-2017', '5', '1', 30, 152) ; 
INSERT INTO `tblschedule` VALUES (97, '7:30-9:00 AM', 'TTH', 'Second', '2016-2017', '1', '1', 30, 154) ; 
INSERT INTO `tblschedule` VALUES (98, '10:30-12:30 PM', 'T', 'Second', '2016-2017', '4', '1', 30, 153) ; 
INSERT INTO `tblschedule` VALUES (99, '7:30-8:30 AM', 'MWF', 'Second', '2016-2017', '17', '1', 31, 155) ; 
INSERT INTO `tblschedule` VALUES (100, '9:30-11:30 AM', 'M', 'Second', '2016-2017', '1', '1', 31, 164) ; 
INSERT INTO `tblschedule` VALUES (101, '12:30-1:30 PM', 'MWF', 'Second', '2016-2017', '5', '1', 31, 156) ; 
INSERT INTO `tblschedule` VALUES (102, '2:30-3:30 PM', 'MWF', 'Second', '2016-2017', '10', '1', 31, 157) ; 
INSERT INTO `tblschedule` VALUES (103, '3:30-4:30 PM', 'MWF', 'Second', '2016-2017', '17', '2', 31, 158) ; 
INSERT INTO `tblschedule` VALUES (105, '7:30-8:30 AM', 'T', 'Second', '2016-2017', '2', '1', 31, 159) ; 
INSERT INTO `tblschedule` VALUES (106, '9:00-10:30', 'TTH', 'Second', '2016-2017', '19', '1', 31, 160) ; 
INSERT INTO `tblschedule` VALUES (108, '1:30-3:00 PM', 'TTH', 'Second', '2016-2017', '11', '1', 31, 161) ; 
INSERT INTO `tblschedule` VALUES (109, '4:30-6:00 PM', 'TTH', 'Second', '2016-2017', '5', '1', 31, 162) ; 
INSERT INTO `tblschedule` VALUES (110, '8:30-9:30', 'MWF', 'Second', '2016-2017', '6', '1', 31, 163) ; 
INSERT INTO `tblschedule` VALUES (111, '7:30-8:30 AM', 'MWF', 'Second', '2016-2017', '5', '1', 32, 165) ; 
INSERT INTO `tblschedule` VALUES (112, '8:30-9:30 AM', 'MWF', 'Second', '2016-2017', '3', '1', 32, 166) ; 
INSERT INTO `tblschedule` VALUES (113, '10:30-11:30 AM', 'MWF', 'Second', '2016-2017', '4', '1', 32, 168) ; 
INSERT INTO `tblschedule` VALUES (114, '12:30-1:30 PM', 'F', 'Second', '2016-2017', '10', '1', 32, 167) ; 
INSERT INTO `tblschedule` VALUES (115, '2:30-3:30 PM', 'MWF', 'Second', '2016-2017', '2', '1', 32, 169) ; 
INSERT INTO `tblschedule` VALUES (116, '4:30-5:30 PM', 'MWF', 'Second', '2016-2017', '10', '1', 32, 170) ; 
INSERT INTO `tblschedule` VALUES (117, '7:30-9:00 AM', 'TTH', 'Second', '2016-2017', '6', '1', 32, 171) ; 
INSERT INTO `tblschedule` VALUES (118, '9:00-10:30 AM', 'TTH', 'Second', '2016-2017', '1', '1', 32, 172) ; 
INSERT INTO `tblschedule` VALUES (119, '12:00-1:30 PM', 'TTH', 'Second', '2016-2017', '6', '1', 32, 173) ; 
INSERT INTO `tblschedule` VALUES (120, '3:00-4:30 PM', 'TTH', 'Second', '2016-2017', '1', '1', 32, 174) ; 
INSERT INTO `tblschedule` VALUES (121, '7:30-4:30', 'M', 'Second', '2016-2017', '4', '1', 33, 175) ; 
INSERT INTO `tblschedule` VALUES (122, '7:30-8:30 AM', 'MWF', 'First', '2016-2017', '6', '1', 60, 253) ; 
INSERT INTO `tblschedule` VALUES (123, '9:30 - 10:30 AM', 'MWF', 'First', '2016-2017', '7', '1', 60, 254) ; 
INSERT INTO `tblschedule` VALUES (124, '10:30 - 11:30 AM', 'MWF', 'First', '2016-2017', '7', '1', 60, 252) ; 
INSERT INTO `tblschedule` VALUES (125, '1:30 - 2:30 AM', 'MWF', 'First', '2016-2017', '3', '1', 60, 256) ; 
INSERT INTO `tblschedule` VALUES (126, '4:30-6:30 AM', 'M', 'First', '2016-2017', '7', '1', 60, 259) ; 
INSERT INTO `tblschedule` VALUES (127, '7:30-9:00 AM ', 'TTH', 'First', '2016-2017', '7', '1', 60, 260) ; 
INSERT INTO `tblschedule` VALUES (128, '10:30 - 12:00 AM', 'TTH', 'First', '2016-2017', '2', '1', 60, 255) ; 
INSERT INTO `tblschedule` VALUES (129, '1:30-3:00 PM', 'TTH', 'First', '2016-2017', '3', '1', 60, 258) ; 
INSERT INTO `tblschedule` VALUES (130, '3:00 - 4:30 AM', 'TTH', 'First', '2016-2017', '6', '1', 60, 257) ; 
INSERT INTO `tblschedule` VALUES (131, '8:30-9:30 AM', 'MWF', 'First', '2016-2017', '5', '1', 61, 263) ; 
INSERT INTO `tblschedule` VALUES (132, '9:30 - 10:30 AM', 'MWF', 'First', '2016-2017', '9', '1', 61, 297) ; 
INSERT INTO `tblschedule` VALUES (133, '11:30 - 1:30 PM', 'W', 'First', '2016-2017', '5', '1', 61, 303) ; 
INSERT INTO `tblschedule` VALUES (134, '2:30 -3:30 AM', 'MWF', 'First', '2016-2017', '5', '1', 61, 261) ; 
INSERT INTO `tblschedule` VALUES (135, '4:30-5:30 PM', 'MWF', 'First', '2016-2017', '3', '1', 61, 268) ; 
INSERT INTO `tblschedule` VALUES (136, '7:30-9:30 AM', 'TTH', 'First', '2016-2017', '5', '1', 61, 264) ; 
INSERT INTO `tblschedule` VALUES (137, '9:00-10:30 AM', 'TTH', 'First', '2016-2017', '7', '1', 61, 261) ; 
INSERT INTO `tblschedule` VALUES (138, '9:00-10:30 AM', 'TTH', 'First', '2016-2017', '7', '1', 61, 267) ; 
INSERT INTO `tblschedule` VALUES (139, '1:30-3:00 PM', 'TTH', 'First', '2016-2017', '9', '1', 61, 265) ; 
INSERT INTO `tblschedule` VALUES (140, '4:30--6:00 PM', 'TTH', 'First', '2016-2017', '5', '1', 61, 266) ; 
INSERT INTO `tblschedule` VALUES (141, '7:30-8:30 AM', 'MWF', 'First', '2016-2017', '10', '1', 62, 312) ; 
INSERT INTO `tblschedule` VALUES (142, '9:30-10-30 AM', 'MWF', 'First', '2016-2017', '4', '1', 62, 315) ; 
INSERT INTO `tblschedule` VALUES (143, '1:30-2:30 PM', 'MWF', 'First', '2016-2017', '15', '1', 62, 319) ; 
INSERT INTO `tblschedule` VALUES (144, '3:30-4:30 PM', 'MWF', 'First', '2016-2017', '5', '1', 62, 318) ; 
INSERT INTO `tblschedule` VALUES (145, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '10', '1', 62, 319) ; 
INSERT INTO `tblschedule` VALUES (146, '10:30-12:00 AM', 'TTH', 'First', '2016-2017', '2', '1', 62, 314) ; 
INSERT INTO `tblschedule` VALUES (147, '1:30-3:00 PM', 'TTH', 'First', '2016-2017', '2', '1', 62, 317) ; 
INSERT INTO `tblschedule` VALUES (148, '3:00-4:30 PM', 'TTH', 'First', '2016-2017', '5', '1', 62, 313) ; 
INSERT INTO `tblschedule` VALUES (149, '8:30-9:30 AM', 'MWF', 'First', '2016-2017', '8', '1', 63, 278) ; 
INSERT INTO `tblschedule` VALUES (150, '10:30-11:30 AM', 'MWF', 'First', '2016-2017', '7', '1', 63, 280) ; 
INSERT INTO `tblschedule` VALUES (151, '1:30-2:30 PM', 'MWF', 'First', '2016-2017', '1', '1', 63, 284) ; 
INSERT INTO `tblschedule` VALUES (152, '4:30-5:30 PM', 'MWF', 'First', '2016-2017', '4', '1', 63, 285) ; 
INSERT INTO `tblschedule` VALUES (153, '7:30-9:00 AM', 'TTH', 'First', '2016-2017', '9', '1', 63, 283) ; 
INSERT INTO `tblschedule` VALUES (154, '10:30-12:00 PM', 'TTH', 'First', '2016-2017', '1', '5', 63, 281) ; 
INSERT INTO `tblschedule` VALUES (155, '1:30-3:00 PM', 'TTH', 'First', '2016-2017', '2', '1', 63, 279) ; 
INSERT INTO `tblschedule` VALUES (156, '4:30-6:00 PM', 'TTH', 'First', '2016-2017', '2', '1', 63, 282) ;
#
# End of data contents of table tblschedule
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------


#
# Delete any existing table `tblsemester`
#

DROP TABLE IF EXISTS `tblsemester`;


#
# Table structure of table `tblsemester`
#

CREATE TABLE `tblsemester` (
  `SEMID` int(11) NOT NULL AUTO_INCREMENT,
  `SEMESTER` varchar(90) NOT NULL,
  `SETSEM` tinyint(1) NOT NULL,
  PRIMARY KEY (`SEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsemester (2 records)
#
 
INSERT INTO `tblsemester` VALUES (1, 'First', 1) ; 
INSERT INTO `tblsemester` VALUES (2, 'Second', 0) ;
#
# End of data contents of table tblsemester
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------


#
# Delete any existing table `tblstuddetails`
#

DROP TABLE IF EXISTS `tblstuddetails`;


#
# Table structure of table `tblstuddetails`
#

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `GCONTACT` varchar(40) NOT NULL,
  `IDNO` int(30) NOT NULL,
  PRIMARY KEY (`DETAIL_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstuddetails (12 records)
#
 
INSERT INTO `tblstuddetails` VALUES (1, 'Bless Paredes', '', '09306587988', 100000056) ; 
INSERT INTO `tblstuddetails` VALUES (2, 'Marie Sanchez', '', '09305685455', 100000056) ; 
INSERT INTO `tblstuddetails` VALUES (3, 'Maria Palacios', '', '09282622522', 100000057) ; 
INSERT INTO `tblstuddetails` VALUES (4, 'Jenile Uy', '', '09307890988', 100000058) ; 
INSERT INTO `tblstuddetails` VALUES (5, 'Rex Lacson', '', '09302564877', 100000061) ; 
INSERT INTO `tblstuddetails` VALUES (6, 'Drey Gibson', '', '09212548759', 100000061) ; 
INSERT INTO `tblstuddetails` VALUES (7, 'Jean lacson', '', '09125465885', 100000062) ; 
INSERT INTO `tblstuddetails` VALUES (8, 'Marites Geasin', '', '09305478952', 100000067) ; 
INSERT INTO `tblstuddetails` VALUES (9, 'caryl', '', '09206487985', 100000068) ; 
INSERT INTO `tblstuddetails` VALUES (10, 'Ariel Kalinga', '', '09205478595', 100000069) ; 
INSERT INTO `tblstuddetails` VALUES (11, 'Ariel Kalinga', '', '09205478595', 100000069) ; 
INSERT INTO `tblstuddetails` VALUES (12, 'arian clavia', '', '09212343211', 100000071) ;
#
# End of data contents of table tblstuddetails
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------


#
# Delete any existing table `tblstudent`
#

DROP TABLE IF EXISTS `tblstudent`;


#
# Table structure of table `tblstudent`
#

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `ACC_USERNAME` varchar(255) NOT NULL,
  `ACC_PASSWORD` text NOT NULL,
  `student_status` text NOT NULL,
  `YEARLEVEL` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `STUDPHOTO` varchar(255) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SYEAR` varchar(30) NOT NULL,
  `NewEnrollees` tinyint(1) NOT NULL,
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstudent (9 records)
#
 
INSERT INTO `tblstudent` VALUES (1, 100000056, 'Annie', 'Paredes', 'L', 'Female', '2080-10-10', 'Binalbagan City', 'Single', 0, '09206589888', 'Catholic', '09206589888', 'Binalbagan City', 'Annie123', '9ec6525fba61465429d1678947703f0807dbd65a', 'Transferee', 1, 53, '', '', '', 0) ; 
INSERT INTO `tblstudent` VALUES (2, 100000057, 'Janry', 'Tamayo', 'E', 'Female', '2011-12-11', 'Kabankalan City Negros Occidental', 'Select', 0, '09293733782', 'Catholic', '09293733782', 'Kabankalan City', 'janry', '0e3ea29d92d5c1c25ae2cefd3695f9922d440b42', 'Regular', 2, 31, '', 'First', '', 0) ; 
INSERT INTO `tblstudent` VALUES (3, 100000058, 'Kenmark', 'Uy', 'L', 'Female', '0205-01-05', 'Kabankalan City', 'Married', 0, '09265765433', 'Baptist', '09265765433', 'Kabankalan City', 'km123', '003bf8d441ac8ba4a12e2e0ed24b8d78313d8dbc', 'Transferee', 1, 30, '', '', '', 0) ; 
INSERT INTO `tblstudent` VALUES (4, 100000061, 'Nely', 'Lacson', 'I', 'Female', '1990-06-05', 'Dancalan Ilog Negros, Occiental', 'Married', 0, 'Filipino', 'Baptist', '09302565255', 'Dancalan Ilog Negros, Occiental', 'nely123', '260138f2550fad56d20d16cf937ba327f3594c76', 'Irregular', 2, 30, '', '', '', 0) ; 
INSERT INTO `tblstudent` VALUES (6, 100000062, 'Jacob', 'Lacson', 'P.', 'Male', '1990-10-11', 'Kabankalan City Negros Occidental', 'Single', 0, 'Filipino', 'Catholic', '09293733782', 'Kabankalan City Negros Occidental', 'jacob', 'f862f167b85d41b225785c70d70808bc7337c1fe', 'Regular', 2, 31, 'student_image/2.jpg', 'First', '', 0) ; 
INSERT INTO `tblstudent` VALUES (7, 100000067, 'Shynee', 'Geasin', 'T', 'Female', '2040-04-04', 'Dancalan Ilog Negros, Occiental', 'Married', 0, 'Filipino', 'Catholic', '09305478954', 'Dancalan Ilog Negros, Occiental', 'shynee123', 'e3c6aaccd4f720c325f8c527fca4f9f207c19c46', 'New', 0, 30, '', '', '', 0) ; 
INSERT INTO `tblstudent` VALUES (8, 100000068, 'Carla', 'Sitio', 'M', 'Female', '1990-09-20', 'Kabankalan City Negros Occidental', 'Single', 0, 'Filipino', 'Catholic', '09206548977', 'Kabankalan City Negros Occidental', 'carla123', '8191102daf43b28ce60897470d36276afcf164fe', 'New', 0, 30, '', '', '', 1) ; 
INSERT INTO `tblstudent` VALUES (9, 100000069, 'Seth', 'kaling', 'A', 'Male', '1990-03-21', 'Bacolod City', 'Married', 0, 'Filipino', 'Catholic', '09205489574', 'Bacolod City, Negros Occidental', 'seth321', 'e663899691a6de4c7707562b42760d87b6f27887', 'New', 0, 30, '', '', '', 1) ; 
INSERT INTO `tblstudent` VALUES (11, 100000071, 'Arnold', 'Clavia', 'w', 'Male', '1990-12-24', 'Kabankalan City Negros Occidental', 'Single', 0, 'Filipino', 'Catholic', '09456312341', 'Kabankalan City Negros Occidental', 'arnold', '6f9019a59c51da7447ae804dd2cbe5203f6f90ac', 'Transferee', 0, 30, '', 'First', '', 0) ;
#
# End of data contents of table tblstudent
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Sunday 2. October 2016 04:39 CEST
# Hostname: localhost
# Database: `dbgreenvalley`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `schoolyr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblpayment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblschedule`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `useraccounts`
# --------------------------------------------------------


#
# Delete any existing table `useraccounts`
#

DROP TABLE IF EXISTS `useraccounts`;


#
# Table structure of table `useraccounts`
#

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table useraccounts (1 records)
#
 
INSERT INTO `useraccounts` VALUES (1, 'Janno Palacios', 'janobe', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/LoginRed.jpg') ;
#
# End of data contents of table useraccounts
# --------------------------------------------------------

