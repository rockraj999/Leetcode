# Write your MySQL query statement below
with cte as (select *, ifnull((lag(temperature) over (order by recordDate)),1000) as p_temp, ifnull((lag(recordDate) over (order by recordDate)),0) as e_date from Weather)
select id from cte where temperature>p_temp and datediff(recordDate,e_date)=1