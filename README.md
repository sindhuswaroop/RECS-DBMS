# RECS-DBMS
Using SQL and Python to clean up and create a database for RECS data and perform some analysis to fetch business insights.

## Purpose
To answer the following business question: How many single-family homes with central AC and heat with natural gas in Minnesota grouped by wall type?

This project utilizes Python script to perform validation checks on the data and populate the database with clean data using Python-SQL connector packages. The data warehouse used in this case is Snowflake. SQL has been used to select only the columns that are relevant to the business question and filter out the data based on conditions given in the requirements. 

A Reader Account has been created, and access to the database, schema and tables has been granted via the primary account, so as to allow even non-Snowflake users to view the database and perform DML actions as desired.

The login URL for the reader account [https://rhjhrje-reader_account.snowflakecomputing.com](url). Credentials will be provided upon request. 
Once logged in, the user can run the worksheet named 'Query' and view the results.

## Organization of Repo

<img width="448" alt="Screenshot 2024-07-11 at 7 05 02 PM" src="https://github.com/user-attachments/assets/539bb59a-f1da-43b1-b10e-6443ab23a912">

## Data Files

This project uses data from "2020 RECS Data Survey" and "Variable and Response Codebook" available at https://www.eia.gov/consumption/residential/data/2020/index.php?view=microdata

## Data Model

<img width="698" alt="Screenshot 2024-07-11 at 6 36 43 PM" src="https://github.com/user-attachments/assets/4d2f25e2-d3d0-4030-9971-987bf9bc1f1c">

## Results

<img width="744" alt="Screenshot 2024-07-11 at 6 42 36 PM" src="https://github.com/user-attachments/assets/20a6f495-b693-4164-b25d-ae70219583f9">
