create database hr;
use  hr;

create table emp(
 empid int primary key,
 fristname varchar(255),
 lastname varchar(255),
 phone int,
 salary int,
 joindate date,
 department varchar(255),
 gender varchar(255)
);
alter table emp modify column phone varchar(255);
alter table emp modify column phone bigint;

insert into emp values(1,"Rahul","Kande",7020370343,65000,"2023-08-15","Software Testing","male");
insert into emp values(2,"dyaneshwar","Nagargoje",8668229147,45000,"2023-04-15","Software Testing","male");
insert into emp values(3,"Yogesh","Modale",9156003434,35000,"2023-02-12","Data Analyst","male");
insert into emp values(4,"Krishna","Kendre",8421465385,40000,"2022-02-11","Cloud Enginner","male");
insert into emp values(5,"Akshay","Gitte",7276234734,58000,"2023-03-16","Software Testing","male");
insert into emp values(6,"Kshitij","Jagatkar",9921899534,133333,"2021-02-12","Data Scientist","male");
insert into emp values(7,"Swapnil","Phad",9527174034,64000,"2022-06-17","Software Testing","male");

insert into emp values(8,"Sachin","Kande",9527146826,68000,"2022-06-17","Software Testing","");

insert into emp values(9,"Sachin","Kande",9527146826,70000,"2023-04-19","Software Testing",null);
#featching data who has null value
select * from emp where gender is null;

select * from emp;
select * from emp where salary>50000;
select * from emp where salary<=50000;
select * from emp where department=3;
select * from emp where gender is null;

#distinct will give you unique records , does not shows duplicate records
select distinct empid from emp;

#AND OR and NOT 
select * from emp where salary>35000 and department = "Software Testing";
select * from emp where salary>35000 or department = "Software Testing";
#NOT Operator skips the givn codition and displays other data
select * from emp where not fristname = "Sachin"; 

#betwwen and not between operator
select * from emp where salary between 25000 and 50000;
select * from emp where salary not between 25000 and 50000;

#in and not in operator
select * from emp where salary in(35000,40000,58000);
select * from emp where salary not in(35000,40000,58000);

#pattren matching opertor or also called whild card characters(like 's%')

#fetch the all names that includes s character 
select * from emp where fristname like 's%';

#fetch the all names that ends with r character
select * from emp where fristname like '%r'; 

#fetch the start char with r and end char with l
select * from emp where fristname like 'r%l';

#fetch the name that includes h shomewhere between names 
select * from emp where fristname like '%h%';

#does not fetch the name that includes frist char is k
select * from emp where fristname not like 'k%';

#fetch the data that includes names before a any number of char but after a there should be 1 character
select * from emp where fristname like '%a_';

#fetch the names that have only ncludes only 5 characters in there names  
select * from emp where fristname like '_____';