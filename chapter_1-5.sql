-- chapter 3

-- SHOW DATABASES;

-- SHOW TABLES;

-- SHOW COLUMNS
-- FROM customers;

-- SHOW STATUS;

-- SHOW GRANTS;

-- SHOW ERRORS;

-- chapter 4

-- SELECT prod_name
-- FROM products;

-- SELECT prod_id, prod_name, prod_price
-- FROM products;

-- SELECT *
-- from products;

-- SELECT prod_name
-- FROM products
-- LIMIT 5;

-- SELECT prod_name
-- FROM products
-- LIMIT 5, 5;

-- SELECT products.prod_name
-- FROM crashcourse.products;

-- chapter 5

-- SELECT prod_name
-- FROM products
-- ORDER BY prod_name;

-- SELECT prod_id, prod_name, prod_price
-- FROM products
-- ORDER BY prod_price, prod_name;

-- SELECT prod_id, prod_name, prod_price
-- FROM products
-- ORDER BY prod_price DESC, prod_name;

SELECT prod_price
FROM products
ORDER BY prod_price DESC
LIMIT 1;