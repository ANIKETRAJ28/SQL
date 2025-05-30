-- Double precision datatype

-- DOUBLE PRECISION, FLOAT, FLOAT8 are synonyms and can be used interchangebly
-- It cannot convert values in internal format and store them in aproximations
-- In practice double precision type for storing scientific measurements
-- stores around 1E-307 to 1E+308 with a precision of at least 15 digits
CREATE TABLE temperatures (
	id SERIAL PRIMARY KEY,
	location TEXT NOT NULL,
	temperature DOUBLE PRECISION
);

INSERT INTO temperatures (location, temperature)
VALUES
	('Lab Room 1', 23.5),
	('Lab Room 2', 21.8),
	('Lab Room 3', 24.3)
RETURNING *;

SELECT AVG(temperature) from temperatures;

-- storing inexact values
-- Inexact means that postgresql cannot exactly convert some values into an internal format 
-- and can only store them as approximations
CREATE TABLE t(c double precision);

INSERT INTO t(c)
VALUES
	(0.1),
	(0.1),
	(0.1);
SELECT SUM(c) from t; -- the output shows 0.30000000000000004

INSERT INTO t(c)
VALUES 
	(1E-400); -- give out of range errorr