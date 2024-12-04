CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    details JSONB
);

INSERT INTO products (product_name, details) VALUES
('Smartphone', '{"brand": "BrandX", "features": {"camera": "12MP", "battery": "3000mAh"}}'),
('Laptop', '{"brand": "BrandY", "features": {"ram": "16GB", "storage": "1TB"}}'),
('Tablet', '{"brand": "BrandX", "features": {"camera": "8MP", "battery": "5000mAh"}}');


SELECT product_name
FROM products
WHERE details->>'brand' = 'BrandX';


SELECT details->'features'->>'camera' AS camera
FROM products;

--Indexing JSON:
CREATE INDEX idx_products_details ON products USING gin(details);


SELECT *
FROM products
WHERE details @> '{"brand": "BrandX"}';

--Update JSON:
UPDATE products
SET details = jsonb_set(details, '{features,ram}', '"32GB"')
WHERE product_name = 'Laptop';



--remove is done with '-'
UPDATE products
SET details = jsonb_set(
    details,
    '{features}',
    (details->'features')::jsonb - 'ram'
)
WHERE details->'features' ? 'ram';
SELECT * FROM products;