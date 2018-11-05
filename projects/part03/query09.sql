.read data.sql

select A.name from Highschooler A, Friend B where
	(A.ID = B.ID1 and 
	(B.ID2 in (select ID from Highschooler where name = "Gabriel")))
	or (A.ID = B.ID2 and
	(B.ID1 in (select ID from Highschooler where name = "Gabriel")));