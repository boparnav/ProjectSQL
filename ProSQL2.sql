create database Task2;
 use Task2;
 select*from Customers;
  select*from Orders;
   select*from Order_Details;
   select*from Products;
   ---Task-2 q-2
   select Customers.CompanyName, Customers.Address, Count (Orders.OrderID) as 'total num,ber of orders'
						from Customers inner join Orders
						 on Customers.CustomerID=Orders.CustomerID 
						 group by Customers.CompanyName,Customers.Address
						 ;
						 


   ---Task-2 q-3
   Create view someview as select Customers.CompanyName, Customers.Address,Customers.city,Orders.OrderDate from 
				Customers inner join Orders on Customers.CustomerID=Orders.CustomerID;
	select* from someview;
	 ---Task-2 q-4
	 select* from someview where city='London';
	 ---Task-2 q-5
	 create procedure ProductSearch as select * from Products where CategoryID='1';
	  exec ProductSearch;
	  drop  procedure ProductSearch;

	  create Procedure ProductSearch @CategoryID_by_user varchar (20) as select * from Products  where CategoryID=@CategoryID_by_user;
	   exec ProductSearch @CategoryID_by_user="2";

	   ---Task-2 q-6


	   ----Task-2 q-7
	   create nonclustered index  ix_CustomerIDN on Customers (CustomerID asc);
	    
		 create clustered index  ix_CompanyName on Customers (CompanyName asc); 

	-----Task-2 q-8
	----From Customers table  "CompanyName " and "addresss" give full text searching
	
	---From Products table "ProductName " gives full text searching

	 From Orders table "ShipAddress"and "ShipPostalCode" gives full text searching

	 Order_Details table "ProductID"  gives full text searching