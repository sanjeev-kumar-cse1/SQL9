use sakila;

show tables;

select * from customer;

select first_name, active,
  case 
       when active=1 then 'Active custom'
	   when active=0 then 'INactive custom'
      end 
      from customer;

select *
    case 
        when film>60 then 'Short'
         when film between 60 and 120 then 'medium'
          when film<120 then 'long'
          end
          from film;
          
select rating , count(*) as total,
case 
   when count(*) < 200 then 'low'
   when count(*) between 200 and 400 then 'medium'
   else 'high count'
   end 
   from film group by rating;
   
   
   
select * from payment;

select c.customer_id, first_name , sum(total), 
      case 
          when sepnder<90 then 'low spender'
          else 'high'
		end
from payment as p
join customer as c
where p.customer_id = c.customer_id
group by c.customer_id, c.first_name ; 

create table newrental as select * from rental;




-- film , inventory , rental = tables given in sakila  
-- how many time each movie rented
SELECT 
    f.film_id,
    f.title,
    COUNT(r.rental_id) AS total_rentals
FROM film f
join inventory i 
    ON f.film_id = i.film_id
JOIN rental r 
    ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY total_rentals DESC;

-- list the pair of customer who belong to same store.
-- self join use
select * from customer;
  
select c1.customer_id , c1.first_name ,c2.customer_id, c2.first_name from customer c1
join customer as c2
;


-- Find customer whose payment is greater than the avg total payment of all customer 
SELECT 
    customer_id,
    SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > (
        SELECT AVG(total_amt)
        FROM (
            SELECT SUM(amount) AS total_amt
            FROM payment
            GROUP BY customer_id
        ) t
);







-- Find film whose rental count is greater than the avg rantals per film.







