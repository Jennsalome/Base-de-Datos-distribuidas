CREATE DATABASE LCS2_Mantenimiento;
USE LCS2_Mantenimiento;

CREATE TABLE vehiculo (
  id_auto INT NOT NULL,
  marca VARCHAR(255) NOT NULL,
  modelo VARCHAR(255) NOT NULL,
  anio INT NOT NULL,
  color VARCHAR(255) NOT NULL,
  placa VARCHAR(255) NOT NULL,
  PRIMARY KEY(id_auto)
);

CREATE TABLE mantenimiento (
  id_mantenimiento INT NOT NULL,
  id_auto INT NOT NULL,
  fechainicio DATE NOT NULL,
  fechafinal DATE NOT NULL,
  diagnostico VARCHAR(255) NOT NULL,
  descripcion VARCHAR(500) NOT NULL,
  PRIMARY KEY(id_mantenimiento),
  FOREIGN KEY (id_auto) REFERENCES vehiculo(id_auto)
);

