# Write your MySQL query statement below
select 
unique_id,
name
from employees a
left join employeeuni b ON a.id = b.id
