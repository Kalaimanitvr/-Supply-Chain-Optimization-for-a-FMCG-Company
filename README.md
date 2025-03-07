# 🔄 FMCG Supply Chain Optimization Analysis
##      Tools used: Python | SQL | Tableau |  

## 📊 Comprehensive Overview

This repository provides a detailed analytical framework and predictive modeling aimed at optimizing supply chain operations for a leading FMCG company. The focus is on instant noodles, addressing warehouse logistics, refill requests, transportation bottlenecks, competitor impact, and other operational factors essential for strategic decision-making.

## 🗃️ Detailed Dataset Information

**Dataset Scope:**
- **Total Warehouses:** 25,000
- **Zones Covered:** North (41.1%), West (31.7%), South (25.4%), East (1.7%)
- **Location Types:** Rural (91.8%), Urban (8.2%)


### Data Preparation and Treatment:
- Dropped `wh_est_year` due to 47.5% missing values.
- Median imputation for skewed numeric columns.
- Mode imputation for categorical variables.
- Outliers managed using Interquartile Range (IQR) and Winsorization.

## 🔍 Exploratory Data Analysis (EDA)

### Key Observations:
- **Refill Requests:** Average of 4.09 per warehouse, mainly between 3-5 in the last 3 months.
- **Transport Issues:** Higher issues in urban areas (0.81 per year) than in rural (0.77).
- **Competitor Analysis:** Average presence of 3.1 competitors per market, affecting performance.
- **Workforce Analysis:** Average of 29 employees per warehouse, variability affects productivity.

## 🤖 Machine Learning and Predictive Analytics

### Linear Regression Model:
- **Objective:** Predict `product_wg_ton` to enhance inventory management and logistical efficiency.
- **Performance:**
  - **R² Score:** 97.75%
  - **RMSE:** 0.1496
  - **Mean Absolute Error:** 0.1103
- **Influential Features:**
  - `storage_issue_reported_l3m`: Very high correlation (0.99)
  - `wh_breakdown_l3m`: Moderate correlation (0.34)
  - Negative correlation with government certifications (-0.20)

## 📈 Advanced Visualization Techniques

- **Heatmaps:** Reveal feature correlations and multicollinearity.
- **Boxplots:** Detect outliers.
- **Scatterplots:** Assess model predictions versus actuals.

## 💡 Actionable Recommendations

- **Inventory Management:** Review warehouses with high refill frequency to prevent stockouts.
- **Route Optimization:** Implement optimizations, especially in urban locations with transportation issues.
- **Infrastructure Investment:** Upgrade storage infrastructure in high-impact warehouses.

## 🛠️ Project Reproducibility
## 🏁 Conclusion
- This analysis offers strategic insights that empower the company to optimize operations, reduce bottlenecks, and enhance overall supply chain efficiency.
  For a full analysis, visuals, and insights, refer to the attached Python notebook and Tableau dashboards provided in this repository.
