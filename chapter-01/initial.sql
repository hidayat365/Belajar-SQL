--
-- initial table design
-- before normalization
--
CREATE TABLE employee (
  employee_id    INTEGER,
  first_name     VARCHAR(50),
  last_name      VARCHAR(50),
  hire_date      DATE,
  salary         NUMERIC(9,2),
  manager        INTEGER,
  dept_id        INTEGER,
  dept_name      VARCHAR(50),
  ofice_1        VARCHAR(50),
  phone_number_1 VARCHAR(50),
  ofice_2        VARCHAR(50),
  phone_number_2 VARCHAR(50),
  ofice_3        VARCHAR(50),
  phone_number_3 VARCHAR(50)
);
