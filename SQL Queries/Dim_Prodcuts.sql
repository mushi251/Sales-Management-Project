SELECT 
      p.[ProductKey],
      p.[ProductAlternateKey] as ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] as [Product Name],
	  ps.[EnglishProductSubcategoryName] as [Product Subcategory],
	  pc.[EnglishProductCategoryName] as [Product Category],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color]as [Product Color],
      p.[SafetyStockLevel],
      --,[ReorderPoint]
      --,[ListPrice]
      p.[Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName],
      --,[LargePhoto]
      p.[EnglishDescription],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ISNULL (p.[Status], 'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS ps ON ps.[ProductSubcategoryKey] = p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
 
  ORDER BY
  p.ProductKey asc;

  
