SELECT title AS Departmento, last_name AS Nome
FROM employees;

SELECT title AS Departmento, last_name AS Nome
FROM employees
WHERE country IN ('USA');

SELECT CONCAT(first_name, ' ',last_name) AS full_name
FROM employees;

SELECT title, last_name
FROM employees;

SELECT CONCAT(company_name, ' (', city, ')') AS company_location
FROM customers;

SELECT order_id, freight,
CASE 
    WHEN freight < 50 THEN 'Low'
    WHEN freight >= 50 AND freight < 100 THEN 'Medium'
    ELSE 'High'
END AS freight_category
FROM orders;

SELECT employee_id,first_name, last_name, hire_date,
    CASE
        WHEN EXTRACT(YEAR FROM AGE('1998-01-01'::date, hire_date)) >= 5 THEN 'Senior'
        ELSE 'Junior'
    END
FROM
    employees;