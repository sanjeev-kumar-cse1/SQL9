use sakila; 
select * from payment;
 -- select count( customer_id )from payment customer_id =
 
 select customer_id , count(payment_id) from payment where amount > 3 group by customer_id;
 
 -- total amount of trancastion for each amount in th month of May
 
 
 select amount, count(*) from payment where month (payment_date) = 5  group by amount;
 
 -- you need to find out max amount spent , the avg spent, total amount spent for each staff
 select * from payment;
 select staff_id , max(amount),avg(amount) , sum(amount) from payment group by staff_id;

 -- you need to find out max amount spent , the avg spent, total amount spent for each staff, only for the customer id 1,3,7,11
  select  max(amount),avg(amount) , sum(amount)  from payment where customer_id= 1&3&7&11;
  
  -- find the total amount spent , and the no. of customer done the payment is each month, where the amount should be greater then 1$
  select month(payment_date), sum(amount) , count(customer_id) from payment where amount>1 group by month(payment_date);
  
   select month(payment_date), sum(amount) , count(customer_id) from payment where amount>1 group by month(payment_date) having count(customer_id)>300;
   
   select year(payment_date) , count(customer_id), month(payment_date) from payment group by year(payment_date), month(payment_date);
  
  -- data modal?
  -- cardinality?
  -- types of relationship DBMS?
  