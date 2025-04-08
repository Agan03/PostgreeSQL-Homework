
--Homework 2/3

--Show movies and their directors

select * from movies;
select * from directors;

select title,directors.first_name,directors.last_name
from movies
inner join directors
on movies.movie_id = directors.director_id;




-- Show actors and their movies

select * from actors;
select * from movies;

select first_name,last_name,movies.title
from actors
inner join movies
on actors.actor_id = movies.movie_id;

--Show movies and their genres

select * from movies;
select * from genres;

select movies.title,genres.name
from movies
left join genres
on genres.genre_id = movies.movie_id;



-- Show users and their reviews
select * from users;
select * from reviews;

select users.username,reviews.review_text
from users
inner join reviews
on users.user_id = reviews.review_id;


-- Show movies and their locations

select * from movies;
select * from movie_locations;

select title,movie_locations.city
from movies
inner join movie_locations
on movies.movie_id = movie_locations.location_id;


-- Show movies and their production companies
--realised that i dont need to use movies. because is the main table

select * from movies ;
select * from production_companies;

select title,production_companies.name
from movies
inner join production_companies
on movie_id = production_companies.company_id;




-- Show actors and their awards

select * from actors;
select * from awards;

select first_name,last_name,awards.category,awards.award_type
from actors
inner join awards
on actor_id = award_id;





-- Show movies and their awards

select * from movies;
select * from awards;



-- Show users and their watchlist movies

select * from users;
select * from user_watchlist;
--idk why there isnt a watchlist to connect this one too




-- Show movies and their revenues
select * from movies;
select * from movie_revenues;


select title,movie_revenues.domestic_revenue,movie_revenues.international_revenue
from movies
inner join movie_revenues
on movies.movie_id = movie_revenues.movie_id;

