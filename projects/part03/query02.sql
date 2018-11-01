.read data.sql

--select * from Likes where
--	select * from Likes A, Likes B where A.ID1 = B.ID2 and B.ID1 = A.ID2;
--select * from Likes A, Likes B;

--select * from Friend where
--	(ID1 = (select A.ID1 from Likes A inner join Likes B on A.ID1 = B.ID2 and B.ID1 = A.ID2)
--	and ID2 = (select A.ID1 from Likes A inner join Likes B on A.ID1 = B.ID2 and B.ID1 = A.ID2))
--	and (ID2 = (select A.ID1 from Likes A inner join Likes B on A.ID1 = B.ID2 and B.ID1 = A.ID2)
--	and ID1 != (select A.ID1 from Likes A inner join Likes B on A.ID1 = B.ID2 and B.ID1 = A.ID2))
--	;

--select /*A.ID1 as "Person A", A.ID2 as "Likes"*/* from Likes A, Likes B, Friend where
--	((A.ID1 = Friend.ID1 or A.ID1 = Friend.ID2) and (A.ID2 = Friend.ID1 or A.ID2 = Friend.ID2))
--	and not (A.ID1 = B.ID2 and A.ID2 = B.ID1)
--	;

--select * from Likes
--	where A.ID2 in (select A.ID2 from Friend A where Likes.ID1 = A.ID1)
--	and A.ID2 not in (select L.ID1 from Likes L where Likes.ID1 = L.ID2);

delete from Likes where
	ID1 in (select F1.ID1 from Friend F1, Likes L1 where F1.ID1 = L1.ID1 and F1.ID2
	not in (select ID1 from Likes where ID2 = F1.ID1));
	
select * from Likes;