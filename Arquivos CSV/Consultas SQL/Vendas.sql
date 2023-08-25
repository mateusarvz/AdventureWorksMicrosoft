-- Formatação da Tabela FACT_InternetSales --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount]

FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
  LEFT (OrderDateKey, 4) >= Year(GetDate())- 5 -- Pega os primeiros 4 digitos de OrderDate, Compara com a data atual subtraida por 5
ORDER BY
  OrderDateKey ASC