SELECT 
    v1.id_auto,
    v1.marca,
    v1.modelo,
    v1.placa,
    v1.anio,
    (SELECT COUNT(*) FROM LCS2_Mantenimiento.mantenimiento m 
     WHERE m.id_auto = v1.id_auto) as total_mantenimientos,
    (SELECT MAX(m.fechafinal) FROM LCS2_Mantenimiento.mantenimiento m 
     WHERE m.id_auto = v1.id_auto) as ultimo_mantenimiento
FROM LCS1_Principal.vehiculo v1
ORDER BY v1.id_auto;
