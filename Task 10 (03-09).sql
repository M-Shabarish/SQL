use Besant;
create table doctoralter(D_id int primary key,D_name varchar(50),Salary int,Specialist set("Cardio","Neural","Cancer","ENT"),Rating float);
show tables;
select * From doctoralter;
insert into doctoralter values(1,"Jerry",250000,'Cardio,Neural',4.5);
insert into doctoralter values(2,"Nivetha",330000,'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,'Neural,ENT',3.9),
						  (6,"sebastin",99000,'ENT,Neural',4.5);
						
Select * from doctoralter;

-- Add column

alter table doctoralter add Major varchar(20);
alter table doctoralter add Patient_id int;
alter table doctoralter add Patient_name varchar(30);

-- Modify

alter table doctoralter modify Major varchar(30);

-- drop 

alter table doctoralter drop Major ;

-- add unique constraint

alter table doctoralter add constraint d_name unique (d_name);

insert into doctoralter values(7,"Jerry",250000,'Cardio,Neural',4.5);


alter table doctoralter add constraint patient_id primary key (Patient_id);

describe doctoralter;

-- unique and notnull
set sql_safe_updates=0;
update doctoralter set patient_id=001 where d_id=1;
update doctoralter set patient_id=002 where d_id=2;
update doctoralter set patient_id=003 where d_id=3;
update doctoralter set patient_id=004 where d_id=4;
update doctoralter set patient_id=005 where d_id=5;
update doctoralter set patient_id=006 where d_id=6;


alter table doctoralter modify patient_id int not null unique;

alter table doctoralter  modify patient_id int Not Null,
add constraint patient_id unique (patient_id);

-- rename

rename table doctoralter to doctoralter1;
Select * from doctoralter1;

rename table doctoralter1 to doctoralter;
Select * from doctoralter;

-- index
alter table doctoralter drop index patient_id;
describe doctoralter;
Select * from doctoralter;

show create table doctoralter;
