use store;


delete from customers where id = 6;
delete from customers where id in (7,8);



select * from  customers;

select customers.firstname, customers.lastname, customers.company
from customers
inner join orders ON orders.id = orders.id;

select customers.firstname, customers.lastname, customers.company
from customers
inner join orders ON orders.id = orders.id
where firstname = 'SPIDER';

