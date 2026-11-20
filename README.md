# E-commerce Data Warehouse

## Project Overview

This project focuses on designing and building a modern Data Warehouse for an E-commerce business. The warehouse will integrate data from multiple operational systems, transform it into an analytics-ready format, and support business intelligence, reporting, and dashboarding.

The project follows industry-standard Data Engineering practices including ETL/ELT pipelines, dimensional modeling, workflow orchestration, testing, and data visualization.

---

# Problem Statement

E-commerce companies generate large volumes of data from various sources such as:

- Customers
- Orders
- Products
- Payments
- Shipping
- Reviews

These datasets are often stored in separate operational databases, making business analysis difficult.

The goal is to centralize and transform this data into a scalable Data Warehouse that provides a single source of truth for analytics.

---

# Objectives

The primary objectives of this project are:

- Build a complete Data Warehouse from scratch
- Design an efficient dimensional data model
- Develop ETL pipelines to load data into the warehouse
- Automate workflows using Apache Airflow
- Perform data quality validation
- Create business dashboards
- Generate analytical insights for decision-making
- Follow best practices in Data Engineering

---

# Planned Architecture

```
                Source Data
                     │
        CSV Files / SQL Database
                     │
                     ▼
              Data Extraction
                     │
                     ▼
             Data Transformation
              (Python + SQL)
                     │
                     ▼
              Data Warehouse
            (PostgreSQL)
                     │
                     ▼
         Business Intelligence Layer
           (Power BI / Tableau)
```

Future enhancements will include:

- Incremental loading
- Slowly Changing Dimensions (SCD)
- Data validation tests
- Airflow scheduling
- Performance optimization

---

# Initial Tech Stack

| Category | Technology |
|----------|------------|
| Programming Language | Python |
| Database | PostgreSQL |
| SQL | PostgreSQL SQL |
| ETL | Python |
| Workflow Orchestration | Apache Airflow |
| Data Modeling | Star Schema |
| Visualization | Power BI |
| Version Control | Git |
| Repository | GitHub |
| IDE | VS Code |
| Testing | Pytest |
| Documentation | Markdown |

---

# Project Structure

```
Ecommerce-Data-Warehouse/
│
├── data/
├── sql/
├── python/
├── docs/
├── airflow/
├── dashboards/
├── tests/
├── images/
├── README.md
└── requirements.txt
```

---

# Current Status

- [x] Project Initialized
- [ ] Data Collection
- [ ] Database Design
- [ ] ETL Development
- [ ] Data Warehouse Implementation
- [ ] Airflow Pipelines
- [ ] Data Validation
- [ ] Dashboard Development
- [ ] Deployment

---

# Future Deliverables

- Data Warehouse Schema
- ETL Pipelines
- Airflow DAGs
- SQL Scripts
- Data Quality Tests
- Business Dashboards
- Documentation
- Portfolio-ready GitHub Repository

---

## Author

**Mayank Khandelwal**

B.Tech (Artificial Intelligence & Machine Learning)

Aspiring Data Engineer