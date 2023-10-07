-- ----------------------------------------------
--  Query 7: 
--  Which countries have the highest and lowest average alcohol consumption (years 2010-2015)?
-- ----------------------------------------------

select country, avg(Alcohol) as AvgAlchohol
from lifeExpectancy
where Year between 2010 and 2015
group by Country
order by AvgAlchohol asc limit 1;
-- Limit of 1 to get the lowest and highest countries 
-- For the highest countries, use: order by AvgAlchohol desc limit 1
-- For the lowest countries, use: order by AvgAlchohol asc limit 1