SELECT count(*) AS 'Count'
FROM 
(SELECT category_id 
FROM film JOIN film_category 
ON (film.film_id = film_category.film_id)
GROUP BY category_id 
HAVING AVG(replacement_cost-rental_rate) > 17) 
as x;
