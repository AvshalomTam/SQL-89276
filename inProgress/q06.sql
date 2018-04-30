SELECT country,count(*)
FROM customer c, address a,city cty,country ct
WHERE c.address_id = a.address_id AND
a.city_id = cty.city_id AND
cty.country_id = ct.country_id
GROUP BY country
HAVING count(*) > 10 AND count(*) < 20
ORDER BY count(*) DESC;