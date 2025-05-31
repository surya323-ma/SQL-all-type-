Output all rows from a table
In this case study, the CodeChef database is exhibited, showcasing dummy users and comprising questions that revolve around aggregate functions.

Task
Write a query to output the table 'Users'. Limit your results to 5 rows.
You can refer to the dataset here.

-- your code goes here
Select * from Users limit 5;
Your Output
┌─────────────────────┬──────────────┬─────┬──────────────┬────────┬──────────┬──────────────┬─────────────┬─────────┬──────────┐
│        email        │  user_name   │ age │   college    │ rating │ contests │ last_contest │ submissions │ team_id │ pro_plan │
├─────────────────────┼──────────────┼─────┼──────────────┼────────┼──────────┼──────────────┼─────────────┼─────────┼──────────┤
│ benq@gmail.com      │ benq         │ 37  │ MIT          │ 3017   │ 259      │ 1            │ 10200       │ 20      │ 0        │
│ Binenie@gmail.com   │ BinaryGenie  │ 24  │ NIT Warangal │ 2390   │ 91       │ 18           │ 1771        │ 7       │ 1        │
│ Bytstro@gmail.com   │ ByteMaestro  │ 51  │ NULL         │ 2150   │ 61       │ 18           │ 1831        │ NULL    │ 0        │
│ caronni@att.net     │ ByteCoder    │ 21  │ IIT Kanpur   │ 1012   │ 2        │ 12           │ 200         │ 3       │ 0        │
│ coderajay@gmail.com │ unknown_ajay │ 20  │ IIIT Lucknow │ 1960   │ 54       │ 1            │ 850         │ 1       │ 1        │
└─────────────────────┴──────────────┴─────┴──────────────┴────────┴───
