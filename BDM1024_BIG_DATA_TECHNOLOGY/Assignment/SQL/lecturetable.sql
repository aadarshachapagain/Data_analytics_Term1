

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
