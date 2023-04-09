# Write your MySQL query statement below

             
#select distinct num as ConsecutiveNums  from (select num,lag(num) over (order by id) as #before_i,
#lead(num) over (order by id) as after_i
#from logs) a where num=before_i and num=after_i;


select distinct num as ConsecutiveNums  from (select num, lead(num) over (order by id ) as before_n,lag(num) over (order by id) as after_n
from Logs) l where num=before_n and num=after_n;