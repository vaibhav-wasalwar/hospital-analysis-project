# 🏥 Hospital Operations & Patient Flow Analytics

![Power BI](https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3.12-3776AB?style=for-the-badge&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)

---

## 📌 Project Overview

An end-to-end **industrial data analytics project** built to analyze
hospital patient data, optimize operations, and uncover key healthcare
insights using SQL, Python, and Power BI.

This project simulates a **real-world hospital analytics system** covering:
- Patient admissions and discharge patterns
- Department performance and resource utilization
- Financial analysis and billing insights
- Monthly trends and seasonal patterns

---

## 🎯 Business Problem

Hospitals struggle with:
- Patient overcrowding and long wait times
- Inefficient resource allocation across departments
- Lack of visibility into billing and insurance patterns
- No data-driven decision making for operations

This project solves these problems by building a complete analytics pipeline.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python 3.12 | Data cleaning, EDA, visualization |
| MySQL 8.0 | Database design, KPI queries |
| Power BI | Interactive dashboard |
| Pandas | Data manipulation |
| Matplotlib & Seaborn | Charts and visualizations |
| SQLAlchemy | Python-MySQL connection |
| Git & GitHub | Version control |
| uv | Python package management |

---

## 📁 Project Structure
hospital-analysis-project/
├── 📂 data/
│   ├── patients.csv              ← Raw patient data
│   ├── admissions.csv            ← Raw admissions data
│   └── hospital_clean_data.csv   ← Cleaned data for Power BI
├── 📂 sql/
│   └── hospital_kpi_queries.sql  ← All SQL queries
├── 📂 notebooks/
│   └── hospital_eda.ipynb        ← Python EDA notebook
├── 📂 Power BI/
│   └── hospital-dashboard.pbix   ← Power BI dashboard
├── 📂 images/
│   ├── chart1_admissions_by_dept.png
│   ├── chart2_age_distribution.png
│   ├── chart3_gender_distribution.png
│   ├── chart4_top_conditions.png
│   ├── chart5_avg_billing_dept.png
│   ├── chart6_monthly_trend.png
│   └── chart7_length_of_stay.png
├── pyproject.toml
└── README.md