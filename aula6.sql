SELECT product_name, unit_price,(SELECT AVG(unit_price) FROM products) AS preco_medio
FROM
    products
LIMIT 5;

SELECT product_name, unit_price
FROM
    products
WHERE
    unit_price > (SELECT AVG(unit_price) FROM products);

SELECT last_name,(SELECT MAX(employee_id) FROM employees) as highest_salary
FROM
    employees
LIMIT 5;    

SELECT product_name, unit_price
FROM products
WHERE
    unit_price = (SELECT MIN(unit_price) FROM products);

SELECT p.product_name,p.unit_price,(SELECT AVG(unit_price) FROM products) AS average_price
FROM
    products AS p
LIMIT 10;