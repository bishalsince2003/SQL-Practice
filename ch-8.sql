-- WINDOWS FUNCTIONS

SELECT
	category,
    AVG(unit_price)
FROM
	dim_product
GROUP BY 
	category
HAVING 
	AVG(unit_price)>500
ORDER BY 
	AVG(unit_price) ASC;
    
-- 1)
SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date)
FROM 
	dim_product;
    
-- 2)
SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM 
	dim_product;
    
-- 3)
SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM 
	dim_product;
    
-- RANKING 

-- E.G., 
-- UNIT PRICE   90  90  100
-- ROW_NUM()     1   2   3
-- RANK ()       1   1   3
-- DENSE RANK()  1   1   2

-- 1)
SELECT 
	unit_price,
    ROW_NUMBER() OVER (ORDER BY unit_price) AS row_numbers,
    RANK() OVER (ORDER BY unit_price) AS ranks,
    DENSE_RANK() OVER (ORDER BY unit_price) AS dense_ranks
FROM 
	dim_product;
    
-- 2)
SELECT 
	unit_price,
    category,
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY unit_price) AS row_numbers,
    RANK() OVER (PARTITION BY category ORDER BY unit_price) AS ranks,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY unit_price) AS dense_ranks
FROM 
	dim_product;
     

