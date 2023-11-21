SELECT a.stock_code
FROM price_today as a
INNER JOIN price_tomorrow as b
ON a.stock_code = b.stock_code
WHERE b.price > a.price
ORDER BY stock_code ASC;
