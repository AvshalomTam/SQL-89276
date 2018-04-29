SELECT DISTINCT  c.first_name AS 'First Name',
c.last_name AS 'Last Name',
cty.city AS 'City'    
FROM customer c, address a, city cty, country ct
WHERE ct.country_id = cty.country_id
AND ct.country_id = 20
AND a.city_id = cty.city_id
AND c.address_id = a.address_id ORDER BY last_name,first_name;
