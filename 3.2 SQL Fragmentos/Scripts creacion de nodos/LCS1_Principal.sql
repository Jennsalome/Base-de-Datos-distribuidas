CREATE DATABASE LCS1_Principal;
USE LCS1_Principal;

-- Tabla FLOTILLA
CREATE TABLE flotilla (
  idFlotilla INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  ubicacion VARCHAR(100),
  totalVehiculos INT
);

-- Tabla VEHICULO
CREATE TABLE vehiculo (
  idVehiculo INT NOT NULL PRIMARY KEY,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  anio INT NOT NULL,
  tipoVehiculo VARCHAR(50),
  placa VARCHAR(20) NOT NULL,
  estado VARCHAR(50)
);

-- Tabla DOCUMENTO
CREATE TABLE documento (
  idDocumento INT AUTO_INCREMENT PRIMARY KEY,
  idVehiculo INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  fechaInicio DATE NOT NULL,
  fechaFinal DATE NOT NULL,
  monto DECIMAL(10,2),
  tipoDocumento VARCHAR(50),
  FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);
