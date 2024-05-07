CREATE DATABASE IF NOT EXISTS collage;
USE collage;

CREATE TABLE IF NOT EXISTS students (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

INSERT INTO students(rollno, name, marks, grade, city)
VALUES
(1, 'SOVA', 70, 'B+', 'SARLAHI'),
(2, 'PRAYSAH', 80, 'A', 'TANDI'),
(3, 'BISHAL', 90, 'A+', 'RAMECHHAP'),
(4, 'SANDESH', 100, 'A+', 'TISTUNG'),
(5, 'NITESH', 100, 'A+', 'ACCHAM'),
(6, 'PUSHPA', 100, 'A+', 'DHANGADI'),
(7, 'SUKHI', 100, 'A+', 'JANAKPUR'),
(8, 'MD', 100, 'A+', 'JANAKPUR'),
(9, 'ME', 0, 'E', 'BHAKTAPUR');


SELECT * FROM students;
SELECT DISTINCT city FROM students;

SELECT * FROM students WHERE marks >80;
SELECT * FROM students WHERE city =  'janakpur';
SELECT * FROM students WHERE marks > 90 OR city = 'SARLAHI';
SELECT * FROM students WHERE marks > 90 AND city = 'SARLAHI';
SELECT * FROM students WHERE  marks BETWEEN 80 AND 90;
SELECT * FROM students WHERE city IN  ('JANAKPUR', 'SARLAHI');
SELECT * FROM students WHERE city NOT IN  ('JANAKPUR', 'SARLAHI');



