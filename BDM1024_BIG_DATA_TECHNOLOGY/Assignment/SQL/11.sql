
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