-- Tao CSDL 
-- CREATE SCHEMA `DEMO_DATABASE`;
-- Xoa CSDL
-- DROP DATABASE `demo_database`;
-- tao bang  du lieu
-- CREATE TABLE `demo_database`.`table_name`(
-- 	`column1` INT NOT NULL PRIMARY KEY,
--     `column2` VARCHAR(45) NOT NULL,
--     `column3` VARCHAR(40)
-- );
-- XOA BANG
-- DROP TABLE `demo_database`.`table_name`;
-- CREATE TABLE `student_course_manager`.`course`(
-- 	`id` INT NOT NULL PRIMARY KEY,
--     `name` VARCHAR(45) NOT NULL,
--     `duration` INT
-- );
-- Capnhap bang 
-- ALTER  TABLE `student_course_manager` . `course`
-- ADD COLUMN `New_column` INT NOT NULL, 
-- MODIFY COLUMN `duration` INT NOT NULL;

-- ALTER  TABLE `student_course_manager` . `course`
-- DROP COLUMN `New_column`,
-- MODIFY COLUMN `duration` FLOAT ;

-- Bài 1
CREATE DATABASE `STUDENT_DB`;
USE `STUDENT_DB`;
CREATE TABLE `STUDENT_DB` . `Class`(
	`Class_Id` VARCHAR(20) PRIMARY KEY,
    `Class_Name` VARCHAR(100) NOT NULL,
    `Year_Study` INT NOT NULL
);
CREATE TABLE `STUDENT_DB` . `Student`(
	`Student_Id` VARCHAR(20) PRIMARY KEY,
    `Full_Name` VARCHAR(50) NOT NULL,
    `Dob` DATE,
    `Class_Id` VARCHAR(20),
    FOREIGN KEY (`Class_Id`) REFERENCES `Class` (`Class_Id`)
);
-- Hết bài 1
-- Bài 2
CREATE TABLE `STUDENT_DB` . `Student_02`(
	`Student_Id` VARCHAR(20) PRIMARY KEY,
    `Full_Name` VARCHAR(50) NOT NULL
);
CREATE TABLE `STUDENT_DB` . `Subject`(
	`Subject_Id` VARCHAR(20) PRIMARY KEY,
    `Subject_Name` VARCHAR(50) NOT NULL,
    `Credit` INT CHECK (`Credit` > 0)
);
-- Hết Bài 2

-- Bài 3
CREATE TABLE `STUDENT_DB` . `Enrollment`(
	`Student_Id` VARCHAR(20),
    `Subject_Id` VARCHAR(20),
    `Enroll_Date` DATE,
    PRIMARY KEY (`Student_Id`, `Subject_Id`),
    FOREIGN KEY (`Student_Id`) REFERENCES `Student_02` (`Student_Id`),
    FOREIGN KEY (`Subject_Id`) REFERENCES `Subject` (`Subject_Id`)
);