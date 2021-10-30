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




