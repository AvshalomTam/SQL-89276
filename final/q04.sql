SELECT DISTINCT  c.first_name AS 'First Name',
c.last_name AS 'Last Name',
ci.city AS 'City'    
FROM customer c, address a, city ci, country co 
WHERE c.address_id = a.address_id 
AND a.city_id = ci.city_id
AND ci.country_id = co.country_id
AND co.country ='Canada'
ORDER BY last_name, first_name;