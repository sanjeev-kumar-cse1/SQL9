create database regexcorr;
use regexcorr;

CREATE TABLE employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    salary INT,
    department_name VARCHAR(50)
);

INSERT INTO employee (eid, ename, salary, department_name) VALUES
(1,  'Emp1',  30000, 'HR'),
(2,  'Emp2',  32000, 'HR'),
(3,  'Emp3',  34000, 'HR'),
(4,  'Emp4',  36000, 'HR'),
(5,  'Emp5',  38000, 'HR'),

(6,  'Emp6',  50000, 'IT'),
(7,  'Emp7',  52000, 'IT'),
(8,  'Emp8',  54000, 'IT'),
(9,  'Emp9',  56000, 'IT'),
(10, 'Emp10', 58000, 'IT'),

(11, 'Emp11', 60000, 'Finance'),
(12, 'Emp12', 62000, 'Finance'),
(13, 'Emp13', 64000, 'Finance'),
(14, 'Emp14', 66000, 'Finance'),
(15, 'Emp15', 68000, 'Finance'),

(16, 'Emp16', 40000, 'Sales'),
(17, 'Emp17', 42000, 'Sales'),
(18, 'Emp18', 44000, 'Sales'),
(19, 'Emp19', 46000, 'Sales'),
(20, 'Emp20', 48000, 'Sales');

select * from employee;

select department_name, avg(Salary) from employee group by department_name;

select avg(salary) from employee as ein where ein.department_name='HR';

select employee.ename, employee.salary, employee.department_name from employee
where employee.salary > (select avg(ein.salary) from employee as ein
                         where ein.department_name = employee.department_name);
                         
-- for minimum salary
select department_name, min(Salary) from employee group by department_name;

select employee.ename, employee.salary, employee.department_name from employee
where employee.salary > (select min(ein.salary) from employee as ein
                         where ein.department_name = employee.department_name);
                         
select employee.ename, employee.salary, employee.department_name from employee
where employee.salary >= all (select ein.salary from employee as ein
                         where ein.department_name = employee.department_name);


-- CTE (Common Table Expression)
with xyz as 
(select department_name, avg(Salary) as avg_salary from employee group by department_name)

select employee.ename, employee.salary, employee.department_name from employee
join xyz on employee.department_name = xyz.department_name
where employee.salary > xyz.avg_salary;
use regex1;
create table test1


select * from test1;
desc test1;

create table test2 ( sno int null ,salary int);
insert into test2 (sno,salary) values(20, 1000);
insert into test2 (sno,salary) values(20, null);
insert into test2 (sno,salary) values(null, 20);
insert into test2 (sno,salary) values(null , 6000); -- error
insert into test2 (salary) values(1000); -- error

select * from test2;
create table test3 ( sno int not null default 60, salary int);
insert into test3(salary) values(20);
insert into test3(sno) values(20);

select * from test3;
create table test4 ( sno int not null, salary int unique default 100);
insert into test4 (sno,salary) values(20, 1000);
insert into test4 (sno,salary) values(20, 1000); -- error due to duplicate values
insert into test4(sno) values(20);
insert into test4(sno) values(20); -- error due to already set default value which is 100
insert into test4(sno,salary) values(20, null); 


select * from test4;

create table test7( sno int, salary int,
constraint regex_test7_sno_check check(sno between 1 and 100),
constraint regex_test7_salary_check check(salary in (1000,2000)));

insert into test7(sno,salary) values(4, 1000);
insert into test7(sno,salary) values(150, 1000); -- error
insert into test7(sno,salary) values(90, 1500); -- error


create table test8( sno int primary key, salary int);
insert into test8(sno,salary) values(4, 1000);
insert into test8(sno,salary) values(null, 1000);


-- foreign
create table customer1(cid int primary key , cname varchar(20));
insert into customer1 value(10, 'aman'), (11, 'abhishek');
select * from customer1;

create table order1(order_no int primary key , city varchar(20), cid int);
insert into order1 value(1007, 'jpr', 10), (1008, 'abhishek', 11), (1009, 'mumbai', 10);
insert into order1 value(1010, 'j&k', 10);

drop table order1;
create table order1(order_no int primary key , city varchar(20), cid int,
foreign key(cid) references customer1(cid) );

insert into order1 value(1007, 'jpr', 10), (1008, 'abhishek', 11), (1009, 'mumbai', 10);
insert into order1 value(1010, 'j&k', 10); -- error as 25 cid is not in customer table

select * from order1;
