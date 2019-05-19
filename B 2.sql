select OrderID, OrderDate, ShipDate
from Orders
where ShipDate is not null;