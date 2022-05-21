create database Assignment#1
use Assignment#1

create table Customer_Details(customer_id int, first_name varchar(10),
							last_name varchar(10), email varchar(25),
							address varchar(30), city varchar(20),
							state varchar(10), zip int)
insert into Customer_Details(customer_id, first_name, last_name,
								email,address, city, state, zip)
values (1, 'Gopal', 'Chandra', 'gopal.1995@gmail.com','San Jose California', 'San Jose', 'California',468654),
	(2, 'Rajdip', 'Sur', 'rajdip96@gmail.com','Los Angeles California', 'Los Angeles', 'California', 589756),
	(3, 'Koushik', 'Pyne', 'koushik.utpal@gmail.com', 'San Diego California' ,'Sen Diego', 'California', 787459),
	(4, 'Amit', 'Sur', 'amitsur@gmail.com','San Jose California', 'San Jose', 'California', 468654),
	(5, 'Bikash', 'Das', 'Bikash.d@yahoo.com','Los Angeles California' , 'Los Angeles', 'California', 589756)
select 
first_name,
last_name
from Customer_Details
Select * from Customer_Details
	where first_name like 'G%'

CREATE TABLE Orders (Order_id INT,Order_date DATE,Amount INT, customer_id INT)

insert into Orders(Order_id, Order_date, amount, customer_id)
values (1001, '2020-05-18', 45, 4),
		(1002, '2020-05-18', 15, 2),
		(1003, '2020-05-18', 11, 3),
		(1004, '2020-05-18', 40, 4),
		(1005, '2020-05-18', 55, 1),
		(1006, '2020-05-18', 5, 2), 
		(1007, '2020-05-18', 19, 3),
		(1008, '2020-05-18', 45, 5),
		(1009, '2020-05-18', 95, 1),
		(1010, '2020-05-18', 65, 5),
		(1011, '2020-05-18', 45, 2),
		(1012, '2020-05-18', 45, 4),
		(1013, '2020-05-18', 45, 4);

select 
cd.customer_id,
Order_id,
first_name,
last_name,
Order_date
from Customer_Details cd inner join
Orders o on cd.customer_id = o.customer_id

select 
cd.customer_id,
Order_id,
first_name,
last_name,
Order_date
from Customer_Details cd left join
Orders o on cd.customer_id = o.customer_id

select 
cd.customer_id,
Order_id,
first_name,
last_name,
Order_date
from Customer_Details cd right join
Orders o on cd.customer_id = o.customer_id

update Orders
	set amount = 100 
		where customer_id = 3

select * from Orders

select 
max([amount]) as Max_OrderAmount, 
min(amount) as Min_OrderAmount,
AVG(amount) as Avg_OrderAmount
from Orders

create function multiple(@column int , @value int)
returns int 
as
begin

declare @Result int = @column*@value
return @Result

end

select amount as em,
dbo.multiple(amount, 10) as amount
from
Orders

select
100 as Val,
case
when 100 < 200 then 'Less than 200'
when 100 = 200 then 'Equal to 200'
else 'Gretter than 200'
end
as Col