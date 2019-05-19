select  top 5 count(*) as OrderCount
from OrderItems 
group by ProductID
order by OrderCount desc;