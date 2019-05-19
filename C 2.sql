select CategoryName,ProductID
from Categories left join Products on Categories.CategoryID = Products.CategoryID
where ProductID is null;