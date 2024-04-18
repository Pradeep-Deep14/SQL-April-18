DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    quantity_sold INT
);

INSERT INTO products (product_id, product_name, price, quantity_sold) VALUES
    (1, 'iPhone', 899.00, 600),
    (2, 'iMac', 1299.00, 150),
    (3, 'MacBook Pro', 1499.00, 500),
    (4, 'AirPods', 499.00, 800),
    (5, 'Accessories', 199.00, 300);
	
SELECT * FROM PRODUCTS

SELECT 
       product_id,
       product_name,
	   price * quantity_sold as revenue_by_product,
	   ROUND(price*quantity_sold/(SELECT sum(price * quantity_sold)from products) * 100,2) as contribution 
FROM PRODUCTS


--SELECT sum(price * quantity_sold)from products