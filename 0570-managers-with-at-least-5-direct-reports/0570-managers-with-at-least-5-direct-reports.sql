# Write your MySQL query statement below

with managers as (
    select managerId ,count(*) from 
    Employee 
    group by  managerId
    having count(managerId) >= 5
)

select e.name from Employee e 
join managers m on e.id = m.managerId 