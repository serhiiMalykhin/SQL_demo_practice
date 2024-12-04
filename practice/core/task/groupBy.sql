-- Inserting data into products (auto-generating product_id)
INSERT INTO products (product_name, category, price, stock)
VALUES
('Product A', 'Electronics', 25.00, 100),
('Product B', 'Clothing', 15.00, 200),
('Product C', 'Electronics', 30.00, 150),
('Product D', 'Furniture', 50.00, 50);

-- Inserting data into orders (auto-generating order_id)

CREATE EXTENSION IF NOT EXISTS pgcrypto; - added function if not exists for UUID generating

INSERT INTO orders (order_id, product_id, order_date, quantity, total_price, customer_name)
VALUES
(gen_random_uuid(), 1, '2024-12-01 10:00:00'::TIMESTAMP, 5, 125.00, 'Alice'),
(gen_random_uuid(), 2, '2024-12-02 11:30:00'::TIMESTAMP, 3, 45.00, 'Bob'),
(gen_random_uuid(), 3, '2024-12-02 12:00:00'::TIMESTAMP, 10, 250.00, 'Charlie'),
(gen_random_uuid(), 4, '2024-12-03 09:15:00'::TIMESTAMP, 2, 60.00, 'David'),
(gen_random_uuid(), 9, '2024-12-03 14:00:00'::TIMESTAMP, 4, 60.00, 'Eve');



SELECT product_id,
       SUM(quantity) AS total_quantity,
       SUM(total_price) AS total_sales
FROM orders
GROUP BY product_id;