SELECT DISTINCT c.contactname, C.city

FROM Sales.Customers c INNER JOIN

Sales.Orders o on c.custid = o.custid

WHERE o.shipcountry = 'Brazil'



SELECT DISTINCT c.contactname, C.city

FROM Sales.Customers c

WHERE c.custid IN

(SELECT o.custid

FROM Sales.Orders o WHERE o.shipcountry = 'Brazil')

SELECT e.lastname, e.firstname

FROM HR.Employees e

inner join Sales.EmpOrders so on e.empid = so.empid

WHERE so.qty > all

(SELECT qty FROM Sales.EmpOrders so2 WHERE so.empid != so2.empid)

SELECT c.custid, c.contactname, o.orderid 

FROM Sales.Customers c

RIGHT OUTER JOIN Sales.Orders o ON c.custid = o.custid;

SELECT FirstName, LastName, DateBorrowed 