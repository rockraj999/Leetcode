# Write your MySQL query statement below

#select actor_id,director_id from (select actor_id,director_id,count(1) as freq from #ActorDirector group by actor_id,director_id) t where freq>=3


select actor_id,director_id from ActorDirector group by actor_id,director_id having count(*)>=3;