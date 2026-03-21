WITH f AS (
    SELECT product_id, year, quantity, RANK() OVER (PARTITION BY product_id ORDER BY year) as rk, price
    FROM Sales
)
SELECT product_id, year as first_year, quantity, price
FROM f
WHERE rk = 1;
