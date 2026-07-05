-- JOINS ...

-- CREATING TABLES order and customers
CREATE TABLE orders
(
	o_id INT,
    cust_id INT,
    price int
);

INSERT INTO orders
VALUES
(1,101,1000),
(2,201,1100),
(3,501,1200);

CREATE TABLE customers
(
	id INT,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO customers
VALUES
(101,'love','aa'),
(201,'ansh','bb'),
(301,'lamba','cc');

-- now , implementing joins 

-- INNER JOIN
SELECT 
	*
FROM 
	orders o
INNER JOIN
	customers c
    ON 
		o.cust_id = c.id;

-- LEFT JOIN 
SELECT 
	*
FROM 
	orders o
LEFT JOIN
	customers c
    ON 
		o.cust_id = c.id;
        
-- RIGHT JOIN 
SELECT 
	*
FROM 
	orders o
RIGHT JOIN
	customers c
    ON 
		o.cust_id = c.id;
        
-- FULL JOIN (not supported)
SELECT 
	*
FROM 
	orders o
FULL JOIN
	customers c
    ON 
		o.cust_id = c.id;
        
-- UNIONS
-- LEFT JOIN 
SELECT 
	*
FROM 
	orders o
LEFT JOIN
	customers c
    ON 
		o.cust_id = c.id

UNION
        
-- RIGHT JOIN 
SELECT 
	*
FROM 
	orders o
RIGHT JOIN
	customers c
    ON 
		o.cust_id = c.id;
