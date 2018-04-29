select count(first_name)
from customer join address
on (customer.address_id = address.address_id)
join city
on (address.city_id = city.city_id)
where city.city ='Aurora';