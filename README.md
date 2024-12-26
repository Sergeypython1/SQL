

CREATE TABLE galaxy(galaxy_id SERIAL PRIMARY KEY UNIQUE, name VARCHAR(20) UNIQUE, description TEXT, area NUMERIC(3,1) NOT NULL, distance INT NOT NULL, radius INT, visited BOOLEAN, visible BOOLEAN);
CREATE TABLE star(star_id SERIAL PRIMARY KEY UNIQUE, name VARCHAR(20) UNIQUE, description TEXT, area NUMERIC(3,1) NOT NULL, distance INT NOT NULL, radius INT, visited BOOLEAN, visible BOOLEAN, galaxy_id INT, FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id));
CREATE TABLE planet(planet_id SERIAL PRIMARY KEY UNIQUE, name VARCHAR(20) UNIQUE, description TEXT, area NUMERIC(3,1) NOT NULL, distance INT NOT NULL, radius INT, visited BOOLEAN, visible BOOLEAN, star_id INT, FOREIGN KEY (star_id) REFERENCES star (star_id));
CREATE TABLE moon(moon_id SERIAL PRIMARY KEY UNIQUE, name VARCHAR(20) UNIQUE, description TEXT, area NUMERIC(3,1) NOT NULL, distance INT NOT NULL, radius INT, visited BOOLEAN, visible BOOLEAN, planet_id INT, FOREIGN KEY (planet_id) REFERENCES planet (planet_id));
CREATE TABLE more_info(more_info_id SERIAL PRIMARY KEY UNIQUE, name VARCHAR(20) UNIQUE NOT NULL, description TEXT NOT NULL, more BOOLEAN, galaxy_id INT, FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id));

INSERT INTO galaxy(galaxy_id, name, description, area, distance, radius, visited, visible) 
VALUES (1, 'galaxy1', 'description1', 1, 1, 1, FALSE, TRUE), 
(2, 'galaxy2', 'description2', 2, 2, 2, FALSE, TRUE), 
(3, 'galaxy3', 'description3', 3, 3, 3, FALSE, TRUE),
(4, 'galaxy4', 'description4', 4, 4, 4, FALSE, TRUE),
(5, 'galaxy5', 'description5', 5, 5, 5, FALSE, TRUE),
(6, 'galaxy6', 'description6', 6, 6, 6, FALSE, TRUE);

INSERT INTO star(star_id, name, description, area, distance, radius, visited, visible, galaxy_id) 
VALUES (1, 'star1', 'description1', 1, 1, 1, FALSE, TRUE, 1),
(2, 'star2', 'description2', 2, 2, 2, FALSE, TRUE, 2),
(3, 'star3', 'description3', 3, 3, 3, FALSE, TRUE, 3),
(4, 'star4', 'description4', 4, 4, 4, FALSE, TRUE, 4),
(5, 'star5', 'description5', 5, 5, 5, FALSE, TRUE, 5),
(6, 'star6', 'description6', 6, 6, 6, FALSE, TRUE, 6);

INSERT INTO planet(planet_id, name, description, area, distance, radius, visited, visible, star_id) 
VALUES (1, 'planet1', 'description1', 1, 1, 1, FALSE, TRUE, 1),
(2, 'planet2', 'description2', 2, 2, 2, FALSE, TRUE, 2),
(3, 'planet3', 'description3', 3, 3, 3, FALSE, TRUE, 3),
(4, 'planet4', 'description4', 4, 4, 4, FALSE, TRUE, 4),
(5, 'planet5', 'description5', 5, 5, 5, FALSE, TRUE, 5),
(6, 'planet6', 'description6', 6, 6, 6, FALSE, TRUE, 6),
(7, 'planet7', 'description7', 7, 7, 7, FALSE, TRUE, 1),
(8, 'planet8', 'description8', 8, 8, 8, FALSE, TRUE, 2),
(9, 'planet9', 'description9', 9, 9, 9, FALSE, TRUE, 3),
(10, 'planet10', 'description10', 10, 10, 10, FALSE, TRUE, 4),
(11, 'planet11', 'description11', 11, 11, 11, FALSE, TRUE, 5),
(12, 'planet12', 'description12', 12, 12, 12, FALSE, TRUE, 6);

INSERT INTO moon(moon_id, name, description, area, distance, radius, visited, visible, planet_id) 
VALUES (1, 'moon1', 'description1', 1, 1, 1, FALSE, TRUE, 1),
(2, 'moon2', 'description2', 2, 2, 2, FALSE, TRUE, 2),
(3, 'moon3', 'description3', 3, 3, 3, FALSE, TRUE, 3),
(4, 'moon4', 'description4', 4, 4, 4, FALSE, TRUE, 4),
(5, 'moon5', 'description5', 5, 5, 5, FALSE, TRUE, 5),
(6, 'moon6', 'description6', 6, 6, 6, FALSE, TRUE, 6),
(7, 'moon7', 'description7', 7, 7, 7, FALSE, TRUE, 1),
(8, 'moon8', 'description8', 8, 8, 8, FALSE, TRUE, 2),
(9, 'moon9', 'description9', 9, 9, 9, FALSE, TRUE, 3),
(10, 'moon10', 'description10', 10, 10, 10, FALSE, TRUE, 4),
(11, 'moon11', 'description11', 11, 11, 11, FALSE, TRUE, 5),
(12, 'moon12', 'description12', 12, 12, 12, FALSE, TRUE, 6),
(13, 'moon13', 'description13', 13, 13, 13, FALSE, TRUE, 1),
(14, 'moon14', 'description14', 14, 14, 14, FALSE, TRUE, 2),
(15, 'moon15', 'description15', 15, 15, 15, FALSE, TRUE, 3),
(16, 'moon16', 'description16', 16, 16, 16, FALSE, TRUE, 4),
(17, 'moon17', 'description17', 17, 17, 17, FALSE, TRUE, 5),
(18, 'moon18', 'description18', 18, 18, 18, FALSE, TRUE, 6),
(19, 'moon19', 'description19', 19, 19, 19, FALSE, TRUE, 5),
(20, 'moon20', 'description20', 20, 20, 20, FALSE, TRUE, 6);


INSERT INTO more_info(more_info_id, name, description, more, galaxy_id) 
VALUES (1, 'info1', 'description1', FALSE, 1), 
(2, 'info2', 'description2', FALSE, 2), 
(3, 'info3', 'description3', FALSE, 3);
