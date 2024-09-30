USE sbx
GO

SELECT e.employee_id, COUNT(*) AS reports_count, AVG(ee.age) AS average_age
FROM Employees e
JOIN Employees ee 
    ON e.employee_id = ee.reports_to
GROUP BY e.employee_id