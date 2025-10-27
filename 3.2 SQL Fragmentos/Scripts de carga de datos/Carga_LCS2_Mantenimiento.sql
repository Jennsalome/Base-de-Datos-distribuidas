USE LCS2_Mantenimiento;

-- Cargar datos en vehiculo
LOAD DATA INFILE '/var/lib/mysql-files/vehiculo_LCS2.csv'
INTO TABLE vehiculo
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

-- Cargar datos en mantenimiento
LOAD DATA INFILE '/var/lib/mysql-files/mantenimiento_LCS2.csv'
INTO TABLE mantenimiento
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
