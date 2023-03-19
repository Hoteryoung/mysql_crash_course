-- chapter 10

-- SELECT Concat(Trim(vend_name), " (", Trim(vend_country), ")")
-- AS vend_tile
-- FROM vendors
-- ORDER BY vend_name;

-- SELECT prod_id, quantity, item_price, quantity * item_price AS expanded_price
-- FROM orderitems
-- WHERE order_num = 20005;

-- chapter 11

-- SELECT vend_name, Upper(vend_name) AS vend_name_upcase
-- FROM vendors
-- ORDER BY vend_name;

-- SELECT cust_name, cust_contact
-- from customers
-- WHERE Soundex(cust_contact) = Soundex("Y Lie");

-- SELECT cust_id, order_num
-- FROM orders
-- WHERE Date(order_date) = "2005-09-01";

-- SELECT cust_id, order_num
-- FROM orders
-- WHERE Year(order_date) = "2005" AND Month(order_date) = 9;

-- chapter 12

-- SELECT AVG(prod_price) AS avg_price
-- from products;

-- SELECT COUNT(*) AS cust_num
-- FROM customers;

-- SELECT COUNT(cust_email) AS cust_num
-- FROM customers;

-- SELECT MAX(prod_price) AS max_price
-- FROM products;

-- SELECT SUM(quantity) AS items_ordered
-- from orderitems
-- WHERE order_num = 20005;

-- SELECT *
-- FROM orderitems;

-- SELECT SUM(item_price * quantity) AS total_price
-- FROM orderitems
-- WHERE order_num = 20005;

-- SELECT COUNT(*) AS num_item,
--     MIN(prod_price) AS price_min,
--     MAX(prod_price) AS price_max,
--     AVG(prod_price) AS price_avg
-- FROM products;

-- chapter 13

-- SELECT COUNT(*) AS num_prods
-- FROM products
-- WHERE vend_id = 1003;

-- SELECT vend_id, COUNT(*) AS num_prods
-- FROM products
-- GROUP BY vend_id;

-- SELECT cust_id, COUNT(*) AS orders
-- FROM orders
-- GROUP BY cust_id
-- HAVING COUNT(*) >= 2;

-- SELECT vend_id, COUNT(*) AS num_prods
-- FROM products
-- WHERE prod_price >= 10
-- GROUP BY vend_id
-- HAVING COUNT(*) >= 2;

-- SELECT vend_id, COUNT(*) AS num_prods
-- FROM products
-- GROUP BY vend_id
-- HAVING COUNT(*) >= 2;

-- SELECT order_num, SUM(quantity*item_price) AS ordertotal
-- FROM orderitems
-- GROUP BY order_num
-- HAVING SUM(quantity*item_price) >= 50
-- ORDER BY ordertotal;