USE MyGuitarShop
go
create procedure spUpdateProductDiscount
(@ProductID int,
@DiscountPercent int)
as 
begin
begin try 
update Products
set DiscountPercent = @DiscountPercent
where ProductID = @ProductID
end try

begin catch 
if @ProductID < 0
print('The discount percent must be positive')
end catch
end;
go
exec spUpdateProductDiscount 4,80
exec spUpdateProductDiscount 7,15