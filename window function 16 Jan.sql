-- DML  is used for data change ( if null then set any value )
set  sql_session_update=0;
update actor_cp set newsalary =900;

update actor_cp set newsalary =888 where fname ='UMA';
select * from actor_cp;

update actor_cp set last = "goyal" where fname = "ZERO";

delete from actor_cp; -- delete  the data form the table 

-- truncate is a ddl statement , we don't provide any condition, data not revert(rollback = undo) , delete the data,
-- delete os dml statement , here we add condition, we can rollback 
-- DDL is run at once time then never be run rollback 
-- objects are the str. whisch can be use ( table ,view , index are created then that is object) 
-- drop , delete , truncate difference ?

select * from actor_cp;


-- window fun. is used to aggregate function with each row , set of row
-- window function is used to perform the calculation the set of row with refernce to current row 
-- window function is 3 parts 
-- 1. Over: To applay the function any aggregate fun in each row
-- 2. Patation BY: apply on logic group
-- 3. 
select * from sakila.actor;
select * from sakila.payment;

use world;
select * from country;
select code , name , population from country;
select code , name , population, (select sum(population) from country) from country;
select sum(population) from country;


select code , name , population, sum(population) from country; -- error

select code , name , population, sum(population) over() from country; 
select code , name , population, sum(population) over(), avg(population) over() from country;  --  no. of aggregate fun = no. of over



select continent, sum(population)  from country group by continent; 

select code , name, continent , population, sum(population) over(partition by continent) from country;  -- divide  

select code , name, continent , population, sum(population) over(partition by code) from country; -- partition is apply on similar value



-- running sum ,cummulative sum
-- use only order by 
select code , name, continent , population, sum(population) over(order by population) from country; 


