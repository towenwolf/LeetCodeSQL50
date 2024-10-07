USE sbx
GO

SELECT 
    CASE 
        WHEN id % 2 = 1 THEN LEAD(id, 1, id) OVER (ORDER BY id ASC)
        WHEN id % 2 = 0 THEN id - 1
    END AS id, 
    student
FROM Seat
ORDER BY id