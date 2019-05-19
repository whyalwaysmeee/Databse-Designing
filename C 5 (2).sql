select EmailAddress, min(ItemPrice * Quantity) as LeastOrder
from Customers as C 
join Orders as O on C.CustomerID = O.CustomerID
join OrderItems as OI on O.OrderID = OI.OrderID
group by EmailAddress
;
