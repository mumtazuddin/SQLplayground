SELECT empid, FirstName, lastname
FROM HR.Employees
WHERE empid NOT IN
  (SELECT O.empid
   FROM Sales.Orders AS O
   WHERE O.orderdate >= '20160501')


USE TSQLV4;
DROP TABLE IF EXISTS Sales.order14to16;
SELECT *
INTO Sales.order14to16
FROM Sales.Orders
WHERE orderdate >= '20140101'
AND orderdate < '20170101';


alter table Sales.order14to16 
add "fiscalyear" integer
go

update sales.order14to16
set "fiscalyear"=(

case
when(datepart (MM, orderdate) = (10 ,11 , ))
then (datepart (YYYY, orderdate)  +1)
else (datepart (YYYY, orderdate))

end )
