create function fnItemTotal
(@ItemID int)
returns int
begin 
return(dbo.fnDiscountPrice(@ItemID) * 
(select Quantity 
from OrderItems
where ItemID = @ItemID))
end;
go
print 'Total amount is: $' + convert(varchar,dbo.fnItemTotal(8),1)