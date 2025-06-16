As a new data analyst at ABC Cab-booking App, you have been provided with a dataset containing driver feedback associated with user rides.
Your task is to analyze the data and provide insights.
Can you retrieve a comprehensive report that combines the drivers table with the driver_feedback table using a FULL JOIN?
This will help us understand the correlation between driver performance and customer feedback, enabling us to identify top-performing drivers and areas for improvement.
Additionally, we can address any concerns or issues raised by customers to enhance the overall driver performance and user experience on our platform.
  
SELECT *
FROM drivers dr
FULL JOIN driver_feedback df
ON dr.id = df.driver_id;
