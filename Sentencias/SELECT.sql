SELECT * FROM public.actor;

SELECT * FROM public.actor WHERE first_name = 'Penelope';

SELECT last_name FROM public.actor WHERE first_name = 'Penelope';

SELECT * FROM public.actor WHERE first_name = 'Penelope' AND last_name = 'Guiness';


-- Operador ORDER BY
SELECT * FROM public.actor ORDER BY first_name ASC;

SELECT * FROM public.actor ORDER BY first_name DESC;


-- Operador BETWEEN
SELECT * FROM public.payment;

SELECT * FROM public.payment WHERE amount BETWEEN 5 AND 8;


-- Operador LIKE
SELECT * FROM public.film WHERE first_name LIKE 'A%';

SELECT * FROM public.film WHERE first_name LIKE 'Af%';


--Operador IN
SELECT * FROM public.actor WHERE first_name IN ('Chase', 'Nicholson', 'Mostel');

-- Operador GROUP BY y HAVING
SELECT customer_id, COUNT (rental_id) AS total_rentas
FROM rental
GROUP BY customer_id
HAVING COUNT(rental_id) > 20;

-- Operador JOIN
SELECT customer.first_name, customer.last_name, rental.rental_date
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id;

SELECT customer.first_name, customer.last_name, rental.rental_date
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;

SELECT customer.first_name, rental.rental_date
FROM customer
RIGHT JOIN rental ON customer.customer_id = rental.customer_id;

SELECT customer.first_name, rental.rental_date
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id;

-- Operador UNION
SELECT customer.first_name, customer.last_name, 'Cliente' AS tipo FROM customer
UNION
SELECT first_name, last_name, 'Empleado' AS tipo FROM staff

--Operador EXTRACT
SELECT EXTRACT(YEAR FROM rental_date) AS año,
    EXTRACT(MONTH FROM rental_date) AS mes,
    EXTRACT(DAY FROM rental_date) AS dia
FROM rental

-- Operador EPOCH
SELECT rental_id, ROUND(EXTRACT(EPOCH FROM AGE(return_date, rental_date))) AS dias

-- Operador CONCAT
SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM customer;

-- Operador NULLIF
SELECT film_id, title, NULLIF(replacement_cost, 29.99) AS costo_reemplazo
FROM film
ORDER BY replacement_cost DESC;

-- Operador COALESCE
SELECT film_id, title, COALESCE(description, 'Descripción no disponible') FROM film;

