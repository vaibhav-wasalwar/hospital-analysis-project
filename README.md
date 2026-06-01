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
---

## 📊 Dataset

- **Source:** Synthetically generated realistic Indian hospital data
- **Patients:** 1,000 records
- **Admissions:** 1,000 records
- **Time Period:** January 2023 – December 2024
- **Cities:** Nagpur, Mumbai, Pune, Delhi, Hyderabad, Chennai, Bangalore, Kolkata
- **Departments:** Cardiology, Orthopedics, Neurology, Pediatrics,
General Medicine, Oncology, Emergency, Gynecology

---

## 🗄️ Phase 2: SQL Database

### Database Schema
```sql
hospital_db
├── patients     (patient_id, name, age, gender, blood_type, phone, city)
└── admissions   (admission_id, patient_id, admission_date, discharge_date,
                  department, doctor_name, room_number, medical_condition,
                  billing_amount, insurance_covered, admission_type)
```

### Key KPIs Tracked
| KPI | Description |
|-----|-------------|
| Total Patients | Overall patient count |
| Avg Length of Stay | Average days per department |
| Bed Occupancy Rate | Department wise patient load |
| Avg Billing Amount | Treatment cost analysis |
| Readmission Rate | Patient return patterns |
| Gender Distribution | Male vs Female ratio |

---

## 🐍 Phase 3: Python EDA

### Charts Generated
| Chart | Insight |
|-------|---------|
| Admissions by Department | General Medicine is busiest |
| Age Distribution | Most patients aged 20-60 |
| Gender Distribution | Nearly equal male/female split |
| Top Medical Conditions | Diabetes most common |
| Avg Billing by Department | Gynecology highest billing |
| Monthly Admission Trend | Consistent admissions throughout year |
| Length of Stay by Department | Pediatrics longest stay |

### Key Findings
- 🏥 **Busiest Department:** General Medicine (200+ patients)
- 💰 **Highest Billing:** Gynecology (₹80,000+ avg)
- 🛏️ **Longest Stay:** Pediatrics (~10 days avg)
- 👥 **Gender Split:** 49.7% Male | 50.3% Female
- 📅 **Peak Admissions:** Consistent throughout 2023-2024

---

## 📊 Phase 5: Power BI Dashboard

### 5-Page Interactive Dashboard

| Page | Content |
|------|---------|
| 🏠 Overview | KPI cards, admissions by dept, admission types |
| 👥 Demographics | Gender, city, blood type, age distribution |
| 🏨 Department Analysis | Patient load, length of stay, top doctors |
| 💰 Financial Analysis | Revenue, billing by condition and department |
| 📈 Trends | Monthly trends, yearly comparison |

### Dashboard Features
- ✅ Green healthcare color theme
- ✅ Navigation buttons between pages
- ✅ Interactive slicers and filters
- ✅ KPI cards with business metrics
- ✅ 15+ interactive visualizations

---

## ⚙️ Setup Instructions

### Prerequisites
- Python 3.12
- MySQL 8.0
- Power BI Desktop
- uv package manager

### Installation

```bash
# Clone the repository
git clone https://github.com/vaibhav-wasalwar/hospital-analysis-project.git

# Navigate to project folder
cd hospital-analysis-project

# Create virtual environment
uv venv --python 3.12

# Activate virtual environment
.venv\Scripts\activate

# Install dependencies
uv sync
```

### Database Setup
```sql
-- Run in MySQL Workbench
CREATE DATABASE hospital_db;
USE hospital_db;
-- Then run sql/hospital_kpi_queries.sql
```

### Run Notebook
```bash
uv run jupyter notebook notebooks/hospital_eda.ipynb
```

---

## 📈 Results & Business Insights

1. **General Medicine** handles 20%+ of all admissions — needs most resources
2. **Gynecology** has highest average billing at ₹80,000+
3. **Pediatrics** has longest average stay at ~10 days
4. **Referral admissions** are highest at 37.5% — strong referral network
5. **Insurance covers** approximately 54% of total billing (40.78M of 74.96M)
6. Patient admissions are **evenly distributed** across 2023-2024

---

## 👨‍💻 Author

**Vaibhav Wasalwar**
- GitHub: [@vaibhav-wasalwar](https://github.com/vaibhav-wasalwar)
- Email: vpwasalwar@gmail.com

---

## 📄 License

This project is open source and available under the
[MIT License](LICENSE).