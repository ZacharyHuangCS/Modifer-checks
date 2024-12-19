select ID, name, grade, (select count(*) from Friend where id1 = H.id) from Highschooler H order by ID;
