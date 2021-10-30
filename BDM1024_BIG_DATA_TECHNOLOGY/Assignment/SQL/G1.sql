CREATE DATABASE LMT_University;
CREATE SCHEMA enrol;
CREATE TABLE enrol.Address (
    AddressID INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
	StreetAddress nvarchar(50)  NOT NULL,
	City nvarchar(50) NOT NULL,
	State nvarchar(50) NULL,
	PostalCode nvarchar(50) NULL,
	Country nvarchar(50) NULL,
	InsertedOn Date NOT NULL DEFAULT GETDATE()
);

INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5 Schurz Lane','Grybow',NULL,'33-330','Poland');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('628 Waubesa Drive','Jinsheng',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('44135 Northfield Way','Nowy Dwor Mazowiecki',NULL,'05-160','Poland');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('335 Bellgrove Road','Gaoqiao',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('28 Victoria Junction','Bukovec',NULL,'739 84','Czech Republic');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('6 Stuart Road','Wushan',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('730 Barby Street','Zhengchang',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('22742 Schiller Street','Sumurwaru',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('31 Elka Junction','Cigembong',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5 Kenwood Circle','Davao',NULL,'8000','Philippines');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('99 Bunker Hill Crossing','Zarasai',NULL,'32001','Lithuania');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5 Farragut Center','Jaromerice',NULL,'569 44','Czech Republic');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('25 Lerdahl Street','Nanshi',NULL,NULL,'China');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('918 Bonner Way','Phayakkhaphum Phisai',NULL,'44110','Thailand');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('9 West Alley','Sempu',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('234 Hagan Lane','Rennes','Bretagne','35033','France');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('33942 Eagle Crest Trail','Oliveiras','Porto','4745-235','Portugal');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('20791 Hermina Way','B?o L?c',NULL,NULL,'Vietnam');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('86 Lake View Way','Marsa Alam',NULL,NULL,'Egypt');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('19732 Burning Wood Parkway','Pitea','Norrbotten','944 73','Sweden');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('9320 Oak Valley Road','Rathangani',NULL,'A45','Ireland');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('2638 Waubesa Circle','Honda',NULL,'732048','Colombia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('6999 Monument Center','Cortes',NULL,'6341','Philippines');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('1 Warbler Hill','Proletar',NULL,NULL,'Tajikistan');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('1311 Crowley Street','Baghlan',NULL,NULL,'Afghanistan');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('19 Walton Way','aldziyt',NULL,NULL,'Mongolia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('1 Glacier Hill','Cergy-Pontoise','ile-de-France','95304','France');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('5094 Gateway Way','zivinice',NULL,NULL,'Bosnia and Herzegovina');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('2 Roth Pass','Tuatuka',NULL,NULL,'Indonesia');
INSERT INTO enrol.Address(StreetAddress,City,State,PostalCode,Country) VALUES ('89531 Northview Road','Ganyi',NULL,NULL,'China');

CREATE TABLE enrol.Department (
    DepartmentID INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
	DepartmentName nvarchar(50)  NOT NULL,
	DepartmentDescription nvarchar(500)  NULL,
	DepartmentCapacity INT NOT NULL,
	InsertedOn Date NOT NULL DEFAULT GETDATE()
);

INSERT INTO enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity,InsertedOn) VALUES ('IT','Information Technology',60,'9/30/2020');
INSERT INTO enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity,InsertedOn) VALUES ('EE','Electrical Engineering',120,'9/30/2020');
INSERT INTO enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity,InsertedOn) VALUES ('CSE','Computer Science Engineering',140,'9/30/2020');
INSERT INTO enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity,InsertedOn) VALUES ('ME','Mechanical Engineering',110,'9/30/2020');
INSERT INTO enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity,InsertedOn) VALUES ('ECE','Electronic and Communication Engineering',80,'9/30/2020');
INSERT INTO enrol.Department(DepartmentName,DepartmentDescription,DepartmentCapacity,InsertedOn) VALUES ('AEIE','Applied Electronics and Instrumentation Engineering',50,'9/30/2020');


CREATE TABLE enrol.Lecturer 
   (
      LecturerID INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED, 
      LecturerName nvarchar(50)  NOT NULL, 
      LecturerHighestQualification nvarchar(50) NULL,
      LecturerAge nvarchar(50)  NOT NULL,
      DepartmentID INT  NOT NULL,
      CONSTRAINT FK_Lectures_Department FOREIGN KEY (DepartmentID)
        REFERENCES enrol.Department (DepartmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
     InsertedOn Date  NULL DEFAULT GETDATE()
   )
;

INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Peder Bernaldez','M.Tech','10/10/2010',6);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Emile Adolthine','PhD','4/4/2010',5);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Titos Iorizzi','M.Tech','4/9/2012',4);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Ferris Falck','MSC','5/5/2011',3);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Georgie McIlwraith','M.Tech','5/8/2017',2);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Karlen Kearn','MSC','3/3/2019',1);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Axe Whistlecroft','MCA','3/3/2019',6);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Drucie Bazek','PhD','4/1/2019',5);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Antony Gamlin','M.Tech','4/1/2019',4);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Alexina Moncaster','MBA','4/1/2019',3);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Milzie Kabos','MCA','3/3/2019',2);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Arlene Glendza','MS','3/3/2019',1);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Kirby Kabisch','M.Tech','4/1/2019',1);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Selma Eliyahu','PhD','4/1/2019',2);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Ilysa Chooter','M.Tech','4/1/2019',3);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Rozalie Pennycord','MSC','10/10/2010',4);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Dacey Glidder','M.Tech','4/4/2010',5);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Claretta Diaper','MSC','4/9/2012',6);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Kalil Pendleton','MCA','5/5/2011',6);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Trudey Brech','PhD','10/5/2011',5);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Gypsy Ambrosini','M.Tech','3/30/2011',4);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Lauree Ribbon','MBA','4/4/2013',3);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Hugo Valois','MCA','4/29/2012',2);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Perren Chetter','MS','5/3/2018',1);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Fawn Coffelt','M.Tech','2/26/2020',1);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Terrie Golby','PhD','2/26/2020',2);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Jeanette Ciraldo','M.Tech','3/26/2020',3);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Elfrieda Elijahu','MSC','3/26/2020',4);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Guthry Blaes','M.Tech','3/26/2020',5);
INSERT INTO enrol.Lecturer(LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID) VALUES ('Richy Saice','MSC','2/26/2020',6);

CREATE TABLE enrol.Student 
   (
      StudentID INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED, 
      StudentFirstName nvarchar(50)  NOT NULL, 
      StudentLastName nvarchar(50)  NULL,
      StudentDOB Date NOT NULL,
      StudentMobile nvarchar(50)   NULL,
      StudentRollNo INT NOT NULL,
      DepartmentID INT  NOT NULL,
      CONSTRAINT FK_Student_Department FOREIGN KEY (DepartmentID)
        REFERENCES enrol.Department (DepartmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
     AddressID INT  NOT NULL,
      CONSTRAINT FK_Student_Address FOREIGN KEY (AddressID)
        REFERENCES enrol.Address (AddressID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
 InsertedOn Date  NOT NULL DEFAULT GETDATE()
   )
;

INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Joey','Ironside','11/22/1995',1276234258,1,3,1);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Karlotta','Garraway','7/6/1997',2192431615,2,3,24);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Jerry','Stutte','12/18/1996',4125425783,3,1,17);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Yehudit','Rahill','1/15/1995',9939485406,4,2,29);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Cele','Crosetto','11/24/1998',3622733725,5,3,16);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Hazlett','Mowsdale','4/9/1995',1482883476,6,4,23);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Carlyn','Marks','12/27/1996',6129154080,7,5,20);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Ellis','Boatman','4/29/1997',8269707118,8,6,7);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Florina','Boyack','8/3/1997',9623352863,9,3,14);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Borg','Innett','9/3/1997',5256034960,10,1,19);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Sayres','Jennings','5/12/1996',8675076454,11,4,27);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Jarid','Sprull','11/2/1998',1391270091,12,2,6);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Elvera','Bannard','9/7/1996',7897232539,13,4,24);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Ody','Inggall','3/5/1995',6094734260,14,5,25);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Curcio','McWhan','7/29/1996',2394865847,15,6,11);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Connie','Sinnie','7/19/1995',1473936221,16,6,23);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Auroora','Nel','9/5/1996',2216400391,17,3,14);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Wendall','Rosendale','12/30/1999',1818120249,18,3,28);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Hadley','Bradbury','8/16/1996',6518067697,19,1,10);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Celine','Smales','7/11/1999',7106508130,20,2,10);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Jesselyn','Stevenson','5/16/1998',9231672206,21,2,22);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Corinna','Pinkney','1/16/1998',8323630067,22,5,29);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Orelle','Adamthwaite','7/26/1997',2539126766,23,3,17);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Howie','Seaman','12/1/1997',9888259627,24,2,4);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Sibyl','Corey','7/18/1996',4493239590,25,5,11);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Ruperta','Peaker','5/22/1999',5124781263,26,5,4);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Delmer','Roughey','4/21/1995',4175314364,27,3,22);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Gifford','O''Scannill','10/31/1996',3134783726,28,4,22);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Hedy','O''Hone','3/29/1998',7316228047,29,2,17);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Shalna','Hyde-Chambers','11/23/1999',7455116160,30,5,6);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Ferdie','Di Napoli','1/17/1995',1905908693,31,4,30);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Piper','Giacomuzzo','9/14/1998',5499340503,32,6,4);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Gerhardt','Schruurs','11/18/1999',8197494894,33,3,1);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Mellicent','Buncher','10/3/1996',4584525312,34,5,28);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Corette','Demead','9/17/1997',4909862137,35,5,17);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Jorgan','Barson','5/1/1997',6022309183,36,1,21);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Koral','Bowen','5/12/1998',4198817454,37,4,3);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Allissa','Kitter','8/17/1998',7328676920,38,5,7);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Townsend','Doughtery','4/13/1998',2639777958,39,4,7);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Yolane','Geratt','6/10/1998',2069585951,40,6,17);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Chrystel','Allwood','9/7/1996',6958461692,41,3,25);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Dyana','Clutterbuck','9/22/1997',5842483886,42,1,1);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Nikki','Edy','1/10/1999',5096155315,43,6,25);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Hendrik','Surr','4/5/1997',2021255732,44,5,11);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Marta','Bosch','9/28/1998',4075136713,45,6,5);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Garrik','Pell','4/14/1999',3071057649,46,6,7);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Stormi','Colbron','10/21/1998',9968113654,47,3,28);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Angelique','Iacivelli','6/7/1995',9518365081,48,5,7);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Zack','Hefforde','7/25/1999',5455693035,49,1,29);
INSERT INTO enrol.Student(StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID) VALUES ('Gusella','Pettiford','8/23/1999',2425172721,50,4,3);

select * from enrol.student;
select * from enrol.Department;
select * from enrol.Lecturer;
select * from enrol.Address;

SELECT
StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile StudentDOB,StudentMobile 
FROM
enrol.Student
WHERE AddressID=7
;


SELECT
StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile StudentDOB,StudentMobile 
FROM
enrol.Student
WHERE StudentFirstName Like 'B%'
;

SELECT
StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile StudentDOB,StudentMobile 
FROM
enrol.Student
WHERE StudentFirstName Like 'A%%A'
;

SELECT
COUNT(*) AS StudentInDepartment6
FROM
enrol.Student
WHERE DepartmentID=6
;


SELECT
CONCAT(enrol.Student.StudentFirstName,' ',enrol.Student.StudentLastName) AS StudentFullName,
DATEDIFF(year, StudentDOB, GETDATE()) AS StudentAge,
StudentMobile 
FROM enrol.Student
WHERE
DATEDIFF(year, StudentDOB, GETDATE())=21 OR DATEDIFF(year, StudentDOB, GETDATE())=23;


SELECT
LecturerID, LecturerName, LecturerHighestQualification, LecturerAge 
FROM enrol.Lecturer;

SELECT
LecturerID, LecturerName, LecturerHighestQualification, LecturerAge 
FROM enrol.Lecturer
WHERE LecturerHighestQualification='MS' or LecturerHighestQualification='PhD' ;

SELECT
* 
FROM enrol.Lecturer
WHERE DepartmentID=2;


SELECT
* 
FROM enrol.Lecturer
WHERE LecturerName Like '%R';

SELECT
* 
FROM enrol.Lecturer
WHERE LecturerName Like '%E' OR LecturerName Like '%E' ;

SELECT
* 
FROM enrol.Lecturer
WHERE LecturerName Like '%E' OR LecturerName Like '%E' ;

SELECT
UPPER(LecturerName) AS LecturerName
FROM enrol.Lecturer;

SELECT
LecturerID, LecturerName, LecturerHighestQualification,LecturerAge,
DATEDIFF(year, LecturerAge, GETDATE()) AS LecturerAge
FROM enrol.Lecturer

SELECT DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from enrol.Department;

SELECT * FROM enrol.Department where DepartmentName='ECE';


SELECT DepartmentName, DepartmentDescription, DepartmentCapacity
FROM enrol.Department
where DepartmentCapacity>60;


SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address;

SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address where Country='Poland';


SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address where state is NULL;

SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address where PostalCode is NOT NULL;

SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address where City='Honda' and Country='Colombia';

SELECT DISTINCT (StudentDOB) FROM enrol.Student;

SELECT DISTINCT (DepartmentName ) FROM enrol.Department;

SELECT DISTINCT (Country ) FROM enrol.Address;

SELECT DISTINCT (State ) FROM enrol.Address;

SELECT DISTINCT (City ) FROM enrol.Address;

SELECT
LecturerID, LecturerName, LecturerHighestQualification,LecturerAge,
DATEDIFF(year, LecturerAge, GETDATE()) AS LecturerYearService
FROM enrol.Lecturer;

SELECT LecturerID, LecturerName, LecturerHighestQualification,LecturerAge,
DATEDIFF(year, LecturerAge, GETDATE()) AS LecturerYearService,
CASE WHEN DATEDIFF(year, LecturerAge, GETDATE())  < 5 THEN 'Begining Level Experience'
WHEN  DATEDIFF(year, LecturerAge, GETDATE())>= 5 and DATEDIFF(year, LecturerAge, GETDATE())< 10 THEN 'Mid Level experience'
ELSE 'Experienced'
END AS LecturerType
FROM enrol.Lecturer;


SELECT * 
FROM enrol.Student S, enrol.Department D
WHERE S.DepartmentID=D.DepartmentID;


SELECT *
FROM enrol.Student S, enrol.Address A
WHERE S.AddressID=A.AddressID; 

SELECT
  *
FROM enrol.Student S
JOIN enrol.Address A
  ON S.AddressID = A.AddressID
JOIN enrol.Department D
  ON S.DepartmentID 

  SELECT
  DISTINCT S.StudentFirstName,S.StudentLastName,S.StudentDOB,S.StudentMobile,S.StudentRollNo,
  A.City,A.Country, A.State, A.StreetAddress, A.PostalCode,
  D.DepartmentName, D.DepartmentName, D.DepartmentDescription,D.DepartmentCapacity,
  L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
  
FROM enrol.Student S
 JOIN enrol.Address A
  ON S.AddressID = A.AddressID
 JOIN enrol.Department D
  ON S.DepartmentID =D.DepartmentID
 JOIN enrol.Lecturer L
  ON D.DepartmentID =L.DepartmentID;

  SELECT
  DISTINCT S.StudentFirstName,S.StudentLastName,S.StudentDOB,S.StudentMobile,S.StudentRollNo,
  A.City,A.Country, A.State, A.StreetAddress, A.PostalCode,
  D.DepartmentName, D.DepartmentName, D.DepartmentDescription,D.DepartmentCapacity,
  L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
  
FROM enrol.Student S
 JOIN enrol.Address A
  ON S.AddressID = A.AddressID
 JOIN enrol.Department D
  ON S.DepartmentID =D.DepartmentID
 JOIN enrol.Lecturer L
  ON D.DepartmentID =L.DepartmentID
  WHERE D.DepartmentName='ME' Or D.DepartmentName='ECE'

   SELECT
  DISTINCT S.StudentFirstName,S.StudentLastName,S.StudentDOB,S.StudentMobile,S.StudentRollNo,
  A.City,A.Country, A.State, A.StreetAddress, A.PostalCode,
  D.DepartmentName, D.DepartmentName, D.DepartmentDescription,D.DepartmentCapacity,
  L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
  
FROM enrol.Student S
 JOIN enrol.Address A
  ON S.AddressID = A.AddressID
 JOIN enrol.Department D
  ON S.DepartmentID =D.DepartmentID
 JOIN enrol.Lecturer L
  ON D.DepartmentID =L.DepartmentID
  WHERE L.LecturerHighestQualification='MS' Or L.LecturerHighestQualification='PhD'


  SELECT
  DISTINCT S.StudentFirstName,S.StudentLastName,S.StudentDOB,S.StudentMobile,S.StudentRollNo,
  A.City,A.Country, A.State, A.StreetAddress, A.PostalCode,
  D.DepartmentName, D.DepartmentName, D.DepartmentDescription,D.DepartmentCapacity,
  L.LecturerName, L.LecturerHighestQualification, L.LecturerAge
  
FROM enrol.Student S
 JOIN enrol.Address A
  ON S.AddressID = A.AddressID
 JOIN enrol.Department D
  ON S.DepartmentID =D.DepartmentID
 JOIN enrol.Lecturer L
  ON D.DepartmentID =L.DepartmentID
  WHERE A.Country='Thailand' ;


SELECT  D.DepartmentName,Count(*) AS Count
FROM enrol.Student S
 JOIN enrol.Department D
  ON S.DepartmentID =D.DepartmentID
Group BY D.DepartmentName


SELECT  D.DepartmentName,Count(*) AS LecturerCount
FROM enrol.Lecturer L
 JOIN enrol.Department D
  ON L.DepartmentID =D.DepartmentID
Group BY D.DepartmentName

SELECT  A.Country,Count(*) AS StudentCount
FROM enrol.Student S
 JOIN enrol.Address A
  ON S.AddressID =A.AddressID
Group BY A.Country

SELECT * INTO StudCopy
FROM 
enrol.Student;

SELECT * INTO enrol.DeptCopy 
FROM 
enrol.Department where 1=2;

SELECT * INTO enrol.DepartmentCopy  
FROM 
enrol.Department;



SELECT * INTO enrol.AddrCopy   
FROM 
enrol.Address 
Where 1=2;


DELETE FROM enrol.LecturerCopy;

DELETE S FROM enrol.Student S
JOIN enrol.Department D
ON S.DepartmentID = D.DepartmentID
WHERE D.DepartmentName='IT';


DELETE S FROM enrol.Student S
JOIN enrol.Address A
ON S.AddressID = A.AddressID
WHERE A.Country='Indonesia';

DELETE S FROM enrol.Student S
JOIN enrol.Address A
ON S.AddressID = A.AddressID
WHERE A.City='Nanshi';

DELETE S FROM enrol.Student S
JOIN enrol.Address A
ON S.AddressID = A.AddressID
WHERE A.State='Bretagne';

UPDATE  S SET S.StudentMobile ='123456789' 
FROM enrol.Student S, enrol.Department D
WHERE
S.DepartmentID=D.DepartmentID and 
D.DepartmentName='ME';

UPDATE  S SET S.DepartmentID=3
FROM enrol.Student S
WHERE S.StudentID=42;


UPDATE  L SET L.LecturerHighestQualification='PhD'
FROM enrol.Lecturer L
WHERE L.LecturerHighestQualification='PHd';

UPDATE  A SET A.PostalCode='00000'
FROM enrol.Address A
WHERE A.PostalCode is NULL;

UPDATE  S SET S.StudentLastName='Paul'
FROM enrol.Student S
WHERE S.StudentFirstName='Jerry';











