# Write your MySQL query statement below



#with cte_tab as (select e2.id,count(0) as freq from Employee e1 join Employee e2 on #e1.managerId=e2.id
#group by e2.id)
#select name from Employee where id in (select (case when freq>=5 then id end) as id from #cte_tab)




select name from Employee where id in (select managerId from Employee group by managerId having count(managerId)>=5);