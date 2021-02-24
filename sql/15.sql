/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT
category.name, COUNT(film.film_id) AS sum
FROM film
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
WHERE language_id = 1
GROUP BY (category.name)
ORDER BY category.name;
