CREATE TABLE BTech_Students (
StudentID INT PRIMARY KEY,
Name VARCHAR(50),
Branch VARCHAR(20),
Semester INT,
Marks INT,
City VARCHAR(30)
); 

INSERT INTO BTech_Students
(StudentID, Name, Branch, Semester, Marks, City)
VALUES
(101, 'Aman', 'CSE', 2, 85, 'Delhi'),
(102, 'Riya', 'AI', 4, 72, 'Mumbai'),
(103, 'Karan', 'CSE', 2, 90, 'Delhi'),
(104, 'Sneha', 'ECE', 6, 65, 'Pune'),
(105, 'Rahul', 'AI', 4, 78, 'Delhi'); 


SELECT * FROM BTech_Students;

--1. Find students scoring above average marks.
select name,marks from BTech_Students where marks > (
  select avg(marks)
  from BTech_Students
);


--2. Find students with the highest marks.
select name , marks from BTech_Students where marks = (
  select max(marks)
  from BTech_Students
);

--3. Find students with lowest marks.
select name,marks from BTech_Students where marks = (
  select min(marks)
  from BTech_Students
);

--4. Find students from the same city as Aman.
select name,city from BTech_Students where city =(
  select city 
  from BTech_Students
  where studentid=101
);

--5. Find students scoring more than Rahul.
select name,marks from BTech_Students where marks > (
  select marks from BTech_Students where name='Rahul'
);


--6. Find students enrolled in the same branch as Riya.
select name,branch from BTech_Students where branch=(
  select branch from BTech_Students where name='Riya'
);


--7. Find students whose marks are below average.
select name, marks from BTech_Students where marks < (
  select avg(marks) from BTech_Students
);


--  8. Find second highest marks.
select max(marks) from BTech_Students  where marks < (
  select max(marks) from BTech_Students 
  
) ;
--9. Find students who scored the second highest marks.
select name,marks from BTech_Students where marks=(
  select max(marks) from BTech_Students where marks< (
    select max(marks) from BTech_Students 
  )
);


--10. Find Delhi students having marks less than average.
select name,city from BTech_Students where marks< (
  select avg(marks) from BTech_Students where city='Delhi'
) ;


--11. Find students whose marks equal the average marks.
select name, marks from BTech_Students where marks = (
  select avg(marks) from BTech_Students
);


--12. Find highest scorer in CSE branch.
select name,marks from BTech_Students where marks =(
  select max(marks) from BTech_Students where branch='CSE'
);


--13. Find students whose city is same as highest scorer.
select name from BTech_Students where city=(
  select city from BTech_Students where marks = (
    select max(marks) from BTech_Students
  )
);


--14. Find students whose marks are greater than minimum marks.
select name,marks from BTech_Students where marks > (
  select min(marks) from BTech_Students
);


--15. Find students who are not from Mumbai.
select name,city from BTech_Students where city != (
  select city from BTech_Students where city='Mumbai'
);


--16. Find branch of the student having highest marks.
select branch from BTech_Students where marks = (
  select max(marks) from BTech_Students
);


--17. Find students scoring above AI branch average marks.
select name,marks from BTech_Students where marks > (
  select avg(marks) from BTech_Students where branch='AI'
);

--18. Find students whose marks are less than Karan.
select name,marks from BTech_Students where marks < (
  select marks from BTech_Students where name='Karan'
);


--19. Find students having same marks as Rahul.
select name,marks from BTech_Students where marks = (
  select marks from BTech_Students where name='Rahul'
);


--20. Find students whose branch is different from Aman.
select name,branch from BTech_Students where branch != (
  select branch from BTech_Students where name='Aman'
);

--21. Find highest marks among Delhi students.
select name,marks from BTech_Students where marks =(
  select max(marks) from BTech_Students where city='Delhi'
);


--22. Find students who scored more than all AI students.
select name,marks from BTech_Students where marks > all(
  select marks from BTech_Students where branch='AI'
);


--23. Find students who scored more than any AI student.
select name,marks from BTech_Students where marks > any(
  select marks from BTech_Students where branch='AI'
);

