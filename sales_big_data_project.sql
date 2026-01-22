create DATABASE salesdb;
USE salesdb;

CREATE TABLE sales_big_data_project (
    OrderID INT,
    OrderDate DATE,
    Product VARCHAR(100),
    Category VARCHAR(100),
    Region VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalSales DECIMAL(12,2),
    Month VARCHAR(20)
);

SELECT COUNT(*) FROM sales_big_data_project;
SELECT * FROM sales_big_data_project LIMIT 10;

SELECT Month,
       SUM(TotalSales) AS MonthlyRevenue
FROM sales_big_data_project
GROUP BY Month
ORDER BY Month;

SELECT Product,
       SUM(TotalSales) AS Revenue
FROM sales_big_data_project
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 10;

SELECT Region,
       SUM(TotalSales) AS Revenue
FROM sales_big_data_project
GROUP BY Region;

SELECT Category,
       SUM(TotalSales) AS Revenue
FROM sales_big_data_project
GROUP BY Category;




