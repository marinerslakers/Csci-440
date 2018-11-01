.read data.sql
.headers on
.mode column

select name, grade from Highschooler where ID not in (select distinct ID1 from Likes Union select ID2 from Likes) 
order by grade, name;
