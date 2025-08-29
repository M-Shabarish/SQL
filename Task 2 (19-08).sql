use besant;
create table doctors1(D_id int primary key,D_name varchar(50) unique,Salary int,Gender enum("Male","Female","Other"),Age int default(20),Specialist set("Cardio","Neural","Cancer","ENT"),Rating float,Date_doc date,is_present boolean);
insert into doctors1 values(1,"Jerry",250000,"Male",default,'Cardio,Neural',4.5,'2025-04-28',True),
                          (2,"Nivetha",330000,'Female',26,'Cancer,Neural,ENT',4.9,'2024-08-25',True),
						  (3,"Francis",150000,'Male',25,'ENT,Cardio',4.2,'2025-06-22',False),
						  (4,"Ramesh",180000,"Male",19,'Cardio,Cancer',4.0,'2024-12-07',True),
						  (5,"Suresh",85000,'Male',default,'Neural,ENT',3.9,'2025-01-01',False),
						  (6,"",99000,'Male',22,'ENT,Neural',4.5,'2024-03-15',True);
select * From doctors1;
update doctors1 set D_name="Sebastin" where d_id=6;

select * from doctors1 order by specialist desc ; 

select count(*),specialist from doctors1  group by Specialist;

Select * from doctors1;

select Avg(salary),specialist from doctors1  group by Specialist order by specialist; 

select d_name,age, specialist from doctors1  order by d_name; 

select d_name,age, specialist from doctors1  Where age=20  order by d_name; 

select Avg(salary)as Avg_salary,specialist from doctors1  group by Specialist order by Avg_salary; 

select Avg(salary)as Avg_salary,specialist from doctors1  group by Specialist order by Avg_salary desc; 

select Avg(salary)as Avg_salary,specialist from doctors1  group by Specialist  having avg_salary>=250000 order by Avg_salary desc; 
