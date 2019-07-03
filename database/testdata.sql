/*
 Navicat Premium Data Transfer

 Source Server         : dataBase
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : testdata

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 08/05/2019 01:10:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Aca_Assignment
-- ----------------------------
DROP TABLE IF EXISTS `Aca_Assignment`;
CREATE TABLE `Aca_Assignment` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  KEY `user_con` (`username`),
  KEY `semester_conn` (`semester`),
  KEY `module_conn` (`moduleCode`),
  CONSTRAINT `module_conn` FOREIGN KEY (`moduleCode`) REFERENCES `module` (`moduleCode`),
  CONSTRAINT `semester_conn` FOREIGN KEY (`semester`) REFERENCES `module` (`semester`),
  CONSTRAINT `user_con` FOREIGN KEY (`username`) REFERENCES `academics` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Aca_Assignment
-- ----------------------------
BEGIN;
INSERT INTO `Aca_Assignment` VALUES ('Chris Murray', 'COM3301', 'BOTH Semesters');
INSERT INTO `Aca_Assignment` VALUES ('Guy Brown', 'COM3550', 'BOTH Semesters');
INSERT INTO `Aca_Assignment` VALUES ('Dawn Walker', 'COM4520 / 6520', 'BOTH Semesters');
INSERT INTO `Aca_Assignment` VALUES ('Chris Murray', 'COM4525', 'BOTH Semesters');
INSERT INTO `Aca_Assignment` VALUES ('K.Bogdanov', 'COM1001', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Paul Watton', 'COM1002', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Siobhan', 'COM1003', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Rob Gaizauskas', 'COM1005', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Ramsay Taylor', 'COM1006', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Emma Norling', 'COM1008', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Mark Hepple', 'COM160/161', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Jon Barker', 'COM2004 / 3004', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Dr Anthony J H Simons', 'COM2008 / 3008', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Phil Green', 'COM2108', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Kirill bogdanov', 'COM2109', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Mark Hepple', 'COM3110', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Rob Gaizauskas', 'COM3110', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Richard Clayton', 'COM3310', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Roger Moore', 'COM3502', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('steve maddock', 'COM3503', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Hamish Cunningham', 'COM3505', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Mark Hepple', 'COM4115 / 6115', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Roger Moore', 'COM4502 / 6502', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('steve maddock', 'COM4503 / 6503', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Neil Walkinshaw', 'COM4506 / 6506', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Haiping Lu', 'COM4509 / 6509', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Fabio Ciravegna', 'COM4510 / 6510', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('John A Clark', 'COM6014', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('John A Clark', 'COM6016', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Yoshi Gotoh', 'COM6063', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Emma Norling', 'COM6105', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Ramsay Taylor', 'COM6471', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Heidi Christensen', 'COM6516', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Harriet Holman', 'COM6534', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Amanda Sharkey', 'COM6655', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Mark Hepple', 'GEE106', 'Semester 1 only');
INSERT INTO `Aca_Assignment` VALUES ('Mark Stevenson', 'COM1002', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Maria-Cruz Villa-Uriol', 'COM1003', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Phil Green', 'COM1005', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Dirk Sudholt', 'COM1009', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Georg Struth', 'COM2107', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Mike Stannett', 'COM2109', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Ramsay Taylor', 'COM3190', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Emma Norling', 'COM3420', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Achim D. Brucker', 'COM3501', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Achim D. Brucker', 'COM4501 / 6501', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Georg Struth', 'COM4507 / 6507', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Haiping Lu', 'COM6012', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('John A Clark', 'COM6013', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Achim D. Brucker', 'COM6015', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('John A Clark', 'COM6017', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Maria-Cruz Villa-Uriol', 'COM6102', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Emma Norling', 'COM6104', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Harriet Holman', 'COM6535', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Paul Watton', 'COM6905', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Tony Prescott', 'COM3330', 'BOTH Semesters');
INSERT INTO `Aca_Assignment` VALUES ('Dawn Walker', 'COM3001', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Dawn Walker', 'COM6009', 'Semester 2 only');
INSERT INTO `Aca_Assignment` VALUES ('Eleni Vasilaki', 'COM3240 / 6106', 'Semester 2 only');
COMMIT;

-- ----------------------------
-- Table structure for academics
-- ----------------------------
DROP TABLE IF EXISTS `academics`;
CREATE TABLE `academics` (
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Is_Year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of academics
-- ----------------------------
BEGIN;
INSERT INTO `academics` VALUES ('123', '456', 'Achim D. Brucker', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Amanda Sharkey', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Chris Murray', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Dawn Walker', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Dirk Sudholt', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Dr Anthony J H Simons', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Eleni Vasilaki', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Emma Norling', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Fabio Ciravegna', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Georg Struth', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Guy Brown', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Haiping Lu', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Hamish Cunningham', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Harriet Holman', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Heidi Christensen', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'John A Clark', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Jon Barker', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'K.Bogdanov', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Kirill bogdanov', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Maria-Cruz Villa-Uriol', NULL, NULL);
INSERT INTO `academics` VALUES ('222', '222', 'Mark Hepple', NULL, '1');
INSERT INTO `academics` VALUES (NULL, NULL, 'Mark Stevenson', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Mike Stannett', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Neil Walkinshaw', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Paul Watton', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Phil Green', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Ramsay Taylor', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Richard Clayton', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Rob Gaizauskas', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Roger Moore', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Siobhan', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'steve maddock', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Tony Prescott', NULL, NULL);
INSERT INTO `academics` VALUES (NULL, NULL, 'Yoshi Gotoh', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for assignment
-- ----------------------------
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `moduleCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `startTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assignmentID` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`assignmentID`) USING BTREE,
  KEY `code_conn` (`moduleCode`),
  KEY `seme_conn` (`semester`),
  CONSTRAINT `code_conn` FOREIGN KEY (`moduleCode`) REFERENCES `module` (`moduleCode`),
  CONSTRAINT `seme_conn` FOREIGN KEY (`semester`) REFERENCES `module` (`semester`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assignment
-- ----------------------------
BEGIN;
INSERT INTO `assignment` VALUES ('COM3301', 'Breadth of Knowledge Test (Part 1)', 'BOTH Semesters', 'MOLE quiz', '5', '', '13/11/2018', 1);
INSERT INTO `assignment` VALUES ('COM3301', 'Reflection on Performance (Part 1)', 'BOTH Semesters', 'Assignment', '5', '26/11/2018', '30/11/2018', 2);
INSERT INTO `assignment` VALUES ('COM3301', 'Team Presentation (Part 1)', 'BOTH Semesters', 'Presentation', '5', '', '04/12/2018', 3);
INSERT INTO `assignment` VALUES ('COM3301', 'Team Project (Part 1)', 'BOTH Semesters', 'Assignment', '35', '25/09/2018', '11/12/2018', 4);
INSERT INTO `assignment` VALUES ('COM3301', 'Breadth of Knowledge Test (Part 2)', 'BOTH Semesters', 'MOLE quiz', '5', '', '29/03/2019', 5);
INSERT INTO `assignment` VALUES ('COM3301', 'Reflection on Performance (Part 2)', 'BOTH Semesters', 'Assignment', '5', '29/04/2019', '03/05/2019', 6);
INSERT INTO `assignment` VALUES ('COM3301', 'Team Presentation (Part 2)', 'BOTH Semesters', 'Presentation', '5', '', '10/05/2019', 7);
INSERT INTO `assignment` VALUES ('COM3301', 'Team Project (Part 2)', 'BOTH Semesters', 'Assignment', '35', '08/02/2019', '14/05/2019', 8);
INSERT INTO `assignment` VALUES ('COM3550', 'Portfolio assessment', 'BOTH Semesters', 'Assignment', '100%', '05/10/2018', '20/05/2019', 9);
INSERT INTO `assignment` VALUES ('COM4520 / 6520', 'Initial presentation', 'BOTH Semesters', 'Presentation', '5%', '16/10/2018', '06/11/2018', 10);
INSERT INTO `assignment` VALUES ('COM4520 / 6520', 'Interim research report (group)', 'BOTH Semesters', 'Assignment', '20', '16/10/2018', '10/12/2018', 11);
INSERT INTO `assignment` VALUES ('COM4520 / 6520', 'Final report (group)', 'BOTH Semesters', 'Assignment', '30', '', '03/05/2019', 12);
INSERT INTO `assignment` VALUES ('COM4520 / 6520', 'Journal Paper (group)', 'BOTH Semesters', 'Assignment', '10', '', '13/05/2019', 13);
INSERT INTO `assignment` VALUES ('COM4520 / 6520', 'Final presentation (individual)', 'BOTH Semesters', 'Presentation', '5', '', '16/05/2019', 14);
INSERT INTO `assignment` VALUES ('COM4520 / 6520', 'Individual performance', 'BOTH Semesters', 'Individual performance', '30', '', '17/05/2019', 15);
INSERT INTO `assignment` VALUES ('COM4525', 'Breadth of Knowledge Test (Part 1)', 'BOTH Semesters', 'MOLE quiz', '5', '', '12/11/2018', 16);
INSERT INTO `assignment` VALUES ('COM4525', 'Reflection on Performance (Part 1)', 'BOTH Semesters', 'Assignment', '2.5', '26/11/2018', '30/11/2018', 17);
INSERT INTO `assignment` VALUES ('COM4525', 'Team Presentation (Part 1)', 'BOTH Semesters', 'Presentation', '5', '', '03/12/2018', 18);
INSERT INTO `assignment` VALUES ('COM4525', 'Team Project (Part 1)', 'BOTH Semesters', 'Assignment', '35', '24/09/2018', '11/12/2018', 19);
INSERT INTO `assignment` VALUES ('COM4525', 'Breadth of Knowledge Test (Part 2)', 'BOTH Semesters', 'MOLE quiz', '5', '', '26/03/2019', 20);
INSERT INTO `assignment` VALUES ('COM4525', 'Reflection on Performance (Part 2)', 'BOTH Semesters', 'Assignment', '2.5', '29/04/2019', '03/05/2019', 21);
INSERT INTO `assignment` VALUES ('COM4525', 'Team Presentation (Part 2)', 'BOTH Semesters', 'Presentation', '5', '07/05/2019', '07/05/2019', 22);
INSERT INTO `assignment` VALUES ('COM4525', 'Team Project (Part 2)', 'BOTH Semesters', 'Assignment', '35', '05/02/2019', '14/05/2019', 23);
INSERT INTO `assignment` VALUES ('COM4525', 'Involvement as a Customer in COM1001', 'BOTH Semesters', 'Assignment', '5', '30/10/2018', '08/05/2019', 24);
INSERT INTO `assignment` VALUES ('COM1001', 'Individual Ruby assignment', 'Semester 1 only', 'Assignment', '01-Jun', '20/11/2018', '14/12/2018', 25);
INSERT INTO `assignment` VALUES ('COM1001', 'Group Requirements Elicitation assignment', 'Semester 1 only', 'Assignment', '01-Jun', '22/10/2018', '23/11/2018', 26);
INSERT INTO `assignment` VALUES ('COM1001', 'Mole Quiz', 'Semester 1 only', 'MOLE quiz', '01-Jun', '12/11/2018', '12/11/2018', 27);
INSERT INTO `assignment` VALUES ('COM1002', 'MOLE Quiz 1', 'Semester 1 only', 'MOLE quiz', '35%', '31/10/2018', '31/10/2018', 28);
INSERT INTO `assignment` VALUES ('COM1002', 'MOLE Quiz 2', 'Semester 1 only', 'MOLE quiz', '35%', '12/12/2018', '12/12/2018', 29);
INSERT INTO `assignment` VALUES ('COM1002', 'Exercise Sheet 1', 'Semester 1 only', 'Exercise/problem sheet', '7.5', '02/10/2018', '09/10/2018', 30);
INSERT INTO `assignment` VALUES ('COM1002', 'Exercise Sheet 2', 'Semester 1 only', 'Exercise/problem sheet', '7.5', '16/10/2018', '23/10/2018', 31);
INSERT INTO `assignment` VALUES ('COM1002', 'Exercise Sheet 3', 'Semester 1 only', 'Exercise/problem sheet', '7.5', '13/11/2018', '20/11/2018', 32);
INSERT INTO `assignment` VALUES ('COM1002', 'Exercise Sheet 4', 'Semester 1 only', 'Exercise/problem sheet', '7.5', '27/11/2018', '04/12/2018', 33);
INSERT INTO `assignment` VALUES ('COM1003', 'Quiz 1', 'Semester 1 only', 'MOLE quiz', '8%', '', '18/10/2018', 34);
INSERT INTO `assignment` VALUES ('COM1003', 'Quiz 2', 'Semester 1 only', 'MOLE quiz', '8%', '15/11/2018', '15/11/2018', 35);
INSERT INTO `assignment` VALUES ('COM1003', 'Quiz 3', 'Semester 1 only', 'MOLE quiz', '8%', '', '06/12/2018', 36);
INSERT INTO `assignment` VALUES ('COM1003', 'Assignment 1', 'Semester 1 only', 'Assignment', '6%', '11/10/2018', '29/10/2018', 37);
INSERT INTO `assignment` VALUES ('COM1003', 'Assignment 2', 'Semester 1 only', 'Assignment', '10%', '08/11/2018', '26/11/2018', 38);
INSERT INTO `assignment` VALUES ('COM1003', 'Assignment 3', 'Semester 1 only', 'Assignment', '10%', '22/11/2018', '18/01/2019', 39);
INSERT INTO `assignment` VALUES ('COM1005', 'Lab 1', 'Semester 1 only', 'Assessed lab', 'Rob Gaizauskas', '28/09/2018', '05/10/2018', 40);
INSERT INTO `assignment` VALUES ('COM1005', 'Lab 2', 'Semester 1 only', 'Assessed lab', '8', '12/10/2018', '19/10/2018', 41);
INSERT INTO `assignment` VALUES ('COM1005', 'Lab 3', 'Semester 1 only', 'Assessed lab', '8', '26/10/2018', '09/11/2018', 42);
INSERT INTO `assignment` VALUES ('COM1005', 'Lab 4', 'Semester 1 only', 'Assessed lab', '8', '16/11/2018', '23/11/2018', 43);
INSERT INTO `assignment` VALUES ('COM1005', 'Lab 5', 'Semester 1 only', 'Assessed lab', '8', '30/11/2018', '07/12/2018', 44);
INSERT INTO `assignment` VALUES ('COM1005', 'Quiz 1', 'Semester 1 only', 'MOLE quiz', '30', '', '05/11/2018', 45);
INSERT INTO `assignment` VALUES ('COM1005', 'Quiz 2', 'Semester 1 only', 'MOLE quiz', '30', '', '10/12/2018', 46);
INSERT INTO `assignment` VALUES ('COM1006', 'Quiz 1', 'Semester 1 only', 'MOLE quiz', '3.75', '19/10/2018', '19/10/2018', 47);
INSERT INTO `assignment` VALUES ('COM1006', 'Quiz 2', 'Semester 1 only', 'MOLE quiz', '3.75', '02/11/2018', '02/11/2018', 48);
INSERT INTO `assignment` VALUES ('COM1006', 'Quiz 3', 'Semester 1 only', 'MOLE quiz', '3.75', '23/11/2018', '23/11/2018', 49);
INSERT INTO `assignment` VALUES ('COM1006', 'Quiz 4', 'Semester 1 only', 'MOLE quiz', '3.75', '07/12/2018', '07/12/2018', 50);
INSERT INTO `assignment` VALUES ('COM1008', 'Mole Quiz 1', 'Semester 1 only', 'MOLE quiz', '10%', '', '26/10/2018', 51);
INSERT INTO `assignment` VALUES ('COM1008', 'Mole Quiz 2', 'Semester 1 only', 'MOLE quiz', '15%', '', '07/12/2018', 52);
INSERT INTO `assignment` VALUES ('COM1008', 'Assignment 1: Web Site', 'Semester 1 only', 'Assignment', '50%', '', '26/11/2018', 53);
INSERT INTO `assignment` VALUES ('COM1008', 'Assignment 2: Javascript', 'Semester 1 only', 'Assignment', '25%', '', '10/12/2018', 54);
INSERT INTO `assignment` VALUES ('COM160/161', 'Assessed Lab', 'Semester 1 only', 'Assessed lab', '40', '', '03/12/2018', 55);
INSERT INTO `assignment` VALUES ('COM160/161', 'Final MCQ Exam', 'Semester 1 only', 'MOLE quiz', '60', '', '10/12/2018', 56);
INSERT INTO `assignment` VALUES ('COM2004 / 3004', 'Peer Marked Assignment', 'Semester 1 only', 'Assignment', '0', '22/10/2018', '29/10/2018', 57);
INSERT INTO `assignment` VALUES ('COM2004 / 3004', 'Assignment', 'Semester 1 only', 'Assignment', '50%', '05/11/2018', '12/12/2018', 58);
INSERT INTO `assignment` VALUES ('COM2004 / 3004', 'Exam', 'Semester 1 only', 'Formal exam', '50%', '31/01/2019', '31/01/2019', 59);
INSERT INTO `assignment` VALUES ('COM2008 / 3008', 'Group Systems Design Project', 'Semester 1 only', 'Group Systems Design Project', '40%  (to leave 10% for testing)', '15/10/2018', '02/12/2018', 60);
INSERT INTO `assignment` VALUES ('COM2008 / 3008', 'Individual Testing Report', 'Semester 1 only', 'Individual Testing Report', '10%  (part of the overall project-work)', '03/12/2018', '07/12/2018', 61);
INSERT INTO `assignment` VALUES ('COM2008 / 3008', 'MOLE Formal Examination', 'Semester 1 only', 'MOLE quiz', '50%', '', '01/02/2019', 62);
INSERT INTO `assignment` VALUES ('COM2108', 'Assignment 1: Bags', 'Semester 1 only', 'Assignment', '25%', '08/10/2018', '22/10/2018', 63);
INSERT INTO `assignment` VALUES ('COM2108', 'Assignment 2: 8-off Solitaire Part 1', 'Semester 1 only', 'Assignment', '25%', '05/11/2018', '19/11/2018', 64);
INSERT INTO `assignment` VALUES ('COM2108', 'Assignment 3: 8-off solitaire part 2', 'Semester 1 only', 'Assignment', '50%', '26/11/2018', '13/12/2018', 65);
INSERT INTO `assignment` VALUES ('COM2109', 'Exam in January', 'Semester 1 only', 'Formal exam', '50%', '', '25/01/2019', 66);
INSERT INTO `assignment` VALUES ('COM3110', 'Assignment', 'Semester 1 only', 'Assignment', '25', '22/10/2018', '12/11/2018', 67);
INSERT INTO `assignment` VALUES ('COM3110', 'Examination', 'Semester 1 only', 'Formal exam', '75', '', '01/02/2019', 68);
INSERT INTO `assignment` VALUES ('COM3110', 'Assignment 1', 'Semester 1 only', 'Assignment', '25%', '22/10/2018', '12/11/2018', 69);
INSERT INTO `assignment` VALUES ('COM3110', 'Examination', 'Semester 1 only', 'Formal exam', '75%', '', '01/02/2018', 70);
INSERT INTO `assignment` VALUES ('COM3310', 'Assignment part 1', 'Semester 1 only', 'Assignment', '30%', '', '19/11/2018', 71);
INSERT INTO `assignment` VALUES ('COM3310', 'Assignment part 2', 'Semester 1 only', 'Assignment', '30', '', '14/12/2018', 72);
INSERT INTO `assignment` VALUES ('COM3310', 'Exam', 'Semester 1 only', 'Formal exam', '40', '', '01/02/2019', 73);
INSERT INTO `assignment` VALUES ('COM3502', 'Introductory Programming Exercise', 'Semester 1 only', 'Assessed lab', '10%', '01/10/2018', '22/10/2018', 74);
INSERT INTO `assignment` VALUES ('COM3502', 'Main Programming Exercise', 'Semester 1 only', 'Assignment', '45%', '23/10/2018', '07/12/2018', 75);
INSERT INTO `assignment` VALUES ('COM3502', 'MOLE Quiz 1', 'Semester 1 only', 'MOLE quiz', '20%', '14/11/2018', '14/11/2018', 76);
INSERT INTO `assignment` VALUES ('COM3502', 'MOLE Quiz 2', 'Semester 1 only', 'MOLE quiz', '25%', '05/12/2018', '05/12/2018', 77);
INSERT INTO `assignment` VALUES ('COM3503', 'Programming assignment', 'Semester 1 only', 'Assignment', '40', '26/10/2018', '05/12/2018', 78);
INSERT INTO `assignment` VALUES ('COM3503', 'Exam', 'Semester 1 only', 'Formal exam', '60', '', '01/02/2019', 79);
INSERT INTO `assignment` VALUES ('COM3505', 'Lab assessment 1', 'Semester 1 only', 'Assessed lab', '30', '', '02/11/2018', 80);
INSERT INTO `assignment` VALUES ('COM3505', 'MOLE quiz', 'Semester 1 only', 'MOLE quiz', '40', '', '10/12/2018', 81);
INSERT INTO `assignment` VALUES ('COM3505', 'Lab assessment 2', 'Semester 1 only', 'Assessed lab', '30', '', '14/12/2018', 82);
INSERT INTO `assignment` VALUES ('COM4115 / 6115', 'Assignment 1', 'Semester 1 only', 'Assignment', '25', '22/10/2018', '12/11/2018', 83);
INSERT INTO `assignment` VALUES ('COM4115 / 6115', 'Assignment 2', 'Semester 1 only', 'Assignment', '25', '12/11/2018', '03/12/2018', 84);
INSERT INTO `assignment` VALUES ('COM4115 / 6115', 'Examination', 'Semester 1 only', 'Formal exam', '50', '', '01/02/2019', 85);
INSERT INTO `assignment` VALUES ('COM4502 / 6502', 'Introductory Programming Exercise', 'Semester 1 only', 'Assessed lab', '10%', '01/10/2018', '22/10/2018', 86);
INSERT INTO `assignment` VALUES ('COM4502 / 6502', 'Main Programming Exercise', 'Semester 1 only', 'Assignment', '45%', '23/10/2018', '07/12/2018', 87);
INSERT INTO `assignment` VALUES ('COM4502 / 6502', 'MOLE Quiz 1', 'Semester 1 only', 'MOLE quiz', '20%', '14/11/2018', '14/11/2018', 88);
INSERT INTO `assignment` VALUES ('COM4502 / 6502', 'MOLE Quiz 2', 'Semester 1 only', 'MOLE quiz', '25%', '05/12/2018', '05/12/2018', 89);
INSERT INTO `assignment` VALUES ('COM4503 / 6503', 'Programming assignment', 'Semester 1 only', 'Assignment', '27', '26/10/2018', '05/12/2018', 90);
INSERT INTO `assignment` VALUES ('COM4503 / 6503', 'Assignment 2: Research study', 'Semester 1 only', 'Assignment', '33', '26/10/2018', '12/12/2018', 91);
INSERT INTO `assignment` VALUES ('COM4503 / 6503', 'Exam', 'Semester 1 only', 'Formal exam', '40', '', '01/02/2019', 92);
INSERT INTO `assignment` VALUES ('COM4506 / 6506', 'Mole Quiz 1', 'Semester 1 only', 'MOLE quiz', '20', '23/10/2018', '23/10/2018', 93);
INSERT INTO `assignment` VALUES ('COM4506 / 6506', 'MOLE quiz 2', 'Semester 1 only', 'MOLE quiz', '20', '20/11/2018', '20/11/2018', 94);
INSERT INTO `assignment` VALUES ('COM4506 / 6506', 'State Machine Testing Assignment', 'Semester 1 only', 'Assignment', '30', '26/10/2018', '09/11/2018', 95);
INSERT INTO `assignment` VALUES ('COM4506 / 6506', 'Lab work portfolio', 'Semester 1 only', 'Assignment', '30', '15/10/2018', '14/12/2018', 96);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 1', 'Semester 1 only', 'Assignment', '3', '24/09/2018', '05/10/2018', 97);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 2', 'Semester 1 only', 'Assignment', '5', '01/10/2018', '12/10/2018', 98);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 3', 'Semester 1 only', 'Assignment', '5', '08/10/2018', '19/10/2018', 99);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 4', 'Semester 1 only', 'Assignment', '5', '15/10/2018', '26/10/2018', 100);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 5', 'Semester 1 only', 'Assignment', '5', '22/10/2018', '02/11/2018', 101);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 6', 'Semester 1 only', 'Assignment', '5', '29/10/2018', '09/11/2018', 102);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Assignment 7 ', 'Semester 1 only', 'Assignment', '7', '05/11/2018', '23/11/2018', 103);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'MCQ', 'Semester 1 only', 'MOLE quiz', '15', '05/12/2018', '05/12/2018', 104);
INSERT INTO `assignment` VALUES ('COM4509 / 6509', 'Final Exam', 'Semester 1 only', 'Formal exam', '50', '', '01/02/2019', 105);
INSERT INTO `assignment` VALUES ('COM4510 / 6510', 'Final Assignment', 'Semester 1 only', 'Assignment', '100%', '22/10/2018', '14/12/2018', 106);
INSERT INTO `assignment` VALUES ('COM6014', 'Formal Examination 1: Fundmental Security Properties and Mechanisms', 'Semester 1 only', 'Formal exam', '90%', '01/02/2019', '01/02/2018', 107);
INSERT INTO `assignment` VALUES ('COM6014', 'Podcast Creation: Fundamental Security Properties and Mechanisms', 'Semester 1 only', 'Formal exam', '10%', '10/12/2018', '25/01/2019', 108);
INSERT INTO `assignment` VALUES ('COM6016', 'Forensics Lab', 'Semester 1 only', 'Assessed lab', '50%', '21/01/2019', '21/01/2018', 109);
INSERT INTO `assignment` VALUES ('COM6016', 'Forensics Research Assignment', 'Semester 1 only', 'Assignment', '50%', '12/12/2018', '25/01/2019', 110);
INSERT INTO `assignment` VALUES ('COM6063', 'report assignment', 'Semester 1 only', 'Assignment', '20%', '27/09/2018', '26/11/2018', 111);
INSERT INTO `assignment` VALUES ('COM6063', 'formal examination', 'Semester 1 only', 'Formal exam', '80%', '', '01/02/2019', 112);
INSERT INTO `assignment` VALUES ('COM6105', 'Portfolio', 'Semester 1 only', 'Portfolio', '100%', '24/09/2018', '10/12/2018', 113);
INSERT INTO `assignment` VALUES ('COM6471', 'Assignment 1', 'Semester 1 only', 'Assignment', '10', '05/10/2018', '12/10/2018', 114);
INSERT INTO `assignment` VALUES ('COM6471', 'Assignment 2', 'Semester 1 only', 'Assignment', '30', '02/11/2018', '09/11/2018', 115);
INSERT INTO `assignment` VALUES ('COM6471', 'Assignment 3', 'Semester 1 only', 'Assignment', '60', '23/11/2018', '14/12/2018', 116);
INSERT INTO `assignment` VALUES ('COM6516', 'Assessed Lab 1', 'Semester 1 only', 'Assessed lab', '20%', '29/10/2018', '29/10/2018', 117);
INSERT INTO `assignment` VALUES ('COM6516', 'Assessed Lab 2', 'Semester 1 only', 'Assessed lab', '20%', '10/12/2018', '10/12/2018', 118);
INSERT INTO `assignment` VALUES ('COM6516', 'Final Coursework', 'Semester 1 only', 'Assignment', '60%', '04/12/2018', '14/01/2019', 119);
INSERT INTO `assignment` VALUES ('COM6534', 'Breadth of Knowledge Test', 'Semester 1 only', 'MOLE quiz', '10', '', '13/11/2018', 120);
INSERT INTO `assignment` VALUES ('COM6534', 'Reflection on Performance', 'Semester 1 only', 'Assignment', '10', '26/11/2018', '30/11/2018', 121);
INSERT INTO `assignment` VALUES ('COM6534', 'Team Presentation', 'Semester 1 only', 'Presentation', '10', '', '04/12/2018', 122);
INSERT INTO `assignment` VALUES ('COM6534', 'Team Project', 'Semester 1 only', 'Assignment', '70', '25/09/2018', '11/12/2018', 123);
INSERT INTO `assignment` VALUES ('COM6655', 'Assignment 1', 'Semester 1 only', 'Assignment', '30%', '18/10/2018', '31/10/2018', 124);
INSERT INTO `assignment` VALUES ('COM6655', 'Final assignment', 'Semester 1 only', 'Assignment', '70%', '22/11/2018', '07/12/2018', 125);
INSERT INTO `assignment` VALUES ('GEE106', 'Assessed Lab', 'Semester 1 only', 'Assessed lab', '40', '', '03/12/2018', 126);
INSERT INTO `assignment` VALUES ('GEE106', 'Final MCQ Exam', 'Semester 1 only', 'MOLE quiz', '60', '', '10/12/2018', 127);
INSERT INTO `assignment` VALUES ('COM1002', 'Exam', 'Semester 2 only', 'Formal exam', '100%', '', '01/01/2018', 128);
INSERT INTO `assignment` VALUES ('COM1003', 'MOLE Quiz 1', 'Semester 2 only', 'MOLE quiz', '2.5', '', '15/02/2019', 129);
INSERT INTO `assignment` VALUES ('COM1003', 'MOLE Quiz 2', 'Semester 2 only', 'MOLE quiz', '2.5', '', '01/03/2019', 130);
INSERT INTO `assignment` VALUES ('COM1003', 'Lab Problem Sheet 1', 'Semester 2 only', 'Exercise/problem sheet', '5', '', '01/03/2019', 131);
INSERT INTO `assignment` VALUES ('COM1003', 'MOLE Quiz 3', 'Semester 2 only', 'MOLE quiz', '2.5', '', '15/03/2019', 132);
INSERT INTO `assignment` VALUES ('COM1003', 'Lab Problem Sheet 2', 'Semester 2 only', 'Exercise/problem sheet', '5', '', '15/03/2019', 133);
INSERT INTO `assignment` VALUES ('COM1003', 'MOLE Quiz 4', 'Semester 2 only', 'MOLE quiz', '2.5', '', '29/03/2019', 134);
INSERT INTO `assignment` VALUES ('COM1003', 'MOLE Quiz 5', 'Semester 2 only', 'MOLE quiz', '2.5', '', '10/05/2019', 135);
INSERT INTO `assignment` VALUES ('COM1003', 'Assignment', 'Semester 2 only', 'Assignment', '27.5', '', '10/05/2019', 136);
INSERT INTO `assignment` VALUES ('COM1005', 'Semester 2 Assignment 1: Searching Word Lattices', 'Semester 2 only', 'Assignment', '12.50%', '25/02/2019', '18/03/2019', 137);
INSERT INTO `assignment` VALUES ('COM1005', 'Assignment 2:  Rule Networks', 'Semester 2 only', 'Assignment', '12.50%', '25/03/2018', '30/04/2018', 138);
INSERT INTO `assignment` VALUES ('COM1005', 'Semester 2 Exam', 'Semester 2 only', 'MOLE Exam', '25%', '', '01/06/2018', 139);
INSERT INTO `assignment` VALUES ('COM1009', 'First marked problem sheet', 'Semester 2 only', 'Exercise/problem sheet', '7.50%', '18/02/2018', '25/02/2018', 140);
INSERT INTO `assignment` VALUES ('COM1009', 'Second marked problem sheet', 'Semester 2 only', 'Exercise/problem sheet', '7.50%', '04/03/2018', '11/03/2018', 141);
INSERT INTO `assignment` VALUES ('COM1009', 'Third marked problem sheet', 'Semester 2 only', 'Exercise/problem sheet', '7.50%', '18/03/2018', '25/03/2018', 142);
INSERT INTO `assignment` VALUES ('COM1009', 'Fourth marked problem sheet', 'Semester 2 only', 'Exercise/problem sheet', '7.50%', '01/04/2018', '29/04/2018', 143);
INSERT INTO `assignment` VALUES ('COM1009', 'Exam', 'Semester 2 only', 'Formal exam', '70%', '', '01/06/2018', 144);
INSERT INTO `assignment` VALUES ('COM2107', 'exam', 'Semester 2 only', 'Formal exam', '100', '', '06/01/2018', 145);
INSERT INTO `assignment` VALUES ('COM2109', 'n/a', 'Semester 2 only', 'Formal exam', '50% of ACAD YR', '', '01/06/2019', 146);
INSERT INTO `assignment` VALUES ('COM3190', 'Erlang Assignment', 'Semester 2 only', 'Assignment', '30', '05/04/2019', '17/05/2019', 147);
INSERT INTO `assignment` VALUES ('COM3190', 'Exam', 'Semester 2 only', 'Formal exam', '70', '', '01/06/2019', 148);
INSERT INTO `assignment` VALUES ('COM3420', 'Individual reflection', 'Semester 2 only', 'Assignment', '5%', '', '20/05/2019', 149);
INSERT INTO `assignment` VALUES ('COM3420', 'Time sheets', 'Semester 2 only', 'Time Keeping', '5%', '', '20/05/2019', 150);
INSERT INTO `assignment` VALUES ('COM3420', 'Moderated Staff Assessment', 'Semester 2 only', 'Assignment', '40%', '', '20/05/2019', 151);
INSERT INTO `assignment` VALUES ('COM3420', 'Moderated Client Assessment', 'Semester 2 only', 'Assignment', '50%', '', '13/05/2019', 152);
INSERT INTO `assignment` VALUES ('COM3501', 'Mole Quiz 1', 'Semester 2 only', 'MOLE quiz', '3', '11/02/2019', '15/02/2019', 153);
INSERT INTO `assignment` VALUES ('COM3501', 'MOLE Quiz 2', 'Semester 2 only', 'MOLE quiz', '9', '04/03/2019', '09/03/2019', 154);
INSERT INTO `assignment` VALUES ('COM3501', 'MOLE Quiz 3', 'Semester 2 only', 'MOLE quiz', '9', '19/03/2019', '24/03/2019', 155);
INSERT INTO `assignment` VALUES ('COM3501', 'MOLE Quiz 4', 'Semester 2 only', 'MOLE quiz', '9', '29/04/2019', '03/05/2019', 156);
INSERT INTO `assignment` VALUES ('COM3501', 'Exam', 'Semester 2 only', 'Formal exam', '70', '', '06/01/2019', 157);
INSERT INTO `assignment` VALUES ('COM4501 / 6501', 'MOLE Quiz 1', 'Semester 2 only', 'MOLE quiz', '3', '02/11/2018', '02/12/2018', 158);
INSERT INTO `assignment` VALUES ('COM4501 / 6501', 'MOLE Quiz 2', 'Semester 2 only', 'MOLE quiz', '9', '04/03/2018', '09/03/2018', 159);
INSERT INTO `assignment` VALUES ('COM4501 / 6501', 'MOLE Quiz 3', 'Semester 2 only', 'MOLE quiz', '9', '18/03/2018', '23/03/2018', 160);
INSERT INTO `assignment` VALUES ('COM4501 / 6501', 'MOLE Quiz 4', 'Semester 2 only', 'MOLE quiz', '9', '29/04/2018', '02/05/2018', 161);
INSERT INTO `assignment` VALUES ('COM4501 / 6501', 'Exam', 'Semester 2 only', 'Formal exam', '70', '', '01/06/2018', 162);
INSERT INTO `assignment` VALUES ('COM4507 / 6507', 'exam', 'Semester 2 only', 'Formal exam', '100', '', '06/01/2018', 163);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 1', 'Semester 2 only', 'MOLE quiz', '2', '', '06/02/2019', 164);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 2', 'Semester 2 only', 'MOLE quiz', '2', '', '13/02/2019', 165);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 3', 'Semester 2 only', 'MOLE quiz', '2', '', '20/02/2019', 166);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 4', 'Semester 2 only', 'MOLE quiz', '2', '', '27/02/2019', 167);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 5', 'Semester 2 only', 'MOLE quiz', '2', '', '06/03/2019', 168);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 6', 'Semester 2 only', 'MOLE quiz', '2', '', '13/03/2019', 169);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 7', 'Semester 2 only', 'MOLE quiz', '2', '', '20/03/2019', 170);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 8', 'Semester 2 only', 'MOLE quiz', '2', '', '27/03/2019', 171);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 9', 'Semester 2 only', 'MOLE quiz', '2', '', '03/04/2019', 172);
INSERT INTO `assignment` VALUES ('COM6012', 'MCQ 10', 'Semester 2 only', 'MOLE quiz', '2', '', '01/05/2019', 173);
INSERT INTO `assignment` VALUES ('COM6012', 'Assignment 1', 'Semester 2 only', 'Assignment', '20', '11/02/2019', '22/02/2019', 174);
INSERT INTO `assignment` VALUES ('COM6012', 'Assignment 2', 'Semester 2 only', 'Assignment', '20', '25/02/2019', '08/03/2019', 175);
INSERT INTO `assignment` VALUES ('COM6012', 'Assignment 3', 'Semester 2 only', 'Assignment', '20', '18/03/2019', '29/03/2019', 176);
INSERT INTO `assignment` VALUES ('COM6012', 'Assignment 4', 'Semester 2 only', 'Assignment', '20', '01/04/2019', '03/05/2019', 177);
INSERT INTO `assignment` VALUES ('COM6013', 'Cybersecurity and AI Dissertation Project', 'Semester 2 only', 'Assignment', '100%', '29/03/2019', '11/09/2019', 178);
INSERT INTO `assignment` VALUES ('COM6015', 'MOLE Quiz 1', 'Semester 2 only', 'MOLE quiz', '10', '04/03/2018', '09/03/2018', 179);
INSERT INTO `assignment` VALUES ('COM6015', 'MOLE Quizz 2', 'Semester 2 only', 'MOLE quiz', '10', '18/03/2018', '23/03/2018', 180);
INSERT INTO `assignment` VALUES ('COM6015', 'MOLE Quiz 3', 'Semester 2 only', 'MOLE quiz', '10', '29/04/2018', '03/05/2018', 181);
INSERT INTO `assignment` VALUES ('COM6015', 'Exam', 'Semester 2 only', 'Formal exam', '70', '', '01/06/2018', 182);
INSERT INTO `assignment` VALUES ('COM6017', 'Group Report', 'Semester 2 only', 'Assignment', '75%', '17/05/2019', '07/06/2019', 183);
INSERT INTO `assignment` VALUES ('COM6017', 'Poster Assignment', 'Semester 2 only', 'Assignment', '25%', '29/03/2018', '31/05/2018', 184);
INSERT INTO `assignment` VALUES ('COM6102', 'Stage 1', 'Semester 2 only', 'Assignment', '35', '11/02/2019', '04/03/2019', 185);
INSERT INTO `assignment` VALUES ('COM6102', 'Stage 2', 'Semester 2 only', 'Assignment', '35', '04/03/2019', '25/03/2019', 186);
INSERT INTO `assignment` VALUES ('COM6102', 'Stage 3', 'Semester 2 only', 'Assignment', '30', '25/03/2019', '29/04/2019', 187);
INSERT INTO `assignment` VALUES ('COM6104', 'Software Development Assignment', 'Semester 2 only', 'Assignment', '100%', '', '20/05/2019', 188);
INSERT INTO `assignment` VALUES ('COM6535', 'Breadth of Knowledge Test', 'Semester 2 only', 'MOLE quiz', '10', '', '27/03/2019', 189);
INSERT INTO `assignment` VALUES ('COM6535', 'Reflection on Performance', 'Semester 2 only', 'Assignment', '10', '29/04/2019', '03/05/2019', 190);
INSERT INTO `assignment` VALUES ('COM6535', 'Team Presentation', 'Semester 2 only', 'Presentation', '10', '', '08/05/2019', 191);
INSERT INTO `assignment` VALUES ('COM6535', 'Team Project', 'Semester 2 only', 'Assignment', '70', '06/02/2019', '14/05/2019', 192);
INSERT INTO `assignment` VALUES ('COM6905', 'Assignment 1 - Peer review', 'Semester 2 only', 'Assignment', '20%', '27/02/2019', '13/03/2019', 193);
INSERT INTO `assignment` VALUES ('COM6905', 'Assignment 2 - MSc Project Background Report', 'Semester 2 only', 'Assignment', '80%', '13/03/2018', '15/05/2019', 194);
INSERT INTO `assignment` VALUES ('COM3330', 'Semester 1 Review', 'BOTH Semesters', 'Assignment', '25%', '03/12/2018', '11/01/2019', 195);
INSERT INTO `assignment` VALUES ('COM3330', 'Essay', 'BOTH Semesters', 'Assignment', '50%', '25/02/2019', '03/05/2019', 196);
INSERT INTO `assignment` VALUES ('COM3330', 'Semester 2 Review', 'BOTH Semesters', 'Assignment', '25%', '25/03/2019', '24/05/2019', 197);
INSERT INTO `assignment` VALUES ('COM3001', 'ABM Group Assignment', 'Semester 2 only', 'Assignment', '40', '12/02/2019', '22/03/2019', 198);
INSERT INTO `assignment` VALUES ('COM3001', 'Exam', 'Semester 2 only', 'Formal exam', '60', '', '01/06/2019', 199);
INSERT INTO `assignment` VALUES ('COM6009', 'ABM Group Assignment', 'Semester 2 only', 'Assignment', '30', '12/02/2019', '22/03/2019', 200);
INSERT INTO `assignment` VALUES ('COM6009', 'Exam', 'Semester 2 only', 'Formal exam', '35', '', '01/06/2019', 201);
INSERT INTO `assignment` VALUES ('COM6009', 'Individual Assignment', 'Semester 2 only', 'Assignment', '35', '18/03/2019', '13/05/2019', 202);
COMMIT;

-- ----------------------------
-- Table structure for LTM
-- ----------------------------
DROP TABLE IF EXISTS `LTM`;
CREATE TABLE `LTM` (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of LTM
-- ----------------------------
BEGIN;
INSERT INTO `LTM` VALUES ('admin1', '123456');
COMMIT;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `moduleCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`moduleCode`,`semester`),
  KEY `moduleCode` (`moduleCode`),
  KEY `semester` (`semester`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
BEGIN;
INSERT INTO `module` VALUES ('COM1001', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1002', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1002', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1003', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1003', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1005', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1005', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1006', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1008', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM1009', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM160/161', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM2004 / 3004', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM2008 / 3008', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM2107', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM2108', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM2109', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM2109', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3001', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3110', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3190', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3240 / 6106', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3301', 'BOTH Semesters', NULL, NULL);
INSERT INTO `module` VALUES ('COM3310', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3330', 'BOTH Semesters', NULL, NULL);
INSERT INTO `module` VALUES ('COM3420', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3501', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3502', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3503', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3505', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM3550', 'BOTH Semesters', NULL, NULL);
INSERT INTO `module` VALUES ('COM4115 / 6115', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4501 / 6501', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4502 / 6502', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4503 / 6503', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4506 / 6506', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4507 / 6507', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4509 / 6509', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4510 / 6510', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM4520 / 6520', 'BOTH Semesters', NULL, NULL);
INSERT INTO `module` VALUES ('COM4525', 'BOTH Semesters', NULL, NULL);
INSERT INTO `module` VALUES ('COM6009', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6012', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6013', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6014', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6015', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6016', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6017', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6063', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6102', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6104', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6105', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6471', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6516', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6534', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6535', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6655', 'Semester 1 only', NULL, NULL);
INSERT INTO `module` VALUES ('COM6905', 'Semester 2 only', NULL, NULL);
INSERT INTO `module` VALUES ('GEE106', 'Semester 1 only', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
