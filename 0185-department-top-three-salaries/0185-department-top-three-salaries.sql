# Write your MySQL query statement below
with cte1 as(
    select *, dense_rank() over(partition by departmentId  order by salary desc) dr
    FROM Employee
)
select d.name Department , e.name Employee , salary Salary
FROM cte1 e
inner join Department d
on d.id = e.departmentId
where dr<=3;