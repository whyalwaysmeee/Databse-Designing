create procedure test as
begin 
declare @count int
declare @fact1 int
declare @fact2 int
declare @result varchar (50)
set @fact1 = 10;
set @fact2 = 20;
set @count = 1;
set @result = 'Common Factors of 10 and 20: ' + char(10);

while (@count <= 10/2)
begin
if ( @fact1 %  @count = 0 AND @fact2 % @count = 0)
set @result = CONCAT (@result, @count, ' ', char(10));
set @count = @count + 1;
set
elect @factors
end;