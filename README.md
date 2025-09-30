# task6-30.09.2025--Elevate-Labs
TASK 6: Sales Trend Analysis Using Aggregations
# Sales Trend Analysis Using Aggregations

This task analyzes monthly revenue and order volume from an orders dataset using PostgreSQL queries. The analysis process includes data preparation, aggregation-based querying, and result interpretation.
## What was done

    Created a PostgreSQL table (orders) to store detailed order data with schema closely matching the source CSV file.

    Loaded CSV data into the table, ensuring columns with spaces or capitalization were handled.

    Calculated monthly revenue by applying discounts and multiplying list price and quantity, then summed results per month.

    Computed monthly order volume as the count of unique orders for each month.

    Limited analysis to a specific year (e.g., 2023) using WHERE clauses for focused reporting.

    Resulting queries generated chronological tables of monthly revenue and order volume for business insights.
## Technologies Used

    PostgreSQL for SQL table creation, data aggregation, and querying.

    CSV data import and transformation using SQL commands.

This project demonstrates SQL-driven sales analysis, providing clear summaries of business performance over time.
