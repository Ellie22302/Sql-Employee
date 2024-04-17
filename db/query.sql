SELECT role.id, role.title, role.salary, department.name FROM ROLE LEFT JOIN department on ROLE.department.id = department.id;
SELECT employees.id, employees.first_name, employees.last_name, role.title FROM employees LEFT JOIN ROLE ON employees.role_id = role.id;

SELECT e.id AS employee_id, e.first_name, e.last_name, r.title AS role_title, r.salary, d.name AS department_name, m.first_name AS manager_first_name, m.last_name AS manager_last_name FROM employees e LEFT JOIN role r ON e.role_id = r.id LEFT JOIN department d ON r.department_id = d.id LEFT JOIN  employees m ON e.manager_id = m.id;