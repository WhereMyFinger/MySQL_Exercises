CREATE TABLE products (
    id INT,
    name VARCHAR(45),
    price INT,
    quantity INT
);

insert into products 
values
(1, 'Tomato', 10, 4),
(2, 'Cucumber', 8, 5),
(3, 'Red Pepper', 20, 2),
(4, 'Feta', 40, 1);

SELECT name FROM products
ORDER BY name ASC , (price * quantity) DESC
LIMIT 1;