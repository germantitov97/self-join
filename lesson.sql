SELECT
  e.name       AS employee,
  m.name       AS manager,
  e.salary     AS emp_salary
FROM   employees e
LEFT JOIN employees m ON e.manager_id = m.id;

SELECT e.name, e.salary
FROM   employees e
JOIN   employees m ON e.manager_id = m.id
WHERE  m.name = 'Omar';

SELECT
  m.name          AS manager,
  COUNT(e.id)     AS direct_reports
FROM   employees m
LEFT JOIN employees e ON e.manager_id = m.id
GROUP BY m.id, m.name
HAVING  COUNT(e.id) > 0
ORDER BY direct_reports DESC;
