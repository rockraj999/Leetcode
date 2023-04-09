# Write your MySQL query statement below
select email as Email from (select email,count(email) as number from person group by email) temp where temp.number>1;