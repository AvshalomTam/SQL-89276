SELECT country, count(*) AS 'CustomersNum'
FROM customer c, address a, city ci, country co
WHERE c.address_id = a.address_id 
AND a.city_id = ci.city_id 
AND ci.country_id = co.country_id
GROUP BY country
HAVING count(*) > 10 AND count(*) < 20
ORDER BY count(*) DESC, country;

