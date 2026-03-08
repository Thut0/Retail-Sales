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