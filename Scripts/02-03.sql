-- Display report for employees who have sold at least 5 cars


SELECT e.employeeID,e.firstName,
        count(*) as numOfCarsSold
FROM sales s INNER JOIN employee e
     on e.employeeID = s.employeeId
group BY e.employeeID,e.firstName
  having count(*)>5;


-- total sales by each employee;

SELECT e.employeeID,e.firstName,
        sum(s.salesAmount) as totalSales
FROM sales s INNER JOIN employee e
     on e.employeeID = s.employeeId
group BY e.employeeID,e.firstName
 -- having count(*)>5;







-- SELECT emp.employeeId, 
--     count(*) AS NumOfCarsSold, 
--     MIN(salesAmount) AS MinSalesAmount, 
--     MAX(salesAmount) AS MaxSalesAmount
-- FROM sales sls
-- INNER JOIN employee emp
--     ON sls.employeeId = emp.employeeId
-- WHERE sls.soldDate >= date('now','start of year')
-- GROUP BY emp.employeeId
-- HAVING count(*) > 5
