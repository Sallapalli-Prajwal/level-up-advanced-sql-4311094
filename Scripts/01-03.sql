-- List all customers & their sales, even if some data is gone

SELECT c.firstName,c.lastName,c.email,s.salesAmount,s.soldDate
FROM customer c LEFT JOIN sales s ON c.customerID = s.customerID
 UNION
SELECT c.firstName,c.lastName,c.email,s.salesAmount,s.soldDate
FROM sales s LEFT JOIN customer c ON c.customerID = s.customerID WHERE c.firstName IS NULL;








-- SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
-- FROM customer cus
-- INNER JOIN sales sls
--     ON cus.customerId = sls.customerId
-- UNION
-- -- UNION WITH CUSTOMERS WHO HAVE NO SALES
-- SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
-- FROM customer cus
-- LEFT JOIN sales sls
--     ON cus.customerId = sls.customerId
-- WHERE sls.salesId IS NULL
-- UNION
-- -- UNION WITH SALES MISSING CUSTOMER DATA
-- SELECT cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
-- FROM sales sls
-- LEFT JOIN customer cus
--     ON cus.customerId = sls.customerId
-- WHERE cus.customerId IS NULL;
