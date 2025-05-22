COPY customer(
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    activebool,
    create_date
) FROM '/path/to/your/file.csv' 
DELIMITER ',' 
CSV HEADER;