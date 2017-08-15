CREATE DATABASE cheeses_db;
\c cheeses_db
CREATE TABLE cheeses(id serial primary key, name varchar, color varchar, origin varchar, stink_level integer);
INSERT INTO cheeses (name, color, origin, stink_level) VALUES
('Roquefort', 'yellow', 'French', 5),
('Epoisses', 'orange', 'French', 9),
('Charolais', 'white', 'French', 5),
('Maroilles', 'white', 'French', 10),
('Durrus', 'yellow', 'Irish', 2),
('Hooligan', 'yellow', 'American', 3),
('Teleme', 'white', 'American', 2),
('Stichelton', 'white', 'English', 4);


-- **CHOOSING CHEESE**
-- Find all the cheeses
SELECT * FROM cheeses;
-- Find all the French cheeses
SELECT name FROM cheeses WHERE origin = 'French';
-- Find all the English cheeses
SELECT name FROM cheeses WHERE origin = 'English';
-- Find all cheeses with a stink level of 2
SELECT name FROM cheeses WHERE stink_level = 2;
-- Find all cheeses with a stink level of 10
SELECT name FROM cheeses WHERE stink_level = 10;
-- Find all French cheeses with a stink level of 5
SELECT name FROM cheeses WHERE origin = 'French' AND stink_level = 5;
-- Find all Irish cheeses with a stink level of 6
SELECT name FROM cheeses WHERE origin = 'Irish' AND stink_level = 6;
-- Find all cheeses with a stink level of at least 4, but no greater than 8.
SELECT name FROM cheeses WHERE stink_level >= 4 OR stink_level <= 8;
-- Find all American and English cheeses.
SELECT name FROM cheeses WHERE origin = 'American' OR origin = 'English';
-- Find all cheeses that are not from France.
SELECT * FROM cheeses WHERE origin NOT IN ('French');

-- **RESTOCKING CHEESE**
-- Change the stink level of Roquefort to 3
UPDATE cheeses SET stink_level = 3 WHERE name = 'Roquefort';
-- Change the color of Teleme to "mauve"
UPDATE cheeses SET color = 'mauve' WHERE name = 'Teleme';
-- Delete the Hooligan cheese
DELETE from cheeses WHERE name = 'Hooligan';
-- Change the stink level of Stichelton to be 7
UPDATE cheeses SET stink_level = 7 WHERE name = 'Stichelton';
-- Add the cheese "Monterey Jack", an American cheese with a stink level of 0
INSERT INTO cheeses (name, color, origin, stink_level) VALUES ('Monterey Jack', 'white', 'American', 0);
-- Delete Durrus
DELETE FROM cheeses WHERE name = 'Durrus';

