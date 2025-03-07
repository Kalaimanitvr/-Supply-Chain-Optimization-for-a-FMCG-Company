CREATE DATABASE fmcg_data;
use fmcg_data;
select* from cleaned_fmcg_data;
-- Query 1: Potential stockout risk
-- This SQL query identifies warehouses at risk of stockouts by comparing their refill requests against the average across all warehouses. 
-- It flags warehouses with higher than average requests as potential stockout risks and recommends reviewing their inventory thresholds. 
-- The results are sorted to show the highest risks first.
CREATE VIEW Potential_stockout_risk AS
SELECT Ware_house_ID, WH_Manager_ID, Location_type, zone, WH_capacity_size, num_refill_req_l3m,
CASE WHEN num_refill_req_l3m > (SELECT AVG(num_refill_req_l3m) FROM cleaned_fmcg_data) THEN 'Potential stockout risk'
ELSE 'Normal inventory level'
END AS Stockout_Risk, 'Consider reviewing inventory thresholds' AS Recommendation
FROM cleaned_fmcg_data 
ORDER BY num_refill_req_l3m DESC;
SELECT * FROM Potential_stockout_risk;
-- Query 2: Impact of Transport Issues on Inventory with Logistical Recommendations
-- This query checks for transport issues and suggests logistical adjustments. 
-- It also utilizes a CASE statement to provide conditional recommendations.
CREATE VIEW Transport_issues AS
SELECT Ware_house_ID, Location_type, zone, transport_issue_l1y, num_refill_req_l3m,
CASE WHEN transport_issue_l1y > 0 THEN 'Review and optimize transport routes'
ELSE 'Transport stable'
END AS Recommendation
FROM cleaned_fmcg_data
WHERE num_refill_req_l3m > (SELECT AVG(num_refill_req_l3m) FROM cleaned_fmcg_data)
ORDER BY transport_issue_l1y DESC;
SELECT * FROM Transport_issues;


