create database Besant;
use Besant;
create table doctors(D_id int primary key,D_name varchar(50),Salary int,Specialist set("Cardio","Neural","Cancer","ENT"),Rating float);
show tables;
select * From doctors;
insert into doctors values(1,"Jerry",250000,'Cardio,Neural',4.5);
insert into doctors values(2,"Nivetha",330000,'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,'Neural,ENT',3.9),
						  (6,"sebastin",99000,'ENT,Neural',4.5);
						
Select * from doctors;
