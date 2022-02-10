-- Creating Database for SQL Analysis
CREATE DATABASE restaurant_rankings;
-- Checking to see if CSV file has been recorded correctly
SELECT * FROM restaurant_rankings.top250;

-- Altering table name for readability
ALTER TABLE restaurant_rankings.top250
RENAME TO top250A;

-- Checking to make sure new alias works
SELECT * FROM top250A;

-- Dropping Columns that won't be needed in analysis
ALTER TABLE top250A
DROP COLUMN Content;

ALTER TABLE top250A
DROP COLUMN Headquarters;

SELECT * FROM top250A;

-- Analytic Querying begins
SELECT * FROM Top250A;

SELECT Restaurant, Sales FROM Top250A
WHERE Sales > 5000





