.read data.sql
	
select COUNT(*) from Highschooler A where
	A.ID in (select E.ID from (select * from (select B.ID from Highschooler B, Friend C where
			(B.ID = C.ID1 and 1709 = C.ID2)
			or (B.ID = C.ID2 and 1709 = C.ID1))) D, Highschooler E, Friend F where
		(D.ID = F.ID1 and E.ID = F.ID2) or (D.ID = F.ID2 and E.ID =  F.ID1) or
		E.ID = D.ID)
	and A.ID != 1709;