USE sakila;
-- Review the tables in the database.

-- Explore tables by selecting all columns from each table or using the in built review features for your client.
SELECT * FROM actor, address category, city, country, customer, film, film_actor, film_category, film_text, inventory, language, payment, rental, staff, store;

-- Select one column from a table. Get film titles.
SELECT title FROM film;

-- Select one column from a table and alias it. Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
SELECT distinct (name) AS Languages from language;

-- Using the select statements and reviewing how many records are returned, can you find out how many stores and staff does the company have? Can you return a list of employee first names only?
SELECT COUNT(return_date) AS 'Number of Records returned' FROM rental;
SELECT COUNT(staff_id) AS 'Number of Staff' FROM staff;
SELECT COUNT(store_id) AS 'Number of Stores' FROM store;
SELECT first_name from staff;

-- Bonus: How many unique days did customers rent movies in this dataset?
select count(distinct DATE(rental_date)) from rental;
