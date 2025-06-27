/*Write a query to count the number of employees in each department.*/
SELECT COUNT(*)
FROM EMP
GROUP BY DEPTNO;

/*Write a query to find the average salary of employees in each job role.*/
SELECT AVG(SAL)
FROM EMP
GROUP BY JOB;

/*Write a query to display the total salary paid in each department.*/
SELECT SUM(SAL) AS TOTAL_SAL
FROM EMP 
GROUP BY DEPTNO;

/*Write a query to find departments where the total salary is more than 100,000.*/
SELECT DEPTNO,SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > 100000;

/*Write a query to find the number of employees hired in each year.*/
SELECT COUNT(*)
FROM EMP
GROUP BY YEAR(HIREDATE) ;


/*Write a query to get the average salary of employees for each manager.*/
SELECT AVG(SAL)
FROM EMP 
GROUP BY MGR;

/*Write a query to display departments with more than 5 employees.*/
SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 5;

/*Write a query to get the maximum salary in each department.*/
SELECT MAX(SAL)
FROM EMP 
GROUP BY DEPTNO;

/*Write a query to find the minimum salary for each job type.*/
SELECT MIN(SAL) FROM EMP
GROUP BY JOB;

/*Write a query to get the total number of employees with the same job title.*/
SELECT COUNT(*)
FROM EMP
GROUP BY JOB;

/*Write a query to get the total number of employees under each manager.*/
SELECT COUNT(*) 
FROM EMP
GROUP BY MGR;

/*Write a query to get the department number where the average salary is above 60,000.*/
SELECT DEPTNO ,AVG(SAL)
FROM EMP 
GROUP BY DEPTNO
HAVING AVG(SAL) > 60000;

/*Write a query to display job titles having more than 3 employees.*/
SELECT JOB FROM EMP
GROUP BY JOB
HAVING COUNT(*) > 3;

/*Write a query to count how many employees are hired each month.*/
SELECT COUNT(*) FROM EMP
GROUP BY MONTH(HIREDATE);

/*Write a query to get the total salary, average salary, and employee count for each department.*/
SELECT SUM(SAL),AVG(SAL),COUNT(*) FROM EMP
GROUP BY DEPTNO;

/*Write a query to display job roles where the maximum salary exceeds 90,000.*/
SELECT JOB FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 90000;

/*Write a query to list departments where the average salary is between 40,000 and 80,000.*/
SELECT DEPTNO FROM EMP 
GROUP BY DEPTNO
HAVING AVG(SAL) BETWEEN 40000 AND 80000;

/*Write a query to display the job title with the highest average salary.*/
SELECT JOB FROM EMP 
GROUP BY JOB
ORDER BY AVG(SAL) DESC
LIMIT 1;

/*Write a query to find departments where the sum of salaries is the highest.*/
SELECT DEPTNO FROM EMP
GROUP BY DEPTNO
ORDER BY SUM(SAL) DESC;

/*Write a query to list managers who have more than 3 employees reporting to them.*/
SELECT MGR FROM EMP 
GROUP BY MGR
HAVING COUNT(*) > 3;
