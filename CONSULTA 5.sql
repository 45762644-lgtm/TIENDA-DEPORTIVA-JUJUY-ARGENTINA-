SELECT EMPLEADO.nombre, EMPLEADO.apellido, count (factura.id_empleado) AS total_Vendido
FROM EMPLEADO
JOIN FACTURA ON EMPLEADO.id_empleado = FACTURA.id_empleado
GROUP BY EMPLEADO.nombre , EMPLEADO.apellido, EMPLEADO.id_empleado
ORDER BY total_Vendido DESC;
