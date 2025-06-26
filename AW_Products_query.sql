--Products Table

select 
	prd.ProductID
	, prd.Name as ProductName
	, prd.ProductNumber
	, prdcat.Name as CategoryName
	, prdsub.Name as SubcategoryName
	, prdmod.Name as ProductModel
	, prd.ListPrice
from Production.Product prd
	join Production.ProductSubcategory prdsub
on prd.ProductSubcategoryID = prdsub.ProductSubcategoryID
	join Production.ProductCategory prdcat
on prdsub.ProductCategoryID = prdcat.ProductCategoryID
	join Production.ProductModel prdmod
on prd.ProductModelID = prdmod.ProductModelID