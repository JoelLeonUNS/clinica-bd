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
  telefono1 VARCHAR(100),
  telefono2 VARCHAR(100),
  FOREIGN KEY (datos_basicos_id) REFERENCES datos_basicos(id)
  );

INSERT INTO datos_basicos ( enfermedades_previas, observaciones ) VALUES
("Gastritis, Diabetes", "Tiene un alto grado de obesidad"),
("Anemia", "Su grasa corporal es baja"),
("Miopía", "Debe abtenerse a estar más 4 horas en el celular"),
("Leucemia", "Debe tomar sesiones de quimioterapia"),
("Diabetes", "Tiene un alto grado de obesidad");

INSERT INTO pacientes ( datos_basicos_id, nombres, fecha_nacimiento, edad, telefono1, telefono2) VALUES
(1, "Joel Leon Mondoñedo", "2000-10-15", 25, "960181410", "961191511"),
(2, "Steve Jobs", "1988-01-11", 37, "910181410", "911191511"),
(3, "Andrew Garfiel", "2000-11-04", 25, "920181410", "921191511"),
(4, "Peter Parker", "2000-08-25", 25, "930181410", "931191511"),
(5, "Gwen Stacy", "2000-12-05", 25, "940181410", "941191511");
