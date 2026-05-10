\# Sales Insights Dashboard using Power BI



\## Project Overview



The \*\*Sales Insights Dashboard\*\* is an interactive business intelligence project developed using \*\*Power BI\*\*, \*\*MySQL\*\*, \*\*SQL\*\*, and \*\*Power Query\*\* to analyze sales performance and generate actionable business insights.



The project transforms raw sales transaction data into a visually interactive dashboard that enables users to analyze \*\*revenue trends\*\*, \*\*sales quantity\*\*, \*\*market performance\*\*, \*\*customer contribution\*\*, and \*\*product performance\*\* over different time periods.



\---



\## Business Problem



Organizations often struggle to derive meaningful insights from raw transactional sales data. Manual reporting makes it difficult to identify:



\- High-performing markets

\- Top customers and products

\- Revenue trends over time

\- Sales performance across regions



This project solves that problem by building a centralized and interactive analytics dashboard for better business decision-making.



\---



\## Project Objective



The key objectives of this project are:



\- Analyze total revenue and sales quantity

\- Track market-wise sales performance

\- Identify top-performing customers

\- Analyze top-selling products

\- Monitor yearly and monthly revenue trends

\- Enable dynamic filtering using slicers

\- Convert raw data into business insights



\---



\## Tools \& Technologies Used



| Technology | Purpose |

|------------|----------|

| Power BI | Dashboard creation \& visualization |

| MySQL | Database management |

| SQL | Data extraction \& analysis |

| Power Query | Data transformation \& cleaning |

| DAX | KPI calculations and measures |



\---



\## Dataset Information



The project uses a \*\*MySQL sales database\*\* containing transactional business data.



\### Tables Used



\- `customers`

\- `products`

\- `markets`

\- `transactions`

\- `date`



\### Dataset Contains



\- Customer details

\- Product information

\- Sales transaction records

\- Market information

\- Revenue and quantity data

\- Time-based sales records



\---



\## Database Setup



This project uses a \*\*MySQL database dump file\*\* stored in the `/database` folder.



\### Steps to Restore Database



1\. Open \*\*MySQL Workbench\*\*

2\. Create a new schema named `sales`

3\. Go to:



Server → Data Import



4\. Select:



`sales\_database\_dump.sql`



5\. Click:



\*\*Start Import\*\*



6\. Connect \*\*Power BI\*\* with MySQL database

7\. Refresh data if required



\---



\## SQL Analysis Performed



The following SQL operations were performed before dashboard creation:



\### Data Exploration

\- Retrieved data from all tables

\- Explored dataset structure

\- Performed transaction analysis



\### Data Cleaning \& Validation

\- Identified inconsistent currency values

\- Checked currency formatting issues

\- Validated missing/inconsistent values



\### Business Analysis

\- Revenue calculation by year

\- Monthly revenue analysis

\- Sales quantity analysis

\- Maximum sales quantity tracking

\- Date-based trend analysis



\### Table Relationships

\- Joined transaction and date tables

\- Used relational analysis for time-based insights



\### Example Queries Performed



```sql

SELECT \* FROM customers;



SELECT DISTINCT currency

FROM transactions;



SELECT SUM(t.sales\_amount) AS revenue

FROM transactions t

INNER JOIN date d

ON t.order\_date = d.date

WHERE d.year = 2017

AND d.month\_name = 'March';

```

Complete SQL queries are available in:



/sql\_queries/business\_queries.sql



\---



\## Data Cleaning \& Transformation



The following preprocessing steps were performed:



\- Currency normalization

\- Data validation

\- Relationship creation between tables

\- Sales amount normalization

\- Date table integration

\- Power Query transformations



\---



\## Dashboard Features



The dashboard includes:



\### KPI Cards

\- Total Revenue: 984.81M

\- Sales Quantity: 2M



\### Revenue Analysis

\- Market-wise revenue performance

\- Revenue trend analysis over years



\### Quantity Analysis

\- Quantity sold by market



\### Customer Analysis

\- Top 5 customers by revenue



\### Product Analysis

\- Top 5 products by sales performance



\### Interactive Features

\- Year-wise slicer

\- Dynamic date filtering

\- Interactive visualizations



\---



\## Dashboard Preview



!\[Dashboard Screenshot](screenshots/dashboard\_overview.png)



\---



\## Key Insights



\### Market Performance

\- Delhi NCR generated the highest revenue.



\### Revenue Trends

\- Revenue fluctuated across years between 2017–2020.



\### Customer Analysis

\- A small group of customers contributed significantly to revenue.



\### Product Analysis

\- Top products generated major sales contribution.



\---



\## Project Folder Structure



Sales\_Insights\_PowerBI\_Project

│── Sales\_Insights.pbix

│── README.md

│── database

│      ├── sales\_database\_dump.sql

│── screenshots

│      ├── dashboard\_overview.png

│── sql\_queries

│      ├── business\_queries.sql



\---



\## How to Run This Project



1\. Download or clone repository

2\. Restore MySQL database

3\. Open `.pbix` file in Power BI Desktop

4\. Refresh data

5\. Explore dashboard



\---



\## Future Improvements



\- Predictive sales forecasting

\- Real-time data integration

\- Advanced DAX calculations



\---



\## Author



\*\*Anushka Varhokar\*\*  

B.Tech CSE (Data Science)



\### Skills Demonstrated

\- SQL

\- MySQL

\- Power BI

\- Power Query

\- DAX

\- Data Analysis

\- Data Visualization

