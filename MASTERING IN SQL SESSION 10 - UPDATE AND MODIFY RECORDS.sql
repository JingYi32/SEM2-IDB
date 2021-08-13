--Question 10.0
--Increase all staff salary by 10%.
--Answer:
UPDATE EMP_T
SET emp_salary = (emp_salary * 1.1)
SELECT *
FROM EMP_T e


--Question 10.1 
--Increase all staff commission by 15%.
--Answer:
UPDATE EMP_T
SET emp_commission = (emp_commission * 1.15)


--Question 10.2 
--Increase all staff salary by 10% for those who work in the department number 10.
--Answer:
UPDATE EMP_T
SET emp_salary = (emp_salary * 1.1)
WHERE ( dept_no = 10 )


--Question 10.3
--Increase all managers¡¯ salary by 10%.
--Answer:
UPDATE EMP_T
SET emp_salary = ( emp_salary * 1.1)
WHERE ( emp_job = 'MANAGER' )


--Question 10.5
--Increase staff salary by 10% for those who work in ¡®NEW YORK¡¯.
--Answer:
UPDATE EMP_T
SET emp_salary = (emp_salary * 1.10)
WHERE ( dept_no = (	SELECT dept_no AS 'DEPARTENT NUMBER'
					FROM DEPT_T e
					WHERE ( dept_location = 'NEW YORK' ) ) )
