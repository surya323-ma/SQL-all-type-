Explore City-Driver Distribution SQL
As a data analyst for ABC Cab-booking App, your objective is to analyze the driver distribution across different cities and identify any cities without assigned drivers.
You have access to two tables: cities, which contains information about the cities where the cab service operates, and drivers, which stores details about the drivers including their assigned city.
/* Solution as follows */

SELECT ct.city_id, ct.city_name, dr.id, dr.name
FROM drivers dr
RIGHT JOIN cities ct
ON ct.city_id = dr.city_id;
