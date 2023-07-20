create database intel;
show databases;
use intel;
create table cpus(
i3 varchar(50),
i5 varchar(50),
i7 varchar(50)
);
show tables;
insert into cpus value ('i3 10100f','i5 1044f','i7 10700f');
insert into cpus value("i3 12100f","i5 12400f","i7 12700f");
insert into cpus value("i3 9100f","i5 9400f","i7 9700f");
insert into cpus value("i3 8100f","i5 8400f","i7 8700f");
show tables;
select * from cpus;
commit;

