use Besant;
create table doctorWindowsExp(
                       D_id int primary key comment 'Unique ID',
                       D_name varchar(50) comment 'Name Of The Doctor',
                       Salary int comment 'Salary details',
                       Major varchar(50) comment 'Major Role',
                       Specialist set("Cardio","Neural","Cancer","ENT") comment 'Specialist Branch',
                       Rating float comment "Ratings of The Doctor") comment 'Details Of the Doctor';
                       
select * From doctorWindowsExp;
insert into doctorWindowsExp values(1,"Jerry",250000,"MS Cardio",'Cardio,Neural',4.5);
insert into doctorWindowsExp values(2,"Nivetha",330000,"MS ENT",'Cancer,Neural,ENT',4.9),
						  (3,"Francis",150000,"MS ENT",'ENT,Cardio',4.2),
						  (4,"Ramesh",180000,"MS Neurology",'Cardio,Cancer',4.0),
						  (5,"Suresh",85000,"MS Nephrology",'Neural,ENT',3.9),
						  (6,"sebastin",99000,"MS Ortho",'ENT,Neural',4.5),
                          (7,"Raju",99000,"MS Ortho",'ENT,Neural',4.3),
                          (8,"Shakthi",120000,"MS Iris",'Cardio,Neural',4.4),
                          (9,"Samantha",250000,"MS BDS",'Cancer,ENT',4.7);

insert into doctorWindowsExp values(10,"Rose",50000,"MS Ortho",'Cardio,Neural',4.5);

truncate table doctorWindowsexp;
select *, row_number() over(partition by major order by salary  )as RowNumber from doctorwindowsExp;

select *, Rank() over(partition by major order by salary desc )as Rank_Hirarchy from doctorwindowsExp;

select *, dense_rank() over(partition by major order by salary desc )as Rank_Hirarchy from doctorwindowsExp;

select *, ntile(2) over(partition by major order by salary )as salary_tile from doctorwindowsExp;

select *, ntile(3) over(order by salary  )as salary_tile from doctorwindowsExp;

select *, lag(salary) over(order by salary)as Prev_salary,
		   lead(salary) over (order by salary) as Nxt_salary from doctorwindowsExp;

select *, lag(salary) over(order by salary desc)as Prev_salary,
		   lead(salary) over (order by salary desc) as Nxt_salary from doctorwindowsExp;

select *, first_value(salary) over(order by salary )as Min_Salary,
		   last_value(salary) over (order by salary rows between unbounded preceding and unbounded following ) as Max_salary from doctorwindowsExp;


select *, first_value(salary) over( partition by major order by salary )as Min_Salary,
		   last_value(salary) over (partition by major order by salary rows between unbounded preceding and unbounded following ) as Max_salary from doctorwindowsExp;

select *, sum(salary) over(partition by major order by salary  )as Running_total from doctorwindowsExp;
select *, sum(salary) over(order by salary  )as Running_total from doctorwindowsExp;


select *, avg(salary) over(partition by major order by salary  )as Avg_salary from doctorwindowsExp;

select *, sum(salary) over(order by salary  rows between 1 preceding and 1 following )as SumWithNeighbours from doctorwindowsExp;
