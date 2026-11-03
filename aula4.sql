SELECT product_name, unit_price FROM products ORDER BY unit_price DESC;
SELECT order_id, customer_id, order_date, shipped_date FROM orders ORDER BY shipped_date;
SELECT order_id, order_date, shipped_date FROM orders ORDER BY 
CASE WHEN shipped_date IS NOT NULL THEN 0 --delivered first
    ELSE 1 --mpt yet sent
    END,
order_date;