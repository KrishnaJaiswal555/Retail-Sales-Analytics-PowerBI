SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM sales;

SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM sales;

SELECT SUM(Quantity) AS Total_Quantity
FROM sales;

SELECT ROUND(AVG(Discount),2) AS Average_Discount
FROM sales;

SELECT Region,ROUND(SUM(Sales),2) AS Sales
FROM sales
GROUP BY Region
ORDER BY Sales DESC;

SELECT Region,ROUND(SUM(Profit),2) AS Profit
FROM sales
GROUP BY Region
ORDER BY Profit DESC;

SELECT Category,ROUND(SUM(Sales),2) AS Sales
FROM sales
GROUP BY Category
ORDER BY Sales DESC;

SELECT Category,ROUND(SUM(Profit),2) AS Profit
FROM sales
GROUP BY Category
ORDER BY Profit DESC;

SELECT State,ROUND(SUM(Sales),2) AS Sales
FROM sales
GROUP BY State
ORDER BY Sales DESC
LIMIT 10;

SELECT City,ROUND(SUM(Sales),2) AS Sales
FROM sales
GROUP BY City
ORDER BY Sales DESC
LIMIT 10;

SELECT Sub_Category,ROUND(SUM(Profit),2) AS Profit
FROM sales
GROUP BY Sub_Category
ORDER BY Profit DESC;

SELECT Sub_Category,ROUND(SUM(Profit),2) AS Profit
FROM sales
GROUP BY Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Profit;

SELECT Segment,ROUND(SUM(Sales),2) AS Sales
FROM sales
GROUP BY Segment
ORDER BY Sales DESC;

SELECT Ship_Mode,ROUND(SUM(Profit),2) AS Profit
FROM sales
GROUP BY Ship_Mode
ORDER BY Profit DESC;

SELECT Sub_Category,SUM(Quantity) AS Quantity_Sold
FROM sales
GROUP BY Sub_Category
ORDER BY Quantity_Sold DESC
LIMIT 5;