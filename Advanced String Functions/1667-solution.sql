USE sbx 
GO

SELECT 
    user_id AS user_id,
    CONCAT(UPPER(LEFT(u.name,1)), LOWER(SUBSTRING(u.name, 2, LEN(u.name)))) AS name
FROM Users u
ORDER BY user_id