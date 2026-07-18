
# 🚀 Customer 360 — Customer Intelligence & Analytics Platform

> **An End-to-End Customer Analytics & Business Intelligence Solution using SQL, Python, and Power BI**

---

# 📌 Project Overview

**Customer 360** is an end-to-end Business Intelligence project developed to analyze customer behavior, revenue trends, and customer segmentation using the Brazilian E-Commerce (Olist) dataset.

The project demonstrates the complete analytics lifecycle:

* Data Collection
* Data Cleaning
* Exploratory Data Analysis (EDA)
* SQL Business Analysis
* Customer Analytics
* RFM Segmentation
* Customer Lifetime Value (CLV)
* Marketing Recommendations
* Interactive Power BI Dashboards

The objective is to transform raw transactional data into meaningful business insights that help organizations improve customer retention, increase revenue, and make data-driven decisions.

---

# 🎯 Business Problem

Businesses generate massive amounts of transactional data but often struggle to answer questions such as:

* Who are the most valuable customers?
* Which customers are likely to churn?
* Which regions generate the highest revenue?
* Which payment methods are preferred?
* Which customer segments require targeted marketing campaigns?
* How can customer lifetime value be improved?

This project solves these business problems using data analytics techniques.

---

# 🎯 Project Objectives

* Clean and preprocess raw customer data
* Perform SQL-based business analysis
* Build Customer Lifetime Value (CLV) model
* Perform RFM Segmentation
* Generate Marketing Recommendations
* Build interactive Power BI dashboards
* Deliver actionable business insights

---

# 🏗️ Solution Architecture

```text
                           Customer 360
             Customer Intelligence & Analytics Platform

                    ┌─────────────────────────┐
                    │     Olist Dataset       │
                    │ CSV Files (9 Tables)    │
                    └────────────┬────────────┘
                                 │
                                 ▼
                    ┌─────────────────────────┐
                    │ Data Cleaning (Python)  │
                    │ Pandas + NumPy          │
                    └────────────┬────────────┘
                                 │
          ┌──────────────────────┼──────────────────────┐
          ▼                      ▼                      ▼
 ┌────────────────┐     ┌────────────────┐     ┌────────────────┐
 │ SQL Analytics  │     │ RFM Analytics  │     │ Visualization  │
 │ KPIs           │     │ CLV            │     │ Matplotlib      │
 │ Business Logic │     │ Segmentation   │     │ EDA Charts      │
 └────────┬───────┘     └────────┬───────┘     └────────┬───────┘
          │                      │                      │
          └──────────────┬───────┴──────────────────────┘
                         ▼
            ┌──────────────────────────────┐
            │ Export Power BI Data         │
            │ transactions_dashboard.csv   │
            │ customer_rfm.csv             │
            │ marketing_recommendations    │
            └──────────────┬───────────────┘
                           ▼
              ┌────────────────────────────┐
              │ Power BI Dashboard         │
              │ Executive Overview         │
              │ Customer Analytics         │
              │ RFM Segmentation           │
              └──────────────┬─────────────┘
                             ▼
                   Business Insights & Decisions
```

---

# 🔄 End-to-End Workflow

```text
Raw Olist Dataset
        │
        ▼
Load CSV Files
        │
        ▼
Data Cleaning
        │
        ▼
Missing Value Treatment
        │
        ▼
Feature Engineering
        │
        ▼
Exploratory Data Analysis
        │
        ▼
SQL Business KPIs
        │
        ▼
Customer Analytics
        │
        ▼
RFM Segmentation
        │
        ▼
Marketing Recommendations
        │
        ▼
Export Processed Data
        │
        ▼
Power BI Data Modeling
        │
        ▼
DAX Measures
        │
        ▼
Interactive Dashboards
        │
        ▼
Business Insights
```

---

# 🛠️ Tech Stack

## Programming

* Python
* SQL

## Python Libraries

* Pandas
* NumPy
* Matplotlib
* Seaborn

## Database

* MySQL

## Business Intelligence

* Power BI
* DAX
* Power Query

## Version Control

* Git
* GitHub

---

# 📂 Dataset

Dataset Source:

Brazilian E-Commerce Public Dataset by Olist

Tables Used:

* Customers
* Orders
* Order Items
* Payments
* Products
* Sellers
* Reviews
* Geolocation

---

# 📁 Project Structure

```text
Customer-360-Customer-Intelligence-Analytics
│
├── Clean_Data
├── Data
├── Images
├── Output
├── Power Bi
│     ├── Customer360.pbix
│     ├── Cover page.PNG
│     ├── Executive overview.PNG
│     ├── Customer analytics.PNG
│     └── RFM segmentation.PNG
│
├── PowerBI_Data
├── Python
├── SQL
└── requirements.txt
```

---

# 🐍 Python Workflow

Python notebooks perform:

* Data Loading
* Data Cleaning
* Exploratory Data Analysis
* Customer Analytics
* Customer Lifetime Value
* RFM Analysis
* Visualization
* Export for Power BI

---

# 💾 SQL Analysis

SQL scripts include:

* Database Setup
* Data Quality Checks
* Business KPIs
* Customer Analytics
* RFM Analysis
* Views
* Stored Procedures

---

# 📊 Power BI Dashboards

This project includes **three interactive dashboards**.

---

## 1️⃣ Executive Overview

**Key Features**

* Total Revenue
* Total Customers
* Total Orders
* Average Order Value
* Monthly Revenue Trend
* Revenue by State
* Revenue by Payment Type
* Top Customers
* Interactive Filters

<img width="823" height="364" alt="Executive overview" src="https://github.com/user-attachments/assets/3cc66681-e321-45b0-b9c1-37dc3a71e93c" />


---

## 2️⃣ Customer Analytics

**Key Features**

* Average Customer Lifetime Value
* Customer Segment Distribution
* Revenue by Segment
* Average Monetary Value
* Top Customers
* Customer Filters

<img width="835" height="358" alt="customer analytics" src="https://github.com/user-attachments/assets/4ecebe80-b6c2-405c-b40d-ab031877c003" />

---

## 3️⃣ RFM Segmentation Dashboard

**Key Features**

* RFM Score Distribution
* Revenue Contribution
* Customer Segment Performance
* Marketing Recommendations
* CRM Strategy Dashboard
* Customer Retention Insights

<img width="817" height="320" alt="RFM segmentation" src="https://github.com/user-attachments/assets/95b6cee6-3f38-48fa-af3a-de0518ae558d" />

---

# 📈 Key DAX Measures

Examples include:

* Total Revenue
* Total Customers
* Total Orders
* Average Order Value
* Average CLV
* Average Recency
* Average Frequency
* Total Segments
* Revenue by Segment

---

# 💡 Business Insights

The analysis revealed:

* Credit Card is the dominant payment method.
* A small percentage of customers contribute the majority of revenue.
* Champions and Loyal Customers generate the highest lifetime value.
* Several customer segments are at high risk of churn.
* Revenue is concentrated in a few key states.
* RFM segmentation enables targeted marketing strategies.

---

# 📢 Business Recommendations

* Reward high-value customers through loyalty programs.
* Launch retention campaigns for "At Risk" customers.
* Upsell products to Loyal Customers.
* Reactivate Hibernating customers with personalized offers.
* Optimize marketing spend using customer segmentation.
* Focus business expansion on high-performing regions.

---

# 🚀 How to Run the Project

## Clone Repository

```bash
git clone https://github.com/Juhi-analytics/Customer-360-Customer-Intelligence-Analytics.git
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

## Run Python Notebooks

Execute notebooks in sequence.

## Open Power BI

Open:

```
Power Bi/Customer360.pbix
```

Refresh the data model if required.

---

# 📊 Project Highlights

✔ End-to-End Analytics Solution

✔ SQL + Python + Power BI Integration

✔ Customer Lifetime Value Analysis

✔ RFM Segmentation

✔ Interactive Business Dashboards

✔ Marketing Recommendation Engine

✔ Real Business Insights

---

# 📚 Skills Demonstrated

* Data Cleaning
* Data Wrangling
* SQL
* Python
* Exploratory Data Analysis
* Customer Analytics
* Customer Segmentation
* RFM Analysis
* Business Intelligence
* Dashboard Development
* DAX
* Data Visualization
* Business Storytelling

---

# 🚀 Future Improvements

* Machine Learning Customer Churn Prediction
* Sales Forecasting
* Recommendation System
* Customer Cohort Analysis
* Streamlit Web Application
* Automated ETL Pipeline
* Cloud Deployment (Azure / AWS)

---

# 👩‍💻 Author

**Juhi Lokhande**

MBA (Business Analytics)

Aspiring Data Analyst | Business Analyst | Power BI Developer

GitHub: https://github.com/Juhi-analytics

---

# ⭐ Support

If you found this project helpful:

⭐ Star this repository

🍴 Fork it

📢 Share your feedback

Thank you for visiting!
