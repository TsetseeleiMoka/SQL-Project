/* QUERY 1 */ 

USE sql_store;

SELECT *
FROM customers
-- where customer_id=1
ORDER BY first_name;

/* QUERY 2 */

USE sql_store;

SELECT last_name, first_name, points, points + 10
FROM customers;

-- Task 1: 
SELECT last_name, first_name, points, (points * 10) + 100
FROM customers;

-- Task 1.2:
SELECT last_name, first_name, points, (points + 10) * 100 AS discount_factor
FROM customers;

/* TASK 2 */

USE sql_store;

SELECT name, unit_price AS original_price, (unit_price * 1.1) AS new_price
FROM products;

/* TASK 3 */

USE sql_store;

SELECT first_name, last_name, birth_date
FROM customers
WHERE birth_date > '1990-01-01';

/* TASK 4 */

USE sql_inventory;

SELECT name, quantity_in_stock
FROM products
ORDER BY quantity_in_stock DESC
LIMIT 1;

/* TASK 5 */

USE sql_inventory;

SELECT name, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 1;

/* TASK 6 */

USE sql_store;

SELECT first_name, last_name, address, birth_date
FROM customers
ORDER BY birth_date ASC
LIMIT 1;