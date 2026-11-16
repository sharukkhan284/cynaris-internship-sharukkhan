create database simple_sales;
use simple_sales;

create table sales (
sales_id int primary key,
Customer_name varchar(50),
city varchar(30),
product varchar(50),
amount int
);

INSERT INTO sales (sales_id, customer_name, city, product, amount)VALUES
(1, 'Rahul', 'Bangalore', 'Laptop', 50000),
(2, 'Priya', 'Chennai', 'Mobile', 20000),
(3, 'Arun', 'Hyderabad', 'Mouse', 1000),
(4, 'Sneha', 'Bangalore', 'Keyboard', 2000),
(5, 'Kiran', 'Vijayawada', 'Laptop', 45000);
select *from sales;

-- 1. Display all records
SELECT * FROM sales;
-- 2. Display customer names
SELECT customer_name FROM sales;
-- 3. Find sales above 10000
SELECT * FROM sales 
WHERE amount > 10000;
-- 4. Find Bangalore customers
SELECT * FROM sales
WHERE city = 'Bangalore';
-- 5. Use AND
SELECT * FROM sales
WHERE city = 'Bangalore'
AND amount > 5000;
-- 6. Use OR
SELECT * FROM sales
WHERE city = 'Chennai'
OR city = 'Hyderabad';
-- 7. Use NOT
SELECT * FROM sales
WHERE NOT city = 'Bangalore';
-- 8. Use LIKE
SELECT * FROM sales
WHERE customer_name LIKE 'R%';
-- 9. Use IN and BETWEEN
SELECT * FROM sales
WHERE city IN ('Bangalore', 'Chennai')
AND amount BETWEEN 10000 AND 50000;
-- 10. Check NULL values
SELECT * FROM sales
WHERE product IS NULL;

