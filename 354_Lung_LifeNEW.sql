use master

create database Lung_Life2
go


use Lung_Life2
go

create table UserRole(
UserRoleID int IDENTITY(1,1) PRIMARY KEY, 
UserRoleName nvarchar(100)not null, 
UserRoleDescription nvarchar(100)not null)
go

create table Administration(
AdminID int IDENTITY(1,1) PRIMARY KEY,
 AdminName nvarchar(100) not null, 
 Username nvarchar(100) not null,
 AdminPassword nvarchar(100) not null,
 AdminImage nvarchar (max))
go


create table UserAccess(
UserAccessID int IDENTITY(1,1) PRIMARY KEY,
 AdminID int not null,
  UserRoleID int not null, 
  UserIDs int not null,
FOREIGN KEY (UserRoleID) REFERENCES UserRole(UserRoleID), 
FOREIGN KEY (AdminID) REFERENCES Administration(AdminID))
go


create table CancerType(
CancerTypeID int IDENTITY(1,1) PRIMARY KEY,
 CancerTypeName nvarchar(100) not null,
  CancerTypeDescription nvarchar(100) not null,
  CancerTypeImage nvarchar (max))
go

create table Prevention(
PrevID int IDENTITY(1,1) PRIMARY KEY, 
CancerTypeID int not null, 
PrevName nvarchar(100) not null,
 PrevDescription nvarchar(100) not null,
FOREIGN KEY (CancerTypeID) REFERENCES CancerType(CancerTypeID))
go

create table Resources(
ResID int IDENTITY(1,1) PRIMARY KEY, 
CancerTypeID int not null, 
ResName nvarchar(100) not null,
 ResDescription nvarchar(100) not null, 
 ResLink nvarchar(100) not null,
 ResImage nvarchar (max),
FOREIGN KEY (CancerTypeID) REFERENCES CancerType(CancerTypeID))
go

create table TreatmentType(
TreatTypeID int IDENTITY(1,1) PRIMARY KEY,
 TreatTypeName nvarchar(100) not null,
  TreatTypeDescription nvarchar(100) not null)
go


create table Treatment(
TreatID int IDENTITY(1,1) PRIMARY KEY,
 TreatTypeID int not null, 
 TreatName nvarchar(100) not null, 
 TreatDescription nvarchar(100) not null,
 TreatImage nvarchar (max),

 FOREIGN KEY (TreatTypeID) REFERENCES TreatmentType(TreatTypeID))
go


create table CancerTypeTreatment(
CancerTreatID int IDENTITY(1,1) PRIMARY KEY, 
TreatTypeID int not null, 
CancerTypeID int not null,
CancerTreatImage nvarchar (max),
 TreatID int not null,
FOREIGN KEY (CancerTypeID) REFERENCES CancerType(CancerTypeID), 
FOREIGN KEY (TreatID) REFERENCES Treatment(TreatID))
go

create table Journal(
JournalID int IDENTITY(1,1) PRIMARY KEY, 
JournalName nvarchar(100) not null, 
JournalDate DateTime not null, 
JournalEntry nvarchar(150) not null)
go


create table Userr(
UserIDs int IDENTITY(1,1) PRIMARY KEY, 
UserNames nvarchar(100) not null,
 UserSurname nvarchar(100) not null,
  UserEmail nvarchar(100) not null, 
  UserGender nvarchar(10) not null, 
  UserAge int not null, 
  UserImage nvarchar (max),
  UserUsername nvarchar (20),
  UserPassword nvarchar (20),
  JournalID int not null,
FOREIGN KEY (JournalID) REFERENCES Journal(JournalID))
go



create table UserMedication(
UserMedID int IDENTITY(1,1) PRIMARY KEY,
UserMedName nvarchar(100) not null,
UserMedDescription nvarchar(100) not null, 
UserIDs int not null,
FOREIGN KEY (UserIDs) REFERENCES Userr(UserIDs))
go


create table MedicalAid(
MedAidID int IDENTITY(1,1) PRIMARY KEY, 
UserIDs int not null, 
MedAidNum int not null,
MemberName nvarchar(100) not null, 
MemberIDNum int not null, 
MainMemberIDNum int not null,
FOREIGN KEY (UserIDs) REFERENCES Userr(UserIDs))
go





create table Symptom(
SymID int IDENTITY(1,1) PRIMARY KEY, 
SymName nvarchar(100) not null, 
SymDescription nvarchar(100) not null)
go

create table CancerTypeSymptom(
CancerSymID int IDENTITY(1,1) PRIMARY KEY, 
CancerTypeID int not null, 
SymID int not null,
 CancerSymName nvarchar(100) not null, 
 CancerSymDescription nvarchar(100) not null,
FOREIGN KEY (SymID) REFERENCEs Symptom(SymID),
FOREIGN KEY (CancerTypeID) REFERENCES CancerType(CancerTypeID))
go


use Lung_Life2
go




 




