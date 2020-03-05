CREATE DATABASE qptDB; 

 CREATE TABLE Users (
    id int NOT NULL IDENTITY(1,1) ,
    userName varchar(20) NOT NULL UNIQUE,
    passw varchar(20) NOT NULL UNIQUE,
    firstName varchar(20),
    lastName varchar(20),
    phoneNumber char(10),
    email varchar(20),
    PRIMARY KEY (id),
    CONSTRAINT my_constraint  CHECK(email LIKE '%___@___%') 
 );

  CREATE TABLE Product (
    id int NOT NULL UNIQUE ,
    productName varchar(20) NOT NULL UNIQUE,
    PRIMARY KEY (id),
 );

   CREATE TABLE productCustomer (
    Userid int ,
    productId int,
    price int DEFAULT 0,
    dateofUse DATETIME  DEFAULT GETDATE(),
    PRIMARY KEY (id , productId , dateofUse),
    FOREIGN KEY (Userid) REFERENCES Users(id),
    FOREIGN KEY (productId) REFERENCES Product(id)

 );