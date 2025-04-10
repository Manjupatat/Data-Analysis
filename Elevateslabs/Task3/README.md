# 🛒 Task 3: SQL for Data Analysis – Ecommerce Dataset

## 🧾 Objective
Use SQL to extract insights and perform analysis on a simplified Ecommerce database. This task involves writing queries to explore customer behavior, sales trends, and product performance.

---

## 🧰 Tools Used
- MySQL (tested on MySQL Shell & MySQL Workbench)
- SQL Language (DDL + DML + Queries)

---

## 📂 Files
```shell

Task3/
│
├── ecommerce_schema.sql #Contains all `CREATE TABLE` and `INSERT INTO` statements.
├── analysis_queries.sql #Contains all SELECT queries for analysis.
├── output_screenshots/ #Folder with screenshots of query results.
└── README.md

```


##  Database Structure

### Tables:
1. **Customers**  
   - CustomerID, Name, Email, Country

2. **Products**  
   - ProductID, Name, Category, Price, Stock

3. **Orders**  
   - OrderID, CustomerID, OrderDate, TotalAmount

4. **OrderDetails**  
   - OrderDetailID, OrderID, ProductID, Quantity, Price

---

## Sample Queries Used

- Get top 5 customers by total spending:
```sql
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 5;
```
