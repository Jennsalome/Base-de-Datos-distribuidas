USE FlotillaAutos;

-- Exportar fragmento de vehiculo
SELECT idAuto AS idVehiculo, marca, modelo, placa
INTO OUTFILE '/var/lib/mysql-files/vehiculo_LCS3.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM auto;

-- Exportar tabla conductor
SELECT idConductor, nombre, apellidoPaterno, apellidoMaterno, telefono, licencia
INTO OUTFILE '/var/lib/mysql-files/conductor_LCS3.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM conductor;

-- Exportar tabla ruta
SELECT idRuta, idAuto AS idVehiculo, idConductor, origen, destino, fecha, horaInicio, horaLlegada, distancia, tiempoEstimado, cobro
INTO OUTFILE '/var/lib/mysql-files/ruta_LCS3.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM ruta;

-- Exportar tabla transaccionCombustible
SELECT idTransaccion, idAuto AS idVehiculo, fecha, litros, precioTotal, tipoCombustible, nivelCombustible
INTO OUTFILE '/var/lib/mysql-files/combustible_LCS3.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM transaccionCombustible;
