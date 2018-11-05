.read data.sql

select distinct A.name, A.grade, B.name, B.grade from Highschooler A, Highschooler B, Likes l where
	A.ID=l.ID1 and B.ID=l.ID2 and B.ID not in (select ID1 from Likes)
	;
