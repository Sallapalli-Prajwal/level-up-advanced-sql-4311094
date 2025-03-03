-- Find the least and most expensive car sold by each employee this year


SELECT e.employeeId, 
        e.firstName,
        e.lastName,
        MIN(salesAmount) as minSalesAmount, 
        MAX(salesAmount) as maxSalesAmount
FROM sales s 
INNER JOIN employee e 
   ON s.employeeId = e.employeeId
WHERE s.soldDate <= date('now','start of year')
GROUP BY e.employeeId,e.firstName,e.lastName;


-- SELECT emp.employeeId, 
--     emp.firstName, 
--     emp.lastName, 
--     MIN(salesAmount) AS MinSalesAmount, 
--     MAX(salesAmount) as MaxSalesAmount
-- FROM sales sls
-- INNER JOIN employee emp
--     ON sls.employeeId = emp.employeeId
-- WHERE sls.soldDate >= date('now','start of year')
-- GROUP BY emp.employeeId, emp.firstName, emp.lastName


