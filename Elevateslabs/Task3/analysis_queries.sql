SELECT * FROM customers LIMIT 5;

SELECT c.Country, COUNT(o.OrderID) AS Orders
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Country;

CREATE VIEW top_customers AS
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC;

SELECT * FROM Orders
ORDER BY OrderDate DESC
LIMIT 10;

SELECT o.OrderID, c.Name, o.TotalAmount
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT c.Country, SUM(o.TotalAmount) AS TotalSales
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country
ORDER BY TotalSales DESC;

SELECT Name FROM Customers
WHERE CustomerID IN (
    SELECT o.CustomerID FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    WHERE od.ProductID = (
        SELECT ProductID FROM Products ORDER BY Price DESC LIMIT 1
    )
);

CREATE VIEW MonthlyRevenue AS
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS Revenue
FROM Orders
GROUP BY Month;

