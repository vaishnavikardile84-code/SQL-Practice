-- create database joins;
-- use joins;
-- create table Customers ( cust_id INT PRIMARY KEY AUTO_INCREMENT , cust_name VARCHAR (30) , c_city varchar(20) , acccount_year YEAR , Membership VARCHAR(89) , CStatus VARCHAR(80));
--   INSERT INTO Customers ( cust_name , c_city , acccount_year , membership ,CStatus) VALUES (  'Nilesh Patil' , 'Pune' , '2022' , 'Premium' , 'Active');
-- ALTER TABLE Customers change column acccount_year Account_year Year ;


-- INSERT INTO Customers
-- (cust_name, c_city, Account_year, Membership, CStatus)
-- VALUES
-- ('Aarav Sharma', 'Pune', 2021, 'Premium', 'Active'),
-- ('Priya Patel', 'Mumbai', 2020, 'Gold', 'Active'),
-- ('Rohan Mehta', 'Nashik', 2022, 'Silver', 'Inactive'),
-- ('Sneha Joshi', 'Nagpur', 2019, 'Premium', 'Active'),
-- ('Vikram Singh', 'Pune', 2023, 'Gold', 'Active'),
-- ('Ananya Deshmukh', 'Aurangabad', 2021, 'Silver', 'Inactive'),
-- ('Rahul Kulkarni', 'Mumbai', 2018, 'Premium', 'Active'),
-- ('Pooja Jadhav', 'Nashik', 2024, 'Gold', 'Active'),
-- ('Aditya Patil', 'Pune', 2020, 'Silver', 'Inactive'),
-- ('Neha More', 'Kolhapur', 2022, 'Premium', 'Active');


--  CREATE TABLE Products (
--      product_id INT PRIMARY KEY ,
--      product_name VARCHAR(50),
--    cust_id INT,
--    category VARCHAR(30),
--    price DECIMAL(10,2),
--     stock INT
-- );


-- INSERT INTO Products
-- (product_name, cust_id, category, price, stock)
-- VALUES
-- (221,'Laptop', 1, 'Electronics', 55000.00, 10),
-- (222,'Mobile', 2, 'Electronics', 25000.00, 15),
-- (123,'Office Chair', 3, 'Furniture', 8000.00, 20),
-- (124,'Desk', 4, 'Furniture', 12000.00, 8),
-- (225,'Headphones', 5, 'Electronics', 2000.00, 30),
-- (226,'Keyboard', NULL, 'Accessories', 1500.00, 25),
-- (227,'Mouse', 12, 'Accessories', 800.00, 40),
-- (228,'Monitor',  NULL, 'Electronics', 15000.00, 12),
-- (229,'Printer', 8, 'Electronics', NULL, 5),
-- (230,'Webcam', 15, 'Accessories', 3000.00, NULL);
-- drop table products;

-- ALTER TABLE Products ADD CONSTRAINT const_name FOREIGN KEY (cust_id) REFERENCES Customers(cust_id);
DESC customers;
desc products;

select * from customers;
select * from products;

-- INNER
SELECT c.cust_name , c.c_city, p.product_name , p.price from products as p 
INNER JOIN customers as c ON p.cust_id = c.cust_id;
SELECT c.cust_name, p.product_id , c.cust_id , p.product_name , p.category from customers  as c INNER JOIN products as p ON c.cust_id = p.cust_id WHERE c.c_cITY = 'Pune'; 

-- LEFT 
SELECT c.cust_name , p.product_name FROM customers as c LEFT JOIN products as p ON p.cust_id = c.cust_id;

-- RIGHT
SELECT product_name,product_id  , cust_name FROM customers as c RIGHT JOIN products as p ON c.cust_id = p.cust_id; 

SELECT c.membership ,c.cust_name, p.product_id ,product_name , p.category from customers  as c LEFT JOIN products as p ON c.cust_id = p.cust_id WHERE c.membership = 'GOLD'; 

SELECT c.membership ,c.cust_name, p.price,product_name , p.category from customers  as c RIGHT JOIN products as p ON c.cust_id = p.cust_id ORDER BY p.price DESC; 
