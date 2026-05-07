-- A1:
SELECT *
FROM FactVentas
LIMIT 10;
-- A2:
SELECT COUNT(*)
FROM FactVentas;
-- A3:
SELECT *
FROM DimProducto;
-- B1:
SELECT TransaccionID,
    FechaID,
    Cantidad,
    Precio_Venta
FROM FactVentas;
-- B2:
SELECT TransaccionID,
    Precio_Venta * Cantidad AS Venta_Bruta,
    ROUND(Precio_Venta * Cantidad * (1 - Descuento_Pct), 2) AS Venta_Neta
FROM FactVentas;
-- C1:
SELECT *
FROM FactVentas
WHERE CiudadID = 6;
-- C2:
SELECT *
FROM FactVentas
WHERE Descuento_Pct > 0.15;
-- C3:
SELECT *
FROM FactVentas
WHERE CiudadID = 6
    AND Descuento_Pct > 0;
-- C4:
SELECT *
FROM FactVentas
WHERE CiudadID IN (4, 5);
-- C5:
SELECT *
FROM FactVentas
WHERE FechaID BETWEEN 20231101 AND 20231130;
-- C6:
SELECT *
FROM DimProducto
WHERE Categoria LIKE 'S%';
-- C7:
SELECT *
FROM DimFecha
WHERE NombreMes IS NULL;
-- D1:
SELECT *
FROM FactVentas
ORDER BY Costo_Envio DESC
LIMIT 10;
-- D2:
SELECT *,
    ROUND(
        Precio_Venta * Cantidad * (1 - Descuento_Pct) - Costo_Envio,
        2
    ) AS Margen
FROM FactVentas
ORDER BY Margen ASC
LIMIT 10;
-- D3:
SELECT *
FROM FactVentas
WHERE CiudadID = 6
ORDER BY Costo_Envio DESC
LIMIT 5;
-- E1:
SELECT COUNT(*)
FROM FactVentas
WHERE FechaID BETWEEN 20230901 AND 20230930;
-- E2:
SELECT TransaccionID,
    CiudadID,
    Descuento_Pct
FROM FactVentas
WHERE CiudadID != 6
ORDER BY Descuento_Pct DESC
LIMIT 10;
-- E3:
SELECT COUNT(*)
FROM FactVentas
WHERE FechaID BETWEEN 20231101 AND 20231130
    AND Descuento_Pct > 0.20
    AND Costo_Envio > 500;