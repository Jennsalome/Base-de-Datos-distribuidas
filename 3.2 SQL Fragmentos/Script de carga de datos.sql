LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/vehiculos.csv'
IGNORE INTO TABLE LCS1_Principal.vehiculo
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_auto, marca, modelo, anio, color, pasajeros, placa, id_flotilla);
