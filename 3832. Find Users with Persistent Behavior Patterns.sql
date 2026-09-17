Table: activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| user_id      | int     |
| action_date  | date    |
| action       | varchar |
+--------------+---------+
(user_id, action_date, action) is the primary key (unique value) for this table.
Each row represents a user performing a specific action on a given date.
Write a solution to identify behaviorally stable users based on the following definition:

A user is considered behaviorally stable if there exists a sequence of at least 5 consecutive days such that:
The user performed exactly one action per day during that period.
The action is the same on all those consecutive days.
If a user has multiple qualifying sequences, only consider the sequence with the maximum length.
Return the result table ordered by streak_length in descending order, then by user_id in ascending order.

The result format is in the following example.

# Write your MySQL query statement below
WITH one_action AS (
  SELECT user_id, action_date, MAX(action) AS action
  FROM activity
  GROUP BY user_id, action_date
  HAVING COUNT(*) = 1
),
grp_days AS (
  SELECT user_id, action, action_date,
         DATE_SUB(action_date, INTERVAL ROW_NUMBER() OVER(PARTITION BY user_id, action ORDER BY action_date) DAY) AS grp
  FROM one_action
),
streaks AS (
  SELECT user_id, action,
         COUNT(*) AS streak_length,
         MIN(action_date) AS start_date,
         MAX(action_date) AS end_date,
         MAX(COUNT(*)) OVER(PARTITION BY user_id) AS max_streak
  FROM grp_days
  GROUP BY user_id, action, grp
  HAVING COUNT(*) >= 5
)
SELECT user_id, action, streak_length, start_date, end_date
FROM streaks
WHERE streak_length = max_streak
ORDER BY streak_length DESC, user_id;
