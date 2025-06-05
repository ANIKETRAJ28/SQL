-- Where Clause

CREATE TABLE customer (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO customer (first_name, last_name, email)
VALUES
	('Jared', 'Ely', 'jarad@gmail.com'),
	('Mary', 'Smith', 'mary@gmail.com'),
	('John', 'Doe', 'john@gmail.com')
	('Jamie', 'Rice', 'jamieR@gmail.com'),
	('Jamie', 'Waugh', 'jamieW@gmail.com'),
	('Ann', 'Evans','ann@gmail.com'),
	('Anne', 'Powell', 'anne@gmail.com'),
	('Annie', 'Russel', 'annie@gmail.com');

-- = operator
SELECT 
	first_name, 
	last_name
FROM customer
WHERE
	first_name = 'Jamie';

-- AND operator
SELECT
	first_name,
	last_name
FROM 
	customer
WHERE
	first_name = 'Jamie'
AND
	last_name = 'Rice';

-- OR operator
SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	first_name = 'John'
OR
	last_name = 'Rice';

-- IN operator
SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	first_name 
IN 
	('Ann', 'Anne', 'Annie', 'John');

-- LIKE operator
SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	first_name LIKE 'An%';

-- BETWEEN operator
SELECT
	first_name,
	last_name,
	LENGTH(first_name) AS len
FROM
	customer
WHERE
	first_name LIKE 'An%'
AND
	LENGTH(first_name) BETWEEN 2 AND 5
ORDER BY
	first_name DESC;

-- != or <> operator
SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	first_name LIKE 'An%'
AND
	last_name != 'Evans';

SELECT
	first_name,
	last_name
FROM
	customer
WHERE
	first_name LIKE 'An%'
AND
	last_name <> 'Evans';