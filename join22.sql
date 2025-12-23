use world;

select * from city;

select ct.name, ct.countrycode from city as ct;  -- many to many  

select ct.name, ct.countrycode, cnty.name , cnty.code from city as ct join country as cnty where ct.countrycode = cnty.code; -- city and respective country name

select cnty.code , cnty.name from country as cnty; -- cnty=country

select cnty.code , cnty.name from country as cnty;

-- need to find population of city along with the govtform in that city with the poppulation from highest to the lowest
select ct.name, ct.population, cnty.governmentfrom from city as ct join country as cnty where ct.countrycode = cnty.code order by ct.population desc;

-- country  and country language , country name , population and all the language spoken for each country (one to many)
select * from countrylanguage;
select * from country;
select city.name, city.population, cl.countrycode from co; 



use sakila;

select * from actor;


-- get the actor id and first name along with its film id
select * from actor; 
select actor_id from actor;
select film.first_name, film.actor_id from actor as act
join film_id;

-- actor , filmactor and film table , what is the actor name and at which film they participate 