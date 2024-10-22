USE sakila;

-- Q1
SELECT *
FROM actor;

-- Q2
SELECT *
FROM actor
WHERE first_name = "John";

-- Q3
SELECT *
FROM actor
WHERE last_name = "Neeson";

-- Q4
SELECT *
FROM actor
WHERE actor_id MOD 10 = 0;

-- Q5
SELECT description
FROM film
WHERE film_id = 100;

-- Q6
SELECT *
FROM film
WHERE rating = "R";

-- Q7
SELECT *
FROM film
WHERE rating != "R";

-- Q8
SELECT *
FROM film
ORDER BY length ASC
LIMIT 10;

-- Q9
SELECT *
FROM film
WHERE length = (
	SELECT MAX(length) AS duration
	FROM film
);

-- Q10
SELECT *
FROM film
WHERE special_features LIKE "%Deleted Scenes%";

