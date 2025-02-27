-- How many cars has been sold per employee

-- SELECT e.firstName,COUNT(s.salesID) AS cars_sold
-- FROM employee e Left JOIN sales s ON e.employeeId = s.employeeId
-- GROUP BY e.firstName
-- ORDER BY cars_sold DESC;

SELECT e.employeeId,e.firstName,e.lastName , count(*) as cars_sold
FROM sales s 
INNER JOIN employee e 
    on s.employeeId = e.employeeId
GROUP BY e.employeeId,e.firstName,e.lastName
ORDER BY cars_sold DESC;

-- -- then add the group by & count
SELECT emp.employeeId, emp.firstName, emp.lastName, count(*) as NumOfCarsSold
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeId = emp.employeeId
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER BY NumOfCarsSold DESC;