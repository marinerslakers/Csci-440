.read data.sql

select count(ID) - count(distinct name) from Highschooler;