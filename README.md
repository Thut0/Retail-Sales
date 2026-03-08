# Retail-Sales
A collection of SQL queries demonstrating fundamental data analysis techniques on a retail sales dataset, covering basic syntax, aggregations, and data categorization.

Retail Sales Data Analysis - SQL Fundamentals
This repository contains a series of SQL queries designed to analyze a retail sales dataset. The project focuses on fundamental SQL syntax and data manipulation techniques used in data engineering and analytics.

Project Overview
The goal of this project is to extract meaningful insights from retail transaction data by answering specific business questions. The queries cover:

Basic Selection & Filtering: Extracting specific columns and filtering records based on conditions.

Aggregations: Calculating totals, averages, and counts (e.g., total revenue, average customer age).

Data Grouping: Analyzing performance across different categories and genders using GROUP BY and HAVING.

Conditional Logic: Using CASE statements to create custom categories like spending levels and age groups.

Dataset Description
The analysis is performed on the retail_sales_dataset.csv, which includes the following attributes:

Transaction ID: Unique identifier for each sale.

Date: The date of the transaction.

Customer ID: Unique identifier for the customer.

Product Category: Category of the item purchased (e.g., Beauty, Clothing, Electronics).

Quantity & Price per Unit: Details of the items sold.

Total Amount: The total value of the transaction.

Key SQL Concepts Applied
Data Retrieval: SELECT, SELECT DISTINCT

Filtering: WHERE, AND/OR, IN, BETWEEN

Sorting: ORDER BY

Aggregate Functions: COUNT(), SUM(), AVG(), MIN(), MAX()

Grouping: GROUP BY, HAVING

Conditional Logic: CASE statements

How to Use
Load the retail_sales_dataset.csv into your SQL environment (e.g., Snowflake, Databricks, or SSMS).

Execute the .sql scripts provided in this repository to see the results of the analysis.
