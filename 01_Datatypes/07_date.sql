-- Date Datatype

-- It takes 4 bytes of memory
-- To store the default date as current date, use CURRENT_DATE
CREATE TABLE documents (
	document_id SERIAL PRIMARY KEY,
	header_text VARCHAR(255) NOT NULL,
	posting_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO documents (header_text) 
VALUES 
	('Billing to customer XYZ')
RETURNING *;

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(225) NOT NULL,
	birth_date DATE NOT NULL,
	hire_date DATE NOT NULL
);

INSERT INTO employees (first_name, last_name, birth_date, hire_date)
VALUES
	('Shannon', 'Freeman', '1980-01-01', '2005-01-01'),
	('Sheila','Wells','1978-02-05','2003-01-01'),
    ('Ethel','Webb','1975-01-01','2001-01-01')
RETURNING *;

-- To get the current date and time use this function
SELECT NOW();
-- To get the current date only
SELECT NOW()::DATE;
SELECT CURRENT_DATE;
-- To get the date in a particular fashion use TO_CHAR
SELECT TO_CHAR(CURRENT_DATE, 'dd/mm/yyyy');
-- To display date with month as Jan, Feb etc.
SELECT TO_CHAR(CURRENT_DATE, 'dd Mon yyyy');
-- To get difference between two dats use '-' operator
SELECT
	first_name, 
	last_name,
	now()-hire_date as diff
FROM 
	employees;
-- Calculating age use AGE
SELECT
	employee_id,
	first_name,
	last_name,
	AGE(birth_date)
FROM
	employees;
-- If we send a date in the parameter of AGE, it will subtract the first second parameter from first
SELECT
	employee_id,
	first_name,
	last_name,
	AGE('2024-01-01', birth_date)
FROM
	employees;
-- Extract year, month, day from day
SELECT
	employee_id,
	first_name,
	last_name,
	EXTRACT(YEAR FROM birth_date) AS y,
	EXTRACT(MONTH FROM birth_date) AS m,
	EXTRACT(DAY FROM birth_date) AS d
FROM
	employees;