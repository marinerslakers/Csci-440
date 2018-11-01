.read data.sql

select D.ID, D.name, D.grade from ((select A.ID as ID, A.name as name, A.grade as grade, Count(*) as num from Highschooler A, Likes B where
		A.ID = B.ID2
		group by A.ID) D)
	where D.num > 1;