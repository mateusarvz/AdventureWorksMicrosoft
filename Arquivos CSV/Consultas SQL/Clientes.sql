-- Formatação da tabela DIM_Customers --
SELECT 
  c.customerkey AS CustomerKey,
  c.firstname + ' ' + lastname AS [Full Name], -- Junta o Primeiro e segundo nome
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, -- Substitui M e F por "Male" e "Female" 
  c.datefirstpurchase AS DateFirstPurchase, 
  g.City AS [Customer City] -- Puxa o Nome da cidade da tabela DimGeography
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  DateFirstPurchase ASC -- Oredena pela Data da primeira compra 
