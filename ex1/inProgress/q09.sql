SELECT first_name,last_name FROM customer 
WHERE customer.first_name = (SELECT first_name FROM actor WHERE actor.actor_id = 8)
UNION 
(SELECT first_name,last_name FROM actor WHERE actor.actor_id NOT LIKE 8 
AND actor.first_name = (SELECT first_name FROM actor WHERE actor.actor_id = 8))
 ORDER BY last_name;