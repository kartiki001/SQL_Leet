# Write your MySQL query statement below
select d.name Department , e.name Employee , salary Salary
FROM (
    select *, dense_rank() over(partition by departmentId  order by salary desc) dr
    FROM Employee
) e
inner join Department d
on d.id = e.departmentId
where dr<=3;