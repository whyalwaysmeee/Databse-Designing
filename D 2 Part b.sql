create view Top5BestSelling as 
select distinct ProductName,sum((ItemPrice - DiscountAmount) * Quantity) as OrderTotal, OrderCount
from Products as P join OrderItems as OI on P.ProductID = OI.ProductID
join TTT on P.ProductID = TTT.ProductID
and TTT.ProductID = p.ProductID
group by ProductName,OrderCount
;