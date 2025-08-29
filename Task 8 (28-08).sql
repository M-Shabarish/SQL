use Besant;
create table doctorTCL(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Major varchar(50) comment 'Major Role',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
                       
select * from doctorTCL;
insert into doctorTCL values(1,"Jerry",250000,"MS Cardio",'Cardio,Neural',4.5);
insert into doctorTCL values(2,"Nivetha",330000,"MS ENT",'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,"MS ENT",'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,"MS Neurology",'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,"MS Nephrology",'Neural,ENT',3.9),
						  (6,"sebastin",99000,"MS Ortho",'ENT,Neural',4.5),
                          (7,"Raju",99000,"MS Ortho",'ENT,Neural',4.3),
                          (8,"Shakthi",120000,"MS Iris",'Cardio,Neural',4.4),
                          (9,"Samantha",250000,"MS BDS",'Cancer,ENT',4.7);

insert into doctorTCL values(10,"Rose",50000,"MS Ortho",'Cardio,Neural',4.5);

start transaction;
update doctorTCL set salary=100000 where d_id=7;
update doctorTCL set salary=280000 where d_id=9;
select * from doctorTCL; 

rollback;

commit;

Start transaction;
update doctorTCL set D_name="David" where d_id=8;
rollback;
commit;

Start transaction;
update doctorTCL set D_name="Regina" where d_id=10;
rollback;
commit;
select * from doctorTCL; 

Drop table doctorTCL;
Start transaction;
update doctorTCL set major="MS Dermo" where d_name="Raju";
savepoint A;
update doctorTCL set major="MS Optho" where d_name="Francis";
savepoint B;

rollback to A;
rollback to B;

release savepoint B;

commit;

set sql_safe_updates=0;
