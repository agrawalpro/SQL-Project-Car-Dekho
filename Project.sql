car_dekho-- SQL Project Car Dekho --
-- Read Data --
Select * from car_dekho;

-- Total car: To get the count of total record --
Select count(*) from car_dekho;
-- Result 7927 --

-- how many cars will be available in 2023 --
select * from car_dekho;
select count(*) from car_dekho
where year = 2023;
-- Result 6 --

-- Manager asked employee how many cars is available in 2020, 2021, 2022 --
select * from car_dekho;
select year,count(year) as total_count from car_dekho
where year between 2020 and 2022
group by year;
-- Result 2020 = 74, 2021 = 7, 2022 = 7 --

-- Client asked me to print total of all cars by year. I dont see all the details. --
select year,count(year) as total_count from car_dekho
group by year;

-- Client asked car dealer agent how many diesel cars will be there in 2020 --
select count(*) from car_dekho
where year = 2020 and fuel = 'diesel';
-- Result = 20 --

-- Client asked car dealer agent how many petrol cars will be there in 2020 --
select count(*) from car_dekho
where year = 2020 and fuel = 'petrol';
-- Result = 51 --

-- Type of fuel --
select fuel from car_dekho
group by fuel; 

-- Manager told the employee to give print all the fuel cars(Petrol, Diesel, CNG) come by all year --
select year, count(*) as petrol_cars from car_dekho
where fuel = 'petrol'
group by year;

select year, count(*) as Diesel_cars from car_dekho
where fuel = 'diesel'
group by year;

select year, count(*) as CNG_cars from car_dekho
where fuel = 'CNG'
group by year;

-- Manager said there were more than 100 cars given year, which year had more than 100 cars --
select year, count(*) as Total_cars from car_dekho
group by year 
having count(*) > 100;

-- Manager asked employee all cars count details between 2015 to 2023 --
select * from car_dekho;
select count(*)as total_count from car_dekho
where year between 2015 and 2023;
-- result 4124 --

-- Manager asked employee all cars count details between 2015 to 2023, we need complete list --
select * from car_dekho
where year between 2015 and 2023;

--- END ---