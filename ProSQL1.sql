Create database StuAccomoRec;
      Use StuAccomoRec;
	  Create table Students(stud_id varchar(20) Primary key NOT NULL, 
							stud_fname varchar(30) NOT NULL, 
							stud_lname varchar(30) NOT NULL,
							home_city varchar(20) NOT NULL,
							home_street varchar(20) NOT NULL,
							home_zip varchar(20)NOT NULL,
							Date_of_birth varchar(15) NOT NULL,
							Sex char (10) NOT NULL,
							Category char (20) NOT NULL,
							Nationality char(20) NOT NULL,
							special_need varchar(20) NOT NULL,
							Current_status varchar(20) NOT NULL,
							Course_id varchar(20) NOT NULL,
							Renting_category varchar (20) NOT NULL,
							Renting_info varchar (20) NOT NULL, 
							Flat_id varchar (20) NOT NULL, 
							Flat_number varchar (20) NOT NULL,
							Advisor_id  varchar (20) NOT NULL,
							Place_number varchar(30) NOT NULL,
							Emer_contactname varchar(20) NOT NULL,
							lease_number int NOT NULL,
							payment_id int NOT NULL, 
							Reminder_id int NOT NULL,
							Invoice_id int NOT NULL,
							comments varchar(50) NOT NULL);
drop table Students;

Create table Hall_of_Residence (Flat_id varchar (20) Primary Key NOT NULL,
								Hall_name varchar (20) NOT NULL,
								Hall_Address varchar(50) NOT NULL,
								Hall_Phone_no varchar(20) NOT NULL,
								Manager varchar (20) NOT NULL,
								Room_no varchar (20) NOT NULL,
								Place_number varchar(30) NOT NULL,
								Monthly_rent varchar(50) NOT NULL);
	drop table	Hall_of_Residence;							
	
Create table Advisors ( Advisor_id  varchar (20) Primary Key NOT NULL,
						Advisor_name varchar(30) NOT NULL,
						Position varchar (20) NOT NULL,
						Department varchar(20) NOT NULL,
						Advisor_Phone_no varchar(20) NOT NULL,
	                    Off_address varchar(50) NOT NULL, 
						Off_Phone_no varchar(20) NOT NULL);
drop table  Advisors;	



Create table Stdents_Flats(Flat_number varchar (20)Primary Key NOT NULL,
							stud_id varchar(20) NOT NULL,
							Flat_Address varchar(50) NOT NULL,
							Availability varchar(20) NOT NULL,
							Occupancy varchar (25) NOT NULL);
drop table Stdents_Flats;	 
Create table Rooms (Room_no Varchar(20) Primary Key NOT NULL,
					Hall_name varchar (20) NOT NULL,
					Place_number varchar(30) NOT NULL,
					Monthly_rent varchar(50) NOT NULL);   
drop table Rooms;
Create table Lease (lease_number int Primary Key NOT NULL,
					stud_id varchar(20) NOT NULL,
					stud_fname varchar(30) NOT NULL,
					stud_lname varchar(30) NOT NULL,
					Duration varchar (15) NOT NULL,
					Type_Accomodation varchar (20) NOT NULL, 
					Address varchar(50) NOT NULL,
					Joining_date varchar (25) NOT NULL,
					laeving_date varchar(20) NOT NULL);
drop table  Lease;
Create table Invoices(Invoice_id int Primary Key NOT NULL,
					stud_id varchar(20) NOT NULL,
					lease_number int NOT NULL,
					Duration varchar (15) NOT NULL,
					Payment_due varchar(20) NOT NULL,
					Type_Accomodation varchar (20) NOT NULL,
					Adress varchar(50) NOT NULL);

drop table Invoices;

Create table Payment(payment_id int Primary Key NOT NULL,
					stud_id varchar(20) NOT NULL,
					Invoice_id int NOT NULL,
					payment_date varchar(15) NOT NULL,
					Method_of_payment varchar (10) NOT NULL);
drop table Payment;

Create table Reminder(Reminder_id int Primary Key NOT NULL,
					Invoice_id int NOT NULL,
					Reminder_type varchar (20) NOT NULL,
					date varchar(10)NOT NULL);
drop table Reminder;

Create table Student_flat_inspection(Insp_id varchar (10) Primary Key NOT NULL,
									Staff_name varchar(20) NOT NULL,
									Date_of_Insp varchar(15) NOT NULL,
									Conditions varchar(20) NOT NULL,
									staff_comments varchar(50) NOT NULL);
drop table Student_flat_inspection;

Create table Accomodation_staff(Accomo_staff_id varchar (10) Primary Key NOT NULL,
								Accomo_staff_fname varchar (10) NOT NULL,
								Accomo_staff_lname varchar (10) NOT NULL,
								Home_street varchar(10) NOT NULL,
								Home_city varchar (10) NOT NULL,
								Home_zip_code varchar (10) NOT NULL,
								date_of_birth varchar (15) NOT NULL,
								Sex varchar(10)NOT NULL,
								Position varchar(20) NOT NULL,
								location varchar(30) NOT NULL);
drop table Accomodation_staff;
Create table Course (Course_id varchar(20) Primary Key NOT NULL,
					stud_id varchar(20) NOT NULL,
					Course_name varchar(20) NOT NULL,
					year varchar(10)NOT NULL,
					Instructor char(20)NOT NULL,
					Room_no varchar(20)NOT NULL, 
					Dept_no varchar (15)NOT NULL);

drop table  Course;
Create table Contacts(Emer_contactname varchar (30) Primary Key NOT NULL,
					stud_id varchar(20)NULL,
					SSN varchar (20) NOT NULL,
					Realtionship char(20)NOT NULL,
					Address varchar(50) NOT NULL,
					Contact_no varchar (30)NOT NULL);
drop table Contacts;
-----values of Students table
insert into Students values ('AI1234','Rick','Lee','Bramton','Christie Ave','L7C3M7','25/10/94','Male','Junior','Canadian','No',
                              'Placed','HM123','Flat','Two person','F111','SF123','AD11','PL111','Mark',102034,5678,101,2121,'No comments');
insert into Students values ('AI2345','Mike','Rough','Hamilton','Fairview Ave','L5T3W7','2/11/96','Male','Junior','Canadian','No',
								 'Waiting','JS123','Flat','Two person','F222','SF234','AD22','PL222','Leonard',102054,6778,202,3232,'No comments');
insert into Students values ('AI3456','Rogers','Jack','Milton','Peterson Road','L7T3R7','13/06/96','Male','Junior','Canadian','No',
								'Waiting','CC123','Room','One person','N/A','N/A','AD33','PL333','Ammy',123451,8585,303,4343,'No comments');
insert into Students values ('AI3556','Nora','Rebber','Mississauga','Allenkey road','B7T3R5','12/08/91','Female','Garduate','Canadian','No',
								'Placed','CC123','Flat','three person','F343','SF224','AD44','PL444','Rhona',234562,9494,404,5454,'No comments');
insert into Students values ('AI4567','Bill','Rogers','Oshawa','Kennedy road','S6R3T4','06/11/90','Male','Garduate','Canadian','No',
								'Placed','SQL54','Flat','two person','F454','SF001','AD55','PL555','Hemi',345673,1515,505,6565,'No comments');
insert into Students values ('AI4467','Bard','Rogers','Oshawa','Kennedy road','S6R3T4','06/10/92','Male','Garduate','Canadian','No',
								'Placed','HM123','Flat','two person','F676','SF242','AD11','PL666','Winnie',456784,2626,607,7676,'No comments');
insert into Students values ('AI5678','Tom','Raward','barrie','Fallview circle','N5T6Y4','11/11/93','Male','Garduate','Canadian','No',
									'Placed','HM123','Room','One person','N/A','N/A','AD66','PL777','Mandy',567895,3737,707,8787,'No comments');
insert into Students values ('AI6789','Emily','draw','brampton','Bellpoint','M4H5T6','1/10/99','Female','Junior','Canadian','No',
									'Waiting','HM123','Room','one person','N/A','N/A','AD77','PL888','Andrew',678906,4848,808,8998,'No comments');
insert into Students values ('AI7890','Ericka','will','caledon','Bluemont','F5R6Y6','8/5/98','Female','Junior','Canadian','No',																							
								'Waiting','CC123','Flat','two person','F787','SF454','AD88','PL999','vick',789017,5959,909,9090,'No comments');
insert into Students values ('AI8901','Kawee','bill','caledon','faurmont','L7C3M7','18/10/98','Female','Junior','Canadian','No',
								'Placed','JS123','Flat','two person','F898','SF565','AD99','PL000','Kapoor',890128,6060,001,0101,'No comments');
								
------inserting values in Hall_of_Residence table
insert into Hall_of_Residence values ('F676','st.george','Northbound','905-676-8765','Andrew','R101','PL111','$150');
insert into Hall_of_Residence values ('F111','st.Diego','Eastbound','905-324-8765','Methew','R202','PL222','$150');
insert into Hall_of_Residence values ('F222','st.Diego','Eastbound','905-324-8765','Methew','R211','PL222','$150');
insert into Hall_of_Residence values ('F333','st.Annie','Southbound','905-888-5454','Sally','R301','PL333','$150');
insert into Hall_of_Residence values ('F444','st.Annie','Southtbound','905-888-5454','Sally','R401','PL333','$150');
insert into Hall_of_Residence values ('F555','st.Rogers','Northtbound','905-555-6767','Angy','R501','PL444','$150');
insert into Hall_of_Residence values ('F666','st.Rogers','Northtbound','905-555-6767','Angy','R502','PL444','$150');
insert into Hall_of_Residence values ('F777','st.Catholic','Westbound','905-222-1212','Rodridge','R601','PL777','$150');
insert into Hall_of_Residence values ('F888','st.Catholic','Westbound','905-222-1212','Rodridge','R603','PL777','$150');
insert into Hall_of_Residence values ('F999','st.Annette','Westbound','905-999-2000','Annabella','R702','PL888','$150');	

------inserting values in Advisors  table	
insert	into Advisors values ('AD11','Sam','Assistant','Research','647-678-0033','LevelA','905-666-5454');	
insert	into Advisors values ('AD22','Rita','Assistant','Research','647-545-0022','LevelB','905-111-5454');	
insert	into Advisors values ('AD33','Andy','Clerk','Admin','647-333-1111','LevelC','905-222-1212');	
insert	into Advisors values ('AD44','Bunty','Clerk','Admin','647-444-1111','LevelD','905-333-1313');
insert	into Advisors values ('AD55','Cindy','Manager','Admin','647-555-1111','LevelE','905-444-1414');	
insert	into Advisors values ('AD66','Daniel','Staff','Admin','647-666-1111','LevelF','905-555-1515');
insert	into Advisors values ('AD77','Emily','Staff','Admin','647-777-1141','LevelG','905-666-1616');	
insert	into Advisors values ('AD88','Frank','Instructor','Physical','647-888-1818','LevelH','905-777-1117');
insert	into Advisors values ('AD99','Harry','Instructor','Physical','647-999-1919','LevelI','905-888-1117');
insert	into Advisors values ('AD01','Jack','Instructor','Physical','647-101-1919','LevelJ','905-999-1117');	
------inserting values in Stdents_Flats  table	
insert into Stdents_Flats values ('SF123','AI1234','Hallway B','Available','Two person');
insert into Stdents_Flats values ('SF234','AI2345','Hallway B1','Available','Two person');
insert into Stdents_Flats values ('SF224','AI3456','Hallway B2','Available','Two person');
insert into Stdents_Flats values ('SF204','AI3556','Hallway B3','Available','Two person');	
insert into Stdents_Flats values ('SF001','AI4567','Hallway B4','Available','Two person');	
insert into Stdents_Flats values ('SF242','AI4467','Hallway B5','Available','Two person');
insert into Stdents_Flats values ('SF214','AI5678','Hallway B6','Available','Two person');	
insert into Stdents_Flats values ('SF234','AI6789','Hallway B7','Available','Two person');	
insert into Stdents_Flats values ('SF454','AI7890','Hallway B8','Available','Two person');
insert into Stdents_Flats values ('SF565','AI8901','Hallway B9','Available','Two person');	

------inserting values in  Rooms  table
insert into  Rooms values('R101','st.george','PL111','$100');	
insert into  Rooms values('R202','st.Diego','PL222','$100');
insert into  Rooms values('R211','st.Diego','PL222','$100');
insert into  Rooms values('R301','st.Annie','PL333','$100');
insert into  Rooms values('R401','st.Annie','PL333','$100');
insert into  Rooms values('R501','st.Rogers','PL444','$100');
insert into  Rooms values('R502','st.Rogers','PL444','$100');
insert into  Rooms values('R601','st.Catholic','PL777','$100');
insert into  Rooms values('R603','st.Catholic','PL777','$100'); 
insert into  Rooms values('R702','st.Annettec','PL888','$100');

------inserting values in   Lease  table  
insert into   Lease values(102034,'AI1234','Rick','Lee','first quarter','flat','Hallway B','1/1/2017','28/3/2017');
insert into   Lease values(102054,'AI2345','Mike','Rough','first quarter','flat','Hallway B1','1/1/2017','28/3/2017');
insert into   Lease values(123451,'AI3456','Rogers','Jack','first quarter','N/A','N/A','1/1/2017','28/3/2017');
insert into   Lease values(234562,'AI3556','Nora','Rebber','first quarter','flat','Hallway B1','1/1/2017','28/3/2017');
insert into   Lease values(345673,'AI4567','Bill','Rogers','first quarter','flat','Hallway B1','1/1/2017','28/3/2017');
insert into   Lease values(456784,'AI4467','Bard','Rogers','first quarter','flat','Hallway B1','1/1/2017','28/3/2017');
insert into   Lease values(567895,'AI5678','Tom','Raward','first quarter','N/A','N/A','1/1/2017','28/3/2017');
insert into   Lease values(678906,'AI6789','Emily','draw','first quarter','N/A','N/A','1/1/2017','28/3/2017');
insert into   Lease values(789017,'AI7890','Ericka','will','first quarter','flat','Hallway B1','1/1/2017','28/3/2017');
insert into   Lease values(890128,'AI8901','Kawee','bill','first quarter','flat','Hallway B1','1/1/2017','28/3/2017');

------inserting values in  Invoices  table
insert into  Invoices values(2121,'AI1234',102034,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(3232,'AI2345',102054,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(4343,'AI3456',123451,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(5454,'AI3556',234562,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(6565,'AI4567',345673,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(7676,'AI4467',456784,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(8998,'AI5678',234562,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(9090,'AI6789',234562,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(0101,'AI7890',234562,'first quarter','N/A','flat','Hallway B')
insert into  Invoices values(6565,'AI8901',234562,'first quarter','N/A','flat','Hallway B')

------inserting values in  Payment  table
insert into Payment values(5678,'AI1234',2121,'1/1/2018','Cash');
insert into Payment values(6778,'AI1234',3232,'1/1/2018','Cash');
insert into Payment values(8585,'AI3456',4343,'1/1/2018','Cash');
insert into Payment values(9494,'AI3556',5454,'1/1/2018','Cash');
insert into Payment values(1515,'AI4567',6565,'1/1/2018','Cash');
insert into Payment values(2626,'AI4467',7676,'1/1/2018','Cash');
insert into Payment values(3737,'AI5678',8998,'1/1/2018','Cash');
insert into Payment values(4848,'AI6789',9090,'1/1/2018','Cash');
insert into Payment values(5959,'AI7890',0101,'1/1/2018','Cash');

------inserting values in Reminder table
