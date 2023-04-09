# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

#with dup as 
#(select id,email,row_number() over (partition by email order by email) as rnk from Person)
#delete from dup where rnk>1;


#delete p1 from Person p1, Person p2 where p1.email=p2.email and p1.id>p2.id


delete p1 from Person p1,Person p2 where p1.email=p2.email and p1.id>p2.id; 