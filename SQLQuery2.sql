SELECT C.CustomerKey AS [Customer Key],
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      C.FirstName AS [First Name],
      --,[MiddleName]
      C.LastName AS [Last Name],
	  C.FirstName +' ' + C.LastName AS [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE C.Gender WHEN 'M' THEN 'Male' WHEN 'W' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
     -- ,[EnglishOccupation]
      --,[SpanishOccupation]
    --  ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
     -- ,[AddressLine1]
     -- ,[AddressLine2]
      --,[Phone]
      ,C.DateFirstPurchase,
	  G.City as [Coustomer City]
     -- ,[CommuteDistance]
  FROM dbo.DimCustomer AS C LEFT JOIN dbo.DimGeography AS G ON G.GeographyKey = C.GeographyKey

 
