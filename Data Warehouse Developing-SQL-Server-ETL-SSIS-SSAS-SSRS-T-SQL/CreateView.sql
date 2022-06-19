CREATE VIEW dbo.Total_DimTerritoryAndGeography

AS 
SELECT 
DimGeography.City,
DimGeography.StateProvinceCode,
DimGeography.StateProvinceName,
DimGeography.CountryRegionCode,
DimGeography.EnglishCountryRegionName, 
ds.SalesTerritoryRegion, 
ds.SalesTerritoryGroup
FROM DBO.DimGeography
INNER JOIN dbo.DimSalesTerritory ds on ds.SalesTerritoryKey = DimGeography.SalesTerritoryKey