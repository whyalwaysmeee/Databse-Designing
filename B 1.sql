select FirstName + ',' + ' ' + LastName as 'FullName'
from Customers
where LastName > 'A' and LastName < 'C'
order by FirstName;