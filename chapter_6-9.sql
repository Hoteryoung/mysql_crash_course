-- chapter 6

-- SELECT prod_name, prod_price
-- FROM products
-- WHERE prod_price = 2.50;

-- SELECT prod_name, prod_price
-- FROM products
-- WHERE prod_name = "fuses";

-- SELECT prod_name, prod_price
-- FROM products
-- -- WHERE prod_price < 10;
-- WHERE prod_price <= 10;

-- SELECT vend_id, prod_name
-- FROM products
-- WHERE vend_id <> 1003;

-- SELECT prod_name, prod_price
-- FROM products
-- WHERE prod_price BETWEEN 5 AND 10;

-- SELECT prod_name
-- FROM products
-- WHERE prod_price IS NULL

-- SELECT cust_id
-- from customers
-- WHERE cust_email IS NULL;

-- chapter 7

-- SELECT prod_id, prod_price, prod_name
-- FROM products
-- where vend_id = 1003 AND prod_price <= 10;

-- SELECT prod_id, prod_price, prod_name
-- FROM products
-- where vend_id = 1003 OR vend_id = 1003;

-- SELECT prod_id, prod_price, prod_name
-- FROM products
-- where vend_id = 1003 OR vend_id = 1003 AND prod_price >= 10;

-- SELECT prod_id, prod_price, prod_name
-- FROM products
-- where vend_id IN (1002, 1003)
-- ORDER BY prod_name;

-- SELECT prod_id, prod_price, prod_name
-- FROM products
-- where vend_id NOT IN (1002, 1003)
-- ORDER BY prod_name;

-- chapter 8

-- SELECT prod_id, prod_name
-- FROM products
-- WHERE prod_name LIKE "jet%";

-- SELECT prod_id, prod_name
-- FROM products
-- WHERE prod_name LIKE "%anvil%";

-- SELECT prod_id, prod_name
-- FROM products
-- WHERE prod_name LIKE "s%e";

-- SELECT prod_id, prod_name
-- FROM products
-- -- WHERE prod_name LIKE "% ton anvil";
-- WHERE prod_name LIKE "_ ton anvil";

-- chapter 9

-- SELECT prod_name
-- FROM products
-- -- WHERE prod_name LIKE "1000"
-- WHERE prod_name REGEXP "1000"
-- ORDER BY prod_name;

-- SELECT prod_name
-- FROM products
-- WHERE prod_name REGEXP ".000"
-- ORDER BY prod_name;

-- SELECT prod_name
-- FROM products
-- WHERE prod_name REGEXP "1000|2000"
-- ORDER BY prod_name;

-- SELECT prod_name
-- FROM products
-- WHERE prod_name REGEXP "[123] ton"
-- ORDER BY prod_name;

-- SELECT prod_name
-- FROM products
-- -- WHERE prod_name REGEXP "^[1-5] ton"
-- -- WHERE prod_name REGEXP "[^1-5] ton"
-- WHERE prod_name REGEXP "[1-5] ton"
-- ORDER BY prod_name;

-- SELECT vend_name
-- FROM vendors
-- WHERE vend_name REGEXP "\\."
-- ORDER BY vend_name;

-- SELECT prod_name
-- FROM products
-- WHERE prod_name REGEXP "\\([0-9] sticks?\\)"
-- ORDER BY prod_name;

-- SELECT prod_name
-- FROM products
-- WHERE prod_name REGEXP "[[:digit:]]{4}"
-- ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP "^[0-9\\.]"
ORDER BY prod_name;