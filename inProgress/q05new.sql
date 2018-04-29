select count(first_name) as 'Count'
from customer,city,address
where customer.address_id=address.address_id
AND address.city_id=city.city_id
and city='Aurora';