-- Creating Database
Create Database Project;
show  databases;
Drop  database project;
use Project;

-- Create Table Vehicle
create table Vehicles(Vehicle_id int auto_increment primary key comment 'vehicle ID',
                      Plate_number varchar(20)  comment 'vehicle Plate Number',
                      Vehicle_type Enum('Car','Bus','Bike','Truck') Not Null comment 'vehicle Type',
                      Entry_time datetime comment 'vehicle Entry time',
                      Exit_time datetime comment 'vehicle Exit time') 
                      comment="Table Of Vehicles";

Show Tables;
describe vehicles;

-- Create Table Sensor
create table Sensors(Sensor_id int auto_increment primary key comment 'Sensor ID',
                     Location varchar(100) Not Null comment 'Location',
					 Vehicle_count int Default 0 comment 'vehicle count',
					 Recorded_At datetime Not Null comment 'vehicle Record At')
					 comment="Table Of Sensors";
Show Tables;
describe Sensors;

-- Create Table Traffic Light
create table Traffic_Light(Light_id int auto_increment  primary key comment 'Light ID',
                           Location varchar(100) Not Null comment 'Location',
                           Status Enum ('Red','Yellow','Green') default 'Red' comment 'Status Of Traffic light',
                           Last_Updated datetime comment 'Last Updated time')
						   comment="Table Of Traffic Light";
Show Tables;
describe Traffic_Light;

-- Create Table Violation Table
create table Violations(Violation_id int auto_increment primary key comment 'Violation ID',
						Vehicle_id int comment 'Vehicle ID', 
                        Violation_type Enum ('OverSpeed','No Helmet','Signal Jump','Wrong Lane') comment 'Violation Type',
                        Location varchar(100) Not Null comment 'Location',
                        Violation_Time datetime comment 'Violation Time',
                        foreign key (vehicle_id) references vehicles(Vehicle_id))
						comment="Table Of Violations";
Show Tables;
describe Violations;

-- Insert values to the vehicle table
Insert into Vehicles (Plate_Number, Vehicle_Type, Entry_Time, Exit_Time) Values
('KA01AB1234','Car','2025-09-01 08:05:00','2025-09-01 08:25:00'),
('KA02XY5678','Bike','2025-09-01 09:10:00','2025-09-01 09:30:00'),
('KA03MN4321','Truck','2025-09-01 18:15:00','2025-09-01 18:45:00'),
('KA04PQ9876','Bus','2025-09-01 07:45:00','2025-09-01 08:10:00'),
('KA05JK1111','Car','2025-09-01 10:00:00','2025-09-01 10:30:00'),
('KA06LM2222','Bike','2025-09-01 11:15:00','2025-09-01 11:40:00'),
('KA07NO3333','Truck','2025-09-01 15:20:00','2025-09-01 15:55:00'),
('KA08QR4444','Car','2025-09-01 08:25:00','2025-09-01 08:50:00'),
('KA09ST5555','Bus','2025-09-01 09:50:00','2025-09-01 10:20:00'),
('KA10UV6666','Car','2025-09-01 14:00:00','2025-09-01 14:20:00'),
('KA11WX7777','Bike','2025-09-01 12:10:00','2025-09-01 12:25:00'),
('KA12YZ8888','Truck','2025-09-01 16:40:00','2025-09-01 17:15:00'),
('KA13AA9999','Car','2025-09-01 18:05:00','2025-09-01 18:35:00'),
('KA14BB1010','Bus','2025-09-01 08:20:00','2025-09-01 08:55:00'),
('KA15CC1112','Bike','2025-09-01 19:30:00','2025-09-01 19:50:00'),
('KA16DD1314','Truck','2025-09-01 20:15:00','2025-09-01 20:45:00'),
('KA17EE1516','Car','2025-09-01 21:10:00','2025-09-01 21:40:00'),
('KA18FF1718','Bus','2025-09-01 22:00:00','2025-09-01 22:25:00'),
('KA19GG1920','Bike','2025-09-01 06:50:00','2025-09-01 07:10:00'),
('KA20HH2122','Car','2025-09-01 07:15:00','2025-09-01 07:35:00'),
('KA21JJ2324','Car','2025-09-01 08:40:00','2025-09-01 09:05:00'),
('KA22KK2526','Bus','2025-09-01 09:20:00','2025-09-01 09:50:00'),
('KA23LL2728','Truck','2025-09-01 10:30:00','2025-09-01 11:00:00'),
('KA24MM2930','Bike','2025-09-01 11:10:00','2025-09-01 11:35:00'),
('KA25NN3132','Car','2025-09-01 12:00:00','2025-09-01 12:30:00'),
('KA26OO3334','Truck','2025-09-01 13:20:00','2025-09-01 13:50:00'),
('KA27PP3536','Bus','2025-09-01 14:10:00','2025-09-01 14:35:00'),
('KA28QQ3738','Car','2025-09-01 15:25:00','2025-09-01 15:50:00'),
('KA29RR3940','Bike','2025-09-01 16:05:00','2025-09-01 16:25:00'),
('KA30SS4142','Car','2025-09-01 17:40:00','2025-09-01 18:05:00'),
('KA31TT4344','Bus','2025-09-01 18:15:00','2025-09-01 18:45:00'),
('KA32UU4546','Truck','2025-09-01 19:30:00','2025-09-01 20:00:00'),
('KA33VV4748','Car','2025-09-01 20:05:00','2025-09-01 20:30:00'),
('KA34WW4950','Bike','2025-09-01 21:00:00','2025-09-01 21:20:00'),
('KA35XX5152','Bus','2025-09-01 22:10:00','2025-09-01 22:35:00'),
('KA36YY5354','Truck','2025-09-01 06:20:00','2025-09-01 06:50:00'),
('KA37ZZ5556','Car','2025-09-01 07:10:00','2025-09-01 07:40:00'),
('KA38AA5758','Bike','2025-09-01 08:25:00','2025-09-01 08:45:00'),
('KA39BB5960','Bus','2025-09-01 09:15:00','2025-09-01 09:40:00'),
('KA40CC6162','Car','2025-09-01 10:30:00','2025-09-01 10:55:00'),
('KA41DD6364','Truck','2025-09-01 11:40:00','2025-09-01 12:10:00'),
('KA42EE6566','Bike','2025-09-01 12:55:00','2025-09-01 13:15:00'),
('KA43FF6768','Car','2025-09-01 14:05:00','2025-09-01 14:25:00'),
('KA44GG6970','Bus','2025-09-01 15:20:00','2025-09-01 15:45:00'),
('KA45HH7172','Truck','2025-09-01 16:35:00','2025-09-01 17:00:00'),
('KA46II7374','Car','2025-09-01 18:05:00','2025-09-01 18:25:00'),
('KA47JJ7576','Bike','2025-09-01 19:10:00','2025-09-01 19:30:00'),
('KA48KK7778','Car','2025-09-01 20:30:00','2025-09-01 20:50:00'),
('KA49LL7980','Truck','2025-09-01 21:20:00','2025-09-01 21:50:00'),
('KA50MM8182','Bus','2025-09-01 22:40:00','2025-09-01 23:05:00');

Select * from Vehicles;

-- Insert Values in Sensor Table
Insert into Sensors (Location, Vehicle_Count, Recorded_At) Values
('MG Road',120,'2025-09-01 08:30:00'),
('Electronic City',300,'2025-09-01 09:00:00'),
('Whitefield',250,'2025-09-01 18:30:00'),
('Koramangala',180,'2025-09-01 08:45:00'),
('Indiranagar',90,'2025-09-01 10:15:00'),
('Hebbal',200,'2025-09-01 11:20:00'),
('Jayanagar',160,'2025-09-01 12:40:00'),
('Yeshwanthpur',310,'2025-09-01 17:50:00'),
('BTM Layout',140,'2025-09-01 19:05:00'),
('Majestic',400,'2025-09-01 20:00:00'),
('Banashankari',210,'2025-09-01 07:30:00'),
('Peenya',350,'2025-09-01 09:50:00'),
('KR Market',180,'2025-09-01 10:25:00'),
('Shivajinagar',230,'2025-09-01 11:45:00'),
('Malleshwaram',195,'2025-09-01 12:10:00'),
('Rajajinagar',260,'2025-09-01 13:20:00'),
('Bellandur',310,'2025-09-01 14:15:00'),
('HSR Layout',275,'2025-09-01 15:30:00'),
('Marathahalli',325,'2025-09-01 16:40:00'),
('Sarjapur',180,'2025-09-01 17:25:00'),
('Mysore Road',210,'2025-09-01 07:45:00'),
('Airport Road',370,'2025-09-01 08:10:00'),
('Vijayanagar',190,'2025-09-01 09:35:00'),
('Ulsoor',220,'2025-09-01 10:55:00'),
('Domlur',145,'2025-09-01 11:25:00'),
('Basavanagudi',200,'2025-09-01 12:50:00'),
('Kengeri',250,'2025-09-01 13:40:00'),
('Nayandahalli',300,'2025-09-01 14:50:00'),
('Chickpet',175,'2025-09-01 15:25:00'),
('Magadi Road',210,'2025-09-01 16:00:00'),
('Majestic Circle',280,'2025-09-01 17:40:00'),
('ITPL',260,'2025-09-01 18:15:00'),
('ORR Hebbal',295,'2025-09-01 18:55:00'),
('Brookefield',220,'2025-09-01 19:35:00'),
('KRPuram',240,'2025-09-01 20:05:00'),
('Banerghatta Road',310,'2025-09-01 20:50:00'),
('Hoodi',270,'2025-09-01 21:15:00'),
('Whitefield Main Rd',330,'2025-09-01 21:55:00'),
('Nagawara',250,'2025-09-01 22:20:00'),
('Manyata Tech Park',290,'2025-09-01 22:50:00'),
('Electronic Phase 2',180,'2025-09-01 07:15:00'),
('MG Road Signal',200,'2025-09-01 08:25:00'),
('Koramangala Forum',260,'2025-09-01 09:45:00'),
('Indiranagar Metro',210,'2025-09-01 10:35:00'),
('BTM 2nd Stage',280,'2025-09-01 11:55:00'),
('Jayanagar 4th Block',240,'2025-09-01 13:10:00'),
('Majestic Terminal',400,'2025-09-01 14:30:00'),
('Yelahanka',190,'2025-09-01 16:05:00'),
('Airport Toll',420,'2025-09-01 18:10:00'),
('Peenya Junction',360,'2025-09-01 20:25:00');

Select * from Sensors;

-- Insert Values in Traffic Light Table
Insert into Traffic_Light(Location, Status, Last_Updated) values
('MG Road','GREEN','2025-09-01 08:00:00'),
('Electronic City','RED','2025-09-01 09:00:00'),
('Whitefield','YELLOW','2025-09-01 18:00:00'),
('Koramangala','RED','2025-09-01 08:30:00'),
('Indiranagar','GREEN','2025-09-01 10:00:00'),
('Hebbal','YELLOW','2025-09-01 11:00:00'),
('Jayanagar','GREEN','2025-09-01 12:30:00'),
('Yeshwanthpur','RED','2025-09-01 17:30:00'),
('BTM Layout','YELLOW','2025-09-01 19:00:00'),
('Majestic','GREEN','2025-09-01 20:00:00'),
('Banashankari','RED','2025-09-01 07:15:00'),
('Peenya','GREEN','2025-09-01 09:20:00'),
('KR Market','RED','2025-09-01 10:10:00'),
('Shivajinagar','YELLOW','2025-09-01 11:35:00'),
('Malleshwaram','GREEN','2025-09-01 12:20:00'),
('Rajajinagar','RED','2025-09-01 13:00:00'),
('Bellandur','GREEN','2025-09-01 14:25:00'),
('HSR Layout','YELLOW','2025-09-01 15:30:00'),
('Marathahalli','RED','2025-09-01 16:15:00'),
('Sarjapur','GREEN','2025-09-01 17:00:00'),
('Mysore Road','YELLOW','2025-09-01 07:40:00'),
('Airport Road','GREEN','2025-09-01 08:20:00'),
('Vijayanagar','RED','2025-09-01 09:35:00'),
('Ulsoor','GREEN','2025-09-01 10:45:00'),
('Domlur','YELLOW','2025-09-01 11:25:00'),
('Basavanagudi','GREEN','2025-09-01 12:15:00'),
('Kengeri','RED','2025-09-01 13:40:00'),
('Nayandahalli','GREEN','2025-09-01 14:50:00'),
('Chickpet','RED','2025-09-01 15:10:00'),
('Magadi Road','YELLOW','2025-09-01 16:05:00'),
('Majestic Circle','GREEN','2025-09-01 17:25:00'),
('ITPL','RED','2025-09-01 18:15:00'),
('ORR Hebbal','YELLOW','2025-09-01 18:55:00'),
('Brookefield','GREEN','2025-09-01 19:20:00'),
('KRPuram','RED','2025-09-01 20:00:00'),
('Banerghatta Road','GREEN','2025-09-01 20:45:00'),
('Hoodi','YELLOW','2025-09-01 21:10:00'),
('Whitefield Main Rd','RED','2025-09-01 21:50:00'),
('Nagawara','GREEN','2025-09-01 22:15:00'),
('Manyata Tech Park','YELLOW','2025-09-01 22:40:00'),
('Electronic Phase 2','RED','2025-09-01 07:20:00'),
('MG Road Signal','GREEN','2025-09-01 08:35:00'),
('Koramangala Forum','RED','2025-09-01 09:15:00'),
('Indiranagar Metro','YELLOW','2025-09-01 10:25:00'),
('BTM 2nd Stage','GREEN','2025-09-01 11:55:00'),
('Jayanagar 4th Block','RED','2025-09-01 13:05:00'),
('Majestic Terminal','GREEN','2025-09-01 14:35:00'),
('Yelahanka','YELLOW','2025-09-01 16:00:00'),
('Airport Toll','RED','2025-09-01 18:05:00'),
('Peenya Junction',default,'2025-09-01 20:10:00');

Select * from Traffic_Light;

-- Insert Values in Violation Table
truncate table Violations;
Insert into Violations (Vehicle_ID, Violation_Type, Location, Violation_Time) values
(1,'Signal Jump','MG Road','2025-09-01 08:15:00'),
(2,'No Helmet','Electronic City','2025-09-01 09:20:00'),
(3,'Overspeed','Whitefield','2025-09-01 18:25:00'),
(4,'Wrong Lane','Koramangala','2025-09-01 08:50:00'),
(5,'Signal Jump','Indiranagar','2025-09-01 10:05:00'),
(6,'No Helmet','Hebbal','2025-09-01 11:30:00'),
(7,'Overspeed','Jayanagar','2025-09-01 12:45:00'),
(8,'Wrong Lane','Yeshwanthpur','2025-09-01 17:40:00'),
(9,'Signal Jump','BTM Layout','2025-09-01 19:15:00'),
(10,'Overspeed','Majestic','2025-09-01 20:05:00'),
(11,'No Helmet','Banashankari','2025-09-01 07:35:00'),
(12,'Wrong Lane','Peenya','2025-09-01 09:55:00'),
(13,'Overspeed','KR Market','2025-09-01 10:30:00'),
(14,'Signal Jump','Shivajinagar','2025-09-01 11:40:00'),
(15,'No Helmet','Malleshwaram','2025-09-01 12:25:00'),
(16,'Wrong Lane','Rajajinagar','2025-09-01 13:25:00'),
(17,'Overspeed','Bellandur','2025-09-01 14:35:00'),
(18,'Signal Jump','HSR Layout','2025-09-01 15:40:00'),
(19,'No Helmet','Marathahalli','2025-09-01 16:30:00'),
(20,'Wrong Lane','Sarjapur','2025-09-01 17:15:00'),
(21,'Overspeed','Mysore Road','2025-09-01 07:55:00'),
(22,'Signal Jump','Airport Road','2025-09-01 08:25:00'),
(23,'No Helmet','Vijayanagar','2025-09-01 09:40:00'),
(24,'Wrong Lane','Ulsoor','2025-09-01 10:50:00'),
(25,'Overspeed','Domlur','2025-09-01 11:20:00'),
(26,'Signal Jump','Basavanagudi','2025-09-01 12:55:00'),
(27,'No Helmet','Kengeri','2025-09-01 13:45:00'),
(28,'Wrong Lane','Nayandahalli','2025-09-01 14:55:00'),
(29,'Overspeed','Chickpet','2025-09-01 15:20:00'),
(30,'Signal Jump','Magadi Road','2025-09-01 16:05:00'),
(31,'No Helmet','Majestic Circle','2025-09-01 17:35:00'),
(32,'Wrong Lane','ITPL','2025-09-01 18:20:00'),
(33,'Overspeed','ORR Hebbal','2025-09-01 19:00:00'),
(34,'Signal Jump','Brookefield','2025-09-01 19:25:00'),
(35,'No Helmet','KRPuram','2025-09-01 20:10:00'),
(36,'Wrong Lane','Banerghatta Road','2025-09-01 20:55:00'),
(37,'Overspeed','Hoodi','2025-09-01 21:20:00'),
(38,'Signal Jump','Whitefield Main Rd','2025-09-01 21:55:00'),
(39,'No Helmet','Nagawara','2025-09-01 22:15:00'),
(40,'Wrong Lane','Manyata Tech Park','2025-09-01 22:35:00'),
(41,'Overspeed','Electronic Phase 2','2025-09-01 07:25:00'),
(42,'Signal Jump','MG Road Signal','2025-09-01 08:40:00'),
(43,'No Helmet','Koramangala Forum','2025-09-01 09:25:00'),
(44,'Wrong Lane','Indiranagar Metro','2025-09-01 10:30:00'),
(45,'Overspeed','BTM 2nd Stage','2025-09-01 11:50:00'),
(46,'Signal Jump','Jayanagar 4th Block','2025-09-01 13:15:00'),
(47,'No Helmet','Majestic Terminal','2025-09-01 14:40:00'),
(48,'Wrong Lane','Yelahanka','2025-09-01 16:10:00'),
(49,'Overspeed','Airport Toll','2025-09-01 18:20:00'),
(50,'Signal Jump','Peenya Junction','2025-09-01 20:15:00');


Select * from Violations;

-- CURD Opeations
-- Update
update traffic_light
 set status='Green',last_updated=now() 
 where location='Electronic City';
 
set sql_safe_updates=0;
Select * from traffic_light;

-- Delete

delete from violations where violation_id=2;
Select * from violations;

-- insert new row 

insert into violations values(2,2,'No Helmet','Electronic City','2025-09-01 09:20:00');
Select * from violations;

-- Peak Traffic Hours

Select hour(entry_time) as Hours,count(*) as Vehicle_Count 
from Vehicles 
group by hours 
order by vehicle_count Desc Limit 1;

-- Accident/Violation-Prone Zones

Insert into Violations (Vehicle_ID, Violation_Type, Location, Violation_Time) values
(7,'Overspeed','Jayanagar','2025-09-01 12:45:00'),
(8,'Wrong Lane','Yeshwanthpur','2025-09-01 17:40:00');

select location,count(*) as violation_count 
from violations 
group by location having count(*)>1 
order by violation_count Desc;

select location,count(*) as violation_count 
from violations 
group by location 
order by violation_count Desc;

-- Auto Adjust Traffic Signals (based on sensor count) by using case

update traffic_light t join sensors s on t.location=s.location
set t.status=case
      when s.vehicle_count > 250 then 'Green'
      when s.vehicle_count between 100 and 250 then 'Yellow'
      else 'Red' end, t.last_updated=now();
select * from traffic_light;

-- Vehicles that violated rules (Inner Join)

select v.plate_number,v.vehicle_type,vio.violation_type,vio.location
from vehicles v 
join violations vio on v.vehicle_id=vio.vehicle_id;

-- Average Waiting Time per Vehicle

select vehicle_type,avg(timestampdiff(minute,entry_time,exit_time)) as avg_Wait_time
from vehicles
group by vehicle_type;

-- Average Waiting Time per violations (locations are unique)

select location,avg(timestampdiff(minute,violation_time,now()))as avg_Wait_time
from violations
group by location;

select * from Violations;

-- Find Vehicles inside city right now

select plate_number,vehicle_type
from vehicles
where now() between entry_time and Exit_time;

Select Plate_Number, Vehicle_Type
from Vehicles
where '2025-09-01 08:30:00' between Entry_Time and Exit_Time;

-- Create a View for Daily Traffic Report

create view Daily_Traffic_repoert as
select date(Entry_time) as date,count(*) as Vehicle_passed 
from vehicles
group by date;

select * from Daily_Traffic_repoert;

-- Subquery – Vehicles with Violations only

select vehicle_id,plate_number 
from vehicles 
where vehicle_id in (Select vehicle_id from violations where violation_type="OverSpeed");

select vehicle_id,plate_number 
from vehicles 
where vehicle_id in (Select vehicle_id from violations where violation_type  in ("OverSpeed","Wrong Lane"));

-- Stored Procedure – Vehicle Type
drop table trafficbylocation;
create table trafficbylocation (Vehicle_id int  comment 'vehicle ID',
                                Plate_number varchar(20) Unique comment 'vehicle Plate Number',
                                Vehicle_type Enum('Car','Bus','Bike','Truck') Not Null comment 'vehicle Type',
                                Entry_time datetime comment 'vehicle Entry time',
                                Exit_time datetime comment 'vehicle Exit Time');
              
drop procedure vehicletype;
delimiter $$
create procedure vehicletype()
begin
          insert into trafficbylocation(Vehicle_id,Plate_number,Vehicle_type,Entry_time,Exit_time)
          select * from vehicles where vehicle_type in('car','Bike');
end $$
delimiter ;
call vehicletype();

select * from trafficbylocation;

-- Stored Procedure – Get Traffic by Location
drop procedure GetTrafficByLocation;

delimiter $$
create procedure GetTrafficByLocation(in loc varchar(100))
begin
	Select s.Location, s.Vehicle_Count, t.Status
	from Sensors s
	join Traffic_Light t on s.Location = t.Location
    where s.Location = loc;
end $$
delimiter ;

call GetTrafficByLocation("MG Road");
call GetTrafficByLocation("Koramangala");
call GetTrafficByLocation("Manaparai");


-- Top 3 busiest locations by sensor count
select location, sum(vehicle_count) as Total_count 
from sensors 
group by location
order by total_count Desc
limit 3;

-- Vehicles that stayed longer than 30 minutes inside the city

select vehicle_id,plate_Number,vehicle_type,
timestampdiff(minute,entry_time,exit_time) as duration
from vehicles
where timestampdiff(minute,entry_time,exit_time) > 30;

-- Find vehicles with multiple violations

Insert into Violations (Vehicle_ID, Violation_Type, Location, Violation_Time) values
(1,'Signal Jump','MG Road','2025-09-01 08:15:00'),
(2,'No Helmet','Electronic City','2025-09-01 09:20:00');

Insert into Violations (Vehicle_ID, Violation_Type, Location, Violation_Time) values
(1,'Signal Jump','MCN Nagar','2025-09-01 08:15:00'),
(2,'No Helmet','Harbour City','2025-09-01 09:20:00');



select v.vehicle_id,v.plate_number,count(*) as violations
from vehicles v join violations vio on v.vehicle_id = vio.vehicle_id
group by v.vehicle_id
having count(*)>1;

Insert into Vehicles (Plate_Number, Vehicle_Type, Entry_Time, Exit_Time) Values
('KA01AB1234','Car','2025-09-01 08:05:00','2025-09-01 08:25:00');

select * from Vehicles;

-- Find locations where traffic light stayed RED most recently

select location,status,last_updated
from traffic_light
where status="red"
order by last_updated Desc;

select location,status,last_updated
from traffic_light
where status="red"
order by last_updated 
limit 5;

-- Vehicles entering during office peak (8 AM - 10 AM)
select vehicle_id,plate_number,entry_time
from vehicles
where hour(entry_time) between 8 and 10;

-- Vehicles entering during office peak in minutes 

select vehicle_id,plate_number,entry_time
from vehicles
where minute(entry_time) between 10 and 50;

-- Detect unusual traffic spikes (more than 200 vehicles in a reading)

select sensor_id,location,vehicle_count,recorded_at 
from sensors
where vehicle_count >200
order by vehicle_count Desc;

-- Find locations with no violations

Insert into Traffic_Light(Location, Status, Last_Updated) values
('Rajan Street','GREEN',now()),
('Malur','RED',now());

select * from traffic_light;

select location 
from traffic_light
where location not  in (select distinct location from violations);

-- Join vehicles with time spent and violations (detailed report) using left join

Select v.vehicle_id,v.Plate_Number, v.Vehicle_Type,
       timestampdiff(minute, v.Entry_Time, v.Exit_Time) as Duration,
       vio.Violation_Type, vio.Location
from Vehicles v
left join Violations vio on v.Vehicle_ID = vio.Vehicle_ID
order by Duration desc ;

-- Which type of vehicle violates the most?

select v.vehicle_type,count(vio.violation_id) as violations
from vehicles v 
join violations vio on v.vehicle_id = vio.vehicle_id
group by v.vehicle_type
order by violations Desc;

select v.vehicle_type,count(vio.violation_id) as violations
from vehicles v 
join violations vio on v.vehicle_id = vio.vehicle_id
group by v.vehicle_type
order by violations Desc
limit 1;

select * from Violations;

-- View for  30 days live violations monitoring
drop view Live_Violations;

create view Live_Violations as
select v.Plate_Number, vio.Violation_Type, vio.Location, vio.Violation_Time
from Vehicles v
join Violations vio on v.Vehicle_ID = vio.Vehicle_ID
where vio.Violation_Time > now() - interval 30 day;

select * from Live_Violations;

-- View for   live violations monitoring

Insert into Violations (Vehicle_ID, Violation_Type, Location, Violation_Time) values
(18,'Signal Jump','MCN Nagar','2025-09-01 09:15:00'),
(22,'No Helmet','Harbour City','2025-09-01 10:20:00');
drop view  Check_Violation_time;

create view Check_Violation_time as
select v.Plate_Number, vio.Violation_Type, vio.Location, vio.Violation_Time
from Vehicles v
join Violations vio on v.Vehicle_ID = vio.Vehicle_ID
where vio.Violation_Time>='2025-09-01 08:00:00' and  vio.Violation_Time< '2025-09-01 11:00:00';
          
select * from Check_Violation_time;
          
          
-- Violations update by TCL

start transaction;
update violations set location="OMR" where vehicle_id=15;
savepoint A;
update violations set location="Malur" where vehicle_id=25;
savepoint B;


select * from violations;
commit;
rollback to A;

rollback to B;

-- To View Comment
select column_name,column_comment
from information_schema.columns
where table_name="vehicles"
and table_schema="project";


select table_name,table_comment
from information_schema.tables
where table_name in ("vehicles","Sensors","Traffic_light","Violations")
and table_schema="project";

 
