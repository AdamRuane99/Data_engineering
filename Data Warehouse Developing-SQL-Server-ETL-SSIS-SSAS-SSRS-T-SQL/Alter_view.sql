ALTER VIEW dbo.Total_FactInternetSales
WITH SCHEMABINDING
AS 
SELECT 
SUM(DiscountAmount) as Total_DiscountAmount,
SUM(ProductStandardCost) as Total_ProdStandardCost, 
SUM(TotalProductCost) as Total_ProdCost,
SUM(SalesAmount) as Total_SalesAmount,
OrderDate,
CustomerKey,
CurrencyKey,
COUNT_BIG(*) as RecordCount
FROM DBO.FactInternetSales
GROUP BY OrderDate, CurrencyKey, CustomerKey;