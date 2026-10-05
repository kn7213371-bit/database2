select count(b.id) as number_of_books , a.name
from books as b
inner join authors as a on b.author_id = a.id
group by a.name ;
----
select count(b.id) as number_of_books , a.name
from books as b
inner join authors as a on b.author_id = a.id
group by a.name
having COUNT(b.id) >= 3;
----
select count(id) as number_of_aut , country
from authors
group by country
having count(id) > 1;
---
select c.id as id_customers,c.name as Name_customer , sum(oi.quantity * oi.cost) as total_order_price 
from orders as o
join order_item as oi
on o.id=oi.order_id
join customers as c 
on c.id=o.customer_id
group by c.name , c.id
ORDER BY total_order_price DESC
limit 5;
---
select c.id as id_customers,c.name as Name_customer , sum(oi.quantity * oi.cost) as total_order_price 
from orders as o
join order_item as oi
on o.id=oi.order_id
join customers as c 
on c.id=o.customer_id
group by c.name , c.id
having sum(oi.quantity * oi.cost) > 100 ;
---
select  c.id as id_customers,c.name as Name_customer 
from orders as o
LEFT join customers as c
on c.id = o.customer_id
where o.id is null;
---
select b.title , b.id , oi.order_id 
from books as b
left join order_item as oi 
on oi.book_id = b.id
where oi.order_id is null;
---
select b.id as books_id,b.title as title_books ,a.name as name_author ,sum(oi.quantity) as number_sold
from books as b
join order_item as oi
on b.id=oi.book_id
join authors as a
on a.id = b.author_id
group by b.id,b.title ,a.name 
order by sum(oi.quantity) desc
limit 5;
---
select a.country ,sum(oi.quantity * cost ) as total_sold
from books as b
join order_item as oi
on b.id=oi.book_id
join authors as a
on a.id = b.author_id
group by a.country ;
---
select count(o.id) , o.customer_id ,c.name
from orders as o
join customers as c
on c.id= o.customer_id
group by  o.customer_id ,c.name
having count(o.id) < 2;
---
SELECT 
o.id AS order_id,
COUNT(DISTINCT oi.book_id) AS number_of_books
FROM orders AS o
JOIN order_item AS oi
ON o.id = oi.order_id
GROUP BY o.id
HAVING COUNT(DISTINCT oi.book_id) >= 3;
