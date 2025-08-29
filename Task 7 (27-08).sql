use Besant;
create table doctorDML(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Major varchar(50) comment 'Major Role',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
                       
select * from Doctordml;
insert into doctordml values(1,"Jerry",250000,"MS Cardio",'Cardio,Neural',4.5);
insert into Doctordml values(2,"Nivetha",330000,"MS ENT",'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,"MS ENT",'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,"MS Neurology",'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,"MS Nephrology",'Neural,ENT',3.9),
						  (6,"sebastin",99000,"MS Ortho",'ENT,Neural',4.5),
                          (7,"Raju",99000,"MS Ortho",'ENT,Neural',4.3),
                          (8,"Shakthi",120000,"MS Iris",'Cardio,Neural',4.4),
                          (9,"Samantha",250000,"MS BDS",'Cancer,ENT',4.7);

insert into Doctordml values(10,"Rose",50000,"MS Ortho",'Cardio,Neural',4.5);

-- Update 
update doctordml set major="MS Optho" where d_id=3;

update doctordml set major="MS Dermo " where salary=99000;

set sql_safe_Updates=0;

update doctordml set major="MS Ortho " where salary=99000 and d_id=6;
select * from Doctordml;

update doctordml set major="MS Ortho " where d_name="Raju" and rating between 4.3 and 4.5;

update doctordml set major="MS Dermo " where d_name like "R_j%";

update doctordml set D_name="Yazhini" where major in("Ms Neurology","Ms brain");

update doctordml set Salary=145000  where major ="Ms Nephrology" or D_name="raji";

-- Delete
select * from Doctordml;

delete from doctordml where d_name="jerry";

delete from doctordml where d_id=5 and d_name="suresh";

delete from doctordml where rating between 3.3 and 4.5;

delete from doctordml where d_name like "N%";

delete from doctordml where d_name like "%a";

truncate table doctordml;