select first_name as 'First name', last_name as 'Last name', city as 'City'
from customer join address
on (customer.address_id = address.address_id)
join city
on (address.city_id = city.city_id)
join country
on (city.country_id = country.country_id)
where country.country ='Canada';