-- CREATE schema assignment
CREATE SCHEMA assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);

-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);

-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

select * from assignment.Sales;


-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;
--Questions

-- 1. Write a query to select all data from the `Customers` table.
SELECT * FROM assignment.Customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(*) as total_products
from assignment.products p ;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name,price
from assignment.products
where price > '500';

-- 4. Write a query to find the average price of all products from the `Products` table.
select AVG(price) as avg_price
from assignment.products  ;

-- 5. Write a query to find the total sales amount from the `Sales` table.
select SUM(total_amount) as total_sales
from assignment.sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership_status
from assignment.customers ;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat(first_name, ' ',last_name) as full_name
from assignment.customers ;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select *
from assignment.products 
where category ='Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select max(price) as highest_price
from assignment.products; 

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select product_id,
count(sale_id) as number_of_sales
from assignment.sales
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id,
sum(quantity_sold) as total_quantity_sold
from assignment.sales
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select min(price) as lowest_price
from assignment.products ;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select distinct concat(first_name, ' ', last_name) as full_name,
       product_name,
       price
from assignment.customers c
join assignment.sales s ON c.customer_id = s.customer_id
join assignment.products p ON s.product_id = p.product_id
where p.price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select p.product_name,s.total_amount
from assignment.sales s 
join assignment. products p ON s.product_id =p.product_id
group by product_name,total_amount;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select concat(c.first_name,' ',c.last_name)as full_name, 
sum(sales.total_amount) as total_amount_spent
from assignment.sales 
join assignment.customers c on sales.customer_id=c.customer_id 
group by full_name,total_amount;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select concat(c.first_name,' ',c.last_name) as full_name,
p.product_name,
s.quantity_sold
from assignment.customers c
join assignment.sales s on c.customer_id =s.customer_id 
join assignment.products p on s.product_id =p.product_id;


-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select c1.customer_id as customer1_id,
concat(c1.first_name, ' ', c1.last_name) as customer1_name,
c2.customer_id AS customer2_id,
concat(c2.first_name, ' ', c2.last_name) as customer2_name,
c1.membership_status
from assignment.customers c1
join assignment.customers c2 
on c1.membership_status = c2.membership_status
and c1.customer_id < c2.customer_id
order by c1.membership_status, customer1_name;


-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select p.product_name,
count(s.sale_id) as total_number_sales
from assignment.sales s 
join assignment.products p on s.product_id =p.product_id 
group by product_name ;


-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select product_id ,product_name ,stock_quantity 
from products p 
where p.stock_quantity < '10';


-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select p.product_name,s.quantity_sold 
from assignment.sales s 
join assignment.products p on s.product_id =p.product_id 
where s.quantity_sold > 5
group by p.product_name, s.quantity_sold ;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select distinct concat (c.first_name,' ',c.last_name) as full_name,
p.category
from assignment. customers c 
join assignment.sales s on s.customer_id  =c.customer_id 
join assignment.products p on p.product_id =s.product_id 
where p.category in ('Electronics','Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select p.product_name,
sum(s.total_amount) as total_sales_amount
from assignment.sales s 
join products p on s.product_id = p.product_id
group by p.product_name ;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select distinct concat(c.first_name,' ',c.last_name) as full_name,
s.sale_date
from assignment.customers c 
join assignment.sales s  on c.customer_id =s.customer_id 
where s.sale_date >= '2023-01-01' and s.sale_date <= '2023-12-31'
group by s.sale_date,full_name ;

-- 24. Write a query to find the customers with the highest total sales in 2023.
select distinct concat(c.first_name, ' ', c.last_name) as full_name,
sum(s.total_amount) as total_sales
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
where s.sale_date >= '2023-01-01' and s.sale_date <= '2023-12-31'
group by full_name
limit 10;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select p.product_name,p.price,s.total_amount
from assignment.sales s 
join assignment.products p on s.product_id =p.product_id 
group by p.price ,p.product_name ,s.total_amount 
limit 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select count(distinct c.customer_id) as total_customers
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
join assignment.products p on s.product_id = p.product_id
where p.price > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select count(s.sale_id) as gold_membership,
sum(s.total_amount) as total_sales_amount
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
join assignment.products p on s.product_id = p.product_id
where c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select p.product_name,i.stock_quantity
from assignment.products p
join assignment.inventory i on p.product_id = i.product_id
where i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select concat(c.first_name, ' ', c.last_name) as full_name,
sum(s.quantity_sold) as total_quantity_purchased
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
group by full_name 
having sum(s.quantity_sold) > 5;


-- 30. Write a query to find the average quantity sold per product.
select  p.product_name,
avg( s.quantity_sold) as avg_quantity_sold
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by  p.product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select count(sale_id) as total_sales_december_2023
from assignment.sales s 
where s.sale_date >= '2023-12-01' and s.sale_date <= '2023-12-31';

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select concat(c.first_name, ' ', c.last_name) as full_name,
sum(s.total_amount) as total_spent
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
where extract(year from s.sale_date) = 2023
group by c.customer_id, c.first_name, c.last_name
order by total_spent desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select p.product_name,p.stock_quantity,sum (s.quantity_sold)as total_sold
from assignment.products p
join assignment.sales s on p.product_id = s.product_id
where  p.stock_quantity < 5
group by   p.product_name, p.stock_quantity;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select p.product_name,sum(s.total_amount) as total_sales
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by p.product_name
order by  total_sales desc ;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select concat (c.first_name, ' ', c.last_name) as full_name,
c.registration_date,
s.sale_date,
(s.sale_date - c.registration_date)as days_after_registration
from  assignment.customers c
join assignment.sales s ON c.customer_id = s.customer_id
where (s.sale_date- c.registration_date) between 0 and 7
group by full_name,c.registration_date ,s.sale_date ,days_after_registration;


-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
select p.product_name,p.price,s.quantity_sold,s.total_amount
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
where p.price between 100 and 500;


-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
select concat(c.first_name, ' ', c.last_name) as full_name,
count(s.sale_id) as number_of_purchases
from assignment.customers c
join  assignment.sales s ON c.customer_id = s.customer_id
group by  full_name
LIMIT 15;


-- 38. Write a query to find the total quantity of products sold per customer.
select concat(c.first_name, ' ', c.last_name) as full_name,
sum(s.quantity_sold) AS total_quantity_sold
from assignment.customers c
join assignment.sales s ON c.customer_id = s.customer_id
group by full_name 
order by  total_quantity_sold desc;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
select  product_name, stock_quantity, 'Highest Stock' as stock_level
from  assignment.products
where stock_quantity = (select  max(stock_quantity) from assignment.products)

UNION ALL

select  product_name, stock_quantity, 'Lowest Stock' as  stock_level
from assignment.products
where  stock_quantity = (select min(stock_quantity) from assignment.products);


-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select p.product_name,
sum(s.total_amount) as total_sales
from  assignment.products p
join  assignment.sales s on  p.product_id = s.product_id
where  p.product_name LIKE '%Phone%'
group by p.product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select concat(c.first_name, ' ', c.last_name) as full_name,
c.membership_status,
p.product_name,
sum(s.total_amount) as total_sales_amount
from  assignment.customers c
inner join  assignment.sales s ON c.customer_id = s.customer_id
inner join  assignment.products p ON s.product_id = p.product_id
where c.membership_status = 'Gold'
group by  full_name, c.membership_status, p.product_name;

-- 42. Write a query to find the total sales of products by category.
select p.category,
sum (s.total_amount) as total_sales
from assignment.sales s
join  assignment.products p ON s.product_id = p.product_id
group by  p.category; 


-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select p.product_name,
extract(year from s.sale_date) as sale_year,
extract(month from s.sale_date) as sale_month,
sum(s.total_amount) as total_sales
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by p.product_name, extract(year from s.sale_date), extract(month from s.sale_date);


-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
SELECT p.product_name,
sum(s.quantity_sold) as total_sold,
i.stock_quantity as remaining_stock
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
join  assignment.inventory i on p.product_id = i.product_id
where  i.stock_quantity > 0
group by p.product_name, i.stock_quantity;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select concat(c.first_name, ' ', c.last_name) as full_name,
sum(s.total_amount) AS total_spent
from assignment.customers c
join  assignment.sales s ON c.customer_id = s.customer_id
group  by full_name 
limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select count(distinct s.product_id) as unique_products_sold_2023
from assignment.sales s
where  extract(year from s.sale_date) = 2023;


-- 47. Write a query to find the products that have not been sold in the last 6 months.
select p.product_name,
max(s.sale_date) as last_sale_date
from assignment.products p
left join assignment.sales s on p.product_id = s.product_id
group by p.product_id, p.product_name
having max(s.sale_date) < current_date - interval '6 months'
or max(s.sale_date) is null
order by last_sale_date;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select p.product_name,p.price,sum(s.quantity_sold) as  total_quantity_sold
from assignment.products p
join assignment.sales s on p.product_id = s.product_id
where  p.price BETWEEN 200 and 800
group by  p.product_name, p.price;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select concat(c.first_name, ' ', c.last_name) as full_name,
sum(s.total_amount) as  total_spent
from assignment.customers c
join  assignment.sales s ON c.customer_id = s.customer_id
where extract(year from s.sale_date) = 2023
group by full_name;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select  p.product_name,p.price,
sum(s.quantity_sold) as total_quantity_sold
from assignment.products p
join assignment.sales s on  p.product_id = s.product_id
where p.price > 200
group by p.product_name, p.price
having sum(s.quantity_sold) > 100;


--PART 2
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?
select concat(c.first_name, ' ', c.last_name) as full_name,
       sum(s.total_amount) as total_spent
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
group by full_name 
having sum(s.total_amount) > (
    select avg(total_spent) 
    from (
        select sum(total_amount) as total_spent
        from assignment.sales
        group by customer_id
    ) as avg_spending
)
order by  total_spent;

-- 52. Which products are priced higher than the average price of all products?
select product_name,price 
from assignment.products p 
where price>(select avg(price) from assignment.products);

-- 53. Which customers have never made a purchase?
select concat (c.first_name,' ',c.last_name) as full_name,
c.membership_status
from assignment.customers c
left join assignment.sales s on c.customer_id =s.customer_id
where s.sale_id is null;


-- 54. Which products have never been sold?
select p.product_name,p.category,p.price
from assignment.products p
left join assignment.sales s on p.product_id =s.product_id 
where s.sale_id is null;

-- 55. Which customer made the single most expensive purchase?
select concat(c.first_name,' ',c.last_name) as full_name,
p.product_name,
s.total_amount
from assignment.customers c 
join assignment.sales s on c.customer_id =s.customer_id 
join assignment.products p on s.product_id =p.product_id 
where s.total_amount =(select max(total_amount ) from assignment.sales s2 );

-- 56. Which products have total sales greater than the average total sales across all products?
select p.product_name,sum(s.total_amount) as total_sales
from assignment.sales s 
join assignment.products p on s.product_id =p.product_id 
group by p.product_name 
having sum(s.total_amount)> ( select avg( product_sales) from (select sum(total_amount) as product_sales
from assignment.sales
group by product_id 
)as avg_sales);


-- 57. Which customers registered earlier than the average registration date?
select concat(c.first_name, ' ', c.last_name) as full_name,
c.registration_date
from assignment.customers c
where c.registration_date < (
    select to_timestamp(avg(extract(epoch from registration_date)))::date
    from assignment.customers);


-- 58. Which products have a price higher than the average price within their own category?
select p.product_name,p.category,p.price,
round(avg_cat.avg_category_price, 2) as avg_category_price
from assignment.products p
join (
    select category,
    avg(price) as avg_category_price
    from assignment.products
    group by category
) as avg_cat on p.category = avg_cat.category
where p.price > avg_cat.avg_category_price;


-- 59. Which customers have spent more than the customer with ID = 10?

select concat(c.first_name,' ',c.last_name) as full_name,
sum(s.total_amount) as total_spent
from assignment.customers c 
join assignment.sales s on c.customer_id =s.customer_id 
group by full_name 
having sum(s.total_amount )> (
		select sum(total_amount)
		from assignment.sales s2
		where customer_id =10);
-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select p.product_name,sum(s.quantity_sold) as total_quantity_sold
from assignment.sales s
join assignment.products p on s.product_id =p.product_id 
group by p.product_name 
having sum(s.quantity_sold ) >(
		select avg(total_qty)
		from(
		select sum(quantity_sold ) as total_qty
		from assignment.sales
		group by product_id
		) 
as avg_qty);

-- 61. Create an intermediate result that calculates the total amount spent by each customer,then determine which customers are the top 5 highest spenders.
with customer_spending as(
select c.customer_id,concat(c.first_name,' ',c.last_name) as full_name,
sum(s.total_amount) as total_spent
from assignment.customers c 
join assignment.sales s on c.customer_id =s.customer_id
group by full_name,c.customer_id )
select full_name,total_spent
from customer_spending 
order by total_spent desc
limit 5;


-- 62. Create an intermediate result that calculates total quantity sold per product,then determine which products are the top 3 most sold.
with product_quantity as(
select p.product_id,p.product_name,sum(s.quantity_sold) as total_quantity_sold
from assignment.sales s
join assignment.products p on s.product_id =p.product_id 
group by p.product_name ,p.product_id )
select product_name,total_quantity_sold
from product_quantity 
order by total_quantity_sold desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,then determine which category generates the highest revenue.
with category_sales as (
select p.category,sum(s.total_amount) as total_revenue
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by p.category
)
select category,total_revenue
from category_sales
order by total_revenue desc
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,then identify customers who purchased more than twice.
with customer_purchases as (
select c.customer_id,concat(c.first_name, ' ', c.last_name) as full_name,
count(s.sale_id) as number_of_purchases
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
group by c.customer_id,full_name 
)
select full_name,number_of_purchases
from customer_purchases
where number_of_purchases > 2;


-- 65. Create an intermediate result that calculates the total quantity sold per product,then determine which products sold more than the average quantity sold.
with product_quantity as (
    select p.product_id,
           p.product_name,
           sum(s.quantity_sold) as total_quantity_sold
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name
),
avg_quantity as (
    select avg(total_quantity_sold) as avg_qty
    from product_quantity
)
select pq.product_name,
       pq.total_quantity_sold,
       round(aq.avg_qty, 2) as avg_quantity
from product_quantity pq
cross join avg_quantity aq
where pq.total_quantity_sold > aq.avg_qty;

-- 66. Create an intermediate result that calculates total spending per customer,then determine which customers spent more than the average spending.
with customer_spending as (
    select c.customer_id,
           concat(c.first_name, ' ', c.last_name) as full_name,
           sum(s.total_amount) as total_spent
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name
),
avg_spending as (
    select avg(total_spent) as avg_spent
    from customer_spending
)
select cs.full_name,
       cs.total_spent,
       round(avs.avg_spent, 2) as avg_spending
from customer_spending cs
cross join avg_spending avs
where cs.total_spent > avs.avg_spent;

-- 67. Create an intermediate result that calculates total revenue per product, then list the products ordered from highest revenue to lowest.
with product_revenue as (
select p.product_id, p.product_name,
sum(s.total_amount) as total_revenue
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by p.product_id, p.product_name
)
select product_name,total_revenue
from product_revenue
order by total_revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,then determine which month had the highest revenue.
with monthly_sales as (
select extract(year from s.sale_date) as sale_year,
       extract(month from s.sale_date) as sale_month,
       sum(s.total_amount) as total_revenue
    from assignment.sales s
    group by extract(year from s.sale_date),
             extract(month from s.sale_date)
)
select sale_year,sale_month,total_revenue
from monthly_sales
order by total_revenue desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,then determine which products were purchased by more than three customers.
with product_sales_count as (
    select p.product_id,p.product_name,
           count(distinct s.customer_id) as number_of_customers
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name
)
select product_name,number_of_customers
from product_sales_count
where number_of_customers > 3;

-- 70. Create an intermediate result showing total quantity sold per product,then identify products that sold less than the average quantity sold.
with product_quantity as (
    select p.product_id,p.product_name,
           sum(s.quantity_sold) as total_quantity_sold
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name
),
avg_quantity as (
    select avg(total_quantity_sold) as avg_qty
    from product_quantity
)
select pq.product_name,pq.total_quantity_sold,
       round(aq.avg_qty, 2) as avg_quantity
from product_quantity pq
cross join avg_quantity aq
where pq.total_quantity_sold < aq.avg_qty;

-- 71. Rank customers based on the total amount they have spent.
select concat(c.first_name, ' ', c.last_name) as full_name,
       sum(s.total_amount) as total_spent,
       rank() over (order by sum(s.total_amount)desc ) as spending_rank
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
group by c.customer_id,full_name 
order by spending_rank ;

-- 72. Rank products based on total quantity sold.
select p.product_name,
       sum(s.quantity_sold) as total_quantity_sold,
       rank() over (order by sum(s.quantity_sold) desc) as quantity_rank
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by p.product_id, p.product_name
order by quantity_rank asc;

-- 73. Identify the 3rd highest spending customer.
with customer_spending as (
select concat(c.first_name, ' ', c.last_name) as full_name,
       sum(s.total_amount) as total_spent,
       dense_rank() over (order by sum(s.total_amount) desc) as spending_rank
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name
)
select full_name,total_spent,spending_rank
from customer_spending
where spending_rank = 3;

-- 74. Identify the 2nd most expensive product.
with product_ranking as (
    select product_name,price,
           dense_rank() over (order by price desc) as price_rank
    from assignment.products
)
select product_name,price,price_rank
from product_ranking
where price_rank = 2;

-- 75. Show the ranking of products within each category based on price.
select p.product_name,p.category,p.price,
       rank() over(partition by p.category order by p.price) as category_rank
       from assignment.products p 
       order by p.category,category_rank;

-- 76. Show the ranking of customers based on the number of purchases they made.
select concat(c.first_name, ' ', c.last_name) as full_name,
       count(s.sale_id) as number_of_purchases,
       rank() over (order by count(s.sale_id) ) as purchase_rank
from assignment.customers c
join assignment.sales s on c.customer_id = s.customer_id
group by c.customer_id,full_name 
order by purchase_rank;

-- 77. Show the running total of sales amounts ordered by sale_date.
select s.sale_id,s.sale_date,s.total_amount,
       sum(s.total_amount) over (order by s.sale_date) as running_total
from assignment.sales s
order by s.sale_date;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select s.sale_id, s.sale_date,s.total_amount,
       lag(s.total_amount) over (order by s.sale_date) as previous_sale_amount
from assignment.sales s
order by s.sale_date;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select s.sale_id,s.sale_date,s.total_amount,
       lead(s.total_amount) over (order by s.sale_date) as next_sale_amount
from assignment.sales s
order by s.sale_date;

-- 80. Divide customers into 4 groups based on total spending.
with customer_spending as (
    select concat(c.first_name, ' ', c.last_name) as full_name,
           sum(s.total_amount) as total_spent
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
    group by c.customer_id,full_name 
)
select full_name,total_spent,
       ntile(4) over (order by total_spent) as spending_group
from customer_spending
order by spending_group, total_spent;

--81. Which customers bought products in more than one category?
select concat(c.first_name,' ',c.last_name) as full_name,
count(distinct p.category) as categories_purchased
from assignment.customers c
join assignment.sales s on c.customer_id =s.customer_id 
join assignment.products p on s.product_id =p.product_id 
group by c.customer_id,full_name 
having count(distinct p.category)>1
order by categories_purchased ;

-- 82. Which customers purchased products within 7 days of registering?
select concat(c.first_name, ' ', c.last_name) as full_name,
		c.registration_date,
		s.sale_date,
		(s.sale_date - c.registration_date) as days_after_registration
from assignment.customers c 
join assignment.sales s on c.customer_id =s.customer_id 
where (s.sale_date - c.registration_date ) between 0 and  7
order by days_after_registration ;

-- 83. Which products have lower stock remaining than the average stock quantity?
select p.product_name,i.stock_quantity,
		round (avg_stock.avg_qty, 2) as avg_stock_quantity		
from assignment.products p
join assignment.inventory i  on p.product_id =i.product_id 
cross join(
		select avg(stock_quantity) as avg_qty
		from assignment.inventory )
		as avg_stock
where i.stock_quantity < avg_stock.avg_qty 
order by i.stock_quantity ;

-- 84. Which customers purchased the same product more than once?
select concat(c.first_name,' ',c.last_name) as full_name,
		p.product_name,
		count (s.sale_id) as time_purchased
from assignment.customers c 
join assignment.sales s on c.customer_id =s.customer_id 
join assignment.products p  on s.product_id =p.product_id 
group by c.customer_id ,full_name,p.product_name 
having count(s.sale_id) > 1
order by time_purchased;

-- 85. Which product categories generated the highest total revenue?
select p.category,
		sum(s.total_amount) as total_revenue,
		rank () over (order by sum(s.total_amount) ) as revenue_rank
from assignment.sales s 
join assignment.products p on s.product_id =p.product_id 
group by p.category
order by total_revenue desc;


-- 86. Which products are among the top 3 most sold products?
with product_sales as(
	 select p.product_name,
	 sum(s.quantity_sold) as total_quantity_sold,
	 dense_rank() over (order by sum(s.quantity_sold)) as sales_rank
	 from assignment.sales s 
	 join assignment.products p on s.product_id = p.product_id
     group by p.product_id, p.product_name)
select product_name,total_quantity_sold,sales_rank
from product_sales
where sales_rank <=3
order by sales_rank;

-- 87. Which customers purchased the most expensive product?
select concat(c.first_name,' ',c.last_name) as full_name,
		p.product_name,
		p.price  
from assignment.customers c 
join assignment.sales s on c.customer_id =s.customer_id 
join assignment.products p on s.product_id=p.product_id 
where p.price=( select max(price) from assignment.products p2 )
order by full_name ;

-- 88. Which products were purchased by the highest number of unique customers?
select p.product_name,
	 count(distinct s.customer_id) as unique_customers,
	 rank() over (order by count(distinct s.customer_id)desc) as customer_rank
from assignment.sales s
join assignment.products p on s.product_id=p.product_id 
group by p.product_id,p.product_name
order by unique_customers ;
	 
-- 89. Which customers made purchases above the average sale amount?
select concat(c.first_name, ' ',c.last_name) as full_name,
		s.total_amount,
		round(avg_sales.avg_amount, 2) as avg_sale_amount
from assignment.customers c
join assignment.sales s on c.customer_id =s.customer_id 
cross join ( select avg(total_amount) as avg_amount
			from assignment.sales) as avg_sales
where s.total_amount >avg_sales.avg_amount 
order by s.total_amount ;


-- 90. Which customers purchased more products than the average quantity purchased per customer?
with customer_quantity as(
	 select concat(c.first_name,' ',c.last_name) as full_name,
	 		sum(s.quantity_sold) as total_quantity
	 from assignment.customers c 
	 join assignment.sales s on c.customer_id =s.customer_id 
	 group by c.customer_id ,full_name 
	 ),
	 avg_quantity as( select avg(total_quantity) as avg_qty
	 from customer_quantity )
	 select cq.full_name,cq.total_quantity,
	 round(aq.avg_qty, 2) as avg_quantity
from customer_quantity cq
cross join avg_quantity aq
where cq.total_quantity>aq.avg_qty 
order by cq.total_quantity;

-- 91. Which customers rank in the top 10% of spending?
with customer_spending as (
    select concat(c.first_name, ' ', c.last_name) as full_name,
           sum(s.total_amount) as total_spent,
           ntile(10) over (order by sum(s.total_amount)desc) as spending_percentile
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name
)
select full_name,
       total_spent,
       spending_percentile
from customer_spending
where spending_percentile = 1
order by total_spent desc;

-- 92. Which products contribute to the top 50% of total revenue?
with product_revenue as (
    select p.product_name,
           sum(s.total_amount) as total_revenue
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name
),
revenue_cumulative as (
    select product_name,
           total_revenue,
           sum(total_revenue) over (order by total_revenue desc) as cumulative_revenue,
           sum(total_revenue) over () as grand_total
    from product_revenue
)
select product_name,
       total_revenue,
       round((cumulative_revenue / grand_total * 100)::numeric, 2) as cumulative_percentage
from revenue_cumulative
where cumulative_revenue - total_revenue < grand_total * 0.50
order by total_revenue desc;

-- 93. Which customers made purchases in consecutive months?
with customer_months as (
    select c.customer_id,
           concat(c.first_name, ' ', c.last_name) as full_name,
           extract(year from s.sale_date) as sale_year,
           extract(month from s.sale_date) as sale_month
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
),
month_diff as (
    select customer_id,
           full_name,
           sale_year,
           sale_month,
           lag(sale_month) over (partition by customer_id order by sale_year, sale_month) as prev_month,
           lag(sale_year) over (partition by customer_id order by sale_year, sale_month) as prev_year
    from customer_months
)
select distinct full_name
from month_diff
where (sale_month - prev_month = 1 and sale_year = prev_year)
   or (sale_month = 1 and prev_month = 12 and sale_year - prev_year = 1)
order by full_name; 

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
select p.product_name,i.stock_quantity,
       sum(s.quantity_sold) as total_quantity_sold,
       (i.stock_quantity - sum(s.quantity_sold)) as stock_difference
from assignment.products p
join assignment.inventory i on p.product_id = i.product_id
join assignment.sales s on p.product_id = s.product_id
group by p.product_id, p.product_name, i.stock_quantity
order by stock_difference desc;

-- 95. Which customers have spending above the average spending of their membership tier?
with customer_spending as (
    select c.customer_id,
           concat(c.first_name, ' ', c.last_name) as full_name,
           c.membership_status,
           sum(s.total_amount) as total_spent
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
    group by c.customer_id,full_name, c.membership_status
),
tier_avg as (
    select membership_status,
           avg(total_spent) as avg_tier_spending
    from customer_spending
    group by membership_status
)
select cs.full_name,
       cs.membership_status,
       cs.total_spent,
       round(ta.avg_tier_spending, 2) as avg_tier_spending
from customer_spending cs
join tier_avg ta on cs.membership_status = ta.membership_status
where cs.total_spent > ta.avg_tier_spending
order by cs.membership_status, cs.total_spent;

-- 96. Which products have higher sales than the average sales within their category?
with product_sales as (
    select p.product_id,
           p.product_name,
           p.category,
           sum(s.total_amount) as total_sales
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name, p.category
),
category_avg as (
    select category,
           avg(total_sales) as avg_category_sales
    from product_sales
    group by category
)
select ps.product_name,
       ps.category,
       ps.total_sales,
       round(ca.avg_category_sales, 2) as avg_category_sales
from product_sales ps
join category_avg ca on ps.category = ca.category
where ps.total_sales > ca.avg_category_sales
order by ps.category, ps.total_sales;

-- 97. Which customer made the largest single purchase relative to their total spending?
with customer_spending as (
    select c.customer_id,
           concat(c.first_name, ' ', c.last_name) as full_name,
           s.total_amount as single_purchase,
           sum(s.total_amount) over (partition by c.customer_id) as total_spent
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
)
select full_name,
       single_purchase,
       total_spent,
       round((single_purchase / total_spent * 100)::numeric, 2) as purchase_percentage
from customer_spending
order by purchase_percentage
limit 1;

-- 98. Which products rank among the top 3 most sold products within each category?
with product_sales as (
    select p.product_name,
           p.category,
           sum(s.quantity_sold) as total_quantity_sold,
           dense_rank() over (
               partition by p.category
               order by sum(s.quantity_sold) desc
           ) as category_rank
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name, p.category
)
select product_name,
       category,
       total_quantity_sold,
       category_rank
from product_sales
where category_rank <= 3
order by category, category_rank;

-- 99. Which customers are tied for the highest total spending?
with customer_spending as (
    select concat(c.first_name, ' ', c.last_name) as full_name,
           sum(s.total_amount) as total_spent
    from assignment.customers c
    join assignment.sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name
)
select full_name,
       total_spent
from customer_spending
where total_spent = (
    select max(total_spent)
    from customer_spending
)
order by full_name;
-- 100. Which products generated sales every year present in the dataset?
with product_yearly_sales as (
    select p.product_id,
           p.product_name,
           extract(year from s.sale_date) as sale_year
    from assignment.sales s
    join assignment.products p on s.product_id = p.product_id
    group by p.product_id, p.product_name,sale_year 
),
total_years as (
    select count(distinct extract(year from sale_date)) as total_years
    from assignment.sales
)
select pys.product_name,
       count(distinct pys.sale_year) as years_with_sales
from product_yearly_sales pys
cross join total_years ty
group by pys.product_id, pys.product_name, ty.total_years
having count(distinct pys.sale_year) = ty.total_years
order by pys.product_name;








