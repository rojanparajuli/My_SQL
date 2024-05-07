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
(1, 'SOVA', 100, 'A+', 'SARLAHI'),
(2, 'PRAYASH', 100, 'A+', 'TANDI'),
(3, 'BISHAL', 100, 'A+', 'RAMECHHAP'),
(4, 'SANDESH', 100, 'A+', 'TISTUNG'),
(5, 'NITESH', 100, 'A+', 'ACCHAM'),
(6, 'PUSHPA', 100, 'A+', 'DHANGADI'),
(7, 'SUKHI', 100, 'A+', 'JANAKPUR'),
(8, 'MD', 100, 'A+', 'JANAKPUR'),
(9, 'ME', 0, 'E', 'BHAKTAPUR');

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM students;
SELECT DISTINCT city FROM students;
SELECT * FROM students LIMIT 3;
SELECT * FROM students WHERE marks > 80;
SELECT * FROM students WHERE city = 'JANAKPUR'; -- Corrected city name
SELECT * FROM students WHERE marks > 90 OR city = 'SARLAHI';
SELECT * FROM students WHERE marks > 90 AND city = 'SARLAHI';
SELECT * FROM students WHERE marks BETWEEN 80 AND 90;
SELECT * FROM students WHERE city IN ('JANAKPUR', 'SARLAHI');
SELECT * FROM students WHERE city NOT IN ('JANAKPUR', 'SARLAHI');
SELECT * FROM students ORDER BY city;
SELECT * FROM students ORDER BY marks;
SELECT * FROM students ORDER BY marks DESC LIMIT 3;
SELECT marks FROM students;
SELECT MAX(marks) FROM students;
SELECT MIN(marks) FROM students;
SELECT AVG(marks) FROM students;
SELECT COUNT(rollno) FROM students;
SELECT city FROM students GROUP BY city;
SELECT city, COUNT(name) FROM students GROUP BY city;
SELECT city, COUNT(name) FROM students GROUP BY city, name;
SELECT city, AVG(marks) FROM students GROUP BY city;
SELECT city, AVG(marks) FROM students GROUP BY city ORDER BY city; 
SELECT city, AVG(marks) FROM students GROUP BY city ORDER BY AVG(marks);
SELECT COUNT(*), city FROM students GROUP BY city HAVING MAX(marks) > 90;

-- UPDATE students SET grade = 'o' WHERE grade = 'A';
SELECT * FROM students;


