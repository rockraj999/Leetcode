# Write your MySQL query statement below



with final_tab as (select requester_id as id, accept_date from RequestAccepted
union all 
select accepter_id as id , accept_date from RequestAccepted) 
select * from  (select id, count(1) as num from final_tab  group by id) t order by num desc limit 1