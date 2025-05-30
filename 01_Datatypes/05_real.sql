-- Real Datatype

-- Real datatype stores single precision floating-point numbers
-- Its range is from -3.40282347×1E38 to 3.40282347×1E38
-- Used where precision is not of much concern
-- This requires 4 byte storage
-- 
CREATE TABLE weathers (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	location VARCHAR(225) NOT NULL,
	wind_speed_mps REAL NOT NULL,
	temperature_celsius REAL NOT NULL,
	recorded_at TIMESTAMP NOT NULL
);

INSERT INTO weathers (location, wind_speed_mps, temperature_celsius, recorded_at)
VALUES
	('New York', 5.2, 15.3, '2024-04-19 09:00:00'),
    ('New York', 4.8, 14.9, '2024-04-19 10:00:00'),
    ('New York', 6.0, 16.5, '2024-04-19 11:00:00'),
    ('New York', 5.5, 15.8, '2024-04-19 12:00:00'),
    ('New York', 4.3, 14.2, '2024-04-19 13:00:00'),
    ('New York', 5.9, 16.1, '2024-04-19 14:00:00'),
    ('New York', 6.8, 17.3, '2024-04-19 15:00:00'),
    ('New York', 5.1, 15.6, '2024-04-19 16:00:00'),
    ('New York', 4.7, 14.8, '2024-04-19 17:00:00'),
    ('New York', 5.3, 15.9, '2024-04-19 18:00:00');

-- can ignore writing AS keyword, that will also work fine
SELECT 
	AVG(wind_speed_mps) AS wind_speed,
	AVG(temperature_celsius) AS temperature
FROM
	weathers
WHERE
	location = 'New York' AND DATE(recorded_at) = '2024-04-19';