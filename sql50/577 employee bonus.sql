-- Write your PostgreSQL query statement below
SELECT e.name as name, b.bonus as bonus FROM Employee as e
LEFT JOIN Bonus as b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL
ORDER BY e.name;