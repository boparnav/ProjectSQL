create database Task2;
 use Task2;
 select*from Customers;
  select*from Orders;
   select*from Order_Details;
   ---Task-2 q-2
   select Customers.CompanyName,Customers. Address,Orders.OrderID from Customers inner join 
					Orders on Customers.CustomerID=Orders.CustomerID group by OrderID;
   Select CustomerID from Customers group by CustomerID;

   ---Task-2 q-3
   Create view someview as select Customers.CompanyName,Customers.Address,Customers.city,Orders.OrderDate from 
				Customers inner join Orders on Customers.CustomerID=Orders.CustomerID;
	select* from someview;
	 ---Task-2 q-4
	 select* from someview where city='London';