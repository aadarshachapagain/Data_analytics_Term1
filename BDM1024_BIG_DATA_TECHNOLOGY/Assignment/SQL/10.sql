SELECT DISTINCT (StudentDOB) FROM enrol.Student;

SELECT DISTINCT (DepartmentName ) FROM enrol.Department;

SELECT DISTINCT (Country ) FROM enrol.Address;

SELECT DISTINCT (State ) FROM enrol.Address;

SELECT DISTINCT (City ) FROM enrol.Address;

SELECT
LecturerID, LecturerName, LecturerHighestQualification,LecturerAge,
DATEDIFF(year, LecturerAge, GETDATE()) AS LecturerYearService
FROM enrol.Lecturer

SELECT LecturerID, LecturerName, LecturerHighestQualification,LecturerAge,
DATEDIFF(year, LecturerAge, GETDATE()) AS LecturerYearService,
CASE WHEN DATEDIFF(year, LecturerAge, GETDATE())  < 5 THEN 'Begining Level Experience'
WHEN  DATEDIFF(year, LecturerAge, GETDATE())>= 5 and DATEDIFF(year, LecturerAge, GETDATE())< 10 THEN 'Mid Level experience'
ELSE 'Experienced'
END AS LecturerType
FROM enrol.Lecturer
