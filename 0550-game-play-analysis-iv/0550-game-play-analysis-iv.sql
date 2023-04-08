# Write your MySQL query statement below

#select p1.* from Activity a1 inner join Activity a2
#on a1.player_id=a2.player_id where p1.event_date>p2.event_date


select round(count(event_date)/count(t1.player_id),2) as fraction from (select player_id,min(event_date) as first_joining from Activity group by player_id) t1 left join Activity t2 on t1.player_id=t2.player_id and t1.first_joining=t2.event_date-1;