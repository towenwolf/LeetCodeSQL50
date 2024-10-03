USE sbx 
GO


SELECT 
    activity_date AS day,
    COUNT(*) AS active_users
FROM (
SELECT activity_date, user_id
FROM Activity
GROUP BY user_id, activity_date
HAVING activity_date >= '2019-06-28' AND activity_date <= '2019-07-27'
) a
GROUP BY activity_date
ORDER BY activity_date

SELECT 
    ACTIVITY_DATE AS DAY, 
    COUNT(DISTINCT USER_ID) AS ACTIVE_USERS 
FROM ACTIVITY 
WHERE ACTIVITY_DATE <= '2019-07-27' AND DATEDIFF(DAY , ACTIVITY_DATE , '2019-07-27')<30
GROUP BY ACTIVITY_DATE;