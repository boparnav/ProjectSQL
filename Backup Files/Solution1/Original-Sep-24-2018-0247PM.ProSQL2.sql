create database Task2;
 use Task2;
 select*from Customers;
  select*from Orders;
   select*from Order_Details;
   ---Task-2 q-2
   select Customers.CompanyName,Customers. Address,Orders.OrderID from Customers inner join Orders on Customers.CustomerID=Orders.CustomerID;
   

   ---Task-2 q-3
