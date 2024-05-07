CREATE DATABASE IF NOT EXISTS payment;
USE payment;
CREATE TABLE IF NOT EXISTS payments (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO payments(customer_id, customer, mode, city)
VALUES
(100, 'Prayash Rimal', 'Networking',  'Chitwan'),
(101, 'Nitesh Dhungana', 'Credit Card', 'Accham'),
(102, 'Sova Mahato',  'Credit Card', 'Sarlahi'),
(103, 'Bishal Shrestha',  'Networking', 'Ramechhap'),
(104, 'Puspa Pandey',  'Credit card', 'Dhangadi'),
(105, 'Moshahid',  'Debit Card', 'Janakpur'),
(106, 'SUKHI Sharma',  'Debit card', 'JANAKPUR'),
(107, 'Sandesh Bidari', 'Networking', 'Tistung'),
(108, 'Rojan Parajuli',  'Networking', 'BHAKTAPUR'),
(109, 'Rohit Khadka', 'Credit Card', 'BHAKTAPUR');

SELECT * FROM payments;
SELECT mode FROM payments GROUP BY mode;
SELECT mode, COUNT(customer) FROM payments GROUP BY mode;

