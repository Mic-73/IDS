set sql_safe_updates = 0;
set foreign_key_checks = 0;

-- ----------------------------------------------
--  Query 1: 
--  Delete all rows with population = 0. Perform further data cleaning for other attributes, as necessary.
-- ----------------------------------------------

delete from lifeExpectancy
where population is NULL;

with AvgLife_Expectancy as (
	select avg(Life_Expectancy) as AvgLife_Expectancy
	from lifeExpectancy
    )
update lifeExpectancy
set Life_Expectancy = (select AvgLife_Expectancy from AvgLife_Expectancy)
where Life_Expectancy is null;

with AvgAdult_Mortality as (
	select avg(Adult_Mortality) as AvgAdult_Mortality
	from lifeExpectancy
    )
update lifeExpectancy
set Adult_Mortality = (select AvgAdult_Mortality from AvgAdult_Mortality)
where Adult_Mortality is null;

with AvgAlcohol as (
	select avg(Alcohol) as AvgAlcohol
	from lifeExpectancy
    )
update lifeExpectancy
set Alcohol = (select AvgAlcohol from AvgAlcohol)
where Alcohol is null;

with AvgPercentage_Expenditure as (
	select avg(Percentage_Expenditure) as AvgPercentage_Expenditure
	from lifeExpectancy
    )
update lifeExpectancy
set Percentage_Expenditure = (select AvgPercentage_Expenditure from AvgPercentage_Expenditure)
where Percentage_Expenditure is null;

with AvgBMI as (
	select avg(BMI) as AvgBMI
    from lifeExpectancy
    )
update lifeExpectancy
set BMI = (select AvgBMI from AvgBMI)
where BMI is null;

with AvgTotal_Expenditure as (
	select avg(Total_Expenditure) as AvgTotal_Expenditure
	from lifeExpectancy
    )
update lifeExpectancy
set Total_Expenditure = (select AvgTotal_Expenditure from AvgTotal_Expenditure)
where Total_Expenditure is null;

with AvgGDP as (
	select avg(GDP) as AvgGDP
    from lifeExpectancy
    )
update lifeExpectancy
set GDP = (select AvgGDP from AvgGDP)
where GDP is null;

with AvgSchooling as (
	select avg(Schooling) as AvgSchooling
    from lifeExpectancy
    )
update lifeExpectancy
set Schooling = (select AvgSchooling from AvgSchooling)
where Schooling is null;

select * 
from lifeExpectancy;