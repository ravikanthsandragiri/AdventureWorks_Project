--customer details

select 
	c.CustomerID
	, p.FirstName + ' ' + coalesce(p.MiddleName, '') + ' ' + p.LastName as FullName
	, a.City
	, cr.Name as Country
from Person.Person p
join person.BusinessEntity be
	on be.BusinessEntityID = p.BusinessEntityID
join person.BusinessEntityAddress bea
	on bea.BusinessEntityID = p.BusinessEntityID
join Person.Address a
	on bea.AddressID = a.AddressID
join Person.StateProvince sp
	on sp.StateProvinceID = a.StateProvinceID
join Person.CountryRegion cr
	on sp.CountryRegionCode = cr.CountryRegionCode
join Sales.Customer c
	on c.PersonID = p.BusinessEntityID
