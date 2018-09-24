create database Task2;
 use Task2;
 select*from Customers;
  select*from Orders;
   select*from Order_Details;
   select Customers.CompanyName,Customers. Address from Customers inner join Order_Details
   on C