-- LIMIT clause

CREATE TABLE film (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    release_year INT,
    language_id INT,
    rental_duration INT,
    rental_rate NUMERIC(4,2),
    length INT,
    replacement_cost NUMERIC(5,2),
    rating VARCHAR(10),
    last_update TIMESTAMP,
    special_features TEXT[],
    fulltext TSVECTOR
);

INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext)
VALUES
	('Lost Skies', 'An adventure in the clouds.', 2015, 1, 5, 2.99, 120, 19.99, 'PG', NOW(), ARRAY['Deleted Scenes','Behind the Scenes'], to_tsvector('An adventure in the clouds')),
	('Echoes of Time', 'A tale through dimensions.', 2018, 1, 6, 3.99, 130, 24.99, 'PG-13', NOW(), ARRAY['Commentary','Trailers'], to_tsvector('A tale through dimensions')),
	('Iron Warrior', 'Sci-fi action thriller.', 2020, 2, 4, 2.49, 110, 17.99, 'R', NOW(), ARRAY['Trailers'], to_tsvector('Sci-fi action thriller')),
	('Golden Path', 'Historical drama set in Persia.', 2017, 2, 5, 3.49, 150, 21.99, 'PG-13', NOW(), ARRAY['Deleted Scenes'], to_tsvector('Historical drama set in Persia')),
	('Neon Nights', 'Cyberpunk underground fights.', 2019, 3, 3, 1.99, 90, 14.99, 'R', NOW(), ARRAY['Trailers'], to_tsvector('Cyberpunk underground fights')),
	('Final Dawn', 'Survivors in post-apocalyptic Earth.', 2016, 3, 7, 4.99, 140, 26.99, 'R', NOW(), ARRAY['Behind the Scenes','Commentary'], to_tsvector('Survivors in post-apocalyptic Earth')),
	('Whispering Wind', 'A poetic story in the Himalayas.', 2021, 1, 6, 3.25, 100, 18.49, 'G', NOW(), ARRAY['Deleted Scenes'], to_tsvector('A poetic story in the Himalayas')),
	('Shadow Leap', 'Ninjas vs robots.', 2018, 2, 4, 2.75, 105, 20.00, 'PG-13', NOW(), ARRAY['Behind the Scenes'], to_tsvector('Ninjas vs robots')),
	('Dark Frequency', 'Radio waves control minds.', 2020, 1, 5, 2.50, 95, 17.00, 'PG-13', NOW(), ARRAY['Trailers'], to_tsvector('Radio waves control minds')),
	('The Red Mist', 'A horror that haunts townsfolk.', 2015, 1, 4, 1.75, 85, 13.00, 'R', NOW(), ARRAY['Commentary'], to_tsvector('A horror that haunts townsfolk')),
	('Cyber Runner', 'A rebel hacker in mega-city.', 2022, 2, 5, 3.75, 125, 22.00, 'PG-13', NOW(), ARRAY['Trailers'], to_tsvector('A rebel hacker in mega-city')),
	('Jungle Howl', 'Animals revolt against humans.', 2014, 2, 6, 2.99, 115, 19.50, 'PG', NOW(), ARRAY['Deleted Scenes'], to_tsvector('Animals revolt against humans')),
	('Glass Serpent', 'A thriller in the mountains.', 2021, 1, 4, 3.10, 97, 16.75, 'R', NOW(), ARRAY['Trailers'], to_tsvector('A thriller in the mountains')),
	('Ocean Blaze', 'Fire on the water.', 2016, 3, 3, 2.20, 90, 15.25, 'PG', NOW(), ARRAY['Behind the Scenes'], to_tsvector('Fire on the water')),
	('Haunted Strings', 'The cursed violin.', 2017, 3, 6, 2.40, 93, 14.99, 'PG-13', NOW(), ARRAY['Deleted Scenes'], to_tsvector('The cursed violin')),
	('Pixel Storm', 'Gaming world turned real.', 2019, 2, 5, 3.35, 108, 21.00, 'G', NOW(), ARRAY['Commentary'], to_tsvector('Gaming world turned real')),
	('Empire of Ash', 'War drama with betrayal.', 2018, 1, 7, 4.25, 143, 25.99, 'R', NOW(), ARRAY['Behind the Scenes'], to_tsvector('War drama with betrayal')),
	('Crystal Mind', 'A psychic girl and her powers.', 2020, 2, 4, 2.90, 103, 18.25, 'PG', NOW(), ARRAY['Trailers'], to_tsvector('A psychic girl and her powers')),
	('Frozen Echo', 'Sci-fi in a snowy realm.', 2022, 3, 5, 3.85, 128, 23.00, 'PG-13', NOW(), ARRAY['Deleted Scenes'], to_tsvector('Sci-fi in a snowy realm')),
	('Infinite Rail', 'Time travel via train.', 2023, 1, 4, 3.50, 135, 24.75, 'PG', NOW(), ARRAY['Commentary','Trailers'], to_tsvector('Time travel via train'));

SELECT
	film_id,
	title,
	release_year
FROM
	film
ORDER BY
	film_id
LIMIT
	5;

-- LIMIT clause with OFFSET clause
-- First, sort films by film id in ascending order
-- Second, skip the first three rows using the OFFSET 3 clause
-- Second, take the next four rows using the LIMIT 4 clause
SELECT
	film_id,
	title,
	release_year
FROM
	film
ORDER BY
	film_id
LIMIT 4 OFFSET 3;

SELECT
	film_id,
	title,
	release_year,
	rental_rate
FROM
	film
ORDER BY
	rental_rate DESC
LIMIT 10;