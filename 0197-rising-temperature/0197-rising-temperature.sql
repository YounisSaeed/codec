select a.id 
from Weather as a , Weather as e
where DATEDIFF(a.recordDate , e.recordDate) = 1 
and 
a.temperature > e.temperature