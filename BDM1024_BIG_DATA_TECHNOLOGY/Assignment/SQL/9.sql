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

