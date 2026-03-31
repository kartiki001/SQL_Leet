# Write your MySQL query statement below
with cte1 as(
    select *, row_number() over(partition by email order by id) rn
    FROM Person
)
delete from Person
where id IN (SELECT id from cte1 where rn >1);
