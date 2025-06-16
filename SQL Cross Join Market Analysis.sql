SQL Cross Join Market Analysis
You are assigned the task of conducting market research and analyzing target audience segments to optimize marketing strategies and enhance customer engagement.
You have access to the cities table, which contains information about cities where the cab service operates, and the customer_segments table, which categorizes customers into different segments based on demographics and preferences.
Your objective is to generate all possible combinations of cities and customer segments.
By analyzing the resulting combinations, you aim to identify the most lucrative customer segments in each city and tailor marketing campaigns accordingly.

/* Solution as follows */

SELECT ct.city_name, csg.segment_name
FROM cities ct
CROSS JOIN customer_segments csg;
