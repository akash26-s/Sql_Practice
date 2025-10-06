desc sales;
select * from sales
where amount>10000 
order by amount desc;

select * from sales
where amount>10000 and GeoID='g1'
order by GeoID,PID,amount desc;

select saledate,amount,boxes,weekday(saledate) as `day of week`
from sales
having weekday(saledate) =4;


select * from people

where team in ('delish','jucies');
use `awesome chocolates`;
select * from sales;

select saledate,amount,customers,
       case  when amount <1000 then 'under 1k'
             when amount <5000 then 'under5k'
	   else 'above 5k'
       end as 'validation amount'
from sales
       




