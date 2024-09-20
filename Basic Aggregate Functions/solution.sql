USE sbx
GO

SELECT p.product_id, ROUND((SUM(CONVERT(DECIMAL(10,2),price) * CONVERT(DECIMAL(10,2), units)) / SUM(CONVERT(DECIMAL(10,2), units))), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id

