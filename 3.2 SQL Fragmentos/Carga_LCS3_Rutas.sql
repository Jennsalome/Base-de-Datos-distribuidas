USE LCS3_Rutas;

-- Cargar datos en vehiculo
LOAD DATA INFILE '/var/lib/mysql-files/vehiculo_LCS3.csv'
INTO TABLE vehiculo
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Cargar datos en conductor
LOAD DATA INFILE '/var/lib/mysql-files/conductor_LCS3.csv'
INTO TABLE conductor
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Cargar datos en ruta
LOAD DATA INFILE '/var/lib/mysql-files/ruta_LCS3.csv'
INTO TABLE ruta
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Cargar datos en transaccionCombustible
LOAD DATA INFILE '/var/lib/mysql-files/combustible_LCS3.csv'
INTO TABLE transaccionCombustible
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
