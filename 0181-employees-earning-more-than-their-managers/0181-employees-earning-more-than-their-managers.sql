# Write your MySQL query statement below
select emp.name Employee
from Employee emp
join Employee mgr
on emp.managerId = mgr.id
where emp.salary>mgr.salary;