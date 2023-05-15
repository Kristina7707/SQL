DROP DATABASE IF EXISTS hw5;
CREATE DATABASE IF NOT EXISTS hw5;
USE hw5;

CREATE TABLE IF NOT EXISTS  cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);
INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
-- Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов
CREATE VIEW c_cars AS 
SELECT *
FROM cars
WHERE cost < 25000;

-- Измените в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW c_cars AS 
SELECT name, cost
FROM cars
WHERE cost < 30000;

-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW skoda_and_audi AS 
SELECT *
FROM cars
WHERE name ='Skoda' OR name ='Audi';