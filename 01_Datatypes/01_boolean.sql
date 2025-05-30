-- Boolean Datatype

-- True values -> (TRUE, 't', '1', 'yes')
-- False values -> (FALSE, 'n', '0', 'no')
INSERT INTO stock_availability (product_id, availability)
VALUES
	(100, TRUE),
	(200, FALSE),
	(300, 't'),
	(400, '1'),
	(500, 'y'),
	(600, 'yes'),
	(700, 'no'),
	(800, '0');

SELECT * FROM stock_availability;
SELECT * FROM stock_availability WHERE availability = 'yes';
SELECT * FROM stock_availability WHERE availability = 'no';
SELECT * FROM stock_availability WHERE NOT availability;

-- Set default value
ALTER TABLE stock_availability
ALTER COLUMN availability SET DEFAULT FALSE;

INSERT INTO stock_availability (product_id) VALUES (900);

SELECT * FROM stock_availability;