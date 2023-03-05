use testing_system_02;
-- Câu 2
SELECT *
FROM department;
-- Câu 3
SELECT department_id
FROM department
WHERE department_name = 'Sale';

-- Câu 6
SELECT group_name
FROM `group`
WHERE created_date < '2019-12-20';
-- Câu 8
SELECT `code`
FROM exam
WHERE duration >= 60 and created_date < '2019-12-20';
-- DISTINCT
SELECT DISTINCT duration
FROM exam;
-- ORDER BY 
SELECT *
FROM exam
ORDER BY exam_id DESC, duration ASC;
-- AGGREGATE FUNTIONS
SELECT COUNT(account_id)
FROM `account`
WHERE department_id = 2;
-- Group by / having
SELECT  duration, COUNT(exam_id)
FROM exam
WHERE duration < 100
GROUP BY duration
HAVING COUNT(exam_id)>3 ;
-- Câu 7
SELECT question_id, COUNT(answer_id)
FROM answer
GROUP BY question_id
HAVING COUNT(answer_id) >= 4;
-- Câu 9
SELECT `group_name`
FROM `group`
ORDER BY created_date DESC
LIMIT 5;
-- Câu 14
UPDATE `account` 
SET full_name = 'Nguyễn Bá Lộc', email = 'loc.nguyenba@vti.com.vn'
WHERE account_id = 5;
SELECT *
FROM `account`
WHERE account_id = 5;
-- Xóa dữ liệu
-- Câu 12
DELETE FROM exam
WHERE created_date < '2019-12-20';
-- Câu 13
DELETE FROM question
WHERE content LIKE 'câu hỏi %';
-- Câu 15
UPDATE group_account
SET group_id = 4
WHERE account_id = 5;
