
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
