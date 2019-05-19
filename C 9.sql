select OrderID, OrderDate, dateadd(day,2,OrderDate) as ApproxShipDate, ShipDate, abs(datediff(day,OrderDate, ShipDate)) as DayToShip
from Orders
where month(OrderDate) =5 and year(OrderDate)=2016;