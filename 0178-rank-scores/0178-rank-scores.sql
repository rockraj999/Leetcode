# Write your MySQL query statement below

#SELECT score,dense_rank() over (order by score desc)as 'rank' from Scores


select score ,dense_rank() over (order by score desc) as 'rank' from Scores;