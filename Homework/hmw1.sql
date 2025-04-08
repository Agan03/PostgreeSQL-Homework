--HOMEWORK 1/3


select * from movies;

--Find all movies released IN 2019

SELECT *
FROM movies
WHERE release_date BETWEEN '2019-01-01' AND '2019-12-31';


--Find all actors from 'British' nationality

select * from actors;

select *
from actors
where nationality = 'British';

--Find all movies with 'PG-13' rating

select * from movies;

select *
from movies
where rating = 'PG-13';

-- Find all directors from 'American' nationality

select * from directors;

select *
from directors
where nationality = 'American';


--Find all movies with duration more than 150 minutes

select * from movies;

select *
from movies
where duration_minutes > '150';


-- Find all actors with last name 'Pitt'

select * from actors;

select * 
from actors
where last_name = 'Pitt';


--Find all movies with budget greater than 100 million

select * from movies;

select *
from movies
where budget > '100000000';


--Find all reviews with rating 5

select * from reviews;

select * 
from reviews
where rating = '5';
--There are none with this rating


--Find all movies in English language

select * from movies;

select *
from movies
where language = 'English';



--Find all production companies from 'California'

select * 
from production_companies
where headquarters like'%California';
