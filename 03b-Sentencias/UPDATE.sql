UPDATE customer 
SET first_name = 'Amin Eduardo'
WHERE customer_id = 600;

-- Después puedes consultar tus cambios con:
SELECT * FROM customer WHERE first_name LIKE 'Amin%';