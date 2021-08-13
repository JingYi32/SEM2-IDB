--Question 1.0
--List employee names
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e


--Question 1.1
--List employee numbers and employee names
--Answer:
SELECT	e.emp_no AS 'EMPLOYEE NUMBER',
		e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e


--Question 1.2
--List all job positions.
--Answer:
SELECT e.emp_job AS 'JOB POSITION'
FROM EMP_T e


--Question 1.3
--List all job positions without duplication.
--Answer:
SELECT DISTINCT e.emp_job AS 'JOB POSITION'
FROM EMP_T e


--Question 1.4
--List all department names
--Answer:
SELECT d.dept_name AS 'DEPARTMENT NAME'
FROM DEPT_T d


--Question 1.5
--List department numbers and department names
--Answer:
SELECT	d.dept_no AS 'DEPARTMENT NUMBER',
		d.dept_name AS 'DEPARTMENT NAME'
FROM DEPT_T d


--Question 1.6
--List the details of all employees
--Answer:
--reders to ALL columns (attributes)
SELECT *
FROM EMP_T
