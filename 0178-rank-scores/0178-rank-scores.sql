# Write your MySQL query statement below
select score, dense_rank() over(Order by score desc) as 'rank'
from Scores;