1. How many actors are there with the last name ‘Wahlberg’?

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- 2

2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- 3273

3. What film does the store have the most of? (search in inventory)

SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(*) DESC;
--200

-- SELECT title
-- FROM film
-- WHERE title LIKE 200;
--trying to find if i can get a name of the film thats at 200.. 

4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
--0

5. What store employee (get the id) sold the most rentals?

SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(*) DESC;
--1

6. How many different district names are there?

SELECT district, COUNT(*)
FROM address
GROUP BY district
ORDER BY district;
--378

7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(*)DESC;
-- 508

8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT store_id, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
-- 13

9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount), customer_id
FROM payment
WHILE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--- i cant figure this out, can you give me an example?

10. Within the film table, how many rating categories are there? And what rating has the most
movies total?

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;
-- 3, pg13





