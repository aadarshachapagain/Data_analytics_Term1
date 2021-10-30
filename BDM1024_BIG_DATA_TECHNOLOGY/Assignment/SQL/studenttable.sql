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
