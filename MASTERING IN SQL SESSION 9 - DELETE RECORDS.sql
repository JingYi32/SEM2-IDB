--Question 9.0
--Delete the employee whose name is ¡®JONES¡¯.
--Answer:
DELETE
FROM EMP_T
WHERE (emp_name = 'JONES')

--Question 9.1 
--Delete the employee whose EMPO is 7934.
--Answer:
DELETE
FROM EMP_T
WHERE ( emp_no = 7934 )

--Question 9.2 
--Delete the employees whose salary is greater than 1500.
--Answer:
DELETE
FROM EMP_T
WHERE ( emp_salary > 1500 )

--Question 9.3
--Delete the employees whose salary is between 1200 and 1500.
--Answer:
DELETE
FROM EMP_T
WHERE ( emp_salary BETWEEN 1200 AND 1500 )

--Question 9.4
--Delete the employees who work in department number 10.
--Answer:
DELETE
FROM EMP_T
WHERE ( dept_no = 10 )

--Question 9.6
--Delete the employees who work in NEW YORK.
--Answer:
DELETE
FROM EMP_T
WHERE ( dept_no = (	SELECT d.dept_no AS 'DEPARTMENT NO'
					FROM DEPT_T d
					WHERE ( d.dept_location = 'NEW YORK' ) ) )

-- DELETE AND DROP TABLEs

DELETE FROM EMP_T
DELETE FROM DEPT_T -- The SQL DML of DELETE removes the tuples of given database table
DROP TABLE DEPT_T -- The SQL DDL of DROP TABLE permanently removes given database table along with its data dictionary / database schema / structure of database table