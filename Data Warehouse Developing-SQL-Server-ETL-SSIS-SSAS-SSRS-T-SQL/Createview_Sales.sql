CREATE VIEW dbo.Total_FactInternetSales

AS 
SELECT 
SUM(DiscountAmount) as Total_DiscountAmount,
SUM(ProductStandardCost) as Total_ProdStandardCost, 
SUM(TotalProductCost) as Total_ProdCost,
SUM(SalesAmount) as Total_SalesAmount,
OrderDate,
CustomerKey,
CurrencyKey
FROM DBO.FactInternetSales
GROUP BY OrderDate, CurrencyKey, CustomerKey;