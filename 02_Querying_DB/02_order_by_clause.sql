-- Order By Clause

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

SELECT first_name, last_name FROM customer ORDER BY first_name ASC;
-- ASC is by default. So we can omit ASC
SELECT first_name, last_name FROM customer ORDER BY first_name;
SELECT first_name, last_name FROM customer ORDER BY first_name DESC;

-- order by with column
SELECT first_name, last_name FROM customer ORDER BY last_name DESC;
-- with multiple column
-- first it sorts the values in asc with first name, then it again sorts in DESC with last name
SELECT first_name, last_name FROM customer ORDER BY first_name ASC, last_name DESC;

-- order by clause with expression
SELECT  
	first_name, 
	LENGTH(first_name) AS len 
FROM 
	customer 
ORDER BY
	len DESC;