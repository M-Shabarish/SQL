use Besant;
drop table doctortrigger;
truncate table doctortrigger;
create table doctortrigger(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Major varchar(50) comment 'Major Role',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
select * from doctortrigger;
insert into doctortrigger values(1,"Jerry",250000,"MS Cardio",'Cardio,Neural',4.5);
insert into doctortrigger values(2,"Nivetha",330000,"MS ENT",'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,"MS ENT",'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,"MS Neurology",'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,"MS Nephrology",'Neural,ENT',3.9),
						  (6,"sebastin",99000,"MS Ortho",'ENT,Neural',4.5),
                          (7,"Raju",99000,"MS Ortho",'ENT,Neural',4.3),
                          (8,"Shakthi",120000,"MS Iris",'Cardio,Neural',4.4),
                          (9,"Samantha",250000,"MS BDS",'Cancer,ENT',4.7);

insert into doctortrigger values(10,"Rose",50000,"MS Ortho",'Cardio,Neural',4.5);

truncate table inserted_doctor;
drop table doctortrigger;

create table inserted_doctor (signin_id int auto_increment primary key,Operetion varchar(20),d_id int,In_time timestamp);

-- insert

delimiter $$
create trigger After_insert
after insert on doctortrigger
for each row
begin
insert into inserted_doctor (operetion,d_id,In_time)values("Insert",new.d_id,current_timestamp());
end;
$$

insert into doctortrigger values(11,"Reshmi",250000,"MS Pedia",'Cardio,ENT',4.1);

select * from doctortrigger;
select * from inserted_doctor;

-- before insert
drop trigger before_insert;
delimiter $$
create trigger before_insert
before insert on doctortrigger
for each row
begin
insert into inserted_doctor (operetion,d_id,In_time)values("Before Insert",new.d_id,current_timestamp());
end;
$$
delete from doctortrigger where d_id=12 ;
delete from doctortrigger where d_id=13;

insert into doctortrigger values(12,"Sahul",55000,"MS Dermo",'Cardio,ENT',4.3);
truncate table inserted_doctor;
select * from doctortrigger;
select * from inserted_doctor;

-- update
drop table  Updated_doctor_salary;
truncate table Updated_doctor_salary;

create table Updated_doctor_salary (signin_id int auto_increment primary key,Operetion varchar(20),d_id int, old_salary int ,new_salary int,In_time timestamp);

drop trigger after_update;
-- after
delimiter $$
create trigger After_update
after update on doctortrigger
for each row
begin
insert into updated_doctor_salary (operetion,d_id,old_salary,New_salary,In_time)values("update",new.d_id,old.salary,new.salary,current_timestamp());
end;
$$

update doctortrigger set salary=salary+10000;

set sql_safe_updates=0;

select * from doctortrigger;
select * from updated_doctor_salary;
--  before

drop trigger before_update;

truncate table Updated_doctor_salary;

delimiter $$
create trigger before_update
before update on doctortrigger
for each row
begin
insert into updated_doctor_salary (operetion,d_id,old_salary,New_salary,In_time)values(" Before update",new.d_id,old.salary,new.salary,current_timestamp());
end;
$$

update doctortrigger set salary=salary+10000 where d_id=2;

select * from doctortrigger;
select * from updated_doctor_salary;

-- delete
truncate table Deleted_Doctors;

create table Deleted_Doctors (d_id int,d_Name varchar(50),Salary int,Deleted_At datetime);

-- after delete

drop trigger After_delete;

delimiter $$
create trigger After_delete
after delete on doctortrigger
for each row
begin
insert into Deleted_Doctors (d_id,d_name,Salary,deleted_at)values(old.d_id,old.d_name,old.salary,current_timestamp());
end;
$$

delete from doctortrigger where d_id=12;
insert into doctortrigger values(12,"Sahul",55000,"MS Dermo",'Cardio,ENT',4.3);

select * from doctortrigger;
select * from Deleted_Doctors;

-- before
truncate table Deleted_Doctors;

delimiter $$
create trigger before_delete
before delete on doctortrigger
for each row
begin
insert into Deleted_Doctors (d_id,d_name,Salary,deleted_at)values(old.d_id,old.d_name,old.salary,current_timestamp());
end;
$$

delete from doctortrigger where d_id=11;

select * from doctortrigger;
select * from Deleted_Doctors;
