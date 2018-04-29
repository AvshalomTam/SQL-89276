SELECT count(*) 
FROM (SELECT name FROM film JOIN film_category 
ON (film.film_id = film_category.film_id) JOIN category 
ON (film_category.category_id = category.category_id) GROUP BY name HAVING AVG(replacement_cost-rental_rate) > 17) as x;