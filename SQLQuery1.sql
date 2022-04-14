CREATE DATABASE Tapaz

USE Tapaz

CREATE TABLE Settings(
Id int primary key identity,
Logo nvarchar(50),
Location nvarchar(50),
Email nvarchar (50),
Phone nvarchar(50),
Phone2 nvarchar(50),
Igurl nvarchar(50),
Fburl nvarchar(50)
)

CREATE TABLE Advertisements(
Id int primary key identity,
Image nvarchar(110),
Url nvarchar(110),
Settings_Id int foreign key references Settings(Id),
Catagory_Id int foreign key references Catagories(Id)
)


CREATE TABLE Announcements(
Id int primary key identity,
Pice decimal (7,2),
Article nvarchar(500),
Cities_Id int foreign key references Cities(Id),
Subcatagory_Id int foreign key references Subcatagories(Id),
Brand_Id int foreign key references Brand(Id),
Gastypes_Id int foreign key references Gastypes(Id),
Color_Id int foreign key references Color(Id)
)

CREATE TABLE Cities(
Id int primary key identity,
Name nvarchar(30)
)

CREATE TABLE Catagories(
Id int primary key identity,
Name nvarchar(30),
Settings int foreign key references Settings(Id)
)

CREATE TABLE Subcatagories(
Id int primary key identity,
Name nvarchar(30),
Catagory_Id int foreign key references Catagories(Id)
)

CREATE TABLE Brand(
Id int primary key identity,
Name nvarchar(30),
Subcatagory_Id int foreign key references Subcatagories(Id)
)

CREATE TABLE Gastypes(
Id int primary key identity,
Name nvarchar(30)
)

CREATE TABLE Color(
Id int primary key identity,
Name nvarchar(30)
)

CREATE TABLE Models(
Id int primary key identity,
Name nvarchar(30),
Engine smallint,
Release smalldatetime,
Km int,
Brand_Id int foreign key references Brand(Id),
Gastypes_Id int foreign key references Gastypes(Id),
Color_Id int foreign key references Color(Id)
)

CREATE TABLE Images(
Id int primary key identity,
Name nvarchar(30),
Announcements_Id int foreign key references Announcements(Id)
)