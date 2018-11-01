.read data.sql

select A.name, A.grade, B.name, B.grade from Likes l1, Likes l2, Highschooler A, Highschooler B where
	l1.ID1=l2.ID2 and l2.ID1=l1.ID2 and l1.ID1=A.ID and l1.ID2=B.ID and A.name<B.name
	;
