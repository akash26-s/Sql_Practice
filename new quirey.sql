use `awesome chocolates`;

select * from sales;

select * from people;

select * from products;

select s.saledate,s.amount,p.salesperson,p.spid
from sales as s
join people as p on p.spid=s.spid;

-- multiple join 
select s.saledate,s.amount,p.salesperson,p.team,pr.product,pr.pid
from sales s
join people p on p.spid=s.spid
join products pr on pr.pid=s.pid;


select s.saledate,s.amount,p.salesperson,p.team,pr.product,pr.pid
from sales s
join people p on p.spid=s.spid
join products pr on pr.pid=s.pid
where Amount<500 and team='jucies'
order by amount desc;




-- group by

select geo,sum(amount) as Total,avg(amount) as average
from sales s
join geo g on s.geoid=g.geoid
group by geo 





