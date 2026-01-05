use world;
select * from city;
select * from country;

use sakila; 
select * from payment;
select amount from payment where payment_id=5; -- only amount of 5th id 
select * from payment where amount = 9.99; -- all ids where equal to the 5th id

select * from payment where amount = (select amount from payment where payment_id=4); -- this is dynamic way subquwry


select staff_id from payment where payment_id = 7;
select * from payment where staff_id= (select staff_id from payment where payment_id = 7);


-- pyemnet id and payment date where month of payment should be same as the payment id 20
select payment_date from payment where payment_id = 20;
select month(payment_date) from payment where payment_id = 20;
select payment_id amount,payment_date from payment where month(payment_date) = (select month(payment_date) from payment where payment_id = 20);



-- get the amount and the total number of payment done by each amount where the amount should be less than the amount of rental_id 1725
select * from payment;
select amount from payment where rental_id=1725;
select * from payment where amount<4.99;
select amount , count(*) from payment where amount<4.99 group by amount;
select amount , count(*) from payment where amount< (select amount from payment where rental_id=1725) group by amount;


-- get the month and total amonut spend from the payment table where the month is greater than the month of customer id 1 with the payment id 3
select month(payment_date) from payment where customer_id = 1 and payment_id = 3;

select month(payment_date), sum(amount) from payment where month(payment_date)>6 group by month(payment_date);

select month(payment_date), sum(amount) from payment where month(payment_date)>
(select month(payment_date) from payment where customer_id = 1 and payment_id = 3) 
group by month(payment_date);

-- in multi rows subquery , we can't use <,>, = ,!= operators
select amount from payment where payment_id = 2 or payment_id = 3;
select * from payment where amount = (select amount from payment where payment_id = 2 or payment_id = 3);


-- in ,any, all are used in multi line rows
select * from payment where amount in (select amount from payment where payment_id = 2 or payment_id = 3);

