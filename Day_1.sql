CREATE TABLE EMPLOYEE (
    Emp_no INT PRIMARY KEY,
    E_name VARCHAR(50),
    E_address VARCHAR(100),
    E_ph_no VARCHAR(15),
    Dept_no VARCHAR(10),
    Dept_name VARCHAR(30),
    Job_id VARCHAR(20),
    Salary DECIMAL(10,2),
    Email_id VARCHAR(50)
);

INSERT INTO EMPLOYEE 
(Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name, Job_id, Salary, Email_id)
VALUES
(1, 'Ram', 'Delhi', '987654310', 'D10', 'SALES', 'MGR101', 50000, 'ram@gmail.com');

INSERT INTO EMPLOYEE 
VALUES
(2, 'Amit', 'Mumbai', '987650124', 'D20', 'MECH', 'ENG201', 45000, 'amit@gmail.com');

INSERT INTO EMPLOYEE 
VALUES
(3, 'Priya', 'Pune', '998877655', 'D10', 'SALES', 'EXE301', 40000, 'priya@gmail.com');

INSERT INTO EMPLOYEE 
VALUES
(4, 'Krisna', 'Chennai', '912345780', 'D30', 'HR', 'HR401', 38000, 'Krisna@gmail.com');

INSERT INTO EMPLOYEE 
VALUES
(5, 'Riddam', 'Bangalore', '987124567', 'D20', 'MECH', 'TECH501', 42000, 'Riddam@gmail.com');


INSERT INTO EMPLOYEE 
VALUES
(5=6, 'dam', 'Hyderabad', '987124357', 'D20', 'MECH', 'TECH506', 43000, 'dam@gmail.com');


-- QUESTIONS

-- 1. Display all the information of EMPLOYEE table
select * from employee;

-- 2. Display the record of each employee who works in department D10
 select* from employee where Dept_no='D10';


-- 3. Update the city of Emp_no 12 with current city as Nagpur
update employee set E_address ='Nagpur' where Emp_no=12; 


-- 4. Display the details of Employee who works in department MECH
select* from employee where Dept_name='MECH';


-- 6. Display the complete record of employees working in SALES 
select*from employee where Dept_name ='SALES';


--7. Update the salary of employee 4 to 70000.
update employee set salary=70000 where Emp_no=4;


--8. Increase the salary of all employees in HR by 10%.
update employee set salary=salary*1.10 where Dept_name='HR';


--9. Delete the employee with emp_id = 5.
Delete from employee where emp_no=5;


--10. Delete all employees from the Sales department.
Delete from employee where Dept_name='SALES';


--11. Increase salary of employees earning less than 75000 by 5000
update employee set salary = salary + 5000 where salary<75000;


-- 12. Increase salary of all employees by 5000
update employee set salary=salary+5000;


-- 13. Delete employee with emp_id = 3
Delete from employee where emp_no=3;


-- 14. Delete employees earning less than 40000
Delete from employee where salary< 40000;


-- 15. Delete all employees whose salary is below 60000
Delete from employee where salary < 60000;
