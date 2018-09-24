Create database StuAccomoRec;
      Use StuAccomoRec;
	  Create table Students(stud_id varchar(20), stud_fname varchar(30), stud_lname varchar(30),home_city varchar(20),home_street
						 varchar(20),home_zip varchar(20),Date_of_birth varchar(15),Sex char (10),Category char (20),Nationality char(20),
						  special_need varchar(20),Current_status varchar(20),Course_id varchar(20), Renting_category varchar (20),
						  Renting_info varchar (20), Flat_id varchar (20), Flat_number varchar (20),Advisor_id  varchar (20),
						  Place_number varchar(30),Emer_contact varchar(20),lease_number int, payment_id int,Reminder_id int,
						  Invoice_id int,comments varchar(50));


Create table Hall_of_Residence (Flat_id varchar (20), Hall_name varchar (20),Hall_Address varchar(50),Hall_Phone_no varchar(20),
								Manager varchar (20),Room_no varchar (20),Place_number varchar(30),Monthly_rent varchar(50));
									
	
Create table Advisors ( Advisor_id  varchar (20),Advisor_name varchar(30),Position varchar (20),Department varchar(20),Advisor_Phone_no varchar(20),
	                       Off_address varchar(50), Off_Phone_no varchar(20));

Create table Stdents_Flats(Flat_number varchar (20),stud_id varchar(20),Flat_Address varchar(50),Availability varchar(20),Occupancy varchar (25));
	 
Create table Rooms (   );

Create table Lease (lease_number int,stud_id varchar(20),stud_fname varchar(30), stud_lname varchar(30),Duration varchar (15),Type_Accomodation
					varchar (20), Address varchar(50),Joining_date varchar (25),laeving_date varchar(20));

Create table Invoices(Invoice_id int,stud_id varchar(20),lease_number int,Duration varchar (15),Payment_due varchar(20),Type_Accomodation varchar (20),
					 Address varchar(50),Adress varchar(50));

Create table Payment(payment_id int,stud_id varchar(20),Invoice_id int,payment_date varchar(15),Method_of_payment varchar (10));

Create table
	  