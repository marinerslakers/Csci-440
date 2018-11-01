.read data.sql

select D.name, D.grade from 
	((select A.ID as ID, A.name as name, A.grade as grade, Count(*) as num from Highschooler A, Friend B where
		A.ID = B.ID1 or A.ID = B.ID2
		group by A.ID) D)
	where D.num = (select max(E.num) from 
		(select A.ID as ID, A.name as name, A.grade as grade, Count(*) as num from Highschooler A, Friend B where
			A.ID = B.ID1 or A.ID = B.ID2
			group by A.ID) E);