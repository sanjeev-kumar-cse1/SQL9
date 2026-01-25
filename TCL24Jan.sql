-- TCL 

-- Transaction Control Language for maintaing data consistency and intigrit

-- Transaction = set of logical statement ( permanent nhi hai)

-- Update 

use sakila;

create table actor_cp2 as select actor_id, first_name from sakila.actor
where actor_id between 1 and  5;

select * from actor_cp2;

insert into actor_cp2 values (6, 'tushar') ;



-- auto  commit => Enable 

set @@autocommit=0; -- diable = 0 
set @@autocommit=1; -- enable
select @@autocommit;
insert into actor_cp2 values (8, 't2r') ;
insert into actor_cp2 values(7, 'goyal tushar');
update actor_cp2 set actor_id = 10000;
-- rollback; -- delete all 
select * from actor_cp2;
commit; -- save permanently  and after this if we use rollback , then rollback never can delete any data
select * from actor_cp2;
rollback;
select * from actor_cp2;

-- In case , if you run in any dml operation or you write down start transaction 
-- when  tranasction off= agr mai koi bhi comment  ya roolback use hoga . in case of any ddl 0r dcl operation then transaction close 

start transaction;

insert into actor_cp2 values(700, 'sanj');

select * from actor_cp2;
create table xyz(id int);
select * from actor_cp2;
rollback;
select * from actor_cp2;


start transaction;

insert into actor_cp2 values(16, 'asdf');
insert into actor_cp2 values(17, 'asdflkjhg');
delete from  actor_cp2 where actor_id in (7,9);
rollback;
select * from actor_cp2;

 drop table actor_cp2;
 
 create table actor_cp2 as select actor_id, first_name from sakila.actor
where actor_id between 1 and  5;
 
start transaction;

insert into actor_cp2 values(19, 'asdf');
insert into actor_cp2 values(19, 'asdflkjhg');
savepoint db_actor_cp2_sv1;
delete from  actor_cp2 where actor_id in (3);
rollback to db_actor_cp2_sv1 ;
select * from actor_cp2;

-- DBMS vs RDBMS
-- MySQL = it is RDBMS
-- Normalization 
-- 
