CREATE DATABASE LCS1_Principal;
USE LCS1_Principal;

CREATE TABLE flotilla (
  id_flotilla INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(500),
  PRIMARY KEY(id_flotilla)
);

CREATE TABLE vehiculo (
  id_auto INT NOT NULL,
  marca VARCHAR(255) NOT NULL,
  modelo VARCHAR(255) NOT NULL,
  anio INT NOT NULL,
  color VARCHAR(255) NOT NULL,
  pasajeros INT NOT NULL,
  placa VARCHAR(255) NOT NULL,
  id_flotilla INT,
  PRIMARY KEY(id_auto),
  FOREIGN KEY (id_flotilla) REFERENCES flotilla(id_flotilla)
);

CREATE TABLE documento (
  id_documento INT NOT NULL,
  id_auto INT NOT NULL,
  numero VARCHAR(255) NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  inicio DATE NOT NULL,
  final DATE NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  PRIMARY KEY(id_documento),
  FOREIGN KEY (id_auto) REFERENCES vehiculo(id_auto)
);


