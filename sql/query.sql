\echo '\n\nThe following query makes use of the view:\n'

SELECT *
FROM highest_paid_employee_by_department_view
ORDER BY employee_salary DESC;

\echo '\n\nThe following query makes use of the view:\n'

SELECT department_name, employee_name, employee_salary
FROM highest_paid_employee_by_department_view
ORDER BY employee_salary DESC
LIMIT 1