# Write your MySQL query statement below


#select user_id,join_date,count(buyer_id) as orders_in_2019 from Users left join Orders on  Orders.buyer_id=Users.user_id  where order_date like '%2019%' group by buyer_id



#with cte_tab as (select buyer_id,count(buyer_id) as orders_in_2019 from Orders where order_date like '%2019%'
#group by buyer_id)
#select user_id as buyer_id,join_date,ifnull(orders_in_2019,0) as orders_in_2019 from Users left join cte_tab on Users.user_id=cte_tab.buyer_id;


select user_id as buyer_id, join_date, COUNT(order_id) as orders_in_2019 from Users LEFT JOIN Orders on user_id = buyer_id 
and order_date >= '2019-01-01' and order_date < '2020-01-01' 
group by user_id;;