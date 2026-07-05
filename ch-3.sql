-- FIRST SELECT

SELECT * FROM dim_customer;

SELECT 
	customer_id,
    email
FROM 
	dim_customer
LIMIT 20;
    
-- WHERE CONDITION
-- 1
SELECT 
	*
FROM 
	dim_customer
WHERE 
	(gender = 'F');
    
-- 2 (AND / OR)
SELECT 
	*
FROM 
	dim_customer
WHERE 
	(gender = 'F') AND ((country ='France') OR  (join_date > '2022-01-01'));

-- LIKE 
-- 1
SELECT 
	*
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T%';
-- 2 
SELECT 
	*
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T%y';
-- 3
SELECT 
	*
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T__f%y';

-- SORTING
-- ascending order 
-- default is also in ascending order . 
SELECT 
	*
FROM
	dim_product
ORDER BY 
	unit_price ASC;
    
-- descending order 
SELECT 
	*
FROM
	dim_product
ORDER BY 
	unit_price DESC
LIMIT 3;

-- ALIAS
SELECT 
	product_key,
    product_id,
    product_name AS 'product name',
    category
FROM 
	dim_product;
    

-- AVERAGE
SELECT * FROM dim_product;

-- 1
SELECT 
	category,
    AVG(unit_price) AS 'average price',
    SUM(unit_price) AS 'total price'
FROM 
	dim_product
GROUP BY
	category;

-- 2
SELECT 
	category,
    AVG(unit_price) AS average_price,
    SUM(unit_price) AS 'total price'
FROM 
	dim_product 
GROUP BY
	category
HAVING 
	average_price > 500
    

