-- desde psql, puedes usar el comando \copy para importar datos desde un archivo CSV 
-- a una tabla específica. Asegúrate de que el archivo CSV sea accesible desde el 
-- cliente donde se ejecuta psql.
\copy customer(
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    activebool,
    create_date,
    last_update,
    active
) FROM '/path/to/your/file.csv' 
DELIMITER ',' 
CSV HEADER;

-- desde el cliente de PostgreSQL, puedes usar el comando COPY para importar datos 
-- desde un archivo CSV a una tabla específica. Asegúrate de que el archivo CSV 
-- sea accesible desde el servidor donde se ejecuta PostgreSQL.
COPY customer(
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    activebool,
    create_date,
    last_update,
    active
) FROM '/path/to/your/file.csv' 
DELIMITER ',' 
CSV HEADER;