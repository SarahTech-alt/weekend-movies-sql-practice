-- Required Base Questions
-- Add the SQL that does what is asked in each question.

-- 1. Select all movies with the 'Adventure' genre? Use the id.
SELECT "movies"."title", "genres"."name" from "movies"
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
JOIN "genres" ON "genres"."id"="movies_genres"."genre_id" WHERE "genres"."name"='Adventure';

-- Avatar	Adventure
-- Beauty and the Beast	Adventure


-- 2. Get the count of movies that have each genre.  
-- Don't worry about unused genres (Disaster has 0 movies)
SELECT "genres"."name", count("movies"."id") from "movies"
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
JOIN "genres" ON "genres"."id"="movies_genres"."genre_id" GROUP BY "genres"."name";

Adventure	2
Musical	2
Romantic	1
Epic	1
Comedy	7
Animated	2
Biographical	4
Fantasy	1
Drama	2
Space-Opera	2
Science Fiction	2

Example Result:
---------------------------------
| genre_name    | movie_count   |
---------------------------------
| Adventure     | 4             |
---------------------------------
| Comedy        | 1             |
---------------------------------
| Drama         | 5             |
---------------------------------



-- 3. Add the genre "Superhero" to "Star Wars".

INSERT INTO "movies_genres" ("movie_id", "genre_id")
VALUES ('10', '13');

-- 4. Remove the "Comedy" genre from "Titanic"

DELETE FROM "movies_genres" WHERE "movie_id"='13' AND "genre_id"='4';

-- Stretch

-- 1. How would you get all movies and all of their genres, but only one row per movie? (For example, on the list page we want to see all the movies and all of the movies' genres that apply)
-- There're a few ways to do this, research ARRAY_AGG or JSON_AGG


-- 2. Delete the movie "The Martian". It has associated genres data...
-- You may need to check out the ON DELETE CASCADE for the table columns...
