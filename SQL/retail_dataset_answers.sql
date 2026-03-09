SELECT TOP 10 *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--1. SELECT Statement

--Q1. Display all columns for all transactions. Expected output: All columns

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--Q2. Display only the Transaction ID, Date, and Customer ID for all records. Expected output: Transaction ID, Date, Customer ID

SELECT Transaction_ID,
Date,
Customer_ID
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--2. SELECT DISTINCT Statement

--Q3. Display all the distinct product categories in the dataset. Expected output: Product Category

SELECT DISTINCT(Product_Category)
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--Q4. Display all the distinct gender values in the dataset. Expected output: Gender

SELECT DISTINCT(Gender)
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--3. WHERE Clause

--Q5. Display all transactions where the Age is greater than 40. Expected output: All columns

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
WHERE Age > 40

--Q6. Display all transactions where the Price per Unit is between 100 and 500. Expected output: All columns

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
WHERE Price_per_Unit BETWEEN 100 AND 500

--Q7. Display all transactions where the Product Category is either 'Beauty' or 'Electronics'. Expected output: All columns

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
WHERE Product_Category IN ('Beauty' , 'Electronics')

--Q8. Display all transactions where the Product Category is not 'Clothing'. Expected output: All columns

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
WHERE Product_Category  NOT IN ('Clothing')

--Q9. Display all transactions where the Quantity is greater than or equal to 3. Expected output: All columns

SELECT *
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
WHERE Quantity >= 3

--4. Aggregate Functions

--Q10. Count the total number of transactions. Expected output: Total_Transactions

SELECT COUNT(*) AS Total_Transactions
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--Q11. Find the average Age of customers. Expected output: Average_Age

SELECT AVG(Age) AS Average_Age
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--Q12. Find the total quantity of products sold. Expected output: Total_Quantity

SELECT SUM(CAST(Quantity AS bigint)) AS Total_Quantity
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--Q13. Find the maximum Total Amount spent in a single transaction. Expected output: Max_Total_Amount

SELECT MAX(Total_Amount) AS Max_Total_Amount
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--SELECT Total_Amount
--FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
--ORDER BY Total_Amount desc

--Q14. Find the minimum Price per Unit in the dataset. Expected output: Min_Price_per_Unit

SELECT MIN(Price_per_Unit) AS Min_Price_per_Unit
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--5. GROUP BY Statement

--Q15. Find the number of transactions per Product Category. Expected output: Product Category, Transaction_Count

SELECT Product_Category,
COUNT(*) AS Transaction_Count
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
GROUP BY Product_Category

--Q16. Find the total revenue (Total Amount) per gender. Expected output: Gender, Total_Revenue

SELECT Gender,
SUM(Total_Amount) AS Total_Revenue
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
GROUP BY Gender

--Q17. Find the average Price per Unit per product category. Expected output: Product Category, Average_Price

SELECT Product_Category,
AVG(Price_per_Unit) AS Average_Price
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
GROUP BY Product_Category

--6. HAVING Clause

--Q18. Find the total revenue per product category where total revenue is greater than 10,000. Expected output: Product Category, Total_Revenue

SELECT Product_Category,
SUM(Total_Amount) AS Total_Revenue
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
GROUP BY Product_Category
HAVING SUM(Total_Amount) > 10000

--Q19. Find the average quantity per product category where the average is more than 2. Expected output: Product Category, Average_Quantity

SELECT Product_Category,
AVG(CAST(Quantity AS float)) AS Average_Quantity
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]
GROUP BY Product_Category
HAVING AVG(CAST(Quantity AS float)) > 2

--7. CASE Statement
--Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000, otherwise 'Low'. Expected output: Transaction ID, Total Amount, Spending_Level

SELECT Transaction_ID , Total_Amount,
CASE
	WHEN Total_Amount > 1000 THEN 'High'
	ELSE 'Low'
END AS Spending_Level
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]

--Q21. Display a new column called Age_Group that labels customers as:
--•
--'Youth' if Age < 30
--•
--'Adult' if Age is between 30 and 59
--•
--'Senior' if Age >= 60 Expected output: Customer ID, Age, Age_Group

SELECT Customer_ID,
Age,
CASE
	WHEN Age < 30 THEN 'Youth'
	WHEN Age Between 30 AND 59 THEN 'Adult'
	ELSE 'Senior'
END AS Age_Group
FROM retail_sales.dbo.[1772863888723_retail_sales_dataset]