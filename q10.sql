SELECT COUNT(*) AS 'num'
FROM customer 
JOIN address
ON (customer.address_id = address.address_id)
JOIN city
ON (address.city_id = city.city_id)
WHERE city.city ='Arak'
GROUP BY last_name
HAVING last_name LIKE '%S';





