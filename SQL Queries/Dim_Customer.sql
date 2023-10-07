SELECT 
      c.CustomerKey AS [CustomerKey],
      --, c.GeographyKey
      --,[CustomerAlternateKey]
      --,[Title]
      c.FirstName AS [First Name],
      --,[MiddleName]
      c.lastName AS [Last Name],
	  c.FirstName+' ' + c.LastName AS [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, -- Allows for better wording for future data analysis 
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.DateFirstPurchase AS [Date First Purchase],
      --,[CommuteDistance]
	  g.City AS City -- Joining this column into the query for future data analysis
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g
  ON c.GeographyKey = g.GeographyKey;
