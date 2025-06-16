As a data analyst at ABC Cab-Booking App, you are tasked with exploring potential partnerships and collaborations to enhance the services offered to customers.
You have access to the cities table, which lists all the cities where the cab service operates, and the partner_companies table, containing information about potential partner companies from various industries.
Your objective is to generate all possible combinations of cities and partner companies.
Your findings will play a crucial role in guiding decision-making processes related to partnerships and driving growth for the ABC Cab Booking App.
  
SELECT *
FROM cities ct
CROSS JOIN partner_companies pc;


│ city_id │ city_name │ company_id │  company_name   │    industry     │
├─────────┼───────────┼────────────┼─────────────────┼─────────────────┤
│ 1       │ New York  │ 1          │ Hotel Chain A   │ Hospitality     │
│ 1       │ New York  │ 2          │ Car Rental B    │ Transportation  │
│ 1       │ New York  │ 3          │ Food Delivery C │ Food & Beverage │
│ 1       │ New York  │ 4          │ Tour Package D  │ Travel          │
│ 1       │ New York  │ 5          │ Retail Brand E  │ Retail          │
│ 2       │ London    │ 1          │ Hotel Chain A   │ Hospitality     │
│ 2       │ London    │ 2          │ Car Rental B    │ Transportation  │
