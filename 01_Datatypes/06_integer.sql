-- Integer Datatype

-- To store the whole number we can use interger datatype
-- These are SMALLINT, INTEGER, BIGINT

-- SMALLINT
-- It takes 2 bytes of memory
CREATE TABLE books (
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	pages SMALLINT NOT NULL CHECK (pages>0)
);

-- INTEGER
-- It takes 4 bytes of memory
CREATE TABLE cities (
	city_id SERIAL PRIMARY KEY,
	city_name VARCHAR(255) NOT NULL,
	population INT NOT NULL CHECK (population >= 0)
);

-- BIGINT
-- It takes 8 bytes of memory
-- It not only takes more space but also decreases the performance of database