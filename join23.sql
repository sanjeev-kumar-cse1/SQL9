CREATE DATABASE REGEX;
USE REGEX;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);



INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);


select * from customers;
select * from orders; -- cust_id = foreign key , one to many

-- inner join 
select c.customer_id , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
join orders as o
where c.customer_id = o.customer_id;

select c.customer_id , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
inner join orders as o
on c.customer_id = o.customer_id;

select c.customer_id , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
inner join orders as o
using (customer_id);




select * from customers;

-- left join = common data and left side element
select c.customer_id , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
left join orders as o
on c.customer_id = o.customer_id;


-- right join , right side and common element
select * from orders;
select c.customer_id , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
right join orders as o
on c.customer_id = o.customer_id;

-- full outer join , total which are in right side , left side and common also


select * from orders;

select * from customers;

-- Natural Join 
select c.customer_id , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
natural join orders as o;



alter table customers rename column customer_id to cid;
select * from customers;
select c.cid , c.customer_name, o.customer_id , o.order_id , o.amount from customers as c 
natural join orders as o;

select c.name from customers as c 
left join orders as o
on c.cid = o.customer_id where group by ;

select customer_id , sum(amount) 

-- cross join , where not common rows m*n rows 