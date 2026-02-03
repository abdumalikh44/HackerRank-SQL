SELECT 
a.company_code,
a.founder,
COUNT(DISTINCT b.lead_manager_code),
COUNT(DISTINCT c.senior_manager_code),
COUNT(DISTINCT d.manager_code),
COUNT(DISTINCT e.employee_code)
FROM company a
JOIN lead_manager b ON b.company_code = a.company_code
JOIN senior_manager c ON c.company_code = b.company_code
JOIN manager d ON d.senior_manager_code = c.senior_manager_code
JOIN employee e ON e.senior_manager_code = d.senior_manager_code
GROUP BY a.company_code, a.founder
ORDER BY a.company_code ASC

