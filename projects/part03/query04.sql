.read data.sql

select HighSchooler_1.name, HighSchooler_1.grade, HighSchooler_2.name, HighSchooler_2.grade, HighSchooler_3.name, HighSchooler_3.grade
from Likes L1, Likes L2, Highschooler HighSchooler_1, Highschooler HighSchooler_2, Highschooler HighSchooler_3
where L1.ID2 = L2.ID1
and L2.ID2 <> L1.ID1
and L1.ID1 = HighSchooler_1.ID and L1.ID2 = HighSchooler_2.ID and L2.ID2 = HighSchooler_3.ID
;
