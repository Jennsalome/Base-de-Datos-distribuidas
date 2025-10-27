CREATE DATABASE LCS2_Mantenimiento;
USE LCS2_Mantenimiento;

-- Tabla VEHICULO (fragmentada)
CREATE TABLE vehiculo (
  idVehiculo INT NOT NULL PRIMARY KEY,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50),
  anio INT,
  tipoVehiculo VARCHAR(50)
);

-- Tabla MANTENIMIENTO
CREATE TABLE mantenimiento (
  idMantenimiento INT AUTO_INCREMENT PRIMARY KEY,
  idVehiculo INT NOT NULL,
  fechaInicio DATE NOT NULL,
  fechaFinal DATE NOT NULL,
  diagnostico VARCHAR(255),
  descripcion VARCHAR(500),
  costo DECIMAL(10,2),
  taller VARCHAR(100),
  FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);
