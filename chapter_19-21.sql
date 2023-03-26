-- chapter 19

-- INSERT INTO customers(
--     cust_name,
--     cust_address,
--     cust_city,
--     cust_state,
--     cust_zip,
--     cust_country,
--     cust_contact,
--     cust_email
-- )
-- VALUES(
--     "Pep E. LaPew",
--     "100 main street",
--     "Los Angeles",
--     "CA",
--     "90046",
--     "USA",
--     "NULL",
--     "NULL"
-- ), 
-- (
--     "M. Martian",
--     "42 Galaxy Way",
--     "New York",
--     "NY",
--     "11213",
--     "USA"
-- );

-- INSERT INTO customers(
--     cust_name,
--     cust_address,
--     cust_city,
--     cust_state,
--     cust_zip,
--     cust_country,
--     cust_contact,
--     cust_email
-- )
-- SELECT cust_name,
--     cust_address,
--     cust_city,
--     cust_state,
--     cust_zip,
--     cust_country,
--     cust_contact,
--     cust_email
-- FROM custnew;

-- chapter 20

-- UPDATE customers
-- SET cust_email = "elmer@fudd.com",
--     cust_name = "The Fudds"
-- WHERE cust_id = 10005;

-- DELETE FROM customers
-- WHERE cust_id = 10006;

-- chapterf 21

-- CREATE TABLE IF NOT EXISTS customers
-- (
--     cust_id         int         NOT NULL        AUTO_INCREMENT,
--     cust_name       char(50)    NOT NULL        ,
--     cust_address    char(50)    NULL            ,
--     PRIMARY KEY (cust_id)
-- ) ENGINE = InnoDB;

-- CREATE TABLE IF NOT EXISTS orderitems
-- (
--     order_num           INT         NOT NULL,
--     order_item          INT         NOT NULL,
--     prod_id             char(10)    NOT NULL,
--     PRIMARY KEY (order_num, order_item)
-- ) ENGINE = InnoDB;

-- SELECT last_insert_id();

-- CREATE TABLE IF NOT EXISTS orderitems
-- (
--     order_num           INT         NOT NULL,
--     order_item          INT         NOT NULL,
--     prod_id             char(10)    NOT NULL,
--     quantity            INT         NOT NULL        DEFAULT 1,
--     PRIMARY KEY (order_num, order_item)
-- ) ENGINE = InnoDB;

-- ALTER TABLE vendors
-- ADD vend_phone CHAR(20);

-- ALTER TABLE vendors
-- DROP COLUMN vend_phone;

-- DROP TABLE customers2;

RENAME TABLE customer2 TO customer;