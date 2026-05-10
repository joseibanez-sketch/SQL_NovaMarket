PRAGMA table_info(DimProducto);
CREATE TABLE FactVentas_Demo (
    VentaID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductoID INTEGER,
    CiudadID INTEGER,
    Cantidad INTEGER NOT NULL,
    Fecha TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductoID) REFERENCES DimProducto(ProductoID),
    FOREIGN KEY (CiudadID) REFERENCES DimCiudad(CiudadID)
);