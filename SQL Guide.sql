use Test;

SELECT *
FROM emp
ORDER BY Salary DESC;


SELECT DISTINCT DEPARTMENT_ID
FROM emp;

SELECT DEPARTMENT_ID, COUNT(*) AS EmployeeCount
FROM emp
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, AVG(Salary) AS AvgSalary
FROM emp
GROUP BY DEPARTMENT_ID
HAVING AVG(Salary) > 1;

SELECT *
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID;

SELECT *
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
WHERE ExitDate IS NULL;

SELECT EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC
LIMIT 10 OFFSET 20;

SELECT TOP 10 EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC;

SELECT EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;

SELECT emp.EmpID, emp.FirstName, emp.LastName, emp.StartDate, emp.Salary, dept.DepartmentType, dept.Division
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
ORDER BY emp.StartDate DESC
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;

SELECT DEPARTMENT_ID, AVG(Salary) AS AvgSalary
FROM emp
GROUP BY DEPARTMENT_ID
HAVING AVG(Salary) > 50000;

SELECT DEPARTMENT_ID, AVG(CAST(Salary AS decimal(10, 2))) AS AvgSalary
FROM emp
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID, AVG(Salary) AS AvgSalary
FROM emp
GROUP BY DEPARTMENT_ID;

SELECT *
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID;

SELECT *
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
WHERE ExitDate IS NULL;

SELECT DEPARTMENT_ID, AVG(Salary) AS AvgSalary
FROM emp
GROUP BY DEPARTMENT_ID;

SELECT dept.DEPARTMENT_ID, dept.DepartmentType, AVG(CAST(emp.Salary AS decimal(10, 2))) AS AvgSalary
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
GROUP BY dept.DEPARTMENT_ID, dept.DepartmentType
HAVING AVG(CAST(emp.Salary AS decimal(10, 2))) > 50000;

SELECT DISTINCT DEPARTMENT_ID
FROM emp;

SELECT DEPARTMENT_ID, COUNT(*) AS EmployeeCount
FROM emp
GROUP BY DEPARTMENT_ID;

SELECT TOP 10 EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC;

SELECT EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;

SELECT EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC
LIMIT 10 OFFSET 10;



SELECT EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

DECLARE @PageNumber AS INT = 3;
DECLARE @RowsPerPage AS INT = 10;

SELECT EmpID, FirstName, LastName, StartDate, Salary
FROM emp
ORDER BY StartDate DESC
OFFSET (@PageNumber - 1) * @RowsPerPage ROWS
FETCH NEXT @RowsPerPage ROWS ONLY;


DECLARE @PageNumber AS INT = 3;
DECLARE @RowsPerPage AS INT = 10;

SELECT emp.EmpID, emp.FirstName, emp.LastName, emp.StartDate, emp.Salary, dept.DepartmentType, dept.Division
FROM emp
JOIN dept ON emp.DEPARTMENT_ID = dept.DEPARTMENT_ID
ORDER BY emp.StartDate DESC
OFFSET (@PageNumber - 1) * @RowsPerPage ROWS
FETCH NEXT @RowsPerPage ROWS ONLY;

select * from [dbo].[emp];





