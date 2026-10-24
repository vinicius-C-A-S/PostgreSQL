SELECT * FROM employees LIMIT 5; --exemplo de limit
SELECT last_name, title FROM employees ORDER BY RANDOM() LIMIT 5; --exemplo de random
SELECT * FROM employees WHERE reports_to IS NULL; --exemplo de nulos
SELECT * FROM employees WHERE reports_to IS NOT NULL; --exemplo de não nulos
SELECT 
    product_name, 
    unit_price,
    COALESCE(
        CAST(CASE WHEN unit_price < 20 THEN NULL ELSE unit_price END AS TEXT),
        'Hidden price'
    ) AS price_shown
FROM products; --exemplo função coalesce 
