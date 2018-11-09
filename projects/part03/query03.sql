.read data.sql

insert into friend select friend1.id1 as friendA, friend2.id2 as friendB
	from friend friend1 join friend friend2 on friend1.id2 = friend2.id1
	where friend1.id1 <> friend2.id2 except
	select * from friend;

select * from friend;
