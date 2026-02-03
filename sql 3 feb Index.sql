use sakila;

drop table test100;

create table test100 as select actor_id, first_name from actor where actor_id between 1 and 10;

insert into test100 values(11,'sdsdff');

insert into test100 values(12, 'sanjeev');

insert into test100 values(13, 'sanjiv'),(14, 'sanju');

create index index_3_chr on test100 (first_name(3));

explain select * from test100 where first_name ='san%'; 

alter table test100 add primary key (actor_id);

drop index index1 on test100;

create index index1 on test100(actor_id, first_name);

show index from test100;

select *  from test100; 

desc test100;

explain select * from test100 where actor_id = 5;

explain select * from test100 where first_name = 'sdsdff';

explain select * from test100 where actor_id > 12 and first_name = 'sdsdff';

-- indexes = Index is like a data stru. , it is used to access the data in a faster way. This is also a object
/* Two types : Cluser = this store in sorted wway formate data , physically in my table. There is only one cluster index in a table. 
			   Non-cluster = 
*/







