-- Creating Database for SQL Analysis
CREATE DATABASE restaurant_rankings;
-- Checking to see if CSV file has been recorded correctly
SELECT * FROM restaurant_rankings.top250;

-- Altertop250Atop250Aing table name for readability
ALTER TABLE restaurant_rankings.top250
RENAME TO top250A;

-- Checking to make sure new alias works
SELECT * 
FROM top250A;

-- Dropping Columns that won't be needed in analysis
ALTER TABLE top250A
DROP COLUMN Content;

ALTER TABLE top250A
DROP COLUMN Headquarters;

-- Starting Analysis now that tables are cleaned
SELECT * 
FROM top250A;


SELECT AVG(Sales)
FROM top250A
WHERE Sales > 1;

-- Average Sales = 1207

SELECT COUNT(Sales)
FROM top250A;

-- Count = 246

SELECT MIN(Sales)
FROM top250A;

-- Min = 126 units

SELECT MAX(Sales)
FROM top250A;

-- Max = 40412 units                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

-- Retrieving and ordering results that had positive growth 

SELECT * from top250A WHERE YOY_Sales > .01
ORDER BY YOY_Sales DESC;

-- Retrieving  anbd ordering results that had negative growth 

SELECT * from top250A WHERE YOY_Sales < .01
ORDER BY YOY_Sales DESC;

-- Selecting top results to see if there's disparity between results

SELECT * FROM  top250a WHERE YOY_Sales > .01
ORDER BY YOY_Sales DESC
LIMIT 10;

SELECT * FROM  top250a WHERE YOY_Sales < .01
ORDER BY YOY_Sales DESC
LIMIT 10;

-- Sale growth ranges from -18.8% to +39.5%
