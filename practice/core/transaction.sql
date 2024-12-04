BEGIN;

-- Step 1: Insert a new product
INSERT INTO products (product_name, category, price, stock)
VALUES ('Chair', 'Furniture', 120.00, 15);

-- Step 2: Update stock
UPDATE products
SET stock = stock - 1
WHERE product_name = 'Laptop';

-- Step 3: Commit or Rollback
COMMIT;
-- ROLLBACK; -- Uncomment to undo changes
