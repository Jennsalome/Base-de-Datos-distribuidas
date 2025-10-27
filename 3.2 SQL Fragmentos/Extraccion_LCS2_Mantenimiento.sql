USE FlotillaAutos;

-- Exportar fragmento de vehiculo
SELECT idAuto AS idVehiculo, marca, modelo, anio, tipoVehiculo
INTO OUTFILE '/var/lib/mysql-files/vehiculo_LCS2.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM auto;

-- Exportar tabla mantenimiento
SELECT idMantenimiento, idAuto AS idVehiculo, fechaInicio, fechaFinal, diagnostico, descripcion
INTO OUTFILE '/var/lib/mysql-files/mantenimiento_LCS2.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM mantenimiento;
