-- bài tập
USE lesson_02;
-- Câu 2
SELECT *
FROM department;
-- Câu 3
SELECT department_id
FROM department;
-- Câu 6
SELECT group_name
FROM `group`
WHERE creator_date < '2019-12-20';
-- Câu 8
SELECT `code`
FROM exam
WHERE duration >60 AND create_date <'2019-12-20';
-- Câu 11
SELECT full_name
FROM `account`
WHERE full_name LIKE 'D%o';

