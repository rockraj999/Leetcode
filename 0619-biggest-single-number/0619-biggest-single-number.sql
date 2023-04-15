# Write your MySQL query statement below
select ifnull((select num from (select num,count(num) as fre from MyNumbers group by num)t where fre=1 order by num desc limit 1),null) as num;
