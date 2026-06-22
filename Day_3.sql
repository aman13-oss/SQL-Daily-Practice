CREATE TABLE CSEBooks (
book_id SERIAL PRIMARY KEY,
book_name VARCHAR(100),
subject VARCHAR(50),
author_name VARCHAR(50),
price DECIMAL(10,2),
stock_quantity INT
);


INSERT INTO CSEBooks
(book_name, subject, author_name, price, stock_quantity)
VALUES
('Data Structures Using C', 'Data Structures', 'Schaum', 650, 20),
('Operating System Concepts', 'Operating System', 'Galvin', 850, 15),
('Computer Networks', 'Networking', 'Forouzan', 720, 18),
('Python Programming', 'Programming', 'Guido', 550, 30),
('Database System Concepts', 'DBMS', 'Korth', 900, 10),
('Java Complete Reference', 'Programming', 'Herbert Schildt', 780, 25),
('Artificial Intelligence', 'AI', 'Stuart Russell', 1200, 8),
('Machine Learning Basics', 'AI', 'Tom Mitchell', 1100, 12),
('C Programming', 'Programming', 'Dennis Ritchie', 500, 40),
('Cloud Computing', 'Cloud', 'Rajkumar Buyya', 950, 14);



-- QUESTIONS 



-- 1. Display all books sorted by price in ascending order.
select book_name,price from CSEBooks order by price asc;


-- 2. Display all books sorted by price in descending order.
select book_name,price from CSEBooks order by price desc;


-- 3. Display books sorted by stock quantity.
select book_name,stock_quantity from CSEBooks order by stock_quantity asc;


-- 4. Display books sorted first by subject and then by price in descending order.
select subject ,price from CSEBooks  order by subject asc, price desc;


-- 5. Display book names and prices sorted by highest price first.
select book_name,price from CSEBooks order by price desc;


--   6. Display book names and author names sorted alphabetically by author name.
select book_name,author_name from CSEBooks order by author_name asc;


-- 7. Count the total number of books in each subject.
select subject, count(*)as total_book from  CSEBooks group by subject;


-- 8. Find the average price of books in each subject.
select subject, avg(price)as avg_price from CSEBooks group by subject;


-- 9. Find the highest priced book in each subject.
select subject, max(price)as highest_price from CSEBooks group by subject;


-- 10. Find the lowest priced book in each subject.
select subject,min(price) as min_price from CSEBooks group by subject;


-- 11. Find the total stock quantity available for each subject.
select subject,sum(stock_quantity)as present from CSEBooks group by subject;


-- 12. Display subjects having more than one book.
select subject,count(*)as total_book from CSEBooks group by subject having count(*) > 1;


-- 13. Display subjects whose average book price is greater than 700.
select subject,round (avg(price),2) from CSEBooks group by subject having avg(price)> 700;


--14. Display subjects whose total stock quantity is less than 40.
select subject,sum(stock_quantity) as less_than40 from CSEBooks group by subject having sum(stock_quantity)<40;


-- 15. Display subjects whose highest book price is greater than 1000.
select subject,max(price) from CSEBooks group by subject having max(price) > 800;


-- 16. Display subjects whose lowest book price is less than 600.
select subject,min(price) from CSEBooks group by subject having min(price)<600;




