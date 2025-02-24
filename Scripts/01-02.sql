-- Find sales people who have zero sales


SELECT e.firstName,e.lastName,e.title,sls.salesId
FROM employee e 
  LEFT JOIN sales sls ON e.employeeId = sls.employeeId
WHERE e.title = 'Sales Person' AND sls.salesId IS NULL;

-- SELECT sql
-- FROM sqlite_schema
-- where name = 'sales';

-- SELECT * FROM sales where salesAmount = 28911.99;

-- SELECT e.firstName , e.lastName ,s.salesAmount
-- FROM employee e LEFT JOIN sales s ON s.salesAmount = 0 ;

