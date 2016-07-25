--
-- employee table design
-- setelah normalisasi
--
CREATE TABLE employee (
  employee_id    SERIAL,
  employee_code  VARCHAR(50),
  first_name     VARCHAR(50),
  last_name      VARCHAR(50),
  hire_date      DATE,
  salary         NUMERIC(9,2),
  manager        INTEGER,
  dept_id        INTEGER,
  PRIMARY KEY (employee_id)
);
--
-- employee latest photo
-- 1:1 relationships with employee table
--
CREATE TABLE employee_picture (
   employee_id integer,
   latest_photo bytea,
   PRIMARY KEY (employee_id),
   FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
)

--
-- department table design
-- untuk memenuhi normalisasi 3NF
--
CREATE TABLE department (
  dept_id      SERIAL,
  dept_code    VARCHAR(50),
  dept_name    VARCHAR(50),
  manager      INTEGER,
  PRIMARY KEY (dept_id)
);
-- foreign key relations
-- relasi 1:M dengan tabel employee
ALTER TABLE employee
  ADD FOREIGN KEY (dept_id) REFERENCES department (dept_id);


--
-- projects table
-- bagian dari relasi M:M dengan tabel employee
--
CREATE TABLE project (
  project_id     serial NOT NULL,
  project_code   varchar(50),
  project_name   varchar(50),
  date_start     date,
  date_completed date,
  PRIMARY KEY (project_id)
)
--
-- employee project
-- associative tabel relasi M:M
-- antara tabel employee dan project
-- foreign key langsung didefinisikan saat CREATE TABLE
--
CREATE TABLE employee_project (
   employee_id    integer,
   project_id     integer,
   assigned_task  varchar(50),
   PRIMARY KEY (employee_id, project_id),
   FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
   FOREIGN KEY (project_id) REFERENCES project (project_id)
)

--
-- location table
-- bagian dari relasi M:M dengan tabel employee
--
CREATE TABLE location (
  location_id   SERIAL,
  location_code VARCHAR(50),
  phone_number  VARCHAR(50),
  PRIMARY KEY (office)
);
--
-- employee location
-- associative tabel relasi M:M
-- antara tabel employee dan location
--
CREATE TABLE employee_location (
  employee_id   INTEGER,
  location_id   VARCHAR(50),
  travel_date   DATE,
  PRIMARY KEY (employee_id, office)
);
--
-- foreign key relations
-- kita gunakan perintah ALTER TABLE
--
ALTER TABLE employee_location
  ADD FOREIGN KEY (employee_id) REFERENCES employee (employee_id);
ALTER TABLE employee_location
  ADD FOREIGN KEY (office) REFERENCES location_phone_number (office);
