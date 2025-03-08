# 🔄 FMCG Supply Chain Optimization Analysis
##      Tools used: Python | SQL | Tableau |  

## 🌐 Quick Access Links
Access the key files for this project:
- 📓 **[Jupyter Notebook](./fmcg.ipynb)**: Core data analysis and machine learning workflows.
- 📑 **[Data Dictionary](./FMCG_data_dictionary.pdf)**: Detailed column descriptions of the dataset.
- 🛠️ **[SQL QUERY](./cleaned_fmcg_data_sql_query.sql)**
- 🌐 **[Tableau Dashboard](https://public.tableau.com/views/fmcgdashboard/Dashboard3?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**.

  
## Dataset Information
- **Total Warehouses**: 25,000
- **Zones Covered**: North (41.1%), West (31.7%), South (25.4%), East (1.7%).
- **Location Types**: Predominantly Rural (91.8%) versus Urban (8.2%).

## Exploratory Data Analysis (EDA)
### Key Observations
- **Refill Requests**: Averages at 4.09 per warehouse, typically ranging from 3-5 in the last three months.
- **Transport Issues**: More prevalent in urban areas with an average of 0.81 issues per year, compared to 0.77 in rural settings.
- **Competitor Analysis**: Average presence of 3.1 competitors per market, notably affecting performance.

### Visualizations
#### Correlation Matrix 
![Correlation Matrix](images/[correlation_matrix_heatmap.png](https://github.com/Kalaimanitvr/-Supply-Chain-Optimization-for-a-FMCG-Company/blob/289b55da6640ccf85c7343bd68adaf42a2cf9088/correlation_matrix_heatmap.png))
*Highlights strong correlations, notably a 0.99 correlation between storage issues reported and product weight tonnage, pinpointing key predictors.*

#### Stockout Risk by Warehouse Capacity
![Stockout Risk by Capacity](images/stockout_risk_by_capacity.png)
*Shows higher potential stockout risks in larger capacity warehouses, with 593 instances noted at mid capacity.*

#### Stockout Risk Distribution by Location Type
![Stockout Risk by Location](images/stockout_risk_by_location_type.png)
*Urban locations show a significant risk with 1307 potential stockout instances, in contrast to 79 in rural areas.*

#### Transportation Issues Across Zones
![Transport Issues by Zone](images/stockout_risk_by_zone.png)
*Identifies the North as having the highest share of transport issues at 41.51% of total.*

#### Linear Regression Analysis
![Linear Regression Plot](images/linear_regression_plot.png)
*Demonstrates the predictive accuracy of the regression model with an R² of 97.75%, validating the model's effectiveness in forecasting warehouse stock weights.*

## Tableau Dashboard
Access the interactive Tableau dashboard for a dynamic exploration of data visualizations:
[View Dashboard](https://tableau.public/link/to/dashboard)

## Predictive Analytics
### Linear Regression Model
- **Objective**: Predict `product_wg_ton` for enhanced inventory management and logistical efficiency.
- **Key Metrics**:
  - R² Score: 97.75%
  - RMSE: 0.1496
  - Mean Absolute Error: 0.1103

### Influential Features
- **High Correlation**: Reported storage issues (0.99).
- **Moderate Impact**: Warehouse breakdowns (0.34).
- **Negative Impact**: Government certifications (-0.20).

## Recommendations
- **Inventory Management**: Concentrate on warehouses with frequent refill requests to prevent stockouts.
- **Route Optimization**: Target route optimizations in urban areas where transportation issues are frequent.
- **Infrastructure Investment**: Upgrade storage infrastructure in warehouses identified as high-impact based on the analysis.

## Conclusion
The project provides a comprehensive analytical framework and actionable insights that empower the company to optimize operations, reduce bottlenecks, and enhance overall supply chain efficiency.
