-- add your seed data here!!!! 
DROP DATABASE IF EXISTS cheeses_db;
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