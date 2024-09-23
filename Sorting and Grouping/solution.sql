--  Write a solution to calculate the number of unique subjects each teacher teaches in the university.

USE sbx
GO

SELECT teacher_id, COUNT(subject_id) AS cnt
FROM (
SELECT teacher_id, subject_id
FROM Teacher
GROUP BY teacher_id, subject_id
) a
GROUP BY teacher_id