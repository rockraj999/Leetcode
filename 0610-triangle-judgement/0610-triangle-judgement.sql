# Write your MySQL query statement below


#select *,case when abs(x)+abs(y)>abs(z) and abs(y)+abs(z)>abs(x) and abs(z)+abs(x)>abs(y) #then 'Yes' else 'No' end as triangle from Triangle 


select * ,if(x+y>z and y+z>x and z+x>y,'Yes','No') as triangle from Triangle