use sakila;

select * from payment;

select * from payment where amount in (select amount from payment where payment_id = 2 or payment_id = 3);

select * from payment where amount not in (select amount from payment where payment_id = 2 or payment_id = 3);

-- any operator
select * from payment where amount =any (select amount from payment where payment_id = 2 or payment_id = 3); -- in = =any same output like in

select * from payment where amount >any (select amount from payment where payment_id = 2 or payment_id = 3);

select * from payment where amount <any (select amount from payment where payment_id = 2 or payment_id = 3);


-- all 
select * from payment where amount >all (select amount from payment where payment_id = 2 or payment_id = 3);

select * from payment where amount >=all (select amount from payment where payment_id = 2 or payment_id = 3);

select * from payment where amount <all (select amount from payment where payment_id = 2 or payment_id = 3);

select * from payment where amount <=all (select amount from payment where payment_id = 2 or payment_id = 3);

-- correlated sub-query and how it is work
-- Constraints in sql
