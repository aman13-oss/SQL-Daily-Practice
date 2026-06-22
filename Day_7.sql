-- Q1. Task: Display each employee's name along with their department name.

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);
 
INSERT INTO Employees VALUES
(1, 'Aman', 10),
(2, 'Riya', 20),
(3, 'Sahil', 10),
(4, 'Neha', 30);
 
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
 
INSERT INTO Departments VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance');
 
select emp_name , dept_name 
from Employees e
join Departments d
on e.dept_id=d.dept_id;


-- Q2 Task: Display student name, subject, and score for all records.

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);
 
INSERT INTO Students VALUES
(1, 'Karan'),
(2, 'Priya'),
(3, 'Ravi');
 
CREATE TABLE Marks (
    marks_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT
);
 
INSERT INTO Marks VALUES
(101, 1, 'Maths', 85),
(102, 2, 'Maths', 90),
(103, 1, 'Science', 78);

select student_name,subject,score 
from Students s
inner join Marks m 
on s.student_id=m.student_id;


-- Q3.Task: Display book title along with the author's name.

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50)
);
 
INSERT INTO Authors VALUES
(1, 'R.K. Sharma'),
(2, 'A. Verma');
 
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT
);
 
INSERT INTO Books VALUES
(201, 'DBMS Basics', 1),
(202, 'SQL Mastery', 1),
(203, 'Data Structures', 2);


select title , author_name 
from Authors a
join books b 
on a.author_id=b.author_id;

-- Q4. Task: Display all driver names along with trip distance.
-- Suresh (no trips) should still appear with NULL distance.
-- ============================================================
CREATE TABLE Drivers(
  driver_id INT PRIMARY KEY,
  driver_name VARCHAR(50)
);

INSERT INTO Drivers VALUES
(1, 'Vikram'),
(2, 'Suresh'),
(3, 'Anjali');

CREATE TABLE Trips (
  trip_id INT PRIMARY KEY,
  driver_id INT,
  distance_km INT
);

INSERT INTO Trips VALUES
(301, 1, 12),
(302, 3, 8);

select driver_name,distance_km 
from Drivers d 
left join Trips t
on d.driver_id=t.driver_id;


-- Q5. Task: Total order amount per customer, include customers with no orders.

CREATE TABLE Customers (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50)
);
 
INSERT INTO Customers VALUES
(1, 'Manish'),
(2, 'Pooja'),
(3, 'Rohit');
 
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    cust_id INT,
    amount INT
);
 
INSERT INTO Orders VALUES
(501, 1, 1200),
(502, 1, 800),
(503, 2, 1500);

select cust_name,amount
from Customers c 
left join Orders o 
on c.cust_id=o.cust_id;


-- Q6. Task: Display each employee's name along with their manager's name.

CREATE TABLE Employees1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);
 
INSERT INTO Employees1 VALUES
(1, 'Aman', NULL),
(2, 'Riya', 1),
(3, 'Sahil', 1),
(4, 'Neha', 2);
 
select e.emp_name,m.emp_name
from Employees1 e
left join Employees1 m
on e.emp_id = m.manager_id;


-- Q7. Task: Total quantity sold per category, include categories with zero sales.

CREATE TABLE Categories_Q7 (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);
 
INSERT INTO Categories_Q7 VALUES
(100, 'Electronics'),
(200, 'Stationery'),
(300, 'Furniture');
 
CREATE TABLE Products_Q7 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT
);
 
INSERT INTO Products_Q7 VALUES
(1, 'Laptop', 100),
(2, 'Mouse', 100),
(3, 'Notebook', 200);
 
CREATE TABLE Orders_Q7 (
    order_id INT PRIMARY KEY,
    product_id INT,
    qty INT
);
 
INSERT INTO Orders_Q7 VALUES
(701, 1, 2),
(702, 2, 5);

SELECT c.category_name,
       COALESCE(SUM(o.qty),0) AS total_qty
FROM Categories_Q7 c
LEFT JOIN Products_Q7 p
ON c.category_id = p.category_id
LEFT JOIN Orders_Q7 o
ON p.product_id = o.product_id
GROUP BY c.category_name;