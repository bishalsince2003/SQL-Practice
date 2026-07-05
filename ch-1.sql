CREATE DATABASE sales;

-- Creating new table
CREATE TABLE stores
(
	store_id INT,
    store_name VARCHAR(200)
);

-- Insert some records 
INSERT INTO stores
VALUES
(1,"store_xyz"),
(2,"store_abc");

-- add new row to the table and put value 3 in one column named store_id
INSERT INTO stores(store_id)
VALUES
(3);

-- print the table stores
SELECT * 
FROM stores;

-- Creating new table which has unique values 
CREATE TABLE stores_new
(
	store_id INT UNIQUE,
    store_name VARCHAR(200) NOT NULL
);
-- Inserting new values as tuples
INSERT INTO stores_new
VALUES
(3,"store_xyz");
-- printing the table
SELECT * 
FROM stores_new;

-- Alter command
ALTER TABLE stores_new
RENAME COLUMN stores_city TO stores_location;


