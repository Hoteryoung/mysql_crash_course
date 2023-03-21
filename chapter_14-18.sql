-- chapter 14

-- SELECT order_num
-- FROM orderitems
-- WHERE prod_id = "TNT2;

-- SELECT cust_name, cust_contact
-- FROM customers
-- WHERE cust_id IN (SELECT cust_id
--                   FROM orders
--                   WHERE order_num IN (SELECT order_num
--                                       FROM orderitems
--                                       WHERE prod_id = "TNT2"));

-- SELECT cust_name, 
--        cust_state,
--        (SELECT COUNT(*)
--         FROM orders
--         WHERE orders.cust_id = customers.cust_id) AS orders
-- FROM customers
-- ORDER BY cust_name;

-- chapter 15

-- SELECT vend_name, prod_name, prod_price
-- FROM vendors, products
-- WHERE vendors.vend_id = products.vend_id
-- ORDER BY vend_name, prod_name;

-- SELECT vend_name, prod_name, prod_price
-- FROM vendors INNER JOIN products
-- ON vendors.vend_id = products.vend_id
-- ORDER BY vend_name, prod_name;

-- SELECT prod_name, vend_name, prod_price, quantity
-- FROM orderitems, products, vendors
-- WHERE products.vend_id = vendors.vend_id
--     AND orderitems.prod_id = products.prod_id
--     AND order_num = 20005;

-- SELECT cust_name, cust_contact
-- FROM customers
-- WHERE cust_id IN (SELECT cust_id
--                   FROM orders
--                   WHERE order_num IN (SELECT order_num
--                                       FROM orderitems
--                                       WHERE prod_id = "TNT2"));

-- SELECT cust_name, cust_contact
-- FROM customers, orders, orderitems
-- WHERE customers.cust_id = orders.cust_id
--     AND orders.order_num = orderitems.order_num
--     AND orderitems.prod_id = "TNT2";

-- chapter 16

-- SELECT cust_name, cust_contact
-- FROM customers AS c, orders AS o, orderitems AS oi  
-- WHERE c.cust_id = o.cust_id
--     AND o.order_num = oi.order_num
--     AND oi.prod_id = "TNT2";

-- SELECT p1.prod_id, p1.prod_name
-- FROM products AS p1, products AS p2
-- WHERE p1.vend_id = p2.vend_id
--     AND p2.prod_id = "DTNTR";

-- SELECT c.*, o.order_num, o.order_date, oi.prod_id, oi.quantity, oi.item_price
-- FROM customers AS c, orders AS o, orderitems AS oi
-- WHERE c.cust_id = o.cust_id
--     AND o.order_num = oi.order_num
--     AND oi.prod_id = "FB";
-- SELECT c.cust_id, o.order_num
-- FROM customers AS c LEFT OUTER JOIN orders AS o
-- ON c.cust_id = o.cust_id;

-- SELECT customers.cust_id, customers.cust_name, COUNT(orders.order_num) AS num_ord
-- FROM customers LEFT OUTER JOIN orders
-- ON customers.cust_id = orders.cust_id
-- GROUP BY customers.cust_id;

-- chaper 17

-- SELECT vend_id, prod_id, prod_price
-- FROM products
-- WHERE prod_price <= 5
-- UNION
-- SELECT vend_id, prod_id, prod_price
-- FROM products
-- WHERE vend_id IN (1001, 1002);

-- SELECT vend_id, prod_id, prod_price
-- FROM products
-- WHERE prod_price <= 5
-- UNION ALL
-- SELECT vend_id, prod_id, prod_price
-- FROM products
-- WHERE vend_id IN (1001, 1002)
-- ORDER BY vend_id, prod_price;

-- chapter 18

-- SELECT note_text
-- FROM productnotes
-- WHERE Match(note_text) Against("rabbit");

-- SELECT note_text, Match(note_text) Against("rabbit") AS rank_
-- FROM productnotes;

-- SELECT note_text
-- FROM productnotes
-- WHERE Match(note_text) Against("anvils");

-- SELECT note_text
-- FROM productnotes
-- WHERE Match(note_text) Against("anvils" WITH QUERY EXPANSION);

-- SELECT note_text
-- FROM productnotes
-- WHERE Match(note_text) Against("heavy" IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE Match(note_text) Against("heavy -rope*" IN BOOLEAN MODE);