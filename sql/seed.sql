INSERT INTO departments (id, name, created_at) VALUES
  ('1db022d2-908d-40c3-849a-b1332bebb57c', 'Sales', now());

INSERT INTO departments (id, name, created_at) VALUES
  ('d2a27b73-ec3e-4ec1-a2e2-7fe3a51024c5', 'Marketing', now());

INSERT INTO departments (id, name, created_at) VALUES
  ('0cefa1f1-9271-4970-bb58-b7150148f981', 'Engineering', now());

INSERT INTO employees (id, department_id, first_name, last_name, salary, created_at) VALUES
  ('14f6c6d4-076f-4bbb-b17a-7254ee970d49', '1db022d2-908d-40c3-849a-b1332bebb57c', 'Joe', 'Bloggs', 40000, now());

INSERT INTO employees (id, department_id, first_name, last_name, salary, created_at) VALUES
  ('cba47488-b54e-419e-b02e-9a8be0b8fd90', '1db022d2-908d-40c3-849a-b1332bebb57c', 'Bill', 'Johnson', 20000, now());

INSERT INTO employees (id, department_id, first_name, last_name, salary, created_at) VALUES
  ('6de82b1b-c104-4ac1-a442-02b320831087', 'd2a27b73-ec3e-4ec1-a2e2-7fe3a51024c5', 'Sandra', 'Miller', 80000, now());

INSERT INTO employees (id, department_id, first_name, last_name, salary, created_at) VALUES
  ('4799f521-f071-4bf0-85ad-19db9ae5ca0b', 'd2a27b73-ec3e-4ec1-a2e2-7fe3a51024c5', 'Jack', 'Byrne', 40000, now());

INSERT INTO employees (id, department_id, first_name, last_name, salary, created_at) VALUES
  ('2a51d306-42a5-497c-9c04-ae93aea71835', '0cefa1f1-9271-4970-bb58-b7150148f981', 'Gina', 'Samuels', 60000, now());

INSERT INTO employees (id, department_id, first_name, last_name, salary, created_at) VALUES
  ('9dd1e3a6-8cc6-41e0-9bb5-7afd15b35085', '0cefa1f1-9271-4970-bb58-b7150148f981', 'Adam', 'McDougal', 30000, now());