
--Homework 3/3

--Show all R-rated movies and their directors
select * from movies;
select * from directors;

select title,rating,directors.first_name,directors.last_name
from movies
inner join directors
on movie_id = directors.director_id
where rating = 'R';


--Show all movies from 2019 and their genres

select * from movies;
select * from genres;

select title,genres.name
from movies 
inner join genres
on movie_id = genres.genre_id
where extract(Year from release_date) = '2019';
--I learned this from google 


--Show all American actors and their movies

select * from actors;
select * from movies;





--Show all movies with budget over 100M and their production companies

select * from movies;
select * from production_companies;

select title,budget,production_companies.name 
from movies
inner join production_companies
on movie_id = company_id
where budget > '100000000';



--Show all movies filmed in 'London' and their directors

select * from movies;
select * from directors;
select * from movie_locations;

select title,directors.first_name,directors.last_name
from movies
inner join movie_locations on movies.movie_id = movie_locations.location_id
inner join directors on movies.movie_id = directors.director_id
where city = 'Tokyo';--Just tested it with Tokyo 
-- since there is no city 'London' on movie_locations it doesnt show anything


--Show all horror movies and their actors

select * from movies;
select * from actors;
select * from genres;

select title,actors.first_name,actors.last_name
from movies
inner join actors on movie_id = actor_id
inner join genres on genre_id = movie_id
where name ='Horror'




--Show all movies with reviews rated 5 and their reviewers

select * from movies;
select * from reviews; 

select title,







--Show all British directors and their movies

select * from movies;
select*from directors;

select directors.first_name,directors.last_name,title
from movies
inner join directors
on movies.movie_id = directors.director_id
where nationality = 'British';




--Show all movies longer than 180 minutes and their genres

select * from movies;
select * from genres;

select title,genres.name
from movies
inner join genres
on movies.movie_id = genres.genre_id
where duration_minutes > '180';
--Since there is no movie longer than 180 minutes it doesnt show anything



--Show all Oscar-winning movies and their directors

select * from awards;
select * from movies;
select * from movie_awards;
select * from directors;

select awards.award_type,title,directors.first_name,directors.last_name
from movies
inner join awards
on awards.award_id = movies.movie_id
inner join directors
on directors.director_id = movies.movie_id
where award_type='Oscar';

