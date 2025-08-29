use besant;

-- table 1

create table doctorx(D_id int primary key,D_name varchar(50) unique,Salary int,Gender enum("Male","Female","Other"),Age int default(20),Specialist set("Cardio","Neural","Cancer","ENT"),Rating float,Date_doc date,is_present boolean);
insert into doctorx values(1,"Jerry",250000,"Male",default,'Cardio,Neural',4.5,'2025-04-28',True),
                          (2,"Nivetha",330000,'Female',26,'Cancer,Neural,ENT',4.9,'2024-08-25',True),
						  (3,"Francis",150000,'Male',25,'ENT,Cardio',4.2,'2025-06-22',False),
						  (4,"Ramesh",180000,"Male",19,'Cardio,Cancer',4.0,'2024-12-07',True),
						  (5,"Suresh",85000,'Male',default,'Neural,ENT',3.9,'2025-01-01',False),
						  (6,"",99000,'Male',22,'ENT,Neural',4.5,'2024-03-15',True);
select * From doctorx;


-- Table2

create table doctory(D_id int primary key ,No_of_patients int);
insert into doctory values(1,10),(2,25),(3,7),(4,8),(5,12),(6,2);
select * From doctory;
