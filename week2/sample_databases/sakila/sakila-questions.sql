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

