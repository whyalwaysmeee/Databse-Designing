select EmailAddress, O.OrderID, sum(ItemPrice * Quantity) as OrderTotal
from Customers as C 
join Orders as O on C.CustomerID = O.CustomerID
join OrderItems as OI on O.OrderID = OI.OrderID
group by EmailAddress, O.OrderID
;
