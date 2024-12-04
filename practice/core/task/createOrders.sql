create table orders (
    order_id UUID PRIMARY KEY,
    product_id INTEGER,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    quantity INT CHECK(quantity >= 0),
    total_price DECIMAL,
    customer_name VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
)