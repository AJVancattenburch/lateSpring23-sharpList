CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';



-- SECTION Penguins
-- CREATE TABLE penguins(
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   name TEXT NOT NULL,
--   age INT DEFAULT 1,
--   species TEXT,
--   wearingTuxedo BOOLEAN DEFAULT true
-- );
CREATE TABLE penguins(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT DEFAULT 1,
  species VARCHAR(5000),
  wearingTuxedo BOOLEAN DEFAULT true
);


INSERT INTO penguins
(name, age, species)
VALUES
("Penny", 2, "Macaroni");

INSERT INTO penguins
(name, species)
VALUES
("Rocky", "Southern Rock Hopper");
INSERT INTO penguins
(name)
VALUES
("Stinky");
INSERT INTO penguins
(name, wearingTuxedo)
VALUES
("Sloopy", false);


SELECT * FROM penguins LIMIT 1;

SELECT name, species FROM penguins WHERE id =1;
SELECT id, name, species, wearingTuxedo FROM penguins WHERE wearingTuxedo = true;
SELECT id, name, species, wearingTuxedo FROM penguins WHERE id > 2 AND id < 4;

SELECT name FROM penguins WHERE name LIKE "%y%";

UPDATE penguins SET
`wearingTuxedo` = false
WHERE id = 4
;
DELETE FROM penguins WHERE id = 7;


-- SECTION Cars

CREATE TABLE cars(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  make VARCHAR(100) NOT NULL,
  model VARCHAR(100) NOT NULL,
  year INT NOT NULL DEFAULT 1990,
  price DOUBLE NOT NULL DEFAULT 1.00,
  color VARCHAR(100) NOT NULL,
  description VARCHAR(500),

  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
)  default charset utf8 COMMENT '';

INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Fast", "Chevy", 2023, 20000, "Pearly", "Kinda looks like a knock-off cyber truck, which actually says a lot.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Mazda", "Miata", 2023, 34, "White", "1/57 scale model car. Assembled by the most handsome instructor.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Mazda", "RX7", 2022, 120, "Black", "1/57 scale model car. New in Packaging. You will need your own tools to assemble.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Dodge", "Baha", 1993, 7200, "Red", "Great shape, drives fast, and good on sand. Just needs wheels.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Toyota", "Scorpion", 2000, 9000, "Black", "For all your FAST and FAMILY needs.");

SELECT * FROM cars WHERE id = LAST_INSERT_ID();

SELECT * FROM cars ORDER BY `createdAt` DESC;
SELECT * FROM cars WHERE price < 8000 ORDER BY price DESC;
SELECT * FROM cars WHERE description LIKE "%1/57%" ORDER BY price ASC;
SELECT * FROM cars WHERE description LIKE "%1/57%" ORDER BY price ASC LIMIT 1, 100;

SELECT * FROM cars WHERE id = 100;

--SECTION HOUSES

CREATE TABLE houses(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  address VARCHAR(250) NOT NULL,
  price DOUBLE NOT NULL DEFAULT 1.00,
  type VARCHAR(250) NOT NULL,
  year INT NOT NULL DEFAULT 1800,
  bedrooms INT NOT NULL DEFAULT 1,
  bathrooms DOUBLE NOT NULL DEFAULT 1,
  levels INT NOT NULL DEFAULT 1,
  imgUrl VARCHAR(500),
  description VARCHAR(5000),

  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
)  default charset utf8 COMMENT '';

INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('1234 Main St', 200000, 'Single Family', 2005, 3, 2, 1, 'https://placehold.it/200x200', 'This is a house');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('321 Broadway Ave', 350000, 'Victorian', 1940, 5, 3.5, 2, 'https://placehold.it/200x200', 'This is an elegant piece of history');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('100 Park Place', 3000000, 'Modern', 2015, 3, 3, 2, 'https://placehold.it/200x200', 'Look down on all of the lower-class peasants from your penthouse suite. And then maybe go on a little vacation and check out the titanic with all of your leisure time!');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('450 Nowhere Ave', 750000, 'Cassette Futurism', 2023, 6, 5.5, 3, 'https://placehold.it/200x200', 'Get weird in this mind-warp of a living space! Multiple hidden rooms and a secret passage to the underground pool. You will never want to leave!');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('987 Heavenly St', 1000000, 'Bungalow', 1985, 3, 3, 1, 'https://placehold.it/200x200', 'A cozy little place to call home. This house is perfect for a small family or a single person who wants to live in a quiet neighborhood.');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('222 Tutu Ln', 350000, 'Cottage', 1963, 2, 1.5, 1, 'https://placehold.it/200x200', 'This house is a great starter home for a young couple or a single person who want to appreciate the simple things in life. The house has a great view of the mountains!');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('555 Flicker Pl', 600000, 'Colonial', 1927, 4, 2, 2, 'https://placehold.it/200x200', 'A cozy and artsy home for a family open to a loving family! It is located close to the city for convenience.');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('234 Storm Rd', 2500000, 'Farmhouse', 1951, 6, 5, 4, 'https://placehold.it/200x200', 'This farmhouse is perfect for a family who wants to live in the country. It is located on a large plot of land with a barn and a pond.');
INSERT INTO houses
(address, price, type, year, bedrooms, bathrooms, levels, imgUrl, description)
VALUES
('999 Frontier Circle', 10000000, 'Castle', 1899, 15, 18, 6, 'https://placehold.it/200x200', 'This castle is perfect for a large family who wants to live in luxury. It is located on a large plot of land with a moat and a drawbridge.');

SELECT * FROM houses WHERE id = LAST_INSERT_ID();

SELECT * FROM houses ORDER BY `createdAt` DESC;

SELECT * FROM houses WHERE price < 10000000 ORDER BY price DESC;