select ListPrice,cast(ListPrice as decimal(20,1)),convert(int, ListPrice),cast(ListPrice as int)
from Products;