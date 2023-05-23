--select a.first_name ,f.title  
-- from actor a 
--join film_actor fa on a.actor_id = fa.actor_id
--join film f on f.film_id = fa.film_id
--where a.first_name like 'Ni%';

--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’? ---- 2

select count(a.last_name) 
from actor a
where a.last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? ---- 5,607

--SELECT t.column_name(s) 
--FROM table_name t
--WHERE t.column_name BETWEEN value1 AND value2;


select count(p.amount)
from payment p
where p.amount between 3.99 and 5.99;

--3. What films have exactly 7 copies? (search in inventory)---

--select * from film f
--where f.title = 'Airport Pollock';

select f.title, count(i.film_id) as film_count
from film f 
join inventory i on i.film_id = f.film_id
group by f.title 
having count (i.film_id) = 7;

--4. How many customers have the first name ‘Willie’? ---- 2

select count(c.first_name)
from customer c
where c.first_name = 'Willie';

--5. What store employee (get the id) sold the most rentals (use the rental table)? --- Mike

select r.staff_id, s.first_name, count(r.rental_id) as rentals
from rental r 
join staff s on s.staff_id = r.staff_id
group by r.staff_id, s.first_name  
order by rentals desc 
limit 1;

--6. How many unique district names are there?-- 378

select count(distinct a.district)
from address a;

--7. What film has the most actors in it? (use film_actor table and get film_id)

--select fa.actor_id, count(fa.film_id) as films 
--from film_actor fa
--group by fa.actor_id
--order by films desc
--limit 1

select fa.actor_id, f.title, count(fa.film_id) as films 
from film_actor fa
join film f on f.film_id = fa.film_id 
group by fa.actor_id, f.title 
order by films desc
limit 1;
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)--- 13

select count(c.customer_id)
from customer c
join store s on s.store_id = c.store_id
where c.last_name like '%es' and c.store_id = 1;


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select count(p.payment_id) as payments
from payment p  
join customer c on c.customer_id  = p.customer_id 
where p.amount between 4.99 and 5.99 
and c.customer_id between 380 and 430
group by c.customer_id 
having count(*) >= 250;


--10. Within the film table, how many rating categories are there?--5  And what rating has the most
--movies total?--- 223

select f.rating, count(*) as rating_count
from film f
group by f.rating
order by rating_count desc;




