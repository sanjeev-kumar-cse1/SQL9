-- number => int, decimal
-- tinyint, smallint , mediumint , int , bigint
-- 1 byte,  2         , 3           , 4   ,8
-- 1 byte =8 bits => 2**8 (-128 to 127)
-- double contain all values and print all values
-- float contain some value after point
-- if any numerical values paass as a string formate then sql automaticall change in according data type that is Implicit
-- char is fix length (if value not contain then also memory occupy) it is fast as comapre to varchar, all white 
-- varchar is variable length char (if value not contain then that space is used anywhere of that memory space)


create table yash1(salary tinyint);
insert into yash1 values(127);
insert into yash1 values(-128);

create table yash3( name varchar(20) , gender char(10) );
insert into yash3 values('sanjeev', 'male'), ('kuamr', 'male'), ('risk', 'female');
insert into yash3 values('ra                 ', 'male  ');
select *,  length (name), length(gender) from yash3;


-- DDL
-- create table
-- drop, truncate , alter
create table raj123 ( col int); -- manually

-- create a table using select(CTAS)
select first_name , last_name from sakila.actor;

create table actor_cp as 
select first_name , last_name from sakila.actor;

create table actor_cp as 
select first_name , last_name from sakila.actor;

select * from actor_cp;

drop table actor_cp;  -- table structure and data both  are deleted
select * from actor_cp;



create table actor_cp as 
select first_name as fname , last_name as last from sakila.actor
where actor_id between 10 and 14;

select * from actor_cp;


-- alter is used for structure change in data

alter table actor_cp add column(salary int);

alter table actor_cp add constraint new_key primary key(fname);

alter table actor_cp drop column last; -- column drop which name was last , -- extra is used for commit

alter table actor_cp rename column salary to newsalary; -- used for rename column

desc actor_cp;

select * from actor_cp;



-- DML  is used for data change ( if null then set any value )
set  sql_session_update=0;
update actor_cp set newsalary =900;

update actor_cp set newsalary =888 where fname ='UMA';
select * from actor_cp;
