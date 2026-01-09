-- data types in sql
-- numeric = int ,float, decimal
-- 1 byte, small=> 2 bytes, medium=> 3, int=> 4 bytes, long 8 byte
-- 1 bytes => 8 bits (2**8)=> 256

use regex;
create table test10(id tinyint);
insert into test10 values(1), (-128), (127);
insert into test10 values(128);

create table test11(id tinyint unsigned);
insert into test11 values(129),(255);
select * from test11;

create table test12(price float);
insert into test12 values(9182.125),(10.12038190);
select * from test12;

create table test13(price float, price2 double);
insert into test13 values(9182.125, 9182.125),(10.12038190, 10.12038190);
select * from test13;

create table test14(price2 double(5,2)); --  5 is precesior,2 is decimal value
insert into test14 values(98.1);
insert into test14 values(8.15);
insert into test14 values(129812.151233121);
select * from test14;


-- varchar and char
-- varchar = string or character value
-- char = fix length of char
create table test15(name char(10));
insert into test15 values('asd'),('asjkhjk');
select * from test15; 

select length('cps');