use regex1;

create table newactor as
select actor_id, first_name from sakila.actor where actor_id between 1 and 3;

select * from newactor;

create view actor_v
select *, substr(first_name,2) from newactor;

select * from newactor;
insert into newactor values(4,'riya');
select * from newactor;


select * from actor_v;

create view actor_v2 as 
select * from newactor where actor_id in (1,2);

select * from newactor ;
insert into newactor values(5, 'sanje');

select * from actor_v2;








create table newpayment as
select payment_id, amount from sakila.payment where payment_id between 1 and 7;

select * from newpayment;

create view payment_v as 
select count(*) from newpayment;

select * from payment_v;
insert into payment_v values(10); -- Here is complex view and not perform DML opration





create user regex identified by 'regex' ;

select * from mysql.user;

create table tushardb.actor1 as select actor_id, first_name from sakila.actor
where actor_id between 1 and 5;

create table tushardb.actor2 as select actor_id, first_name from sakila.actor
where actor_id between 3 and 7;

show grants for regex;

grant select on tushardb.actor2 to regex;

grant select on tushardb.* to regex;

grant all privileges on tushardb.actor1 to regex;

show grants for regex;
