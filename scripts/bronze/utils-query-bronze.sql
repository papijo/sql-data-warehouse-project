-- SELECT TOP 10 * FROM bronze.crm_prd_info;
-- SELECT TOP 10 * FROM bronze.crm_sales_details;
-- SELECT TOP 10 * FROM bronze.erp_cust_az12;
-- SELECT TOP 10 * FROM bronze.crm_cust_info;

-- SELECT TOP 10 * FROM bronze.erp_loc_a101;
-- SELECT TOP 10 * FROM bronze.erp_px_cat_g1v2;


-- Check for Duplicates in bronze.crm_cust_info based on cst_id
SELECT 
cst_id, 
COUNT(*) AS 'Count'
FROM bronze.crm_cust_info 
GROUP BY cst_id 
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for unwanted spaces
SELECT cst_key
FROM bronze.crm_cust_info
WHERE cst_key != TRIM(cst_key)

-- Data Standardization & Consistency

SELECT DISTINCT cst_gndr 
FROM bronze.crm_cust_info;