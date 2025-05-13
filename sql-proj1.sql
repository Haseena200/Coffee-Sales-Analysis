CREATE DATABASE IF NOT EXISTS Coffee_Sales;
USE Coffee_Sales;

CREATE TABLE coffee_sales (
    Rowid INT,
    Area_Code INT,
    Cogs INT,
    DifferenceBetweenActualandTargetProfit INT,
    Date DATE,
    Inventory INT,
    Margin INT,
    Market_size VARCHAR(50),
    Market VARCHAR(50),
    Marketing VARCHAR(50),
    Product VARCHAR(50),
    Profit INT,
    Sales INT,
    State VARCHAR(50),
    Target_cogs INT,
    Target_margin INT,
    Target_profit INT,
    Target_sales INT,
    Total_expenses INT,
    Type VARCHAR(50)
);

INSERT INTO coffee_sales
(Rowid, Area_Code, Cogs, DifferenceBetweenActualandTargetProfit, Date, Inventory, Margin, Market_size, Market, Marketing, Product, Profit, Sales, State, Target_cogs, Target_margin, Target_profit, Target_sales, Total_expenses, Type)
VALUES
(0, 303, 51, -35, '2012-10-01', 503, 71, 'Major Market', 'Central Asia', 46, 'Lemon', -5, 122, 'Colorado', 30, 60, 30, 90, 76, 'Decaf');

SELECT * FROM coffee_sales
LIMIT 10;

DESCRIBE coffee_sales;

SELECT 
    SUM(Sales * Cogs) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM 
    coffee_sales;
    
SELECT 
    Product, 
    SUM(Sales) AS Total_Sales
FROM 
    coffee_sales
GROUP BY 
    Product
ORDER BY 
    Total_Sales DESC;
    
SELECT 
    State, 
    SUM(Sales) AS Total_Sales
FROM 
    coffee_sales
GROUP BY 
    State
ORDER BY 
    Total_Sales DESC;
    
SELECT 
    Product,
    SUM(Profit) AS Actual_Profit,
    SUM(Target_profit) AS Target_Profit,
    (SUM(Profit) - SUM(Target_profit)) AS Profit_Difference
FROM 
    coffee_sales
GROUP BY 
    Product
ORDER BY 
    Profit_Difference DESC;
SELECT 
    SUM(Marketing) AS Total_Marketing_Expenses
FROM 
    coffee_sales;
    
SELECT 
    Type,
    SUM(Sales) AS Total_Sales
FROM 
    coffee_sales
GROUP BY 
    Type;
    
SELECT 
    State, 
    SUM(Profit) AS Total_Profit
FROM 
    coffee_sales
GROUP BY 
    State
ORDER BY 
    Total_Profit DESC
LIMIT 5;

SELECT 
    Market, 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM 
    coffee_sales
GROUP BY 
    Market
ORDER BY 
    Total_Profit DESC;
    
SELECT 
    State, 
    SUM(Inventory) AS Total_Inventory,
    SUM(Sales) AS Total_Sales
FROM 
    coffee_sales
GROUP BY 
    State
ORDER BY 
    Total_Inventory DESC, Total_Sales ASC;

