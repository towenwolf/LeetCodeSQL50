USE sbx
GO

SELECT AVG(price)
FROM Prices
GROUP BY [product_id]