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

select Likes.ID1 as "Person A", Likes.ID2 as "Likes" from Likes, Friend where
	(Likes.ID1 = Friend.ID1 or Likes.ID1 = Friend.ID2)
	and (Likes.ID2 = Friend.ID1 or Likes.ID2 = Friend.ID2)
	;
