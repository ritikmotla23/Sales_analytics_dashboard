-- Sales Analytics Dashboard
-- SQL Business Analysis

-- 1. Total Sales
SELECT SUM(Sales) AS total_sales
FROM superstore;

-- 2. Total Profit
SELECT SUM(Profit) AS total_profit
FROM superstore;

-- 3. Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- 4. Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

-- 5. Sales by Customer Segment
SELECT Segment, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;

-- 6. Top 10 Products
SELECT Product_Name, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;
