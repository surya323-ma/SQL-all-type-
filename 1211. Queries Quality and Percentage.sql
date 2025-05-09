Table: Queries
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |
+-------------+---------+
This table may have duplicate rows.
This table contains information collected from some queries on a database.
The position column has a value from 1 to 500.
The rating column has a value from 1 to 5. Query with rating less than 3 is a poor query.
We define query quality as:
The average of the ratio between query rating and its position.
We also define poor query percentage as:
The percentage of all queries with rating less than 3.

Write a solution to find each query_name, the quality and poor_query_percentage.
Both quality and poor_query_percentage should be rounded to 2 decimal places.
Return the result table in any order.
# Write your MySQL query statement below
WITH Quality AS (
    SELECT 
        query_name,
        AVG(CAST(rating AS DECIMAL) / position) AS quality
    FROM Queries
    GROUP BY query_name
),
PoorQueryPercentage AS (
    SELECT 
        query_name,
        100.0 * SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) AS poor_query_percentage
    FROM Queries
    GROUP BY query_name
)
SELECT 
    q.query_name,
    ROUND(q.quality, 2) AS quality,
    ROUND(p.poor_query_percentage, 2) AS poor_query_percentage
FROM Quality q
JOIN PoorQueryPercentage p ON q.query_name = p.query_name;
