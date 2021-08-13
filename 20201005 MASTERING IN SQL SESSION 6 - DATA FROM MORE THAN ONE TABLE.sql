--RETRIVE DATA FROM MORE THAN ONE TABLE

--Question 6.0
--Join the DEPT table to the EMP table and then list the records.
--Answer:
SELECT *
FROM EMP_T e, DEPT_T d
WHERE ( e.dept_no = d.dept_no )

--Question 6.1
--Join the DEPT table to the EMP table and show the records in ascending order of department number.
--Answer:
SELECT *
FROM EMP_T e, DEPT_T d
WHERE ( e.dept_no = d.dept_no )
ORDER BY e.dept_no

--Question 6.2
--Join the DEPT table to the EMP table and show the records in ascending order of salary.
--Answer:
SELECT *
FROM EMP_T e, DEPT_T d
WHERE ( e.dept_no = d.dept_no )
ORDER BY e.emp_salary

--Question 6.3
--List the details of the employees who work at ¡®DALLAS¡¯.
--Answer:
SELECT *
FROM EMP_T e, DEPT_T d
WHERE ( ( e.dept_no = d.dept_no ) AND
		( dept_location = 'DALLAS' ) )


--Question 6.4
--Find the name, salary, and department name of employees who work at ¡®DALLAS¡¯.
--Answer:
SELECT	e.emp_name AS 'NAME OF EMPLOYEE',
		e.emp_salary AS 'SALARY OF EMPLOYEE',
		d.dept_name AS 'DEPARTMENT NAME OF EMPLOYEE'
FROM EMP_T e, DEPT_T d
WHERE ( ( e.dept_no = d.dept_no ) AND
		( dept_location = 'DALLAS' ) )


--Question 6.5
--Find the employees (name, number, department name, salary) who earn more than ¡®JONES¡¯.
--Answer:
SELECT	e.emp_name AS 'NAME OF EMPLOYEE',
		e.emp_no AS 'EMPLOYEE NUMBER',
		e.emp_salary AS 'SALARY OF EMPLOYEE',
		d.dept_name AS 'DEPARTMENT NAME OF EMPLOYEE'
FROM EMP_T e, DEPT_T d
WHERE  ( e.dept_no = d.dept_no ) AND
		 e.emp_salary > (	SELECT e.emp_salary AS 'Salary of Mr.Jones'
							FROM EMP_T e
							WHERE ( e.emp_name = 'JONES' ) )
