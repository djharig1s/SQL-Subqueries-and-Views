ALTER view [dbo].[Consumer] as

SELECT

Order_ID, 
Order_Date as date, 
Ship_Mode,
Customer_Name,
City,
State,
Category,
Product_Name,
Segment,
Sales

FROM dbo.Sales

WHERE Order_Date is not null and Order_Date > DATEADD(YEAR, -6, GETDATE()) and State like 'C%' and Category = 'Office Supplies' and Sales >= '100'

GO


