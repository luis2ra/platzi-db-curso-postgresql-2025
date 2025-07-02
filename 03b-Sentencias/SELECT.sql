-- Uso de la sentencia SELECT, FROM y WHERE
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
SELECT * FROM public.film WHERE title LIKE 'A%';

SELECT * FROM public.film WHERE title LIKE 'Af%';


--Operador IN
SELECT * FROM public.actor WHERE last_name IN ('Chase', 'Nicholson', 'Mostel');


-- Operador GROUP BY y HAVING
SELECT customer_id, COUNT (rental_id) AS total_rentas
FROM rental
GROUP BY customer_id
HAVING COUNT(rental_id) > 25;


-- Operador JOIN (class 15)
SELECT customer.first_name, customer.last_name, rental.rental_date
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id;


-- Operador JOIN (class 16)
SELECT customer.first_name, customer.last_name, rental.rental_date
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;

SELECT customer.first_name, rental.rental_date
FROM customer
RIGHT JOIN rental ON customer.customer_id = rental.customer_id;

SELECT customer.first_name, rental.rental_date
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id;


-- Operador UNION (class 17)
SELECT customer.first_name, customer.last_name, 'Cliente' AS tipo FROM customer
UNION
SELECT first_name, last_name, 'Empleado' AS tipo FROM staff


--Operador EXTRACT (class 18)
SELECT CURRENT_TIMESTAMP;

SELECT EXTRACT(YEAR FROM CURRENT_TIMESTAMP) AS año,
    EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AS mes,
    EXTRACT(DAY FROM CURRENT_TIMESTAMP) AS dia,
    EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS hora,
    EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS minuto,
    CAST(EXTRACT(SECOND FROM CURRENT_TIMESTAMP) AS INT) AS segundo;

SELECT EXTRACT(YEAR FROM rental_date) AS año,
    EXTRACT(MONTH FROM rental_date) AS mes,
    EXTRACT(DAY FROM rental_date) AS dia
FROM rental


-- Operador EPOCH con EXTRACT (class 19)
SELECT rental_id, ROUND(EXTRACT(EPOCH FROM AGE(return_date, rental_date))) AS dias

-- otra forma de calcular los días
SELECT rental_id, AGE(return_date, rental_date) AS dias_rentados FROM rental;


-- Operador CONCAT (clase 20)
SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo, email
FROM customer;

-- Operador || como concatenación alternativa (clase 20)
SELECT first_name || ' ' || last_name AS nombre_completo, email
FROM customer;


-- Operador NULLIF (clase 22)
SELECT film_id, title, NULLIF(replacement_cost, 29.99) AS costo_reemplazo
FROM film
ORDER BY replacement_cost DESC;

-- Operador COALESCE (clase 22)
SELECT film_id, title, COALESCE(description, 'Descripción no disponible') FROM film;

