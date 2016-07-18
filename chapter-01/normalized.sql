--
-- employee table design
-- setelah normalisasi
--
CREATE TABLE employee (
  employee_id    INTEGER,
  first_name     VARCHAR(50),
  last_name      VARCHAR(50),
  hire_date      DATE,
  salary         NUMERIC(9,2),
  manager        INTEGER,
  dept_id        INTEGER
);

--
-- location table design
-- untuk memenuhi normalisasi 2NF
--
CREATE TABLE employee_location (
  employee_id  INTEGER,
  ofice        VARCHAR(50)
);
CREATE TABLE location_phone_number (
  ofice        VARCHAR(50),
  phone_number VARCHAR(50)
);

--
-- department table design
-- untuk memenuhi normalisasi 3NF
--
CREATE TABLE department (
  dept_id        INTEGER,
  dept_name      VARCHAR(50)
);
