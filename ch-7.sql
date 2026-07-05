-- conditionals
USE ecom;
-- 1.
SELECT
	*,
    CASE
		WHEN unit_price <= 100 THEN 'affordable'
		WHEN unit_price <= 200 THEN 'normal'
		ELSE 'expensive (but not for u!)'
    END AS price_category
FROM 
	dim_product;

-- 2.
SELECT
	*,
    CASE
		WHEN unit_price <= 100 AND category = 'clothing' THEN 'affordable'
		WHEN unit_price <= 200 AND category = 'clothing' THEN 'normal'
        WHEN unit_price > 200 AND category = 'clothing' THEN 'expensive (but not for u!)'
		ELSE CONCAT('Not for ',category)
		
    END AS price_category
FROM 
	dim_product;

    
 

    