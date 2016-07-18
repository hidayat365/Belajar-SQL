--
-- employee table design
-- setelah normalisasi
--
CREATE TABLE employee (
  employee_id    SERIAL,
  first_name     VARCHAR(50),
  last_name      VARCHAR(50),
  hire_date      DATE,
  salary         NUMERIC(9,2),
  manager        INTEGER,
  dept_id        INTEGER,
  PRIMARY KEY (employee_id)
);

--
-- untuk memenuhi normalisasi 2NF
-- location dan phone_number table design
--
CREATE TABLE employee_location (
  employee_id   INTEGER,
  office        VARCHAR(50),
  PRIMARY KEY (employee_id, office)
);
CREATE TABLE location_phone_number (
  office        VARCHAR(50),
  phone_number  VARCHAR(50),
  PRIMARY KEY (office)
);
-- foreign key relations
ALTER TABLE employee_location
  ADD FOREIGN KEY (employee_id) REFERENCES employee (employee_id);
ALTER TABLE employee_location
  ADD FOREIGN KEY (office) REFERENCES location_phone_number (office);

--
-- department table design
-- untuk memenuhi normalisasi 3NF
--
CREATE TABLE department (
  dept_id        SERIAL,
  dept_name      VARCHAR(50),
  PRIMARY KEY (dept_id)
);
-- foreign key relations
ALTER TABLE employee
  ADD FOREIGN KEY (dept_id) REFERENCES department (dept_id);
