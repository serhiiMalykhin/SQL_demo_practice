BEGIN;

INSERT INTO products (product_name, category, price, stock)
VALUES ('Monitor', 'Electronics', 250.00, 10);

SAVEPOINT before_update;

UPDATE products
SET stock = stock + 10
WHERE product_name = 'Headphones';

ROLLBACK TO before_update; -- Undo only the update
COMMIT;
