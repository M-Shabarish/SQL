use Besant;
create table doctorCE(D_id int primary key,D_name varchar(50),Salary int,Specialist set("Cardio","Neural","Cancer","ENT"),Rating float);
show tables;
select * From doctorCE;
insert into doctorCE values(1,"Jerry",250000,'Cardio,Neural',4.5);
insert into doctorCE values(2,"Nivetha",330000,'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,'Neural,ENT',3.9),
						  (6,"sebastin",99000,'ENT,Neural',4.5);
						
Select * from doctorCE;

select d_id,d_name,salary,Specialist,Rating,case 
          when Salary>=330000 then "High Salary"
          when Salary between 180000 and 250000 then "Medium Salary"
          when salary<179999 then "Low salary"
          else "Nothing" end as Salary_Range from Doctorce;
          
select d_id,d_name,salary,Specialist,Rating,case 
          when Rating>4.9 then "High Rating"
          when Rating between 4.0 and 4.8 then "Medium Rating"
          when Rating<4.0 then "Low Rating"
          else "Nothing" end as Rating_Range from Doctorce;
          
select d_id,d_name,salary,Specialist,Rating,case 
          when Salary>=330000 then "High Salary"
          when Salary between 180000 and 250000 then "Medium Salary"
          when salary<179999 then "Low salary"
          else "Nothing" end as Salary_Range from Doctorce
order by
case
		  when Salary>=330000 then 1
          when Salary between 180000 and 250000 then 2
          when salary<179999 then 3
          else 4  
          end;

select d_id,d_name,salary,Specialist,Rating,case salary
		  when 330000 then "1"
          when 250000 then "2"
          when 180000 then "3"
          else "4"  
          end as salary_Hirerchy from doctorce
order by
case 
		  when Salary>=330000 then 1
          when Salary between 180000 and 250000 then 2
          when salary<179999 then 3
          else 4  
          end;


select d_id,d_name,salary,Specialist,Rating,case 
          when Salary>=330000 then "High Salary"
          when Salary between 180000 and 250000 then "Medium Salary"
          when salary<179999 then "Low salary"
          else "Nothing" end as Salary_Range, count(*) as Count_Doctors from Doctorce
group by
case
		  when Salary>=330000 then 1
          when Salary between 180000 and 250000 then 2
          when salary<179999 then 3
          else 4  
          end;



