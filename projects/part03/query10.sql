.read data.sql
.headers on
.mode column
select HighschoolerA.name, HighschoolerA.grade, HighschoolerB.name, HighschoolerB.grade from Highschooler HighschoolerA
	inner join Likes on HighschoolerA.ID = Likes.ID1
	inner join Highschooler HighschoolerB on HighschoolerB.ID = Likes.ID2
        where (HighschoolerA.grade - HighschoolerB.grade) >=2;


