Department of Each Employee
Task
Write a query to group the employees by their department and display the total number of employees (as total_employees) in each department.

Table name: Employees

employee_id	employee_name	company	category	department	salary
1	John Smith	TechCorp	Full-Time	Engineering	80000
2	Alice Johnson	TechCorp	Part-Time	HR	30000
3	Bob Brown	FinServ	Full-Time	Finance	90000
4	Carol White	HealthPlus	Contract	IT	75000
5	David Green	TechCorp	Full-Time	Engineering	85000
6	Emma Blue	FinServ	Part-Time	Finance	32000
7	Frank Black	HealthPlus	Full-Time	HR	60000
8	Grace Grey	TechCorp	Full-Time	Marketing	70000
9	Henry Red	FinServ	Contract	Sales	95000
10	Ivy Yellow	HealthPlus	Part-Time	Marketing	2

-- your code goes here
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
┌─────────────┬─────────────────┐
│ department  │ total_employees │
├─────────────┼─────────────────┤
│ Engineering │ 2               │
│ Finance     │ 2               │
│ HR          │ 2               │
│ IT          │ 1               │
│ Marketing   │ 2               │
│ Sales       │ 1               │
└─────────────┴─────────────────┘
