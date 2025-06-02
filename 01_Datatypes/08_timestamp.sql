-- Timestamp Datatype
-- It is of 2 types: TIMESTAMP: timestamp without timezone, TIMESTAMPTZ: timestamp with timezone
-- Both take 8 byte of memory

-- TIMESTAMP
-- It does not have any time zone data. 
-- It means that when you change the timezone of your database server, 
-- the timestamp value stored in the database will not change automatically

-- TIMESTAMPTZ
-- The timestamptz datatype is the timestamp with a timezone. 
-- The timestamptz data type is a time zone-aware date and time data type.
-- Internally, PostgreSQL stores the timestamptz in UTC value
-- When you insert a value into a timestamptz column, 
-- postgresql converts the timestamptz value into a UTC value and stores the UTC value in the table
-- When you retrieve data from a timestamptz column, 
-- postgresql converts the UTC value back to the time value of the timezone set by the database server, 
-- the user, or the current database connection.

-- The typename and memory of timestamp
SELECT
	typname,
	typlen
FROM
	pg_type
WHERE
	typname ~ '^timestamp';

CREATE TABLE timestamp_demo (
	ts TIMESTAMP,
	tstz TIMESTAMPTZ
);
-- change timezone of db
SET TIMEZONE = 'America/Los_Angeles';
SHOW TIMEZONE;

INSERT INTO timestamp_demo (ts, tstz)
VALUES
	('2016-06-22 19:10:25-07','2016-06-22 19:10:25-07');

SELECT
	ts, tstz
FROM
   	timestamp_demo;

SET TIMEZONE = 'Asia/Kolkata';
SHOW TIMEZONE;

SELECT
	ts, tstz
FROM
   	timestamp_demo;