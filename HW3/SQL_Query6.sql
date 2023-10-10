-- ----------------------------------------------
--  Query 6: 
--  List of countries with the highest and lowest average Schooling  (years 2010-2015)
-- ----------------------------------------------

select country, avg(Schooling) as AvgSchooling
from lifeExpectancy
where Year between 2010 and 2015
group by Country
order by AvgSchooling asc limit 10;
-- Limit of 10 to get the 10 lowest and highest countries 
-- For the 10 highest countries, use: order by AvgSchooling desc limit 10
-- For the 10 lowest countries, use: order by AvgSchooling asc limit 10;