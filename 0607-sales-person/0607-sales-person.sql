# Write your MySQL query statement below
#select salesperson.name
#from orders o join company c on (o.com_id = c.com_id and c.name = 'RED')
#right join salesperson on salesperson.sales_id = o.sales_id
#where o.sales_id is null

select sp.name
from Company c join Orders o  on c.com_id=o.com_id and c.name='RED'
right join SalesPerson sp on sp.sales_id=o.sales_id
where o.sales_id is null