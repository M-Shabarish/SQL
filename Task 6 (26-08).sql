use Besant;
-- Main table
create table doctorStorePro(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Major varchar(50) comment 'Major Role',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
-- Second table

create table doctorLowRate(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Major varchar(50) comment 'Major Role',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
                       
-- Insert values to main table

insert into doctorStorepro values(1,"Jerry",250000,"MS Cardio",'Cardio,Neural',4.5);
insert into doctorStorepro values(2,"Nivetha",330000,"MS ENT",'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,"MS ENT",'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,"MS Neurology",'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,"MS Nephrology",'Neural,ENT',3.9),
						  (6,"sebastin",99000,"MS Ortho",'ENT,Neural',4.5),
                          (7,"Raju",99000,"MS Ortho",'ENT,Neural',4.3),
                          (8,"Shakthi",120000,"MS Iris",'Cardio,Neural',4.4),
                          (9,"Samantha",250000,"MS BDS",'Cancer,ENT',4.7);

insert into doctorStorepro values(10,"Rose",50000,"MS Ortho",'Cardio,Neural',4.5);

select * From doctorStorepro;

select * From doctorlowrate;

truncate table doctorlowrate;

drop procedure Storelowrating;

Delimiter $$

Create Procedure StoreLowRating()
begin
      insert into doctorLowrate(D_id,D_name,Salary,Major,Specialist,Rating)
      select * from doctorstorepro where rating < 4.4;
      
      delete from doctorstorepro where rating < 4.4 and d_id in (select d_id from doctorLowrate);
End $$

delimiter ;

set sql_safe_updates=1;

call storeLowRating();

select * From doctorStorepro;

select * From doctorlowrate;
