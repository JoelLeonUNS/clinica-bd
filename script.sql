CREATE DATABASE clinica;
USE clinica;

CREATE TABLE datos_basicos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  enfermedades_previas VARCHAR(250),
  observaciones VARCHAR(250)
  );

CREATE TABLE pacientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  datos_basicos_id INT NOT NULL,
  nombres VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  edad INT,
  telefonos JSON NOT NULL,
  FOREIGN KEY (datos_basicos_id) REFERENCES datos_basicos(id)
  );

INSERT INTO datos_basicos ( enfermedades_previas, observaciones ) VALUES
("Gastritis, Diabetes", "Tiene un alto grado de obesidad"),
("Anemia", "Su grasa corporal es baja"),
("Miopía", "Debe abtenerse a estar más 4 horas en el celular"),
("Leucemia", "Debe tomar sesiones de quimioterapia"),
("Diabetes", "Tiene un alto grado de obesidad");

INSERT INTO pacientes ( datos_basicos_id, nombres, fecha_nacimiento, edad, telefonos) VALUES
(1, "Stuart Litle", "2000-10-15", 25, JSON_ARRAY("960181410", "961191511")),
(2, "Steve Jobs", "1988-01-11", 37, JSON_ARRAY("910181410", "911191511")),
(3, "Chris Evans", "2000-11-04", 25, JSON_ARRAY("920181410", "921191511")),
(4, "Peter Parker", "2000-08-25", 25, JSON_ARRAY("930181410", "931191511")),
(5, "Gwen Stacy", "2000-12-05", 25, JSON_ARRAY("940181410", "941191511"));
