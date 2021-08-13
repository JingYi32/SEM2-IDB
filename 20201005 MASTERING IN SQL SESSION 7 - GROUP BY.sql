--Question 7.0
--List the department number and sum of salaries of all staff of each department.
--Answer:
SELECT	e.dept_no, 
		SUM(e.emp_salary) AS 'Sum of Salaries'

FROM EMP_T e
GROUP BY e.dept_no

--Question 7.1
--List the department number and number of employees working in each department.
--Answer:
SELECT	e.dept_no, 
		COUNT(*) AS 'Number of Employees'

FROM EMP_T e
GROUP BY e.dept_no


--Question 7.2
--List the department number which has a minimum of four employees.
--Answer:
SELECT	e.dept_no, 
		COUNT(*) AS 'Number of Employees'

FROM EMP_T e
GROUP BY e.dept_no
HAVING COUNT (*) >= 4 --HAVING is used to filter groups. It must appear after GROUP BY

--Question 7.3
--List the department number and the average annual salaries of all employees working in each department.
--Answer:
SELECT	e.dept_no,
		AVG(e.emp_salary * 12) AS 'Average Annual Salaries of Employees'

FROM EMP_T e
GROUP BY e.dept_no

--Question 7.4 
--List the department number, which has at least two clerks.
--Answer:
SELECT	e.dept_no,
		COUNT(*) AS 'Number of Clerks working in this department'

FROM EMP_T e
WHERE ( e.emp_job = 'Clerk' )
GROUP BY e.dept_no
HAVING  COUNT(*) >= 2
