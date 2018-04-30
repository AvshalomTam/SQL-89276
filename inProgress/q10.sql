select first_name as "FN", last_name as "LN"
from customer 
join address
on (customer.address_id = address.address_id)
join city
on (address.city_id = city.city_id)
where city.city ='Arak'
GROUP BY last_name
HAVING last_name LIKE '%S';