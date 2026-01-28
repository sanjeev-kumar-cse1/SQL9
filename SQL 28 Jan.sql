-- column same hona chahie in number like 2 column in first and then second also contain 2 cloumns

select first_name from sakila.actor
union 
select actor_id from sakila.actor;


select first_name from sakila.actor where actor_id between 1 and 4
union 
select actor_id from sakila.actor where actor_id between 4 and 5;

select actor_id ,  first_name from sakila.actor where actor_id between 1 and 4
union all
select actor_id,  first_name  from sakila.actor where actor_id between 4 and 5; -- give may be many duplicate value here

select 10 ;

select 10 as n ;

with cte as
(select 10 as n )
select * from cte;

with recursive cte as (
select 10 as num       -- starting value from 10
union all
select num+1 from cte  -- cte call krna
where num<14          -- terminate condition
)
select * from cte;


-- Employee hirecharcy

CREATE TABLE employees (
    employeeid INT PRIMARY KEY,
    name VARCHAR(50),
    managerid INT
);


INSERT INTO employees (employeeid, name, managerid) VALUES
(1, 'Alice', NULL),      -- CEO
(2, 'Bob', 1),           -- Reports to Alice
(3, 'Charlie', 2),       -- Reports to Bob
(4, 'Diana', 2),         -- Reports to Bob
(5, 'Eve', 3);           -- Reports to Charlie

select * from employees;

select * , name as hierachy_path from employees where managerid is null ;

with xyz as (
select * , name as hierachy_path from employees where managerid is null 
)
select * FROM xyz;

with recursive cte as  (
select employeeid, name , name as hierachy_path from employees where managerid is null 
union all
select e.employeeid , e.name, concat(e.name , '->', cte.hierachy_path) FROM 
employees as e
join cte where e.managerid = cte.employeeid and e.employeeid <5
)
select * from cte;


-- here find level ?
-- improve here 
with recursive cte as  (
select employeeid, name , one as level from employees where managerid is null 
union all
select e.employeeid , e.name, e.level + 1, concat(e.name , '->', cte.level) FROM 
employees as e 
join cte where e.managerid = cte.employeeid and e.employeeid < 5
)
select * from cte;


-- SQL ZOO window function question 6 

with cte as 
( select * , 
dense_rank() over(partition by consistency order by votes desc) as rankings from ge
where consistency like '5%' and yr= 2017 order by consistencey)
select party , count(*) from cte where rankings=1 group by party;









