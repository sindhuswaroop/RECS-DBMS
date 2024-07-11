# RECS-DBMS
Using SQL and Python to clean up and create a database for RECS data and perform some analysis to fetch business insights.

## Purpose
To answer the following business question: How many single-family homes with central AC and heat with natural gas in Minnesota grouped by wall type?

This project utilizes Python script to perform validation checks on the data and populate the database with clean data using Python-SQL connector packages. The data warehouse used in this case is Snowflake. SQL has been used to select only the columns that are relevant to the business question and filter out the data based on conditions given in the requirements. 

A Reader Account has been created and access to the database, schema and tables has been granted via the primary account, so as to allow non-Snowflake users to view the database and perform DML actions as desired.

The login URL for the reader account https://rhjhrje-reader_account.snowflakecomputing.com. Credentials will be provided upon request.

## Organization of Code
  
<img width="455" alt="Screenshot 2024-07-11 at 2 59 40 PM" src="https://github.com/user-attachments/assets/1812d4c3-b175-44d8-869a-7d5985c6b0aa">

## Data Files

This project uses data from "2020 RECS Data Survey" and "Variable and Response Codebook" available at https://www.eia.gov/consumption/residential/data/2020/index.php?view=microdata



