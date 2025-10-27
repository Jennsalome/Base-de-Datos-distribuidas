USE LCS1_Principal;

-- Cargar datos en flotilla
LOAD DATA INFILE '/var/lib/mysql-files/flotilla_LCS1.csv'
INTO TABLE flotilla
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Cargar datos en vehiculo
LOAD DATA INFILE '/var/lib/mysql-files/vehiculo_LCS1.csv'
INTO TABLE vehiculo
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Cargar datos en documento
LOAD DATA INFILE '/var/lib/mysql-files/documento_LCS1.csv'
INTO TABLE documento
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
