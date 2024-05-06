CREATE DATABASE IF NOT EXISTS Rojan;
USE Rojan;

CREATE TABLE IF NOT EXISTS Me (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

DROP DATABASE IF EXISTS Collage;
DROP DATABASE IF EXISTS error;
DROP DATABASE IF EXISTS students;

INSERT INTO Me (id, name) VALUES
(101, 'Karan'),
(102, 'Arjun');

SELECT * FROM Me;


CREATE DATABASE IF NOT EXISTS xyz;

USE XYZ;
CREATE TABLE IF NOT EXISTS Info(
Name VARCHAR (50),
Salary INT PRIMARY KEY
);

INSERT INTO Info (Name, Salary) VALUES
("adam", 250000),
("bob" , 30000),
("casey", 40000);

SELECT * FROM Info;

-- UNIQUE KO CODE

CREATE TABLE  temp1(
id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;


-- PRIMARY KEY KO CODE
CREATE TABLE temp2(
id INT PRIMARY KEY
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (102);

SELECT * FROM temp2;

CREATE TABLE temp3(
id INT ,
name VARCHAR(50),
age INT,
city VARCHAR (50),
PRIMARY KEY (id, name) -- primary key define gareko
);

-- default ko example
CREATE TABLE employee(
id Int,
salary INT default(25000)
);

INSERT INTO employee (id) VALUES (101);
SELECT * FROM employee;


