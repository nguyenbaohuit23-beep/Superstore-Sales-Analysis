
/*=========================================
               KIỂM TRA DỮ LIỆU
=========================================*/
----có bao nhiêu dòng dữ liệu----
SELECT COUNT(*) AS TOTALROWS
FROM dbo.Orders

----xem 10 dòng đầu-----
SELECT TOP 10*
FROM dbo.Orders

----kiểm tra null-----
SELECT
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS OrderID_Null,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS CustomerID_Null,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Sales_Null,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS Profit_Null
FROM Orders

-----kiểm tra dữ liệu trùng----
SELECT O.Row_ID, COUNT(*)
FROM dbo.Orders O
GROUP BY O.Row_ID
HAVING COUNT(*) >1


