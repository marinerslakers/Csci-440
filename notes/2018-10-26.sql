/* Add the reviewer Roger Ebert to your database, with an rID of 209. */
insert into Reviewer
values (209, 'Roger Ebert');

/* Insert 5-star ratings by James Cameron for all movies in the database. Leave
 * the review date as NULL. */
insert into Rating
select
   (select Reviewer.rID
   from Reviewer
   where Reviewer.name = "James Cameron"), Movie.mID, 5, NULL
from Movie;

/* For all movies that have an average rating of 4 stars or higher, add 25 to
 * the release year. */
update Movie
set year = year + 25
where Movie.mID in
   (select Rating.mID
   from Rating
   group by Rating.mID
   having avg(Rating.stars) >= 4);

/* Remove all ratings where the movie's year is before 1970 or after 2000, and *
 * the rating is fewer than 4 stars. */
delete from Rating
where Rating.stars < 4 and Rating.mID in
   (select distinct Movie.mID
   from Movie join Rating on Movie.mID = Rating.mID
   where (Movie.year < 1970 or 2000 < Movie.year));
