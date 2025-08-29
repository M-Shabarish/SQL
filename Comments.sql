use Besant;
create table doctorComment(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
select * From doctorComment;

select column_name, COLUMN_COMMENT 
from information_schema.columns
where table_name = 'DoctorComment' 
  and TABLE_SCHEMA = 'besant';

select table_name, Table_COMMENT 
from information_schema.tables
where table_name = 'DoctorComment' 
  and TABLE_SCHEMA = 'besant';


/*
insert into doctorCE values(1,"Jerry",250000,'Cardio,Neural',4.5);
insert into doctorCE values(2,"Nivetha",330000,'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,'Neural,ENT',3.9),
						  (6,"sebastin",99000,'ENT,Neural',4.5);
*/					
Select * from doctorCE;
