# Write your MySQL query statement below

#with temp(Department,Employee,Salary) as
#(select d.name as Department ,e.name as  Employee ,Salary from Employee  e left join #Department d on e.departmentId =d.id)
#select temp2.Department,temp2.Employee,temp2.Salary from (select #Department,Employee,Salary,dense_rank() over (partition by Department order by salary desc) #as rnum from temp) temp2 where rnum<4\





with sal_dep as (SELECT e.*,d.name as dep_name,dense_rank() over (partition by departmentId order by salary desc) as rnk
from Employee e join Department d on e.departmentId=d.id)
select dep_name as Department,name as Employee, Salary from sal_dep where rnk<=3