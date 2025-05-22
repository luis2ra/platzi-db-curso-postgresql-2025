CREATE TABLE review
(
    review_id SERIAL PRIMARY KEY,
    film_id INT,
    customer_id INT,
    rating INT CHECK(RATING BETWEEN 1 AND 5),
    review_text INT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);