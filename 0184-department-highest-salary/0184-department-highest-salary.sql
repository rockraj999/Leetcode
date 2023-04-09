# Write your MySQL query statement below

with temp(Department,Employee,Salary) as
(select d.name as Department ,e.name as  Employee ,Salary from Employee  e left join Department d on e.departmentId =d.id)
select temp2.Department,temp2.Employee,temp2.Salary from (select Department,Employee,Salary,rank() over (partition by Department order by salary desc) as rnum from temp) temp2 where rnum=1
