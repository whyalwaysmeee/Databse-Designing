select LastName, FirstName, OrderDate, ProductName,ItemPrice,DiscountAmount, Quantity
from Customers as C 
join Orders as O on C.CustomerID = O.CustomerID 
join OrderItems as OI on O.OrderID = OI.OrderID
join Products as P on P.ProductID = OI.ProductID
order by LastName, OrderDate, ProductName;