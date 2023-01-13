-- #basic query

-- SELECT ALL RECORDS FROM ACTOR TABLE
SELECT *
FROM actor

SELECT first_name, last_name FROM actor; 

SELECT last_name, first_name FROM actor;

SELECT *
FROM actor
WHERE first_name ='Nick';
-- = ACT LIKE A LITTERAL MATHC
SELECT *
FROM actor
WHERE first_name LIKE 'Nick';

-- % acts like a wild card

SELECT *
FROM actor
WHERE first_name LIKE'N';

SELECT *
FROM actor
Where first_name LIKE 'K__%N';

-- COMPARING OPERATORS
-- GREATER THAN >\
-- LESS TAHN <
-- GREATOR OR EQUAL 10 >=
-- LESS OR EQUAL TO <=
-- NOT EQUAL <>




SELECT *
FROM payment

SELECT customer_id_, amount
FROM payment
Where amount > 4.99;

SELECT * 
FROM payment 
WHERE amount <> 4.99;

SELECT customer_id_
FROM payment
WHERE amount > 100.00
ORDER BY amount ASC;

SELECT customer_id_
FROM payment
WHERE amount > 100.00
ORDER BY amount DEC;

SELECT first_name, last_name, email
FROM customer
WHERE customer_id =341;

-- FIND DISTINCT CUSTOMER ID OF THE DUPLICATE
SELECT customer_id
FROM payment
WHERE amount > 10.00
GROUP BY 
ORDER BY amount DESC;

SELECT SUM(amount)
FROM payment
WHERE amount > 10.00;


SELECT SUM(amount), customer_id
FROM payment
WHERE amount > 10.00
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


-- DIFFERENT SQL AGGREGATORS
-- SUM() AVG() COUNT() MIN() MAX()


SELECT SUM(amount)
FROM payment
WHERE customer_id =341;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;


SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

 SELECT COUNT(amount)
 FROM payment
 WHERE amount > 5.99;

SELECT *
FROM payment;

 SELECT COUNT (DISTINCT amount)
 FROM payment
 WHERE amount > 5.99;

 SELECT amount
 FROM payment;

 SELECT MIN(amount) 
 FROM payment;

  SELECT MAX(amount) 
 FROM payment;

 SELECT customer_id, SUM(amount)
 FROM payment
 GROUP BY customer_id;

  SELECT customer_id, SUM(amount)
 FROM payment
 WHERE customer_id > 70 AND customer_id
 GROUP BY customer_id
 ORDER BY customer_id;


  SELECT customer_id, SUM(amount)
 FROM payment
 WHERE customer_id > 70 AND customer_id
 GROUP BY customer_id
 HAVING SUM(amount) > 150
 ORDER BY customer_id
LIMIT 2;
OFFSET 1 









