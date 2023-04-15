# Write your MySQL query statement below


#select product_id,year as first_year,quantity,price from Sales where (product_id,year) in (select product_id,min(year) as first_y from Sales group by product_id)


with cte as (select product_id,min(year) as first_y from Sales group by product_id)

select product_id,year as first_year,quantity,price from Sales where (product_id,year) in (select * from cte)