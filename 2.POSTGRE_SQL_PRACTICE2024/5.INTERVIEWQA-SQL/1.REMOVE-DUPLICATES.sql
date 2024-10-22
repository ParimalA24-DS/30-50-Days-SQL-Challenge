--  <<<<>>>> Scenario 1: Data duplicated based on SOME of the columns <<<<>>>>
drop table if exists cars;
create table if not exists cars
(
    id      int,
    model   varchar(50),
    brand   varchar(40),
    color   varchar(30),
    make    int
);
SELECT *FROM cars;
-- Insert 
insert into cars values (1, 'Model S', 'Tesla', 'Blue', 2018);
insert into cars values (2, 'EQS', 'Mercedes-Benz', 'Black', 2022);
insert into cars values (3, 'iX', 'BMW', 'Red', 2022);
insert into cars values (4, 'Ioniq 5', 'Hyundai', 'White', 2021);
insert into cars values (5, 'Model S', 'Tesla', 'Silver', 2018);
insert into cars values (6, 'Ioniq 5', 'Hyundai', 'Green', 2021);

SELECT * FROM cars ;
order by  model,brand;
-- SOLUTION 1: Delete using Unique identifier:
-- First identfy using group by cluase by bran andmode
SELECT model,brand,count(*) from cars
group by model,brand; -- # models ioniq,tesla,hyndai hascount 2 so these are duplicate records 

SELECT model,brand,max(id) from cars
group by model,brand
having count(*) >1;  -- #id5 th and 6th we have to delete
-- DELETE ONLY 2 RECORDS 5TH AND 6 TH ID - using subquery andIN
DELETE FROM cars
where id IN (     SELECT max(id) from cars
					group by model,brand
					having count(*) >1);


-- SOLUTION 2: Using SELF join
insert into cars values (5, 'Model S', 'Tesla', 'Silver', 2018);
insert into cars values (6, 'Ioniq 5', 'Hyundai', 'Green', 2021);
-- identify :
select c2.*
              from cars c1
              join cars c2 on c1.model = c2.model and c1.brand = c2.brand
              where c1.id < c2.id;

delete from cars
where id in ( select c2.id
              from cars c1
              join cars c2 on c1.model = c2.model and c1.brand = c2.brand
              where c1.id < c2.id);
			  

-- -->> SOLUTION 3: Using Window function
-- Again insert 2 records for deleting duplicate records 
SELECT model,brand ,count(*)FROM cars
group by model,brand 
having count(*)>1;
SELECT max(id)
from cars
group by model,brand
having count (*)>1; -- 5th and 6th 
-- or :
select id
              from (select *
                   , row_number() over(partition by model, brand order by id) as rn
                   from cars) x
              where x.rn > 1;
delete from cars
where id in ( select id
              from (select *
                   , row_number() over(partition by model, brand order by id) as rn
                   from cars) x
              where x.rn > 1);


-- SOLUTION 4: Using MIN function. This delete even multiple duplicate records.
-- -- Again insert 2 records for deleting duplicate records -2tiemsrun 
-- Identify :
select min(id) from cars
group by model, brand; --  #using min(id) that record we have to keep :
-- delete  uisng not in :
delete from cars
where id not in ( select min(id)
                  from cars
                  group by model, brand);

-- -->> SOLUTION 5: Using backup table.
-- Again ibsert 2 records it .
drop table if exists cars_bkp;
create table if not exists cars_bkp
as
select * from cars where 1=0;
