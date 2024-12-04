---------------insert
INSERT INTO products (product_name, category, price, stock)
VALUES
    ('Laptop', 'Electronics', 1200.00, 10),
    ('Headphones', 'Electronics', 150.00, 25),
    ('Desk', 'Furniture', 300.00, 5);

---------------select
SELECT * FROM products;
SELECT category, COUNT(*) AS product_count, AVG(price) AS avg_price
FROM products
GROUP BY category;


---------------update
UPDATE products
SET stock = stock - 1
WHERE product_name = 'Laptop';


---------------delete
DELETE FROM products
WHERE product_name = 'Desk';

