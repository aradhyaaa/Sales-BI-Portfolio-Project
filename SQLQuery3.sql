SELECT p.[ProductKey],
      p.[ProductAlternateKey] AS [Product Item Code],
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
      p.[EnglishProductName] AS [Product Name],
	  ps.[EnglishProductCategoryName] AS [Sub Category],
	  pc.[FrenchProductSubcategoryName] AS [Product Category],
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--      ,[FinishedGoodsFlag]
      p.[Color] AS [Product Color],
      --[SafetyStockLevel]
--      ,[ReorderPoint]
--    ,[ListPrice]
     p.[Size] AS [Product Size],
--      ,[SizeRange]
 --     ,[Weight]
 --     ,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
--      ,[DealerPrice]
--      ,[Class]
  --    ,[Style]
      p.[ModelName] AS [Product Model Name],
     -- ,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
     -- ,[FrenchDescription]
 --     ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
 --     ,[TurkishDescription]
--      ,[EndDate]
 --     ,[Status]
 ISNULL (p.Status,'Outdated') AS [Product Status]
  FROM dbo.DimProduct AS p
  Left Join dbo.DimProductCategory AS ps ON ps.ProductCategoryKey = p.ProductSubcategoryKey
  Left Join dbo.DimProductSubcategory AS pc ON ps.ProductCategoryKey = p.ProductSubcategoryKey
  ORDER BY 
  p.ProductKey asc