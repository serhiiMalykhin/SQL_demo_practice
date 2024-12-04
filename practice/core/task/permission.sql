CREATE USER new_user_read_only WITH PASSWORD 'user_password';
CREATE USER new_user_admin WITH PASSWORD 'user_password';
GRANT CONNECT ON DATABASE demo TO new_user_read_only;
GRANT CONNECT ON DATABASE demo TO new_user_admin;


GRANT SELECT ON ALL TABLES IN SCHEMA public TO new_user_read_only;
GRANT ALL PRIVILEGES ON DATABASE demo TO new_user_admin;

---------- test read only
SET ROLE new_user_read_only;
UPDATE products
SET stock = stock - 1
WHERE product_name = 'Laptop';
