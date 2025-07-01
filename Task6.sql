-- Extracting data using scalar sub query with '='
SELECT * FROM emp 
WHERE salary = (SELECT MAX(salary) FROM emp);

-- Extracting data using correlated sub query 
SELECT * FROM emp 
WHERE salary >= (SELECT AVG(salary) FROM emp);

-- Extracting data using correlated sub query with in
SELECT * FROM emp 
WHERE d_id IN 
SELECT d_id FROM emp 
WHERE city = 'Mumbai');

-- Extracting data using correlated sub query with exists
SELECT e_name FROM emp e
WHERE EXISTS(
SELECT 1 FROM dept d
WHERE e.d_id = d.d_id
);