/*=========================================
			KHÁM PHÁ DỮ LIỆU
=========================================*/

-----CÓ BAO NHIÊU ĐƠN HÀNG-----
SELECT COUNT(DISTINCT O.Order_ID) AS TOTALORDERS
FROM dbo.Orders O

---CÓ BAO NHIÊU KHÁCH HÀNG----
SELECT COUNT(DISTINCT O.Customer_ID) AS TOTALCUSTOMER
FROM dbo.Orders O

-----TỔNG DOANH THU----
SELECT SUM(O.Sales) AS REVENUE
FROM dbo.Orders O

-----TỔNG LỢI NHUẬN-----
SELECT SUM(O.Profit) AS	PROFIT
FROM dbo.Orders O

-----GIÁ TRỊ ĐƠN HÀNG TRUNG BÌNH-----
SELECT AVG(T.ORDERSALES) AS AVG_ORDER_VALUE
FROM(
	SELECT O.Order_ID, SUM(O.Sales) AS ORDERSALES
	FROM dbo.Orders O
	GROUP BY O.Order_ID
)T;



