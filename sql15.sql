-- aggregate function (To perform calculation on set of rows) multi line function

use world;

select count(*) from country; -- count

select count(*), count(indepyear) from country; 

select distinct(continent) from country;

select distinct continent, region from country;

select population from country;

select count(population) from country;

select count(population), sum(population) from country;

select count(population), sum(population), avg(population) from country;

select count(distinct governmentform) from country;

select governmentform from country where continent='Asia';

select count(governmentform) from country where continent='Asia';

select count(governmentform),count(distinct governmentform) from country where continent='Asia';

select sum(population) from country where continent='Africa';

select count(name) ,sum(population) from country where continent='Africa';

select count(name) ,sum(population),count(distinct indepyear) from country where continent='Africa';


select * from country;
-- get the totalcountry aveg surface area and total population for the country which has got the indep year from 1947 1998
select population ,surfaceArea, indepyear from country where indepyear <> 1947 and 1998;

select count(name), sum(population) ,avg(surfaceArea)from country where indepyear <> 1947 and 1998;


-- get the total num of country and no. of unique continents along with the avg population and total numbers of capitals fro the countries starting with A or D ?
select * from country;
select count(name),count(distinct continent), avg(population), sum(capital) from country where name like 'A%' or name like '%D' ;

select count(name) from country where continent = 'asia';

select continent, count(*) from country group by continet;

select indepyear from country group by indepyear;

select indepyear, count(*) from country group by indepyear;

select * from country;

select governmentform , count(*) from country group by governmentform ;

select governmentform , count(*) from country group by governmentform ;

select continent, count(name), sum(population),avg(population), min(population),max(population),min(indepyear), max(indepyear) from country group by continent;

-- from the city table you have to find the toatal cities , total district, unique district, toatal population from the city table;
show tables;
select * from city;
select countrycode, count(*), count(district), count(distinct district)  ,sum(population) from city group by countrycode;