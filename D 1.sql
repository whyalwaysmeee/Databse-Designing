create view OrderItemProducts3 as
select Orders.OrderID, Orders.OrderDate, Orders.TaxAmount, Orders.ShipDate,
OrderItems.ItemPrice, OrderItems.DiscountAmount, (OrderItems.ItemPrice - OrderItems.DiscountAmount) as FinalPrice, OrderItems.Quantity,  ((OrderItems.ItemPrice - OrderItems.DiscountAmount) * OrderItems.Quantity) as ItemTotal,
Products.ProductName
from Orders join OrderItems on Orders.OrderID = OrderItems.OrderID
join Products on OrderItems.ProductID = Products.ProductID;