create table categorias (
id int primary key,
nombre varchar (300)
);


INSERT INTO categorias (id, nombre) VALUES
(1, 'Electrónicos'),
(2, 'Ropa'),
(3, 'Hogar'),
(4, 'Deportes'),
(5, 'Juguetes');

create table productos (
id int primary key,
nombre varchar (300),
marca varchar (300),
categoria_id int,
precio_unitario DECIMAL(10,2)
);


INSERT INTO productos (id, nombre, marca, categoria_id, precio_unitario) VALUES
(1, 'Televisor', 'Sony', 1, 1000),
(2, 'Laptop', 'HP', 1, 800),
(3, 'Camisa', 'Zara', 2, 50);

create table sucursales (
id int primary key,
nombre varchar (300),
direccion varchar (300)
);


INSERT INTO sucursales (id, nombre, direccion) VALUES
(1, 'Sucursal A', 'Calle 1'),
(2, 'Sucursal B', 'Calle 2'),
(3, 'Sucursal C', 'Calle 3');


create table clientis  (
id int primary key,
nombre varchar (300),
telefono varchar (30)
);


INSERT INTO clientis (id, nombre, telefono) VALUES
(1, 'Juan', '1234567890'),
(2, 'María', '0987654321'),
(3, 'Pedro', '5555555555');

CREATE TABLE ordenis(
    id INT PRIMARY KEY,
    cliente_id INT,
    sucursal_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (sucursal_id) REFERENCES sucursales(id)
    );
   
insert into ordenis (id	,cliente_id ,sucursal_id,fecha,total) values 
(1	,1,	3	,'2023-06-12',	575),
(2	,2,	1	,'2023-06-12',	705),
(3	,3,	3	,'2023-06-12',	9000),
(4	,2,	3	,'2023-06-12',	10400),
(5	,3,	3	,'2023-06-12',	85),
(6	,1,	1	,'2023-06-12',	830),
(7	,1,	1	,'2023-06-12',	490),
(8	,3,	3	,'2023-06-12',	16100),
(9	,3,	2	,'2023-06-12',	680),
(10	,2,	1	,'2023-06-12',	7525),
(11	,2,	3	,'2023-06-12',	725),
(12	,3,	1	,'2023-06-12',	11430),
(13	,3,	3	,'2023-06-12',	4900),
(14	,3,	3	,'2023-06-12',	5490),
(15	,1,	1	,'2023-06-12',	420);


CREATE TABLE stocsk (
    id INT PRIMARY KEY,
    sucursal_id INT,
    producto_id INT,
    cantidad INT);

INSERT INTO stocsk (Id, sucursal_id, producto_id, cantidad) VALUES
(1, 1, 1, 65),
(2, 1, 2, 71),
(3, 1, 3, 8),
(4, 1, 4, 42),
(5, 1, 5, 61),
(6, 1, 6, 14),
(7, 1, 7, 70),
(8, 1, 8, 66),
(9, 1, 9, 13),
(10, 1, 10, 68),
(11, 2, 1, 14),
(12, 2, 2, 67),
(13, 2, 3, 74),
(14, 2, 4, 32),
(15, 2, 5, 75),
(16, 2, 6, 37),
(17, 2, 7, 14),
(18, 2, 8, 42),
(19, 2, 9, 51),
(20, 2, 10, 41),
(21, 3, 1, 59),
(22, 3, 2, 98),
(23, 3, 3, 52),
(24, 3, 4, 85),
(25, 3, 5, 31),
(26, 3, 6, 17),
(27, 3, 7, 13),
(28, 3, 8, 18),
(29, 3, 9, 76),
(30, 3, 10, 1);

CREATE TABLE itenms (
    id INT PRIMARY KEY,
    orden_id INT,
    producto_id INT,
    cantidad INT,
    monto_venta DECIMAL(10, 2)
   );

INSERT INTO itenms  (id, orden_id, producto_id, cantidad, monto_venta) VALUES
(1, 1, 9, 7, 175),
(2, 1, 8, 8, 400),
(6, 2, 9, 3, 75),
(7, 2, 5, 9, 270),
(8, 2, 5, 10, 300),
(9, 2, 6, 3, 60),
(11, 3, 1, 9, 9000),
(16, 4, 1, 4, 4000),
(17, 4, 2, 8, 6400),
(21, 5, 6, 2, 40),
(22, 5, 7, 3, 45),
(26, 6, 4, 9, 630),
(27, 6, 9, 4, 100),
(28, 6, 3, 2, 100),
(31, 7, 5, 8, 240),
(32, 7, 9, 6, 150),
(33, 7, 8, 2, 100),
(36, 8, 1, 6, 6000),
(37, 8, 1, 10, 10000),
(38, 8, 3, 2, 100),
(41, 9, 8, 9, 450),
(42, 9, 3, 3, 150),
(43, 9, 7, 2, 30),
(44, 9, 10, 5, 50),
(46, 10, 9, 9, 225),
(47, 10, 1, 7, 7000),
(48, 10, 3, 6, 300),
(51, 11, 7, 5, 75),
(52, 11, 9, 8, 200),
(53, 11, 3, 9, 450),
(56, 12, 2, 7, 5600),
(57, 12, 1, 5, 5000),
(58, 12, 6, 9, 180),
(59, 12, 8, 9, 450),
(60, 12, 8, 4, 200),
(61, 13, 9, 4, 100),
(62, 13, 2, 6, 4800),
(66, 14, 1, 5, 5000),
(67, 14, 4, 7, 490),
(71, 15, 9, 6, 150),
(72, 15, 5, 9, 270);
--Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.
select min(precio_unitario) as precio_minimo,max(precio_unitario) as precio_maximo ,avg (precio_unitario) as precio_promedio 
from productos;

--Calcular la cantidad total de productos en stock por sucursal. 

select sucursales.nombre AS sucursal,SUM(stocsk.cantidad) AS cantidad_total
FROM stocsk
JOIN sucursales ON stocsk.sucursal_id = sucursales.id
GROUP BY sucursales.nombre;

---Obtener el total de ventas por cliente.

select c.id as cliente_id, c.nombre as nombre_cliente,SUM(i.monto_venta) as total_ventas
FROM clientis c
JOIN ordenis o ON c.id = o.cliente_id
JOIN itenms i ON o.id = i.orden_id
GROUP BY c.id, c.nombre;
