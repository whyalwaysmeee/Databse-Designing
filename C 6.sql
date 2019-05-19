select EmailAddress, OrderID, OrderDate
from Customers as C join Orders as O on C.CustomerID = O.CustomerID
where OrderDate in (
select min(Orders.OrderDate) 
from Orders
group by Orders.CustomerID);