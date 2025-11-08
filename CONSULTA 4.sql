SELECT C.id_cliente, C.nombre,C.apellido, COUNT(F.id_factura) AS cantidad_facturas
FROM CLIENTE C
JOIN  FACTURA F ON C.id_cliente = F.id_cliente
GROUP BY C.id_cliente, C.nombre, C.apellido
HAVING COUNT(F.id_factura) > 5
ORDER BY cantidad_facturas DESC;
