-- Begin transaction to ensure atomicity
BEGIN;

-- Check the stock and insert the order if sufficient stock exists
WITH stock_check AS (
    SELECT stock
    FROM products
    WHERE product_id = 12
)

-- Insert into the orders table only if stock is sufficient
INSERT INTO orders (order_id, product_id, order_date, quantity, total_price, customer_name)
SELECT
    gen_random_uuid(),
    12,  -- Product ID
    CURRENT_TIMESTAMP,
    10,  -- Quantity ordered
    100.00,  -- Total price for the order
    'John Doe'
FROM stock_check
WHERE stock >= 40;  -- Condition to ensure there is enough stock

update products
set stock = stock - 10
where product_id = 12 and stock >= 40;

-- Commit the transaction
COMMIT;

rollback;