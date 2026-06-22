-- Create Blinkit Table
CREATE TABLE Blinkit (product_id SERIAL PRIMARY KEY,    product_name VARCHAR(100),    category VARCHAR(50),    brand_name VARCHAR(50),    price DECIMAL(10,2),    stock_quantity INT);

-- Insert Sample Records
INSERT INTO Blinkit(product_name,category, brand_name, price, stock_quantity)VALUES('Bread', 'Bakery', 'Brita', 40, 20),
('Milk Packet', 'Dairy', 'Amul', 60, 35),
('Butter', 'Dairy', 'Amul', 120, 15),
('Banana', 'Fruits', 'Fresh', 50, 50),
('Biscuit', 'Snacks', 'Parle', 30, 40),
('Cheese', 'Dairy', 'Brita', 250, 10),
('Brown Bread', 'Bakery', 'Elite', 55, 18),
('Curd', 'Dairy', 'Mother', 80, 22),
('Apple Juice', 'Beverages', 'Real', 180, 12),
('Milk Shake', 'Beverages', 'Nestle', 150, NULL);


-- Display all products from the Blinkit table. [*]
select* from Blinkit;


--Display product names and prices only. [price and name]
select product_name,price from Blinkit;


--Display products whose price is greater than 150. []
select product_name,price from Blinkit where price > 150;



-- Display products whose stock quantity is less than 25. 
select product_name,stock_quantity from Blinkit where stock_quantity < 25;



--Display products whose name starts with ‘B’. [Like ‘B%’]
select product_name from Blinkit where product_name like 'B%';



--Display products whose name ends with ‘a’. [‘%a’]
select product_name from Blinkit where product_name like '%a';



--Display products containing the word ‘Milk’. [‘%Milk%’]
select product_name from Blinkit where product_name like '%Cheese%';


--Display products whose brand name is exactly 5 characters long. [‘------’]
select product_name from Blinkit where product_name like '_____';


--Update the price of product_id = 3. [update SET ]
update Blinkit set price=140 where product_id=3;


--Increase the price of all products by 25%. [price*1.25%]
update Blinkit set price= price * 1.25;


--Display products sorted by price in descending order. [desc]
select product_name,price from Blinkit order by price desc;


--Display distinct category names from the table. [distinct]
select distinct category from Blinkit;


--Display products whose price is between 50 and 200.[in ]
select product_name,price from Blinkit where price between 50 and 200;


--Display products belonging to either Dairy or Bakery category.
select product_name,category from Blinkit where category='Dairy';


--Display products whose stock quantity is not null. [!=]
select product_name,stock_quantity from Blinkit where stock_quantity is not null;

