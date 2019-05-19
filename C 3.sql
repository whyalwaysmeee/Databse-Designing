select EmailAddress, sum(ItemPrice * Quantity) as TotalPrice,sum(DiscountAmount * Quantity) as TotalDiscount
from Customers as C join Orders as O on C.CustomerID = O.CustomerID
join OrderItems as OI on O.OrderID = OI.OrderID
group by EmailAddress
order by TotalPrice;