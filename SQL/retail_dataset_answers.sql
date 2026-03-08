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