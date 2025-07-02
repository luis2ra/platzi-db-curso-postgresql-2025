-- SELECT * FROM customer;

INSERT INTO customer (store_id, first_name, last_name, email, address_id, activebool, create_date, active) 
VALUES (1, 'Amin', 'Espinoza', 'amin.espinoza@email.com', 5, true, NOW(), 1);

SELECT * FROM customer WHERE first_name = 'Amin';