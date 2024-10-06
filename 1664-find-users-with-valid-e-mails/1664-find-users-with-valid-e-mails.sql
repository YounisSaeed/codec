# Write your MySQL query statement below
# For test regex https://regex101.com/

select * from Users
where mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$';