use master

create database Lung_Life
go


use Lung_Life
go

create table User_Role(
User_Role_ID int IDENTITY(1,1) PRIMARY KEY, 
User_Role_Name nvarchar(100)not null, 
User_Role_Description nvarchar(100)not null)
go

create table Administration(
Admin_ID int IDENTITY(1,1) PRIMARY KEY,
 Admin_Name nvarchar(100) not null, 
 Username nvarchar(100) not null,
 Admin_Password nvarchar(100) not null,
 Admin_Image image)
go


create table User_Access(
User_Access_ID int IDENTITY(1,1) PRIMARY KEY,
 Admin_ID int not null,
  User_Role_ID int not null, 
  User_IDs int not null,
FOREIGN KEY (User_Role_ID) REFERENCES User_Role(User_Role_ID), 
FOREIGN KEY (Admin_ID) REFERENCES Administration(Admin_ID))
go


create table CancerType(
CancerType_ID int IDENTITY(1,1) PRIMARY KEY,
 CancerType_Name nvarchar(100) not null,
  CancerType_Description nvarchar(100) not null,
  CancerType_Image image)
go

create table Prevention(
Prev_ID int IDENTITY(1,1) PRIMARY KEY, 
CancerType_ID int not null, 
Prev_Name nvarchar(100) not null,
 Prev_Description nvarchar(100) not null,
FOREIGN KEY (CancerType_ID) REFERENCES CancerType(CancerType_ID))
go

create table Resources(
Res_ID int IDENTITY(1,1) PRIMARY KEY, 
CancerType_ID int not null, 
Res_Name nvarchar(100) not null,
 Res_Description nvarchar(100) not null, 
 Res_Link nvarchar(100) not null,
 Res_Image image,
FOREIGN KEY (CancerType_ID) REFERENCES CancerType(CancerType_ID))
go

create table Treatment_Type(
Treat_Type_ID int IDENTITY(1,1) PRIMARY KEY,
 Treat_Type_Name nvarchar(100) not null,
  Treat_Type_Description nvarchar(100) not null)
go


create table Treatment(
Treat_ID int IDENTITY(1,1) PRIMARY KEY,
 Treat_Type_ID int not null, 
 Treat_Name nvarchar(100) not null, 
 Treat_Description nvarchar(100) not null,
 Treat_Image image,

 FOREIGN KEY (Treat_Type_ID) REFERENCES Treatment_Type(Treat_Type_ID))
go


create table CancerTypeTreatment(
Cancer_Treat_ID int IDENTITY(1,1) PRIMARY KEY, 
Treat_Type_ID int not null, 
CancerType_ID int not null,
Cancer_Treat_Image image,
 Treat_ID int not null,
FOREIGN KEY (CancerType_ID) REFERENCES CancerType(CancerType_ID), 
FOREIGN KEY (Treat_ID) REFERENCES Treatment(Treat_ID))
go

create table Journal(
Journal_ID int IDENTITY(1,1) PRIMARY KEY, 
Journal_Name nvarchar(100) not null, 
Journal_Date DateTime not null, 
Journal_Entry nvarchar(150) not null)
go


create table Userr(
User_IDs int IDENTITY(1,1) PRIMARY KEY, 
User_Names nvarchar(100) not null,
 User_Surname nvarchar(100) not null,
  User_Email nvarchar(100) not null, 
  User_Gender nvarchar(10) not null, 
  User_Age int not null, 
  User_Image image,
  User_Username nvarchar (20),
  User_Password nvarchar (20),
  Journal_ID int not null,
FOREIGN KEY (Journal_ID) REFERENCES Journal(Journal_ID))
go



create table User_Medication(
User_Med_ID int IDENTITY(1,1) PRIMARY KEY,
User_Med_Name nvarchar(100) not null,
User_Med_Description nvarchar(100) not null, 
User_IDs int not null,
FOREIGN KEY (User_IDs) REFERENCES Userr(User_IDs))
go


create table Medical_Aid(
Med_Aid_ID int IDENTITY(1,1) PRIMARY KEY, 
User_IDs int not null, 
Med_Aid_Num int not null,
Member_Name nvarchar(100) not null, 
Member_IDNum int not null, 
MainMember_IDNum int not null,
FOREIGN KEY (User_IDs) REFERENCES Userr(User_IDs))
go





create table Symptom(
Sym_ID int IDENTITY(1,1) PRIMARY KEY, 
Sym_Name nvarchar(100) not null, 
Sym_Description nvarchar(100) not null)
go

create table CancerType_Symptom(
Cancer_Sym_ID int IDENTITY(1,1) PRIMARY KEY, 
CancerType_ID int not null, 
Sym_ID int not null,
 Cancer_Sym_Name nvarchar(100) not null, 
 Cancer_Sym_Description nvarchar(100) not null,
FOREIGN KEY (Sym_ID) REFERENCEs Symptom(Sym_ID),
FOREIGN KEY (CancerType_ID) REFERENCES CancerType(CancerType_ID))
go


use Lung_Life
go




 




