# 📊 Sales Insights Dashboard | Power BI + MySQL + SQL

## 📌 Project Overview

The **Sales Insights Dashboard** is an end-to-end Business Intelligence project built using **Power BI**, **MySQL**, **SQL**, **Power Query**, and **DAX**. It transforms raw transactional sales data into an interactive dashboard that helps businesses monitor sales performance, identify growth opportunities, and make data-driven decisions.

The dashboard enables users to analyze **revenue trends**, **sales quantity**, **market performance**, **customer contribution**, and **product performance** through dynamic visualizations and interactive filters.

---

## 📷 Dashboard Preview


<img width="1195" height="752" alt="dashboard_overview" src="https://github.com/user-attachments/assets/92cc6f09-614d-49be-9a49-9fa5848c8ac1" />


---

# 🎯 Business Problem

Businesses generate large volumes of sales data every day, making it difficult to extract meaningful insights through manual reporting. Decision-makers often struggle to identify:

* High-performing markets
* Top customers
* Best-selling products
* Revenue trends over time
* Sales performance across different regions

This project addresses these challenges by building an interactive Power BI dashboard that provides real-time business insights for faster and better decision-making.

---

# 🎯 Project Objectives

* Analyze total revenue and sales quantity
* Monitor revenue trends across different years
* Compare market-wise sales performance
* Identify top customers by revenue
* Identify top-performing products
* Enable dynamic filtering using slicers
* Transform raw data into actionable business insights

---

# 🛠️ Tools & Technologies

| Tool            | Purpose                               |
| --------------- | ------------------------------------- |
| **Power BI**    | Dashboard Development & Visualization |
| **MySQL**       | Database Management                   |
| **SQL**         | Data Extraction & Business Analysis   |
| **Power Query** | Data Cleaning & Transformation        |
| **DAX**         | KPI Measures & Calculations           |

---

# 🗂️ Dataset

The project uses a **MySQL Sales Database** consisting of multiple relational tables.

### Tables Used

* Customers
* Products
* Markets
* Transactions
* Date

### Dataset Includes

* Customer Information
* Product Details
* Sales Transactions
* Market Information
* Revenue
* Sales Quantity
* Date & Time Information

---

# 🧹 Data Cleaning & Transformation

Before building the dashboard, the following preprocessing steps were performed:

* Cleaned inconsistent currency values
* Validated missing and incorrect records
* Normalized sales amount data
* Built relationships between tables
* Integrated Date Dimension
* Performed Power Query transformations
* Created DAX measures for KPIs

---

# 🗃️ SQL Analysis

Several SQL queries were written to explore and analyze the dataset.

### Data Exploration

* Retrieved records from all tables
* Explored data structure
* Verified relationships

### Business Analysis

* Revenue by Year
* Revenue by Month
* Market-wise Revenue
* Sales Quantity Analysis
* Customer-wise Revenue
* Product-wise Performance

### Sample SQL Query

```sql
SELECT SUM(t.sales_amount) AS Revenue
FROM transactions t
INNER JOIN date d
ON t.order_date = d.date
WHERE d.year = 2017
AND d.month_name = 'March';
```

More SQL queries are available in:

```
sql_queries/business_queries.sql
```

---

# 📈 Dashboard Features

### KPI Cards

* 💰 Total Revenue
* 📦 Total Sales Quantity

### Revenue Analysis

* Revenue by Market
* Revenue Trend Over Time

### Customer Analysis

* Top 5 Customers by Revenue

### Product Analysis

* Top 5 Products by Revenue

### Quantity Analysis

* Sales Quantity by Market

### Interactive Filters

* Year Slicer
* Date Filtering
* Interactive Visuals

---

# 📊 Key Business Insights

* Delhi NCR generated the highest overall revenue.
* A small number of customers contributed a major share of total sales.
* Revenue fluctuated between 2017 and 2020.
* A few products accounted for the majority of sales.
* Interactive filtering enables quick market and time-based analysis.

---

# 🗂️ Project Structure

```
Sales_Insights_PowerBI_Project
│
├── Sales_Insights.pbix
├── README.md
│
├── database
│   └── sales_database_dump.sql
│
├── screenshots
│   └── dashboard_overview.png
│
└── sql_queries
    └── business_queries.sql
```

---

# 🚀 How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Sales_Insights_PowerBI_Project.git
```

### 2. Restore MySQL Database

* Open MySQL Workbench
* Create a schema named **sales**
* Navigate to:

```
Server → Data Import
```

* Import:

```
sales_database_dump.sql
```

* Click **Start Import**

### 3. Open Power BI

* Open **Sales_Insights.pbix**
* Connect to the MySQL database
* Refresh the data

---

# 💡 Skills Demonstrated

* SQL Query Writing
* MySQL Database Management
* Data Cleaning
* Power Query (ETL)
* Data Modeling
* DAX Measures
* Dashboard Design
* Business Intelligence
* Data Visualization
* KPI Development

---

# 🔮 Future Enhancements

* Sales Forecasting using Machine Learning
* Real-Time Data Integration
* Advanced DAX Calculations
* Drill-Through Reports
* Row-Level Security (RLS)
* Automated Dashboard Refresh

---

# 👩‍💻 Author

**Anushka Varhokar**

**B.Tech – Computer Science Engineering (Data Science)**

📧 Email: *varhokaranushka@gmail.com*

🔗 LinkedIn: *www.linkedin.com/in/anushka-varhokar-a85996340*

💻 GitHub: *https://github.com/AnushkaVarhokar*

---

## ⭐ If you found this project useful, consider giving it a Star!
