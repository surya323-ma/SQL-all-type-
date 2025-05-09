Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.'

# Write your MySQL query statement below
SELECT today.id 
FROM Weather today
JOIN Weather yesterday
ON today.recorddate = DATE_ADD(yesterday.recorddate, INTERVAL 1 DAY)
WHERE today.temperature >yesterday.temperature;
