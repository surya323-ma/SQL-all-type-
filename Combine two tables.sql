
Case Study:- This case study scenario involves user complaints and ride information associated with ABC Cab-booking App. You have been given a dataset containing multiple tables associated with the case study.

As a new data analyst at ABC Cab-booking App, your task is to analyze the data and provide insights.
Can you retrieve a comprehensive report that combines the user_information table with the user_rides table?
This will help us understand the relationship between users and their rides, allowing us to identify patterns, such as popular routes, ride frequency, and user preferences, to improve our services and enhance the overall user experience.
SELECT *
FROM  user_rides ur
FULL JOIN user_information ui
ON ur.user_id = ui.user_id;
