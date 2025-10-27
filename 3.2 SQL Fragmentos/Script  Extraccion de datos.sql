SELECT 'id_auto', 'marca', 'modelo', 'anio', 'color', 'pasajeros', 'placa', 'id_flotilla'
UNION ALL
SELECT id_auto, marca, modelo, anio, color, pasajeros, placa, id_flotilla
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/vehiculos.csv'
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM LCS1_Principal.vehiculo;
