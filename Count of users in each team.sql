Count of users in each team
Task
Write a query to print the team name ( as team_name ) along with count of users ( rename that column as user_count ) in that team. Only print the rows with non-zero number of team members.
Order it by team_name in ascending order
You can refer to the dataset here.
Select the correct option below.
select AVG(rating) from Users;
select SUM(rating, review) from Users;
select ROUND(SUM(rating),2) from Users; 
select COUNT(users) from Users;
┌─────────────────┬────────────┐
│    team_name    │ user_count │
├─────────────────┼────────────┤
│ CodeandEat      │ 2          │
│ Contestants     │ 3          │
│ ErrorTerror     │ 1          │
│ LoopInfinity    │ 3          │
│ OpenWarriors    │ 1          │
│ PicassoCoders   │ 4          │
│ TheAlgoMasters  │ 5          │
│ The_King_Coders │ 1          │
└─────────────────┴────────────┘
Excellent work!
