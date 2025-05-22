CREATE VIEW clientes_empleados AS
SELECT first_name, last_name, 'Cliente' AS tipo
FROM customer
UNION
SELECT first_name, last_name, 'Empleado' AS tipo
FROM staff
ORDER BY last_name ASC;
