SQL Schema
Pandas Schema
Table: app_events

+------------------+----------+
| Column Name      | Type     | 
+------------------+----------+
| event_id         | int      |
| user_id          | int      |
| event_timestamp  | datetime |
| event_type       | varchar  |
| session_id       | varchar  |
| event_value      | int      |
+------------------+----------+
event_id is the unique identifier for this table.
event_type can be app_open, click, scroll, purchase, or app_close.
session_id groups events within the same user session.
event_value represents: for purchase - amount in dollars, for scroll - pixels scrolled, for others - NULL.
Write a solution to identify zombie sessions, sessions where users appear active but show abnormal behavior patterns. A session is considered a zombie session if it meets ALL the following criteria:

The session duration is more than 30 minutes.
Has at least 5 scroll events.
The click-to-scroll ratio is less than 0.20 .
No purchases were made during the session.
Return the result table ordered by scroll_count in descending order, then by session_id in ascending order.

The result format is in the following example.

 # Write your MySQL query statement below
SELECT 
  session_id,
  user_id,
  ROUND(TIMESTAMPDIFF(MINUTE, MIN(event_timestamp), MAX(event_timestamp))) AS session_duration_minutes,
  SUM(event_type='scroll') AS scroll_count
FROM app_events
GROUP BY session_id, user_id
HAVING 
  session_duration_minutes > 30
  AND scroll_count >= 5
  AND SUM(event_type='click') / scroll_count < 0.2
  AND SUM(event_type='purchase') = 0
ORDER BY scroll_count DESC, session_id;
