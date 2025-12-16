use world;

select region from country group by region;

select region, count(name), count(continent) from country group by region;

select region, count(name), count( distinct continent) from country group by region;

select region, avg(population) from country group by region;

select * from city;

select district from city group by district;

select district, count(name) from city group by district; 

select district, count(name) as Totalcity from city group by district; -- name change " using as" and "name"


-- where first run
-- group by second
-- count() which is aggrigate function
select * from city where population > 100000;

select district, count(name) from city where population>100000 group by district; 

select * from country;

select count(name) from country where continent ='Asia' and indepyear>1950; 

select continent, count(name) from country where  indepyear>1950 group by continent; 


-- where  only filter that data when already data contain
-- where clause filter the data from the table 
-- having is used to filtter the data on aggregiate column

select continent , sum(population) from country  group by continent having  sum(population)>100; 

select * from country;
select continent, sum(population) from country where LifeExpectancy>35.0  group by continent; 


-- you need to find out the total countries for each govt-form where the total no. of country should be greater then 30 
select governmentform, count(name) from country group by governmentform; 
 

-- only for the countries having their capital greater then 30 and total population grater then 3,00,000
select governmentform, count(name),sum(population) from country where capital >30 group by governmentform having sum(population)>30000; 

select continent, count(name) from country group by continent;

select continent, region,count(name) from country group by continent,region;

select avg(population)from city;
