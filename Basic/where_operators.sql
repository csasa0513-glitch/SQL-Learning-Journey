/*
================================================================
SQL Basics: WHERE Clauses & Logical Operators
Database: Chinook (PostgreSQL)
================================================================
*/

-- Key Takeaways:
-- 1. Strings: Use single quotes (e.g., 'Brazil').
-- 2. Numbers: No commas or dots for thousands (e.g., 600000).
-- 3. NULLs: Use "IS NULL" or "IS NOT NULL", not "=".
-- 4. Logic: Use "AND" / "OR" to combine conditions.
-- 5. Syntax: PostgreSQL columns are typically lowercase (e.g., unitprice).

-- Q1: Exact Match & AND Logic
-- Find customers in Brazil AND city of São Paulo.
SELECT firstname, lastname, country, city
FROM customer
WHERE country = 'Brazil' AND city = 'São Paulo';

-- Q2: Range Filtering (Numeric)
-- Find tracks longer than 600,000 milliseconds. Becareful of number!
SELECT name, milliseconds
FROM track
WHERE milliseconds > 600000;

-- Q3: Handling Missing Values (IS NOT NULL)
-- Find customers who provided their state information. We dont need  = IS NOT NULL!!!
SELECT firstname, lastname, state
FROM customer
WHERE state IS NOT NULL;

-- Q4: Date Range & Exclusion (BETWEEN & <>)
-- Find invoices from 2024 with a total not equal to 0.99.
SELECT invoicedate, total
FROM invoice
WHERE invoicedate BETWEEN '2024-01-01' AND '2024-12-31'
  AND total <> 0.99;

-- Q5: Combined Logic (BETWEEN & OR)
-- Find tracks with unitprice 1-10 OR composed by 'AC/DC'.
SELECT name, unitprice, composer
FROM track
WHERE unitprice BETWEEN 1 AND 10
   OR composer = 'AC/DC';
