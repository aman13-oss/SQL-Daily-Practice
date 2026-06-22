--1. Create a table named Accounts with account number, customer name, city, balance, and opening date.
CREATE TABLE accounts (
   acc_no INT PRIMARY KEY,
   name VARCHAR(50),
   city VARCHAR(30),
   balance NUMERIC(10,2),
   open_date DATE
);

--2. Insert records into the Accounts table.
INSERT INTO accounts VALUES
(101, 'Amit', 'Delhi', 45000, '2023-01-10'),
(102, 'Neha', 'Noida', 62000, '2022-11-15'),
(103, 'Rahul', 'Ghaziabad', 38000, '2024-02-20'),
(104, 'Priya', 'Delhi', 72000, '2021-08-05'),
(105, 'Karan', 'Mumbai', 54000, '2023-06-18');

--3. Display all records from the Accounts table.
SELECT * FROM Accounts;

--4. Find the average balance of all customers.
SELECT name,avg(balance)from accounts group by name ;


--5. Count the total number of accounts.
SELECT name,count(*) from accounts group by name;


--6. Find the highest account balance.
SELECT name,max(balance) from accounts group by name;


--7. Find the lowest account balance.
select name,min(balance) from accounts group by name;


--8. Find the total balance of all customers.
select name,sum(balance) from accounts group by name;


--9. Display all customer names in uppercase.
select upper(name) from accounts;


--10. Display all customer names in lowercase.
select lower(name) from accounts ;


--11. Find the length of each customer name.
select length(name)from accounts;


--12. Display customer name and city together.
select concat(name,'-',city) from accounts;


--13. Display the first 3 characters of each customer name.
select substring(name,1,3) from accounts;


--17. Display the current date.
select current_date;


--18. Display the current time.
select current_time;


--19. Display the current date and time.
select now();


--20. Extract the opening year from the account opening date.
select name,Extract(year from open_date) from accounts;


--21. Find the age of each account.
select name,age(open_date) from accounts;



