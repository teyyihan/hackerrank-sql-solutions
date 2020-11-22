SELECT MAX(months*salary), COUNT(salary) FROM EMPLOYEE
WHERE months * salary = (SELECT MAX(months*salary) FROM EMPLOYEE)
