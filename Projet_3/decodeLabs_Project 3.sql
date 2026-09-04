SELECT * FROM decodelabs.orders;

-- Orders with blank CouponCode 
SELECT * 
FROM decodelabs.orders 
WHERE CouponCode =''; 

-- Count orders with Blank CouponCode 
SELECT COUNT(*)
FROM decodelabs.orders
WHERE CouponCode = '';

-- Replace blank cells by "NO COUPON"
UPDATE Orders
SET CouponCode = 'NO COUPON'
WHERE CouponCode IS NULL OR CouponCode = '';

-- TotalRevenue per Product
SELECT Product , SUM(TotalPrice) AS TotalRevenue 
FROM orders 
GROUP BY Product ;   

-- Average Revenue 

-- Total and Average of Revenue 
SELECT SUM(TotalPrice) AS TotalRevenue, SUM(UnitPrice) AS UnitPrice, 
AVG(TotalPrice) AS avg_total , AVG(UnitPrice) AS avg_unit 
FROM orders ;

-- View Cancelled orders 

SELECT COUNT(*) AS nb_orders
FROM orders
WHERE OrderStatus = 'Cancelled';


-- High-value orders
SELECT ORDERID, CustomerID, TotalPrice
FROM Orders
WHERE TotalPrice > 3330.41;

-- Orders per product 

SELECT Product, COUNT(*) AS nb_orders
FROM orders 
GROUP BY Product ;

-- Order per OrderStatus 
SELECT OrderStatus, COUNT(*) AS nb_orders
FROM orders 
GROUP BY OrderStatus 
ORDER BY nb_orders DESC;

-- Top customers by spend 
SELECT CustomerID,
       COUNT(*) AS OrderCount,
       SUM(TotalPrice) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 5;

-- Orders Per CouponCode 
SELECT  CouponCode , COUNT(*) AS nb_orders
FROM orders 
GROUP BY CouponCode  
ORDER BY nb_orders DESC;

-- TOP 5 Product per Revenue 
SELECT Product , SUM(TotalPrice) AS TotalRevenue 
FROM orders 
GROUP BY Product
ORDER BY 2 DESC
LIMIT 5 ;  

-- ORDERS BETWEEN 2023 AND 2025
SELECT YEAR(Date) , COUNT(ORDERID)
FROM orders 
WHERE YEAR(Date) BETWEEN 2023 AND 2025
GROUP BY Year(Date) ;  

-- QUANTITY PER PRODUCT 
SELECT Product, SUM(Quantity)
FROM orders 
GROUP BY Product
ORDER BY 2 DESC;  

-- ORDERS PER PAYMENTMETHOD 
SELECT PaymentMethod, COUNT(ORDERID) AS nb_orders
FROM orders 
GROUP BY PaymentMethod
ORDER BY 2 DESC;  

SELECT Product, SUM(TotalPrice) AS TotalRevenue, SUM(UnitPrice) AS s_UnitPrice, 
AVG(TotalPrice) AS avg_total , AVG(UnitPrice) AS avg_unit 
FROM orders 
GROUP BY Product
ORDER BY 2 DESC
LIMIT 5;

SELECT Product, COUNT(*) AS nb_orders
FROM orders
WHERE OrderStatus = 'Cancelled'
GROUP BY Product 
ORDER BY 2 DESC;

-- YEARLY SALES TREND

SELECT YEAR(Date),
 SUM(TotalPrice)
FROM orders 
GROUP BY  YEAR(Date)
ORDER BY 2 DESC ;

-- MONTHLY SALES TREND 
SELECT YEAR(Date),
MONTH(Date), SUM(TotalPrice)
FROM orders 
GROUP BY  YEAR(Date),
MONTH(Date) 
ORDER BY 1 DESC ;

-- Month with highest sales 
SELECT DATE_FORMAT( Date, '%Y-%m') AS Month,
SUM(TotalPrice) AS TotalRevenue 
FROM orders
GROUP BY DATE_FORMAT( Date, '%Y-%m')
ORDER BY 1 ASC ;







