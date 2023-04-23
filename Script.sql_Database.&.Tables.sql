create database KFC
create table Meals(
     MealID integer not null,
     Mname varchar(200) not null,
     Price integer not null,
     Availibility bool not null,
     
     constraint "MealID" primary key ("MealID")
);

create table customer(
     CustomerID integer not null,
     FName varchar(20) not null,
     LName varchar(20) not null,
     PhoneNumbers integer not null,
     Address text not null,
     
     constraint "CustomerID" primary key ("CustomerID"),
     constraint "MealID" foreign key ("MealID") references Meals("MealID")
);

create table Orders(
     OrderID integer not null,
     PaymentMethod varchar(50) not null,
     OrderDate date not null,
     
     constraint "OrderID" primary key ("OrderID"),
     constraint "CustomerID" foreign key ("CustomerID") references Customers("CustomerID"),
     constraint "MealID" foreign key ("MealID") references Meals("MealID")
);

create table Payment(
     PaymentID integer not null,
     Amount integer,
     PaymentMethod varchar(50),
     PDate date,
     
     constraint "PaymentID" primary key ("PaymentID"),
     constraint "OrderID" foreign key ("OrderID") references Orders("OrderID")
);

create table Delivary(
     DeliveryID integer not null,
     DelivaryPerson varchar(50),
     CustomerName varchar(50),
     DDate date,
     PaymentStatus bool,
     
     constraint "DeliveryID" primary key ("DeliveryID"),
     constraint "OrderID" foreign key ("OrderID") references Orders("OrderID")
);

create table Employees(
     EmployeeID integer not null,
     FName varchar(50),
     LName varchar(50),
     EmployeeRole varchar(40),
     PhoneNumbers integer,
     Address text,
     
     constraint "EmployeeID" primary key ("EmployeeID")
);