SELECT * FROM public.actor;

SELECT * FROM public.actor WHERE first_name = 'Penelope';

SELECT last_name FROM public.actor WHERE first_name = 'Penelope';

SELECT * FROM public.actor WHERE first_name = 'Penelope' AND last_name = 'Guiness';

SELECT * FROM public.actor ORDER BY first_name ASC;

SELECT * FROM public.actor ORDER BY first_name DESC;