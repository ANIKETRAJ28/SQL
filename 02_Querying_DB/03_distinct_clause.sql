-- Distinct Clause

CREATE TABLE colors(
	id SERIAL PRIMARY KEY,
	bcolor VARCHAR,
  	fcolor VARCHAR
);
INSERT INTO
  	colors (bcolor, fcolor)
VALUES
	('red', 'red'),
  	('red', 'red'),
  	('red', NULL),
  	(NULL, 'red'),
  	(NULL, NULL),
  	('green', 'green'),
  	('blue', 'blue'),
  	('blue', 'blue');
SELECT * FROM colors;
-- for single column
SELECT DISTINCT bcolor FROM colors ORDER BY bcolor;
-- for multiple column
SELECT DISTINCT bcolor, fcolor FROM colors ORDER BY bcolor;