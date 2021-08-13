--Question 2.0
--List the details of the employees whose salary is greater than 1000
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.emp_salary > 1000)
 

--Question 2.1
--List the details of the employee whose salary is greater than or equal to 1000
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.emp_salary >= 1000)
 

--Question 2.2
--List the details of the employee whose salary is between 1000 and 1500
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.emp_salary BETWEEN 1000 AND 1500 )


--Question 2.3
--List the details of employees who work in the department number 10
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.dept_no = 10 )


--Question 2.4
--List the details of employees who work in the department number 10 or 20
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.dept_no = 10) OR ( e.dept_no = 20 )


--Question 2.5
--List the details of employees who work in the department number 10 and the salary is greater than 1500
--Answer:
SELECT *
FROM EMP_T e
WHERE ( ( e.dept_no = 10 ) AND
		( e.emp_salary > 1500) )


--Question 2.6
--List the details of employees who work in the department number 10 and the salary is between 1500 and 3000
--Answer:
SELECT *
FROM EMP_T e
WHERE ( ( e.dept_no = 10 ) AND
		( e.emp_salary BETWEEN 1500 AND 3000 ) )
 

--Question 2.7
--List the details of all salesmen 
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.emp_job = 'SALESMAN' )


--Question 2.8
--List the details of all managers 
--Answer:
SELECT *
FROM EMP_T e
WHERE ( e.emp_job = 'MANAGER' )


--Question 2.9
--List the employee numbers and names of all salesmen who work in the department number 30 and their salary is greater than or equal to 1500.
--Answer:
SELECT e.emp_no AS 'EMPLOYEE NUMBER',
       e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( ( e.emp_job = 'SALESMAN' ) AND
		( e.dept_no = 30 ) AND 
		( e.emp_salary >= 1500 ) )

 

