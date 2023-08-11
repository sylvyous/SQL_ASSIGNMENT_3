--Retrieve the title, release year, and length of all movies in the database
SELECT title,
	   release_year,
	   length
FROM film

--List the titles and descriptions of movies released after the year 2000
--Display the first 10 movie titles in alphabetical order.
SELECT title,
	   description,
	   release_year
FROM film 
WHERE release_year>2000
ORDER BY title
LIMIT 10

--Show the titles of movies where the title contains the word "Action".
SELECT title
FROM film 
WHERE title like '% Action' or title like 'Action %' or title like '% Action %'

----.List the titles of movies that contain the word "Love" in any case (case-insensitive)
SELECT title
FROM film 
WHERE title ilike '% Love' or title ilike 'Love %' or title ilike '% Love %'

--Display the title of movies in uppercase and their description in lowercase.
SELECT upper(title),
	   lower(description)	   
FROM film 

--Retrieve the first name and last name of customers whose last name starts with "A" and their first name contains "e" or "E"
SELECT first_name,
       last_name	   
FROM customer
WHERE first_name ilike '%e%' and substring(last_name,1,1)='A'

--.List the titles of movies with a rental rate greater than $4.00, ordered by rental rate in descending order.
SELECT title,
       rental_rate
FROM film 
WHERE rental_rate > 4.00
ORDER BY rental_rate DESC

--Display the titles of the 5 longest movies.
SELECT title,
       length
FROM film 
ORDER BY length DESC
Limit 5

--Find the titles of movies that have "dog" anywhere in their title and were released before the year 2005

SELECT title,
       release_year
FROM film 
WHERE title ilike '%dog%' and release_year < 2005

--List the first name and last name of customers whose last name starts with "M" and their first name has an "a" or "A" in the second position.
SELECT first_name,
       last_name	   
FROM customer
WHERE substring(first_name,2,1) IN ('a','A') and substring(last_name,1,1)='M'

--Retrieve the titles of movies that contain the word "fantasy" and sort them in alphabetical order.
SELECT title
FROM film 
WHERE title ilike '% fantasy' or title ilike 'fantasy %' or title ilike '% fantasy %'
ORDER BY title


