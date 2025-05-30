-- Numeric Datatype

-- NUMERIC and DECIMAL are synonyms and can be used interchangeably 
-- DEC is shorthand for DECIMAL
-- Numeric takes 2 arguments (precision, scale)
-- precision is the number of digits and scale is the number of digits in fraction part
-- So, the while number is (precision-scale)
-- It is slower than interger, float and double precision values
-- Negative scale means we can take precision-(-scale)) digits with 0 fractional part
-- Special values (Infinity, -Infinity and NaN)

CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	price NUMERIC(5, 2)
);

INSERT INTO products (name, price)
VALUES
	('Phone', 500.215), -- scale is 2 so, postgresql rounds it to 500.22
	('Tablet', 500.214); -- scale is 2 so, postgresql rounds it to 500.21

SELECT * FROM products;

INSERT INTO products (name, price)
VALUES
	('Phone', 123456.21); -- will give error

-- We need to wrap NaN into single quotes to update
UPDATE products SET price = 'NaN' WHERE id = 1 RETURNING *;

SELECT * FROM products ORDER BY price DESC; -- shows NaN is greater that 500.21