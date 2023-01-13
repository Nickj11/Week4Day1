-- Question 1 **
-- How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name ='Wahlberg';

-- QUESTION 2 **
-- How many payments were made between $3.99 and $5.99?
SELECT  COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- QUESTION 3 **
-- What film does the store have the most of? (search in inventory)
SELECT  film_id, inventory_id
FROM inventory
ORDER BY film_id DESC;
SELECT title,film_id
FROM film
WHERE film_id = 1000;


-- QUESTION 4 **
-- How many customers have the last name ‘William’?
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- Question 5 **
-- What store employee (get the id) sold the most rentals?
SELECT   staff_id , rental_id
FROM rental
GROUP BY rental_id
ORDER BY  MAX(rental_id) DESC ;
SELECT first_name,last_name, staff_id
FROM staff
WHERE staff_id = 2;



-- question 6 **
-- How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM  address;

-- QUESTION 7 ?
-- I  DIDNT UNDERSTAND QUESTION BECUZ EVERY FILM HAS 1 ACTOR ID
-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, actor_id
FROM film_actor;
SELECT first_name, last_name, actor_id
FROM actor;

-- Question 8 **
-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';

-- QUESTION 9
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
Philip causey is the winner
SELECT first_name,last_name
FROM customer
WHERE customer_id = 393;

SELECT rental_id, customer_id
FROM rental
WHERE customer_id BETWEEN 380 AND 430
GROUP BY rental_id
HAVING rental_id > 250
ORDER BY rental_id DESC;


SELECT DISTINCT customer_id, amount
FROM payment
WHERE customer_id BETWEEN 393 AND 425
ORDER BY customer_id DESC;




-- QUESTION 10 **
-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT(rating)
FROM film
WHERE rating = 'PG-13';





