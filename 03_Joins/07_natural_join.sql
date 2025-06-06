-- NATURAL JOIN

-- A natural join can be an inner join, left join, or right join. 
-- If you do not specify an explicit join, PostgreSQL will use the INNER JOIN by default
-- The convenience of the NATURAL JOIN is that 
-- it does not require you to specify the condition in the join clause 
-- because it uses an implicit condition based on the equality of the common columns

-- The natural join and the join clause equivalnt to it can be

-- SELECT select_list
-- FROM table1
-- NATURAL [INNER, LEFT, RIGHT] JOIN table2

-- SELECT select_list
-- FROM table1
-- [INNER, LEFT, RIGHT] JOIN table2
--    ON table1.column_name = table2.column_name;

CREATE TABLE categories (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR (255) NOT NULL
);

CREATE TABLE product (
  product_id serial PRIMARY KEY,
  product_name VARCHAR (255) NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

INSERT INTO categories (category_name)
VALUES
  ('Smartphone'),
  ('Laptop'),
  ('Tablet'),
  ('VR')
RETURNING *;

INSERT INTO product (product_name, category_id)
VALUES
  ('iPhone', 1),
  ('Samsung Galaxy', 1),
  ('HP Elite', 2),
  ('Lenovo Thinkpad', 2),
  ('iPad', 3),
  ('Kindle Fire', 3)
RETURNING *;

-- it implicitly takes cateory_id column
SELECT * FROM product NATURAL JOIN categories;

SELECT * FROM categories NATURAL LEFT JOIN product;

-- We should avoid using the NATURAL JOIN whenever possible 
-- because sometimes it may cause an unexpected result