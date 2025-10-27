SELECT 
    r.vehiculo.idVehiculo,
    r.vehiculo.marca,
    r.ruta.origen,
    r.ruta.destino,
    m.mantenimiento.fechaInicio AS fechaMantenimiento,
    m.mantenimiento.diagnostico
FROM 
    LCS3_Rutas.vehiculo AS rVehiculo
JOIN 
    LCS3_Rutas.ruta AS rRuta
ON 
    rVehiculo.idVehiculo = rRuta.idVehiculo
JOIN 
    LCS2_Mantenimiento.mantenimiento AS mMantenimiento
ON 
    rVehiculo.idVehiculo = mMantenimiento.idVehiculo
ORDER BY 
    rRuta.fecha DESC;
