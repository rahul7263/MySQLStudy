create database GBK_Automation;
use GBK_Automation;
create table students(
firstname varchar(255),
lastname varchar(255),
phone varchar(50),
address varchar(255),
city varchar(255)

);
show tables;
insert into students (firstname,lastname,phone,address,city) values("Rahul","Kande","7020370343","Bank colony Near Sapna Hotel flat no 03 Indrayani Niwas","Parli-Vaijnath");
insert into students (firstname,lastname,phone,address,city) values("Ashwini","Nigade","9022712429","Demo of address-1","demo of city name-1");
insert into students (firstname,lastname,phone,address,city) values("Aishwarya","Todkari","9321192636","demo of address-2","demo of city name-2");
insert into students (firstname,lastname,phone,address,city) values("Sanket","Pawar","8898041195","demo of address-3","demo of city name-3");
insert into students (firstname,lastname,phone,address,city) values("Vithal","Rathod","8484822175","demo of address-4","demo of city name-4");
insert into students (firstname,lastname,phone,address,city) values("Vitthal","dhakne","9325454346","demo of address-5","demo of city name-5");
insert into students (firstname,lastname,phone,address,city) values("Sandep","Dube","7020546653","demo of address-6","demo of city name-6");
insert into students (firstname,lastname,phone,address,city) values("Tushar","Khade","9511631958","demo of address-7","demo of city name-7");

SELECT * FROM students;

alter table students add email varchar(30);
update students set email="exmple@gmail.com" where firstname="Rahul";

update students set city="parli-vaijnath" where firstname="Rahul";

rollback; #rollback not working we need to add in start transaction query

start transaction;
update students set city="USA" where firstname="Rahul";
rollback;

start transaction;
update students set city="paris" where firstname="Ashwini";
commit; #commit confrom the data entry in data base when we apply commit we can't rollback it
rollback;

alter table students modify column email varchar(60);
alter table students rename column email to gmail;

SET SQL_SAFE_UPDATES=0;
update students set address ="demo of update query" where firstname="ashwini";

update students set address = case firstname
when "Aishwarya" then "demo of multiple address change in one query code"
when "Sanket" then "demo of multiple address change in one query code-1"
else address
end
where firstname in("Aishwarya","sanket");

delete from students where firstname="Tushar";
start transaction;
delete from students where firstname="Tushar";
rollback;
delete from students where firstname in("Sandep","Vitthal");
delete from students;

#union query 
#fristly create two tables with same data type same colum with smae name 
create table pune_employe (
id int,
ename varchar(50),
salary int
);

select * from pune_employe;
insert into pune_employe values (1,"Rahul",100000);
insert into pune_employe values (2,"Yoga",50000);
insert into pune_employe values (3,"Arvind",25000);


create table delhi_employe (
id int,
ename varchar(50),
salary int
);

select * from delhi_employe;
insert into delhi_employe values (1,"Rahul",100000);
insert into delhi_employe values (2,"Krishna",50000);
insert into delhi_employe values (3,"Samadhan",25000);

#union dont show the duplicate records
select * from pune_employe
union
select * from delhi_employe;

#union all shows the duplicate records
select * from pune_employe
union all
select * from delhi_employe;

#join and inner join and alieses
create table customer(
cust_id int,
cust_name varchar(50),
country varchar(50)
);
select * from customer;
insert into customer values (1,"Rahul","India");
insert into customer values (2,"Yoga","USA");
insert into customer values (3,"Krishna","Paris");
insert into customer values (4,"Sachin","Maxico");
insert into customer values (5,"Meghraj","France");
insert into customer values (6,"Raj","Ashotreliya");
insert into customer values (7,"Kshitij","Norway");
delete from customer;

create table orders(
order_id int,
cust_id int,
order_amount int
);
select * from orders;
insert into orders values (6,6,35000);
insert into orders values (5,5,45000);
insert into orders values (3,3,87000);
insert into orders values (1,1,47500);
insert into orders values (2,2,98000);
insert into orders values (7,7,149000);
insert into orders values (4,4,56000);

# joning the two tables based on comman column name 
select * from customer join orders on customer.cust_id = orders.cust_id;
select * from customer inner join orders on customer.cust_id = orders.cust_id;

#for better reading or better query writing we use aliases
select * from customer c join orders o on c.cust_id = o.cust_id;

#instaed of selecting all columns we can select specific column from both the tbale
select c.cust_id, c.cust_name, o.order_id, o.order_amount from customer c join orders o on c.cust_id = o.cust_id;

#left join will fetch data from the left side of the data table 
select * from customer left join orders on customer.cust_id = orders.cust_id;
select o.order_id, o.order_amount,c.cust_name from orders o left join customer c on c.cust_id = o.cust_id;

#right join fetch data from the right side of the data table
select * from customer c right join orders o on c.cust_id = o.cust_id;

commit;