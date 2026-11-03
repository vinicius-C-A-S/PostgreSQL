--Aula de Joins
SELECT c.category_id, c.category_name, c.picture, p.product_id, p.product_name,
 p.supplier_id, p.quantity_per_unit, p.unit_price, p.units_in_stock, p.units_on_order,
 p.reorder_level, p.discontinued
 FROM categories AS c
 JOIN products AS p on c.category_id = p.category_id;

 SELECT company_name, 'Customer' AS type
 FROM customers

 UNION

 SELECT company_name, 'Supplier' AS type
 FROM suppliers;


