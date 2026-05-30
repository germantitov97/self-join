CREATE TABLE departments (
  id   INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO departments VALUES
  (1, 'Engineering'),
  (2, 'Marketing'),
  (3, 'Sales');

CREATE TABLE employees (
  id         INTEGER PRIMARY KEY,
  name       TEXT    NOT NULL,
  dept_id    INTEGER,
  manager_id INTEGER,
  salary     REAL    NOT NULL,
  FOREIGN KEY (dept_id) REFERENCES departments(id),
  FOREIGN KEY (manager_id) REFERENCES employees(id)
);

INSERT INTO employees VALUES
  (1,'Dana',1,NULL,9000),
  (2,'Omar',2,1,7200),
  (3,'Noa',1,1,6800),
  (4,'Liam',3,2,5500),
  (5,'Rina',NULL,1,6000),
  (6,'Kai',2,2,7000);
  
drop table employees;

CREATE TABLE flights (
  id             INTEGER PRIMARY KEY,
  flight_no      TEXT    NOT NULL,
  origin         TEXT    NOT NULL,
  destination    TEXT    NOT NULL,
  prev_flight_id INTEGER,
  FOREIGN KEY (prev_flight_id) REFERENCES flights(id)
);

INSERT INTO flights VALUES
  (1,'TK101','NYC','London',NULL),
  (2,'TK102','London','Dubai',1),
  (3,'TK103','Dubai','Tokyo',2),
  (4,'TK104','Tokyo','Seoul',3),
  (5,'TK105','Tokyo','Sydney',3),
  (6,'AA201','LA','Chicago',NULL),
  (7,'AA202','Chicago','NYC',6),
  (8,'AA203','NYC','Miami',7),
  (9,'AA204','NYC','Boston',7),
  (10,'BA301','Paris','Rome',NULL),
  (11,'LH401','Frankfurt','Berlin',NULL),
  (12,'LH402','Amsterdam','London',11);
