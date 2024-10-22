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

-- Q11
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1
ORDER BY last_name DESC;

-- Q12
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

-- Q13
SELECT CONCAT(first_name, " ", last_name) AS name
FROM film_actor AS fa
INNER JOIN actor AS a
ON fa.actor_id = a.actor_id
GROUP BY (name)
ORDER BY COUNT(film_id) DESC
LIMIT 1;

-- Q14 
SELECT DATE_ADD(r.rental_date, INTERVAL f.rental_duration WEEK) AS due_date
FROM rental as r 
INNER JOIN inventory as i
ON r.inventory_id = i.inventory_id
INNER JOIN film as f
ON i.film_id = f.film_id
WHERE f.title = "Academy Dinosaur" 
	AND r.return_date IS NULL
;

-- Q15
SELECT AVG(length)
FROM film;

-- Q16
SELECT c.name, AVG(length)
FROM film as f
INNER JOIN film_category as fc
ON f.film_id = fc.film_id
INNER JOIN category as c
ON c.category_id = fc.category_id
GROUP BY c.name;

-- Q17
SELECT * 
FROM film
WHERE description LIKE "%robot%";

-- Q18
SELECT COUNT(*)
FROM film
WHERE release_year = 2010;

-- Q19
SELECT f.title
FROM film as f
INNER JOIN film_category as fc
ON f.film_id = fc.film_id
INNER JOIN category as c
ON c.category_id = fc.category_id
WHERE c.name = "Horror";

-- Q20
SELECT first_name, last_name
FROM staff
WHERE staff_id = 2;

-- Q21
SELECT f.*
FROM film AS f
INNER JOIN film_actor AS fa
ON f.film_id = fa.film_id
INNER JOIN actor as a
ON fa.actor_id = a.actor_id
WHERE a.first_name = "Fred" AND a.last_name = "Costner";

-- Q22
SELECT DISTINCT COUNT(country.country)
FROM country;

-- Q23
SELECT name 
FROM language
ORDER BY name DESC;

-- Q24
SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM actor
WHERE last_name LIKE "%son"
ORDER BY first_name;

-- Q25
