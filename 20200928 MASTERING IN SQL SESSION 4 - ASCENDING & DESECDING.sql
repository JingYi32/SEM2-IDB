--Question 4.0
--List the employee details in descending order of their salary.
--Answer:
SELECT *
FROM EMP_T e
ORDER BY e.emp_salary DESC
 

--Question 4.1
--List the employee details in ascending order of their salary.
--Answer:
SELECT *
FROM EMP_T e
ORDER BY e.emp_salary ASC


--Question 4.2
--List the employee details in descending order of their names.
--Answer:
SELECT *
FROM EMP_T e
ORDER BY e.emp_name DESC



--Question 4.3
--List the employee details in ascending order of their names. Show employee number, name, and salary
--Answer:
SELECT	e.emp_no AS 'EMPLOYEE NUMBER',
		e.emp_name AS 'EMPLOYEE NAME',
		e.emp_salary AS 'EMPLOYEE SALARY'
FROM EMP_T e
ORDER BY e.emp_name ASC

