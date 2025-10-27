USE FlotillaAutos;

-- Exportar tabla flotilla
SELECT idFlotilla, nombre, ubicacion, totalVehiculos
INTO OUTFILE '/var/lib/mysql-files/flotilla_LCS1.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM flotilla;

-- Exportar fragmento de vehiculo (solo columnas relevantes)
SELECT idAuto AS idVehiculo, marca, modelo, anio, tipoVehiculo, placa, estado
INTO OUTFILE '/var/lib/mysql-files/vehiculo_LCS1.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM auto;

-- Exportar tabla documento
SELECT idDocumento, idAuto AS idVehiculo, nombre, inicio AS fechaInicio, final AS fechaFinal, monto, nombre AS tipoDocumento
INTO OUTFILE '/var/lib/mysql-files/documento_LCS1.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM documento;
