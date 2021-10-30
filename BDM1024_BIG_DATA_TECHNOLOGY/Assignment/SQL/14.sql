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


