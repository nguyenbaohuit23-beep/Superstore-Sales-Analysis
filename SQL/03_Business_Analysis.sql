/*=========================================================
                BUSINESS ANALYSIS
=========================================================*/
-----DOANH THU THEO NĂM-----
SELECT YEAR(O.Order_Date) AS YEAR, SUM(O.Sales) AS REVENUE
FROM dbo.Orders O
GROUP BY YEAR(O.Order_Date)


-----DOANH THU THEO THÁNG-----
SELECT YEAR(O.Order_Date) AS YEAR, MONTH(O.Order_Date) AS MONTH, SUM(O.Sales) AS REVENUE
FROM dbo.Orders O
GROUP BY YEAR(O.Order_Date), MONTH(O.Order_Date)
ORDER BY YEAR, MONTH


-----DOANH THU THEO KHU VỰC-----
SELECT O.Region, SUM(O.Sales) AS REVENUE
FROM dbo.Orders O
GROUP BY O.Region
ORDER BY REVENUE DESC


-----DOANH THU VÀ LỢI NHUẬN THEO DANH MỤC-----
SELECT O.Category, SUM(O.Sales) AS REVENUE, SUM(O.Profit) AS PROFIT
FROM dbo.Orders O
GROUP BY O.Category
ORDER BY REVENUE DESC


-----TOP 10 KHÁCH HÀNG THEO DOANH THU-----
SELECT TOP 10 O.Customer_ID, O.Customer_Name, SUM(Sales) AS REVENUE
FROM dbo.Orders O
GROUP BY O.Customer_ID, O.Customer_Name
ORDER BY REVENUE DESC


-----TOP 10 SẢN PHẨM BÁN CHẠY-----
SELECT TOP 10 O.Product_ID, O.Product_Name, SUM(O.Sales) AS REVENUE
FROM dbo.Orders O
GROUP BY O.Product_ID, O.Product_Name
ORDER BY REVENUE DESC


-----NHỮNG SẢN PHẨM LỖ NHIỀU NHẤT-----
SELECT O.Product_ID, O.Product_Name, SUM(O.Profit) AS PROFIT
FROM DBO.Orders O
GROUP BY O.Product_ID, O.Product_Name
ORDER BY PROFIT 


-----BIÊN LỢI NHUẬN THEO DANH MỤC-----
SELECT O.Category, SUM(O.Sales) AS REVENUE, SUM(O.Profit) AS PROFIT, ROUND(SUM(O.Profit)*100.0/SUM(O.Sales),2) AS PROFIT_MARGIN
FROM dbo.Orders O
GROUP BY O.Category
ORDER BY PROFIT_MARGIN DESC


-----KHÁCH HÀNG MUA NHIỀU ĐƠN NHẤT-----
SELECT O.Customer_ID, O.Customer_Name, COUNT(DISTINCT Order_ID) AS TOTAL_ORDERS
FROM dbo.Orders O
GROUP BY O.Customer_ID, O.Customer_Name
ORDER BY TOTAL_ORDERS DESC


    