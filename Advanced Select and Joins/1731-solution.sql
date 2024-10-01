USE sbx
GO

SELECT e.employee_id, e.name, COUNT(*) AS reports_count, ROUND(AVG(ee.age*1.00),0) AS average_age
FROM Employees e
JOIN Employees ee 
    ON e.employee_id = ee.reports_to
GROUP BY e.employee_id, e.name