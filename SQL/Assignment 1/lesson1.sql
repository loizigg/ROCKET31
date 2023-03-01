-- Xóa database
--  DROP DATABASE IF EXISTS lesson_01;
-- Tạo database nếu chưa có bảng tồn tại
CREATE DATABASE IF NOT EXISTS lesson_01;
-- chọn database muốn thao tác;
USE lesson_01;
-- Tạo bảng
-- Xóa database
--  DROP TABLE IF EXISTS lesson_01;
CREATE TABLE IF NOT EXISTS Department(
	Department_ID TINYINT UNSIGNED,
    Department_Name VARCHAR(50)
);
CREATE TABLE `Position`(
	Position_ID TINYINT UNSIGNED,
    Position_Name ENUM('Dev','Test','Scrum Master','PM')
);
CREATE TABLE `Account`(
	Account_ID  TINYINT UNSIGNED,
    Email varchar(50),
    User_Name VARCHAR(50),
    Full_Name VARCHAR(50),
    Department_ID TINYINT UNSIGNED,
    Position_ID TINYINT UNSIGNED,
    Create_Date DATE
);
CREATE TABLE `Group`(
	Group_ID TINYINT UNSIGNED,
    Group_Name VARCHAR(50),
    Creator_ID TINYINT UNSIGNED,
    Creator_Date DATE
);
CREATE TABLE Group_Account (
	Group_ID TINYINT UNSIGNED,
    Account_ID TINYINT UNSIGNED,
    Join_Date DATE
);
CREATE TABLE Type_Question(
	Type_ID TINYINT UNSIGNED,
    Type_Name ENUM('Essay','Multiple-Choice')
);
CREATE TABLE Category_Question(
	Category_ID TINYINT UNSIGNED,
    Category_Name VARCHAR(50)
);
CREATE TABLE Question(
	Question_ID TINYINT UNSIGNED,
    Content VARCHAR(100),
    Category_ID TINYINT UNSIGNED,
    Type_ID TINYINT UNSIGNED,
    Creator_ID TINYINT UNSIGNED,
    Create_Date DATE
);
CREATE TABLE Answer(
	Answer_ID TINYINT UNSIGNED,
    Content VARCHAR(100),
    Question_ID TINYINT UNSIGNED,
    isCorrect BOOLEAN
);
CREATE TABLE Exam(
	Exam_ID TINYINT UNSIGNED,
    `Code` CHAR(10),
    Title CHAR(50),
    Categoty_ID TINYINT UNSIGNED,
    Duration TIME,
    Creator_ID TINYINT UNSIGNED,
    Create_Date DATE
);
CREATE TABLE Exam_Question(
	Exam_ID TINYINT UNSIGNED,
    Question_ID TINYINT UNSIGNED
);