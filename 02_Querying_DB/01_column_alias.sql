-- Column Alias

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

-- for alaising, as keyword is optional
SELECT first_name, last_name AS sur_name FROM customer;
SELECT first_name, last_name sur_name FROM customer;

-- column alaising
SELECT first_name, last_name AS sur_name FROM customer;
SELECT first_name, last_name sur_name FROM customer;

-- column alaising with expression
SELECT first_name || ' ' || last_name AS full_name FROM customer;
SELECT first_name || ' ' || last_name full_name FROM customer;