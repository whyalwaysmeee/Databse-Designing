select EmailAddress, count(*) as NumberOfOrder, sum((ItemPrice - DiscountAmount) * Quantity) as LineItemAmount
from Customers as C 
join Orders as O on C.CustomerID = O.CustomerID
join OrderItems as OI on O.OrderID = OI.OrderID
where ItemPrice > 600
group by EmailAddress
order by LineItemAmount DESC
;