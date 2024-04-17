DROP DATABASE IF EXISTS employeesDB;
CREATE DATABASE employeesDB;

use employeesDB;



CREATE Table department(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role(
  id INT AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id int,
  PRIMARY key (id),
  FOREIGN KEY (department_id)
  REFERENCES department(ID)
  ON DELETE SET NULL
);

CREATE TABLE employees(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id int,
  manager_id int,
  PRIMARY key (id),
  FOREIGN key (role_id)
  REFERENCES role(id)
  ON DELETE SET NULL,
  FOREIGN KEY (manager_id)
  REFERENCES employees(id)
  on DELETE set null
);