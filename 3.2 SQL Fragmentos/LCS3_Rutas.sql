CREATE DATABASE LCS3_Rutas;
USE LCS3_Rutas;

-- Tabla VEHICULO (fragmentada)
CREATE TABLE vehiculo (
  idVehiculo INT NOT NULL PRIMARY KEY,
  marca VARCHAR(50),
  modelo VARCHAR(50),
  placa VARCHAR(20)
);

-- Tabla CONDUCTOR
CREATE TABLE conductor (
  idConductor INT NOT NULL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellidoPaterno VARCHAR(100),
  apellidoMaterno VARCHAR(100),
  telefono VARCHAR(20),
  licencia VARCHAR(50)
);

-- Tabla RUTA
CREATE TABLE ruta (
  idRuta INT AUTO_INCREMENT PRIMARY KEY,
  idVehiculo INT NOT NULL,
  idConductor INT NOT NULL,
  origen VARCHAR(100),
  destino VARCHAR(100),
  fecha DATE,
  horaInicio TIME,
  horaLlegada TIME,
  distancia DECIMAL(10,2),
  tiempoEstimado TIME,
  cobro DECIMAL(10,2),
  FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo),
  FOREIGN KEY (idConductor) REFERENCES conductor(idConductor)
);

-- Tabla TRANSACCION_COMBUSTIBLE
CREATE TABLE transaccionCombustible (
  idTransaccion INT AUTO_INCREMENT PRIMARY KEY,
  idVehiculo INT NOT NULL,
  fecha DATE NOT NULL,
  litros DECIMAL(10,2),
  precioTotal DECIMAL(10,2),
  tipoCombustible VARCHAR(50),
  nivelCombustible DECIMAL(5,2),
  FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);
