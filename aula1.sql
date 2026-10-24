SELECT *
FROM customers;

SELECT company_name, contact_name, city
FROM customers;

SELECT *
FROM customers
WHERE country IN ('Mexico');

SELECT *
FROM products
WHERE category_id = 1;

SELECT product_id, product_name, category_id, units_in_stock, discontinued
FROM products
WHERE category_id = 1
AND (units_in_stock <10 OR discontinued = 1);