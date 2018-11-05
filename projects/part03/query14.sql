.read data.sql

select distinct A.name, A.grade from Highschooler A where
	A.ID not in (select B.ID from Highschooler B, Highschooler C, Friend D where
		((B.ID = D.ID1 and C.ID = D.ID2) or (B.ID = D.ID2 and C.ID = D.ID1)) and
		B.grade != C.grade)
		order by A.grade desc, A.name;	