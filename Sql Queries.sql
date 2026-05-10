/*
Project : sales Insights Dashboard using Power BI
Dtatabase : Sales
Description : This SQL file contains the queries used for
data exploration, validation, cleaning, and
business analysis before building the Power BI dashboard.
*/

-- 1. 1. View Data from Main Tables
-- Purpose: Explore dataset structure and records

SELECT * FROM sales.customers;
Select * From products;
Select * From markets;
Select * From transactions;
select * From date;

-- 2. Explore Currency Data
-- Purpose: Identify currency types used in transactions

Select Distinct currency from transactions;
select * From transactions where currency = 'USD';
Select Distinct currency, Length(currency) From transactions;

-- 3. Data Quality Checks
-- Purpose: Detect inconsistent currency values

Select * From Transactions Where currency = 'INR\r';
select COUNT(*) From Transactions Where Currency = 'INR\r';
select COUNT(*) From Transactions Where Currency = 'INR';

-- 4. Total Transactions Count
-- Purpose: Understand dataset size
SELECT COUNT(*) FROM Transactions;

-- 5. Join Transactions with Date Table
-- Purpose: Combine sales transactions with date information

select * From transactions t Inner Join date d On t.order_date = d.date;

-- 6. Maximum Sales Quantity Analysis
-- Purpose: Identify highest sales quantity transaction

Select d.date, t.sales_qty From transactions t Inner Join date d
On t.order_date = d.date where t.sales_qty = (Select Max(sales_qty)
From Transactions);  
 
-- 7. Revenue Analysis for Year 2020
-- Purpose: Calculate total revenue for 2020
-- considering INR and USD currencies

SELECT SUM(transactions.sales_amount) FROM transactions
INNER JOIN date ON transactions.order_date = date.date WHERE date.year = 2020
AND (transactions.currency = 'INR\r'OR transactions.currency = 'USD\r');

-- 8. March 2017 Revenue Analysis
-- Purpose: Calculate revenue for March 2017

Select Sum(t.sales_amount) As revenue From transactions t Inner Join date d
On t.order_date = d.date Where d.year = 2017 And d.month_name = 'March'
And t.currency IN ('INR\r', 'USD\r');