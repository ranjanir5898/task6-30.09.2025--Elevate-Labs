-- 1. Create table
CREATE TABLE orders (
    "Order Id" INT,
    "Order Date" DATE,
    "Ship Mode" VARCHAR(50),
    "Segment" VARCHAR(50),
    "Country" VARCHAR(100),
    "City" VARCHAR(100),
    "State" VARCHAR(100),
    "Postal Code" INT,
    "Region" VARCHAR(50),
    "Category" VARCHAR(50),
    "Sub Category" VARCHAR(50),
    "Product Id" VARCHAR(50),
    "cost price" INT,
    "List Price" INT,
    "Quantity" INT,
    "Discount Percent" INT
);

--2.copy table
COPY orders FROM 'E:\Elevate Labs Internship\Day 6 task(30.09.2025)\order.csv' 
DELIMITER ',' CSV HEADER;

-- 3.Monthly Revenue & Order Volume
SELECT
    EXTRACT(YEAR FROM "Order Date") AS year,
    EXTRACT(MONTH FROM "Order Date") AS month,
    SUM(("List Price" * "Quantity") * (1 - "Discount Percent" / 100.0)) AS revenue,
    COUNT(DISTINCT "Order Id") AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;

-- 4.Limit to specific time period (e.g., year 2023)
SELECT
    EXTRACT(YEAR FROM "Order Date") AS year,
    EXTRACT(MONTH FROM "Order Date") AS month,
    TO_CHAR(SUM(("List Price" * "Quantity") * (1 - "Discount Percent" / 100.0))::numeric, 'FM999,999,999,990.00') AS revenue,
    COUNT(DISTINCT "Order Id") AS order_volume
FROM orders
WHERE EXTRACT(YEAR FROM "Order Date") = 2023
GROUP BY year, month
ORDER BY year, month;