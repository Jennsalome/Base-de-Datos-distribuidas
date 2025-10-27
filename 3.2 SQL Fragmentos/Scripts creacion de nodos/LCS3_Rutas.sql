CREATE DATABASE LCS3_Rutas;
USE LCS3_Rutas;

CREATE TABLE vehiculo (
  id_auto INT NOT NULL,
  marca VARCHAR(255) NOT NULL,
  modelo VARCHAR(255) NOT NULL,
  placa VARCHAR(255) NOT NULL,
  PRIMARY KEY(id_auto)
);

CREATE TABLE conductor (
  id_conductor INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  apellidopaterno VARCHAR(255) NOT NULL,
  apellidomaterno VARCHAR(255) NOT NULL,
  telefono VARCHAR(255) NOT NULL,
  licencia VARCHAR(255) NOT NULL,
  id_auto INT NOT NULL, 
  PRIMARY KEY(id_conductor),
  FOREIGN KEY (id_auto) REFERENCES vehiculo(id_auto)
);

CREATE TABLE ruta (
  id_ruta INT NOT NULL,
  id_auto INT NOT NULL,
  id_conductor INT NOT NULL,
  fecha DATE NOT NULL,
  horainicio TIME NOT NULL,
  origen VARCHAR(255) NOT NULL,
  destino VARCHAR(255) NOT NULL,
  horallegada TIME NOT NULL,
  cobro DECIMAL(10,2) NOT NULL,
  PRIMARY KEY(id_ruta),
  FOREIGN KEY (id_auto) REFERENCES vehiculo(id_auto),
  FOREIGN KEY (id_conductor) REFERENCES conductor(id_conductor)
);

CREATE TABLE transaccionCombustible (
  id_transaccion INT NOT NULL,
  id_ruta INT NOT NULL,
  litros DECIMAL(10,2) NOT NULL,
  costo DECIMAL(10,2) NOT NULL,
  fecha DATE NOT NULL,
  PRIMARY KEY(id_transaccion),
  FOREIGN KEY (id_ruta) REFERENCES ruta(id_ruta)
);
