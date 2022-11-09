-- 1. List all customers who live in Texas (use JOINs)
SELECT first_name, last_name, district
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';


-- 2. Get all payments above $6.99 with the Customer's Full Name
SELECT first_name, last_name, customer.customer_id, payment.amount
FROM customer
FULL JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;


-- 3. Show all customers names who have made payments over $175(use subqueries)
SELECT customer_id, first_name, last_name,
FROM customer
WHERE customer_id in (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
	)


-- 4. List all customers that live in Nepal (use the city table)
SELECT first_name, last_name, customer.customer_id, country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country.country = 'Nepal';


-- 5. Which staff member had the most transactions?
SELECT staff.staff_id, first_name, last_name
FROM staff
FULL OUTER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id
ORDER BY COUNT(payment.staff_id) DESC



-- 6. How many movies of each rating are there?
SELECT COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating)

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT customer.customer_id, first_name, last_name
FROM customer
WHERE customer.customer_id in (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id, amount
	HAVING amount > 6.99
)


-- 8. How many free rentals did our stores give away?
SELECT COUNT(rental.rental_id), payment.amount
FROM rental
FULL JOIN payment
ON rental.rental_id = payment.rental_id
WHERE payment.amount = 0
GROUP BY payment.amount

