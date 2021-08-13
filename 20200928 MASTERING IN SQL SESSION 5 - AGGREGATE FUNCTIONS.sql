-- AGGREGATE FUNCTIONS OF SQL
--COUNT()
--MIN()
--MAX()
--SUM()
--AVG()

--Question 5.0
--Find out how many managers work there.
--Answer:
 SELECT COUNT(*) AS 'NUMBER OF MANAGERS'
 FROM EMP_T e
 WHERE ( e.emp_job = 'MANAGER' )

--Question 5.1
--Find out how many salesmen work there.
--Answer:
SELECT COUNT(*) AS 'NUMBER OF SALESMEN'
FROM EMP_T e
WHERE ( e.emp_job = 'SALESMAN' )

--Question 5.2
--Find out how many salesmen work there in the department number 30.
--Answer:
SELECT COUNT(*) AS 'NUMBER OF SALESMEN'
FROM EMP_T e
WHERE ( ( e.emp_job = 'SALESMAN' ) AND
		( e.dept_no = 30 ) )

--Question 5.3
--Find out the highest salary.
--Answer:
SELECT MAX(e.emp_salary) AS 'Highest Salary'
FROM EMP_T e

--Question 5.4
--Find out the lowest salary.
--Answer:
SELECT MIN(e.emp_salary) AS 'Lowest Salary'
FROM EMP_T e

--Question 5.5
--Find out the sum of salaries of all employees
--Answer:
SELECT SUM(e.emp_salary) AS 'Sum of Salaries'
FROM EMP_T e

--Question 5.6
--Find out the sum of commissions of all employees
--Answer:
SELECT SUM(e.emp_commission) AS 'Sum of Commissions'
FROM EMP_T e

--Question 5.7
--Find out the sum of salaries of the employees who work in the department number 10
--Answer:
SELECT SUM(e.emp_salary) AS 'Sum of Salaries'
FROM EMP_T e
WHERE ( e.dept_no = 10 )
 
--Question 5.8
--Find out the sum of salaries of the employees who work in the department number 10 or 20
--Answer:
SELECT SUM (e.emp_salary) AS 'Sum of Salaries'
FROM EMP_T e
WHERE ( ( e.dept_no = 10) OR
		( e.dept_no = 20 ) )

--Question 5.9
--List the highest salary and lowest salary and the difference between the highest salary and the lowest salary.
--Answer:
SELECT	MAX(e.emp_salary) AS 'Highest Salary',
		MIN(e.emp_salary) AS 'Lowest Salary',
		MAX(e.emp_salary) - MIN(e.emp_salary) AS 'Difference'
FROM EMP_T e

 
--Question 5.10
--Count the number of staff working in the department number 30
--Answer:
SELECT COUNT(*) AS 'Number of Staffs'
FROM EMP_T e
WHERE (e.dept_no = 30)


--Question 5.11
--Count the number of staff whose commission is null
--Answer:
SELECT COUNT(*) AS 'Number of Staffs'
FROM EMP_T e
WHERE (e.emp_commission IS NULL)


--Question 5.12
--Count the number of staff whose salary is not null
--Answer:
SELECT COUNT(*) AS 'Number of Staffs'
FROM EMP_T e
WHERE (e.emp_commission IS NOT NULL)


--Question 5.13
--Count the number of staff whose salary is grater than or equal to 3000
--Answer:
SELECT COUNT(*) AS 'Number of Staffs'
FROM EMP_T e
WHERE ( e.emp_salary >= 3000 )


--Question 5.14
--Count the number of staff whose salary is between 1200 and 1500
--Answer:
SELECT COUNT(*) AS 'Number of Staffs'
FROM EMP_T e
WHERE ( e.emp_salary BETWEEN 1200 AND 1500 )
