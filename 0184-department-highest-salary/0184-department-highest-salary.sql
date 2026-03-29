# Write your MySQL query statement below
select d1.name Department, e1.name Employee, salary Salary
From Employee e1
inner join Department d1
on d1.id = e1.departmentId 
where salary = (select max(salary) from Employee e2 where e1.departmentId = e2.departmentId );