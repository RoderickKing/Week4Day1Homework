1 : Return ALL the data in the 'movies' table.

select * from movies;

1	Iron Man	2008	19:45
2	The Incredible Hulk	2008	23:20
3	Iron Man 2	2010	18:10
4	Thor	2011	22:35
5	Captain America: The First Avenger	2011	22:30
6	Avengers Assemble	2012	21:55
7	Iron Man 3	2013	15:00
8	Thor: The Dark World	2013	12:35
9	Batman Begins	2005	16:50
10	Captain America: The Winter Soldier	2014	20:35
11	Guardians of the Galaxy	2014	14:25
12	Avengers: Age of Ultron	2015	14:10
13	Ant-Man	2015	17:10
14	Captain America: Civil War	2016	23:30
15	Doctor Strange	2016	16:15
16	Guardians of the Galaxy 2	2017	19:15
17	Spider-Man: Homecoming	2017	18:45
18	Thor: Ragnarok	2017	13:35
19	Black Panther	2018	22:05


2 : Return ONLY the name column from the 'people' table

select name from people;

James Berry
Kris Brough
Matthew Beeston
Reka Forgacs
Euan Gilmour
Pawel Gorny
Hamish King
Roderick King
Ben Sharp
Donald Trump
Ros Ulldemolins





3  : Oops! Someone at CodeClan spelled Rose's name wrong! Change it to reflect the proper spelling ('Rose' not 'Ros').

update people
set name = 'Rose Ulldemolins'
where people.name = 'Ros Ulldemolins'

UPDATE 1
Data is now  ...
James Berry
Kris Brough
Matthew Beeston
Reka Forgacs
Euan Gilmour
Pawel Gorny
Hamish King
Roderick King
Ben Sharp
Donald Trump
Rose Ulldemolins



4: Return ONLY your name from the 'people' table.

select name from people
where id = 8;

Roderick King

5 : The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

delete from movies
where title = 'Batman Begins';

DELETE 1

New data is :

1	Iron Man	2008	19:45
2	The Incredible Hulk	2008	23:20
3	Iron Man 2	2010	18:10
4	Thor	2011	22:35
5	Captain America: The First Avenger	2011	22:30
6	Avengers Assemble	2012	21:55
7	Iron Man 3	2013	15:00
8	Thor: The Dark World	2013	12:35
10	Captain America: The Winter Soldier	2014	20:35
11	Guardians of the Galaxy	2014	14:25
12	Avengers: Age of Ultron	2015	14:10
13	Ant-Man	2015	17:10
14	Captain America: Civil War	2016	23:30
15	Doctor Strange	2016	16:15
16	Guardians of the Galaxy 2	2017	19:15
17	Spider-Man: Homecoming	2017	18:45
18	Thor: Ragnarok	2017	13:35
19	Black Panther	2018	22:05


6  : Create a new entry in the 'people' table with the name of one of the instructors.

insert into people (name) values  ('Keith Douglas');

Data is now

1	James Berry
2	Kris Brough
3	Matthew Beeston
4	Reka Forgacs
5	Euan Gilmour
6	Pawel Gorny
7	Hamish King
8	Roderick King
9	Ben Sharp
10	Donald Trump
11	Rose Ulldemolins
12	Keith Douglas



7  : Donald Trump has decided to hijack our movie evening, Remove him from the table of people.


delete from people
where name = 'Donald Trump';

Data looks like:

1	James Berry
2	Kris Brough
3	Matthew Beeston
4	Reka Forgacs
5	Euan Gilmour
6	Pawel Gorny
7	Hamish King
8	Roderick King
9	Ben Sharp
11	Rose Ulldemolins
12	Keith Douglas


8 : The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

insert into movies (title,year,show_time)
values ('Avengers: Infinity War',2019,'00:00');

Data looks like :

1	Iron Man	2008	19:45
2	The Incredible Hulk	2008	23:20
3	Iron Man 2	2010	18:10
4	Thor	2011	22:35
5	Captain America: The First Avenger	2011	22:30
6	Avengers Assemble	2012	21:55
7	Iron Man 3	2013	15:00
8	Thor: The Dark World	2013	12:35
10	Captain America: The Winter Soldier	2014	20:35
11	Guardians of the Galaxy	2014	14:25
12	Avengers: Age of Ultron	2015	14:10
13	Ant-Man	2015	17:10
14	Captain America: Civil War	2016	23:30
15	Doctor Strange	2016	16:15
16	Guardians of the Galaxy 2	2017	19:15
17	Spider-Man: Homecoming	2017	18:45
18	Thor: Ragnarok	2017	13:35
19	Black Panther	2018	22:05
20	Avengers: Infinity War	2019	00:00




9:  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.


select year,show_time
from movies
where title = 'Guardians of the Galaxy';

Gives
2014	14:25


UPDATE movies
SET year = 2014,
show_time = '16:25'
WHERE title = 'Guardians of the Galaxy 2';

data is now
1	Iron Man	2008	19:45
2	The Incredible Hulk	2008	23:20
3	Iron Man 2	2010	18:10
4	Thor	2011	22:35
5	Captain America: The First Avenger	2011	22:30
6	Avengers Assemble	2012	21:55
7	Iron Man 3	2013	15:00
8	Thor: The Dark World	2013	12:35
10	Captain America: The Winter Soldier	2014	20:35
11	Guardians of the Galaxy	2014	14:25
12	Avengers: Age of Ultron	2015	14:10
13	Ant-Man	2015	17:10
14	Captain America: Civil War	2016	23:30
15	Doctor Strange	2016	16:15
17	Spider-Man: Homecoming	2017	18:45
18	Thor: Ragnarok	2017	13:35
19	Black Panther	2018	22:05
20	Avengers: Infinity War	2019	00:00
16	Guardians of the Galaxy 2	2014	16:25
