--Question 3.0
--List the employee name whose name starts with an alphabet ¡®J¡¯
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( e.emp_name LIKE 'J%' )
 

--Question 3.2
--List the employee name whose name starts with alphabets ¡®ADA¡¯
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( e.emp_name LIKE 'ADA%' )


--Question 3.3
--List the employee name whose name ends with the alphabet ¡®R¡¯
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( e.emp_name LIKE '%R' )


--Question 3.4
--List the employee name whose name ends with the alphabet ¡®S¡¯
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( e.emp_name LIKE '%S' )



--Question 3.6
--List the employee name whose name starts with an alphabet ¡®M¡¯ and ends with an alphabet ¡®N¡¯
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( e.emp_name LIKE 'M%N' ) 

 

--Question 3.7
--List the employee name whose name start with the alphabet either ¡®K¡¯ or ¡®F¡¯.
--Answer:
SELECT e.emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( ( e.emp_name LIKE 'K%' ) OR
		( e.emp_name LIKE 'F%' ) )
 


--Question 3.8
--List the employee name whose name has the alphabets ¡®IN¡¯ (in anywhere).
--Answer:
SELECT emp_name AS 'EMPLOYEE NAME'
FROM EMP_T e
WHERE ( e.emp_name LIKE '%IN%' )

