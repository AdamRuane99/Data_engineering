CREATE UNIQUE CLUSTERED INDEX [IX_TOTAL_FACTINTERNETSALES]
ON dbo.Total_FactInternetSales (orderdate, CUstomerkey, currencykey);