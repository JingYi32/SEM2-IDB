--Question 8.0
--List the name and job of employees who have the same job as ¡®JONES¡¯.
--Answer:
SELECT	eo.emp_name AS 'Employee Name', 
		eo.emp_job AS 'Employee Job Position'
FROM EMP_T eo
WHERE	( eo.emp_name <> 'JONES' AND 
		eo.emp_job = (	SELECT ei.emp_job AS 'Job of Jones'
						FROM EMP_T ei
						WHERE ( ei.emp_name = 'JONES') ) )

--Question 8.1 
--Find the staff-name who receives the maximum salary.
--Answer:
SELECT eo.emp_name AS 'Employee Name'
FROM EMP_T eo
WHERE  ( eo.emp_salary = (	SELECT MAX(ei.emp_salary) AS 'HIGHEST SALARY'
							FROM EMP_T ei ) )


--Question 8.2 
--Find the staff-name who receives the smallest salary.
--Answer
SELECT eo.emp_name AS 'Employee Name'
FROM EMP_T eo
WHERE (eo.emp_salary = (	SELECT MIN(ei.emp_salary) AS 'HIGHEST SALARY'
							FROM EMP_T ei ) )


--Question 8.3
--List the name, job, and salary of employees who have the same job and salary as ¡®Ford.¡¯
--Answer:
SELECT	eo.emp_name AS 'EMPLOYEE NAME',
		eo.emp_job AS 'EMPLOYEE JOB POSITION',
		eo.emp_salary AS 'EMPLOYEE SALARY'
FROM EMP_T eo
WHERE	( eo.emp_job = (	SELECT	ei1.emp_job AS 'JOB OF FORD'
							FROM EMP_T ei1
							WHERE ( ei1.emp_name = 'FORD' ) ) 
							AND
		eo.emp_salary = (	SELECT ei2.emp_salary AS 'SALARY OF FORD'
							FROM EMP_T ei2
							WHERE ( ei2.emp_name = 'FORD' ) ) 
							AND
		eo.emp_name <> 'FORD' )

--Question 8.4
--List the name, job, and department of employee whose salary is greater than or equal to ¡®Ford¡¯.
--Answer:
SELECT	eo.emp_name AS 'EMPLOYEE NAME',
		eo.emp_job AS 'EMPLOYEE JOB POSITION',
		d.dept_name AS 'DEPARTMENT NAME'
FROM EMP_T eo, DEPT_T d
WHERE	( eo.dept_no = d.dept_no 
		AND
		eo.emp_salary >= (	SELECT ei.emp_salary AS 'SALARY OF FORD'
							FROM EMP_T ei
							WHERE ( ei.emp_name = 'FORD' ) ) )
