-- Character Datatype

-- CHARACTER(n) or CHAR(n) -> this is fixed length
-- CHARACTER VARYING(n) or VARCHAR(n) -> this is variable length between 0 and n
-- TEXT or VARCHAR -> this is the unlimited length variable length
CREATE TABLE character_tests (
	id SERIAL PRIMARY KEY,
	x CHAR(1),
	y VARCHAR(10),
	z TEXT
);

INSERT INTO character_tests (x, y, z)
VALUES (
	'Yes',-- This will give error for char length 1
	'This is the test for varchar',
	'This is very long text for the postgresql text column'
);

INSERT INTO character_tests (x, y, z)
VALUES (
	'Y',
	'This is a test for varchar', -- This will give error for char length 10
	'This is very long text for the postgresql text column'
);

INSERT INTO character_tests (x, y, z)
VALUES (
	'Y',
	'varchar(n)',
	'This is very long text for the postgresql text column'
)
RETURNING *;

SELECT * FROM character_tests;