.read data.sql

select distinct A.name, A.grade, B.name, B.grade, C.name, C.grade from Highschooler A, Highschooler B, Highschooler C, Likes, Friend fA, Friend fB where
	A.ID=Likes.ID1 and B.ID=Likes.ID2
	and A.ID not in (select ID1 from Friend fAB where fAB.ID2 = B.ID)
	and A.ID not in (select ID2 from Friend fAB where fAB.ID1 = B.ID)
	and (C.ID = fA.ID1 or C.ID = fA.ID2)
	and (A.ID = fA.ID1 or A.ID = fA.ID2)
	and (C.ID = fB.ID1 or C.ID = fB.ID2)
	and (B.ID = fB.ID1 or B.ID = fB.ID2)
	;
