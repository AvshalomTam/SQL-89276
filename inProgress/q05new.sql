SELECT count(first_name) AS 'Count'
FROM customer, city, address
WHERE customer.address_id=address.address_id
AND address.city_id=city.city_id
AND city='Aurora';