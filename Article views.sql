Task
Write a query to retrieve the author_id, author_name, and publication_name for authors whose articles got zero views. The result should be sorted by author_id in ascending order.

Return the result table sorted by id in ascending order.

Table name: Views

article_id	author_id	author_name	viewer_id	view_count	publication_name
101	1	John Doe	1	3	The Daily Times
102	2	Jane Smith	2	1	Global News
103	3	Emily Clark	4	0	Tech Monthly
104	4	Mark Lewis	4	2	Health Digest
105	5	Sara White	3	0	The Business Journal
106	1	John Doe	2	0	The Daily Times
107	2	Jane Smith	2	2	Global News

-- your code goes here
SELECT DISTINCT author_id, author_name, publication_name 
FROM Views 
WHERE view_count = 0 
ORDER BY author_id ASC;
Your Output
┌───────────┬─────────────┬──────────────────────┐
│ author_id │ author_name │   publication_name   │
├───────────┼─────────────┼──────────────────────┤
│ 1         │ John Doe    │ The Daily Times      │
│ 3         │ Emily Clark │ Tech Monthly         │
│ 5         │ Sara White  │ The Business Journal │
└───────────┴─────────────┴──────────────────────┘
