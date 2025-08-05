create database TransportTracker;
use TransportTracker;
create table Buses(bus_id int primary key Auto_increment,route_number varchar(20),capacity int)
create table Routes(route_id int primary key Auto_increment,start_point varchar(100),end_point varchar(100),expected_duration int)
create table Students(student_id int primary key Auto_increment,name varchar(100),class varchar(20),stop_location varchar(100));
create table Drivers(driver_id int primary key Auto_increment,name varchar(100), license_no varchar(50));
create table Supervisors(supervisor_id int primary key Auto_increment,name varchar(100));
create table Bus_assignments(assignment_id int primary key Auto_increment,bus_id int,driver_id int,supervisor_id int,assignment_date date,foreign key(bus_id) references Buses(bus_id),foreign key(driver_id) references Drivers(driver_id),foreign key(supervisor_id) references Supervisors(supervisor_id))
create table Boarding_log(log_id int primary key Auto_increment,student_id int,bus_id int,time_boarded datetime,time_exited datetime,foreign key(student_id) references Students(student_id),foreign key(bus_id) references Buses(bus_id))
create table GPS_tracking(gps_id int primary key Auto_increment,bus_id int,latitude decimal(9,6),longitude decimal(9,6),timestamp datetime,speed decimal(5,2),foreign key(bus_id) references Buses(bus_id)); 
create table Incidents(incident_id int primary key Auto_increment,bus_id int,type varchar(50),description text,timestamp datetime,foreign key(bus_id) references Buses(bus_id));
INSERT INTO Buses (route_number, capacity) VALUES('R1', 40),('R2', 30),('R3', 50),('R4', 45),('R5', 35);
INSERT INTO Routes (start_point, end_point, expected_duration) VALUES('Main Gate', 'Block A', 15),('Station Road', 'Block B', 25),('North Street', 'Admin Office', 30),
('Village Square', 'College Campus', 35),
('City Park', 'Hostel', 20);
INSERT INTO Students (name, class, stop_location) VALUES
('Ram Kumar', '10-A', 'Main Gate'),
('Sita Devi', '9-B', 'Station Road'),
('Karthik Raj', '12-C', 'North Street'),
('Meena S', '11-A', 'Village Square'),
('Vikram N', '10-C', 'City Park'),
('Priya M', '9-A', 'Station Road'),
('Arun P', '12-B', 'North Street'),
('Divya L', '11-C', 'Village Square'),
('Gopal S', '10-B', 'Main Gate'),
('Anjali R', '11-B', 'City Park');
INSERT INTO Drivers (name, license_no) VALUES
('Rajesh K', 'DL001'),
('Sundar M', 'DL002'),
('Naveen R', 'DL003'),
('Kiran V', 'DL004'),
('Vinoth A', 'DL005');
INSERT INTO Supervisors (name) VALUES
('Kalaivani T'),
('Prakash S'),
('Mohana B'),
('Devi L'),
('Ramesh G');
INSERT INTO Bus_Assignments (bus_id, driver_id, supervisor_id, assignment_date) VALUES
(1, 1, 1, '2025-08-03'),
(2, 2, 2, '2025-08-03'),
(3, 3, 3, '2025-08-03'),
(4, 4, 4, '2025-08-03'),
(5, 5, 5, '2025-08-03');
INSERT INTO Boarding_Log (student_id, bus_id, time_boarded, time_exited) VALUES
(1, 1, '2025-08-03 07:45:00', '2025-08-03 08:00:00'),
(2, 2, '2025-08-03 07:50:00', '2025-08-03 08:15:00'),
(3, 3, '2025-08-03 07:30:00', '2025-08-03 08:00:00'),
(4, 4, '2025-08-03 07:35:00', '2025-08-03 08:10:00'),
(5, 5, '2025-08-03 07:40:00', '2025-08-03 08:05:00'),
(6, 2, '2025-08-03 07:55:00', '2025-08-03 08:20:00'),
(7, 3, '2025-08-03 07:25:00', '2025-08-03 08:00:00'),
(8, 4, '2025-08-03 07:30:00', '2025-08-03 08:05:00'),
(9, 1, '2025-08-03 07:50:00', '2025-08-03 08:05:00'),
(10, 5, '2025-08-03 07:45:00', '2025-08-03 08:10:00');
INSERT INTO GPS_Tracking (bus_id, latitude, longitude, timestamp, speed) VALUES
(1, 11.0001, 78.0001, '2025-08-03 07:45:00', 35.5),
(1, 11.0002, 78.0002, '2025-08-03 07:50:00', 38.0),
(2, 11.0011, 78.0011, '2025-08-03 07:50:00', 40.5),
(3, 11.0022, 78.0022, '2025-08-03 07:30:00', 42.0),
(4, 11.0033, 78.0033, '2025-08-03 07:35:00', 37.0),
(5, 11.0044, 78.0044, '2025-08-03 07:40:00', 45.0),
(2, 11.0012, 78.0012, '2025-08-03 08:00:00', 50.0),
(3, 11.0023, 78.0023, '2025-08-03 08:10:00', 55.0),
(4, 11.0034, 78.0034, '2025-08-03 08:20:00', 48.0),
(5, 11.0045, 78.0045, '2025-08-03 08:30:00', 60.0);
INSERT INTO Incidents (bus_id, type, description, timestamp) VALUES
(1, 'Missed Pickup', 'Student not present at stop', '2025-08-03 07:50:00'),
(2, 'Delay', 'Traffic congestion', '2025-08-03 08:25:00'),
(3, 'Overcrowding', 'Exceeded bus capacity', '2025-08-03 08:10:00'),
(4, 'Speed Limit Violation', 'Speed exceeded 50 km/h', '2025-08-03 08:20:00'),
(5, 'Missed Drop', 'Student not dropped at correct stop', '2025-08-03 08:35:00');

-- query to find buses with capacity more than 40
Select * From Buses where capacity > 40;

-- query to get buses with capacity between 30 and 45
Select * from Buses where capacity BETWEEN 30 AND 45;

-- query to find buses with route_number starting with 'R1' using LIKE
Select * from Buses where route_number like 'R1%';

-- query to Show top 3 buses with highest capacity
select* from Buses order by capacity desc limit 3;

-- query to get buses whose bus_id is in a list
select * from Buses where bus_id in (1, 3, 5);

-- query to find students from North street
Select * from Students Where stop_location = 'North Street';

-- query to list List students whose name starts with 'A'
Select * from Students where name like 'A%';

-- query to find students in classes between ‘10-A’ and ‘11-C’
Select * from Students where class BETWEEN '10-A' AND '11-C';

-- query to List students whose IDs are in the boarding log
Select * from Students where student_id in (Select student_id from Boarding_Log);

-- query to show 2 students after skipping the first 3
Select * from Students limit 2 Offset 3;

-- query to find logs where students boarded after 7:45 AM
Select * from Boarding_Log where time_boarded > '2025-08-03 07:45:00';

-- query to count number of boardings per bus 
SELECT bus_id, COUNT(*) AS total_boardings FROM Boarding_Log GROUP BY bus_id HAVING COUNT(*) > 1;

-- query to show logs for student_id in list
Select * from Boarding_Log Where student_id in (2, 5, 9);

-- query to Logs for a specific time range 
select * from Boarding_Log where time_boarded between '2025-08-03 07:30:00' and '2025-08-03 08:00:00';

-- query to get logs of students who exited after boarding for more than 25 minutes
SELECT * FROM Boarding_Log WHERE TIMESTAMPDIFF(MINUTE, time_boarded, time_exited) > 25;

-- query to list all assignments on  '2025-08-03'
Select * from Bus_Assignments where assignment_date = '2025-08-03';

-- query to retrieve Assignments with bus_id in a list
Select * From Bus_Assignments where bus_id in (1, 2, 3);

-- query to retrieve driver's name with assignments
select d.name, ba.assignment_date, ba.bus_id from Bus_Assignments ba join Drivers d on ba.driver_id = d.driver_id;

-- query to show total assignments per driver
select driver_id, COUNT(*) AS total_assignments from Bus_Assignments group by driver_id having COUNT(*) >= 1;

-- query to retrieve GPS logs where speed>45
select * from GPS_Tracking where speed > 45;

-- query to retrieve speed between 40 and 50
Select * from GPS_Tracking where speed between  40 and 50;

-- query to get logs for bus_id in (2,3,5)
select * from GPS_Tracking where bus_id in (2, 3, 5);

-- query to top 3 fastest speeds
Select * from GPS_Tracking order by speed desc limit 3;

-- query to join with buses to get route info
Select b.route_number, g.speed, g.timestamp from GPS_Tracking g join Buses b on g.bus_id = b.bus_id;

-- query to list all insidents that occured after 8:00 AM
select * from Incidents where timestamp > '2025-08-03 08:00:00';

-- query to find incidents of type ‘Delay’ or ‘Overcrowding’
select * from Incidents where type in ('Delay', 'Overcrowding');

-- query to get incidents that occurred between 8:00 and 8:30 AM
select * from Incidents where timestamp between '2025-08-03 08:00:00' and '2025-08-03 08:30:00';

-- query to Find incidents with description containing the word 'speed'
select * from Incidents where description like '%speed%';

-- query to Join with Buses to display route number and incident details
select i.type, i.description, b.route_number from Incidents i join Buses b on i.bus_id = b.bus_id;

-- query to List all drivers whose names start with 'S'
select * from Drivers where name like 'S%';

-- query to Drivers with license numbers in a given list
Select * from Drivers where license_no in ('DL001', 'DL003', 'DL005');

-- query to find drivers with IDs between 2 and 4
Select * from Drivers where driver_id between 2 and 4;

-- query to Show drivers assigned to a bus 
Select * from Drivers where driver_id in ( select driver_id from Bus_Assignments);

-- query to join  with assignments to count how many times each driver was assigned 
select d.name, COUNT(ba.assignment_id) AS total_assignments from Drivers d join Bus_Assignments ba on d.driver_id = ba.driver_id group by d.name
having COUNT(ba.assignment_id) >= 1;

-- query to List all supervisors whose names end with ‘L’
Select * from Supervisors where name like '%L';

-- query to retrieve Supervisors with IDs between 1 and 3
Select * from Supervisors where supervisor_id Between 1 and 3;

-- query to retrieve Supervisors assigned to at least one bus
Select s.name, ba.bus_id, ba.assignment_date from Supervisors s join Bus_Assignments ba on s.supervisor_id = ba.supervisor_id;

-- query to retrieve Supervisors who are not assigned to any bus
Select * from Supervisors where supervisor_id not in (Select supervisor_id from Bus_Assignments);

-- query to retrieve Top 2 supervisors by assignment count
select s.name, COUNT(ba.assignment_id) AS total_assignments from Supervisors s join Bus_Assignments ba on s.supervisor_id = ba.supervisor_id group by s.name
order by total_assignments DESC
limit 2 offset 0;











