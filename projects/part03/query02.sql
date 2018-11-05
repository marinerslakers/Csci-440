.read data.sql

delete from Likes where
	ID1 in (select distinct C.ID1 from Friend B, Likes C, Likes D where
		(C.ID1 = B.ID1 and C.ID2 = B.ID2) or (C.ID1 = B.ID2 and C.ID2 = B.ID1)
		and (C.ID1 != D.ID2 and C.ID2 != C.ID1))
	and ID1 not in (select E.ID1 from Likes E, Likes F where E.ID1 = F.ID2 and E.ID2 = F.ID1);