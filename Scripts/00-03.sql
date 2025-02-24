SELECT
   emp.firstName,
   emp.lastName,
   emp.title,
   mng.firstName AS ManagerFirstName,
   mng.lastName AS ManagerLastName
FROM employee emp INNER JOIN employee mng ON emp.managerID = mng.employeeID;


-- tried out some queries ....!



-- SELECT emp.firstName,emp.lastName,emp.title
-- FROM employee emp WHERE emp.title = 'Sales Person';  -- to filter only sales person using where 

-- SELECT e.firstName , e.lastName ,e.title
-- FROM employee e INNER JOIN employee ON e.title = 'Sales Person' 
-- LIMIT 5;

-- SELECT  * FROM employee 
-- LIMIT 5;

-- SELECT sql
-- FROM sqlite_schema
-- WHERE name = 'employee';

-- SELECT firstName,lastName,startDate 
-- FROM employee WHERE startDate > '2020-01-01';
