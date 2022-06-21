-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price FLOAT,
    quanity INTEGER
);
-- 2. Add 5 orders to the orders table.
    --Make orders for at least two different people.
    --person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quanity)
VALUES (1, 'Hamburger', 6, 1),
(1, 'Fries', 3, 1),
(2, 'Hot Dog', 4, 2),
(2, 'Chips', 2, 1),
(3, 'Pulled Pork Sandwich', 12, 1);
-- 3. Select all the records from the orders table.
SELECT * FROM orders;
-- 4. Calculate the total number of products ordered.
SELECT SUM(quanity) FROM orders;
-- 5. Calculate the total order price.
SELECT SUM(product_price) FROM orders;
-- 6. Calculate the total order price by a single person_id.
SELECT SUM(product_price) FROM orders WHERE person_id = 1;