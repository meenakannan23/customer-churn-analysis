# 🏦 Customer Churn Analysis [Banking Domain]

## 💡 Business Recommendations## 📌 Project Overview
This project analyzes customer churn behavior in a banking dataset to identify key factors influencing customer attrition. The objective is to generate actionable insights that help improve customer retention and support data-driven business decisions.

---

## 🎯 Objectives
- Identify customers likely to churn  
- Analyze key factors influencing churn  
- Segment customers based on demographics and behavior  
- Build an interactive dashboard for stakeholders  

---

## 🛠️ Tools & Technologies
- **SQL (MySQL)** → Data cleaning & analysis  
- **Power BI** → Data visualization & dashboard  

---

## 📂 Dataset Description
The dataset contains customer-level information:

- CustomerId  
- CreditScore  
- Geography  
- Gender  
- Age  
- Tenure  
- Balance  
- NumOfProducts  
- HasCrCard  
- IsActiveMember  
- EstimatedSalary  
- Exited (Target Variable: 1 = Churned, 0 = Retained)

---

## 📊 Data Source
The dataset used in this project is sourced from Kaggle:

- **Dataset:** Bank Customer Churn Dataset  
- **Source:** https://www.kaggle.com/  

This dataset is used for educational and analytical purposes only.

---

## 🧹 Data Cleaning (SQL)
- Removed duplicate records using `CustomerId`  
- Checked and handled null values  
- Validated data ranges (Age, Balance, etc.)  
- Renamed inconsistent column headers  
- Ensured correct data types  

---

## 📊 Exploratory Data Analysis (SQL)

### 🔹 Key KPIs
- Total Customers  
- Total Churned Customers  
- Churn Rate  
- Average Age  
- Average Balance  
- Average Credit Score  
- Average Salary  
- Average Tenure  

### 🔹 Churn Analysis
- Churn by Geography  
- Churn by Gender  
- Churn by Number of Products  
- Churn by Activity Status  
- Churn by Tenure  
- Churn by Credit Score  

### 🔹 Behavioral Insights
- Age distribution of churned customers  
- Balance distribution of churned customers  

### 🔹 High-Risk Customer Identification
Customers with:
- Low tenure  
- Single product usage  
- Inactive status  

---

## 📈 Power BI Dashboard

### 🔹 KPI Cards
- Total Customers  
- Churned Customers  
- Churn Rate  
- Avg Age  
- Avg Balance  
- Avg Credit Score  
- Avg Salary  
- Avg Tenure  

### 🔹 Visualizations
- Churn by Geography (Bar Chart / Map)  
- Churn by Gender (Donut Chart)  
- Churn by Number of Products (Bar Chart)  
- Active vs Inactive Customers (Column Chart)  
- Age Distribution (Histogram)  
- Balance Distribution (Histogram)  

### 🔹 Filters (Slicers)
- Gender  
- Geography  

---

## 🔍 Key Insights
- Customers with **low tenure** are more likely to churn  
- Customers with **only one product** show higher churn  
- **Inactive customers** have significantly higher churn  
- Certain regions (e.g., Germany) show higher churn rates  
- Customer engagement and product usage strongly influence retention  

---

## 💡 Business Recommendations
- Improve onboarding for new customers  
- Encourage customers to use multiple products  
- Increase engagement for inactive users  
- Target high-risk customers with retention campaigns  
- Provide personalized offers based on customer profile  

---

## 🚀 Outcome
This project demonstrates:
- Strong SQL querying and data analysis skills  
- Ability to extract business insights from data  
- Proficiency in Power BI dashboard creation  
- Understanding of customer churn behavior  

---

## 📁 Project Structure


Customer-Churn-Analysis/
│
├── 📂 Dataset/
│ └── churn_modelling.csv
│
├── 📂 SQL/
│ └── churn_analysis.sql
│
├── 📂 PowerBI/
│ └── Customer_Churn_Dashboard.pbix
│
├── 📂 Images/
│ └── dashboard_screenshot.png
│
└── README.md


---
## 📬 Author

**Meena K**  
Aspiring Data Analyst  
Skills: Excel | SQL | Power BI | Data Analysis  

---
