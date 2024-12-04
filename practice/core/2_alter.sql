ALTER TABLE products ADD COLUMN description TEXT;
ALTER TABLE products ALTER COLUMN category SET NOT NULL;
ALTER TABLE products DROP COLUMN description;
CREATE INDEX idx_category_price ON products (category, price);

--DROP TABLE IF EXISTS products;