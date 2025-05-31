
Task
Write a query to retrieve the details of the last five matches played, including the match ID, the names of the players who participated, the name of the winning player, match date, and the final score of the winner.

There are two tables named Players and Matches.

Tables
  Players                                                                 Matches 
  player_id player_name score rank                      match_id player_1 player_2 winner match date 
1 Alice 1200 5                                          101 Alice Bob Bob 2024-01-25 
2 Bob 1500 2                                            102 Charlie David David 2024-01-06 

-- your code goes here
SELECT m.match_id, m.player_1, m.player_2, m.winner, m.match_date, p.score
FROM Matches m
JOIN Players p ON m.winner = p.player_name
ORDER BY m.match_date DESC
LIMIT 5;
Your Output
┌──────────┬──────────┬──────────┬────────┬────────────┬───────┐
│ match_id │ player_1 │ player_2 │ winner │ match_date │ score │
├──────────┼──────────┼──────────┼────────┼────────────┼───────┤
│ 106      │ Frank    │ Hank     │ Frank  │ 2024-01-29 │ 1450  │
│ 101      │ Alice    │ Bob      │ Bob    │ 2024-01-25 │ 1500  │
│ 110      │ David    │ Eve      │ David  │ 2024-01-24 │ 1600  │
│ 108      │ Jack     │ Alice    │ Jack   │ 2024-01-19 │ 1400  │
│ 103      │ Eve      │ Bob      │ Bob    │ 2024-01-17 │ 1500  │
└──────────┴──────────┴──────────┴────────┴────────────┴───────┘
