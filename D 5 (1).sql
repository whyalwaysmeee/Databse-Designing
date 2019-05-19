create function fnDiscountPrice
(@ItemID int)
returns int
begin
return(select (ItemPrice - DiscountAmount) as DiscountPrice
from OrderItems
where ItemID = @ItemID);
end;
go
print 'Discount price is: $' + convert(varchar,dbo.fnDiscountPrice(2),1)