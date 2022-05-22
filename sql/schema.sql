CREATE TABLE departments (
	id          uuid NOT NULL,
	"name"      varchar NOT NULL,
  created_at  timestamp with time zone NOT NULL DEFAULT NOW(),
	CONSTRAINT  departments_pk PRIMARY KEY (id)
);

CREATE TABLE employees (
	id             uuid NOT NULL,
  department_id  uuid NOT NULL,
	first_name     varchar NOT NULL,
	last_name      varchar NOT NULL,
	salary         int4 NOT NULL,
  created_at     timestamp with time zone NOT NULL DEFAULT NOW(),
	CONSTRAINT     employees_pk PRIMARY KEY (id),
	CONSTRAINT     employees_fk FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE VIEW highest_paid_employee_by_department_view AS
	SELECT 
		d.id AS department_id,
		"name" AS department_name,
		e.id AS employee_id,
		e.employee_name,
		e.salary AS employee_salary
	FROM departments AS d
	INNER JOIN (
		SELECT DISTINCT ON (department_id) department_id, id, salary, first_name || ' ' || last_name AS employee_name
		FROM employees
		ORDER BY department_id, salary DESC
	) AS e
	ON d.id = e.department_id
	ORDER BY salary DESC