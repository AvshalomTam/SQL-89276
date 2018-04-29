SELECT DISTINCT  c.first_name as 'First Name',  c.last_name as 'Last Name', cty.city as 'City'    
FROM sakila.customer c, sakila.address a,sakila.city cty,sakila.country ct
WHERE ct.country_id = cty.country_id
AND ct.country_id = 20
AND a.city_id = cty.city_id
AND c.address_id = a.address_id;
