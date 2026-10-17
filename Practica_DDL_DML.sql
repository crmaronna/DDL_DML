--BodegaTech--Martin Maronna--17/10/26
CREATE DATABASE BodegaTech
USE BodegaTech
DROP TABLE IF EXISTS inventario; --DDL
CREATE TABLE inventario( -- DDL
id_producto INT NOT NULL PRIMARY KEY,
nombre_producto VARCHAR (100) NOT NULL, -- NOMBRE PRODUCTO, VARCHAR PERMITE SINTAXISLIBRE HASTA 100.
categoria VARCHAR (50), -- CATEGORIA DEL PRODUCTO, VARCHAR PERMITE SINTAXISLIBRE HASTA 100.
precio_unitario DECIMAL (10,2), -- PRECIO DE VENTA EN USD, PARA ESTE PRECIO EL IDEAL ES DECIMAL.
stock_actual INT, -- UNIDADES DISPONIBLES, PARA UNIDADES ES USA INT, NUMERO ENTERO.
stock_minimo INT, -- UMBRAL MINIMO DE REPOSICIÓN, PARA UNIDADES ES USA INT, NUMERO ENTERO.
fecha_ingreso DATE, --FECHA DE INGRESO AL INVENTARIO, DATE PORQUE SOLO QUEREMOS FECHA EN FORMATO CORRECTO, SIN HORA.
activo TINYINT -- 1=DISPONIBLE, 0=DESCONTINUADO
);

INSERT INTO inventario --DML
(id_producto, nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
(1, N'Laptop Pro 15', N'Computación', 1200.00, 15,  3, '2024-01-10', 1),
(2, N'Mouse Inalámbrico', N'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
(3, N'Monitor 4K 27"', N'Computación', 450.00, 12,  2, '2024-01-15', 1),
(4, N'Teclado Mecánico', N'Accesorios', 95.00, 40,  5, '2024-01-15', 1),
(5, N'Laptop Basic 14', N'Computación', 650.00, 20,  3, '2024-02-01', 1),
(6, N'Auriculares BT Pro', N'Audio', 120.00, 35,  5, '2024-02-01', 1),
(7, N'Hub USB-C 7 puertos', N'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
(8, N'Webcam HD 1080p', N'Accesorios', 85.00, 25,  5, '2024-02-10', 1),
(9, N'SSD Externo 1TB',N'Almacenamiento', 130.00, 18,  3, '2024-03-01', 1),
(10,N'Parlante Bluetooth', N'Audio', 60.00, 45,  8, '2024-03-01', 1);

UPDATE inventario -- DML
SET stock_actual = stock_actual -3
WHERE id_producto = 1;

UPDATE inventario
SET stock_actual = stock_actual -5
WHERE id_producto = 2;

UPDATE inventario 
SET stock_actual = stock_actual -12
WHERE id_producto = 6;

UPDATE inventario
SET activo = 0
WHERE id_producto = 8;

SELECT * FROM inventario;
