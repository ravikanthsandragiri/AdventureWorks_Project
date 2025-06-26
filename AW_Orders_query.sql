-- order details table
select 
	sod.SalesOrderID
	, soh.CustomerID
	, cast(soh.OrderDate as date) as OrderDate
	, sod.OrderQty as OrderQuantity
	, sod.ProductID
	, sod.UnitPrice
	, sod.LineTotal
from sales.SalesOrderDetail sod
join sales.SalesOrderHeader soh
on soh.SalesOrderID = sod.SalesOrderID

