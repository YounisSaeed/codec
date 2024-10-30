with rowsss as (
select *, id - row_number() over() as id_diff
from stadium
where people >= 100
)

select id , visit_date , people from rowsss
where id_diff in (
    select id_diff from rowsss group by id_diff having count(*) > 2
) 
order by visit_date asc


