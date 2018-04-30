SELECT distinct last_name, first_name 
FROM actor
WHERE last_name IN(SELECT last_name FROM actor GROUP BY last_name HAVING count(*) > 3)
AND first_name IN(SELECT first_name FROM actor GROUP BY first_name HAVING count(*) = 1);