Create database StuAccomoRec;
      Use StuAccomoRec;
	  Create table Students(stud_id varchar(20) NOT NULL, 
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


Create table Hall_of_Residence (Flat_id varchar (20) NOT NULL,
								Hall_name varchar (20) NOT NULL,
								Hall_Address varchar(50) NOT NULL,
								Hall_Phone_no varchar(20) NOT NULL,
								Manager varchar (20) NOT NULL,
								Room_no varchar (20) NOT NULL,
								Place_number varchar(30) NOT NULL,
								Monthly_rent varchar(50) NOT NULL);
									
	
Create table Advisors ( Advisor_id  varchar (20) NOT NULL,
						Advisor_name varchar(30) NOT NULL,
						Position varchar (20) NOT NULL,
						Department varchar(20) NOT NULL,
						Advisor_Phone_no varchar(20) NOT NULL,
	                    Off_address varchar(50) NOT NULL, 
						Off_Phone_no varchar(20) NOT NULL);

Create table Stdents_Flats(Flat_number varchar (20) NOT NULL,
							stud_id varchar(20) NOT NULL,
							Flat_Address varchar(50) NOT NULL,
							Availability varchar(20) NOT NULL,
							Occupancy varchar (25) NOT NULL);
	 
Create table Rooms (Room_no int NOT NULL,
					Hall_name varchar (20) NOT NULL,
					Place_number varchar(30) NOT NULL,
					Monthly_rent varchar(50) NOT NULL);   

Create table Lease (lease_number int NOT NULL,
					stud_id varchar(20) NOT NULL,
					stud_fname varchar(30) NOT NULL,
					stud_lname varchar(30) NOT NULL,
					Duration varchar (15) NOT NULL,
					Type_Accomodation varchar (20) NOT NULL, 
					Address varchar(50) NOT NULL,
					Joining_date varchar (25) NOT NULL,
					laeving_date varchar(20) NOT NULL);

Create table Invoices(Invoice_id int NOT NULL,
					stud_id varchar(20) NOT NULL,
					lease_number int NOT NULL,
					Duration varchar (15) NOT NULL,
					Payment_due varchar(20) NOT NULL,
					Type_Accomodation varchar (20) NOT NULL,
					Address varchar(50),
					Adress varchar(50) NOT NULL);

Create table Payment(payment_id int NOT NULL,
					stud_id varchar(20) NOT NULL,
					Invoice_id int NOT NULL,
					payment_date varchar(15) NOT NULL,
					Method_of_payment varchar (10) NOT NULL);

Create table Reminder(Reminder_id int NOT NULL,
					Invoice_id int NOT NULL,
					Reminder_type varchar (20) NOT NULL,
					date varchar(10)NOT NULL);

Create table Student_flat_inspection(Insp_id varchar (10) NOT NULL,
									Staff_name varchar(20) NOT NULL,
									Date_of_Insp varchar(15) NOT NULL,
									Conditions varchar(20) NOT NULL,
									staff_comments varchar(50) NOT NULL);
drop table Student_flat_inspection;
Create table Accomodation_staff(Accomo_staff_id varchar (10) NOT NULL,
								Accomo_staff_fname varchar (10) NOT NULL,
								Accomo_staff_lname varchar (10) NOT NULL,
								Home_street varchar(10) NOT NULL,
								Home_city varchar (10) NOT NULL,
								Home_zip_code varchar (10) NOT NULL,
								date_of_birth varchar (15) NOT NULL,
								Sex varchar(10)NOT NULL,
								Position varchar(20) NOT NULL,
								location varchar(30) NOT NULL);

Create table Course (Course_id varchar(20)NOT NULL,
					stud_id varchar(20) NOT NULL,
					Course_name varchar(20) NOT NULL,
					year varchar(10)NOT NULL,
					Instructor char(20)NOT NULL,
					Room_no varchar(20)NOT NULL, 
					Dept_no varchar (15)NOT NULL);

drop table  Course;
Create table Contacts(Emer_contactname varchar (30)NOT NULL,
					stud_id varchar(20)NULL,SSN varchar (20) NOT NULL,
					Realtionship char(20)NOT NULL,
					Address varchar(50) NOT NULL,
					Contact_no varchar (30)NOT NULL);
insert into Students values ('AI1234','Rick','Lee','Bramton','Christie Ave','L7C3M7','25/10/94','Male','Junior','Canadian','No',
                              'Placed','HM123','Flat','Two person','F111','SF123','AD11','PL111','Mark',102034,5678,101,2121,'No comments');
insert into Students values ('AI2345','Mike','Rough','Hamilton','Fairview Ave','L5T3W7','2/11/96','Male','Junior','Canadian','No',
								 'Waiting','JS123','Flat','Two person','F222','SF234','AD22','PL222','Leonard',102054,6778,202,3232,'No comments');
insert into Students values ('AI3456','Rogers','Jack','Milton','Peterson Road','L7T3R7','13/06/96','Male','Junior','Canadian','No',
								'Waiting','CC123','Room','One person','N/A','N/A','AD33','PL333','Ammy',123451,8585,303,4343,'No comments');
insert into Students values ('AI3456','Nora','Rebber','Mississauga','Allenkey road','B7T3R5','12/08/91','Female','Garduate','Canadian','No',
								'Placed','CC123','Flat','three person','F343','SF224','AD44','PL444','Rhona',234562,9494,404,5454,'No comments');
insert into Students values ('AI4567','Bill','Rogers','Oshawa','Kennedy road','S6R3T4','06/11/90','Male','Garduate','Canadian','No',
								'Placed','SQL54','Flat','two person','F454','SF001','AD55','PL555','Hemi',345673,1515,505,6565,'No comments');
insert into Students values ('AI4567','Bill','Rogers','Oshawa','Kennedy road','S6R3T4','06/11/90','Male','Garduate','Canadian','No',
								'Placed','HM123','Flat','two person','F676','SF242','AD11','PL666','Winnie',456784,2626,607,7676,'No comments');
insert into Students values ('AI5678','Tom','Raward','barrie','Fallview circle','N5T6Y4','06/11/90','Male','Garduate','Canadian','No',								
								
	  