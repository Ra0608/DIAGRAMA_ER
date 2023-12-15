create table Categoria (
id serial primary key ,
nombre text not null
);


CREATE TABLE Producto (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    marca TEXT,
    categoria_id INTEGER,
    precio_unitario REAL NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

CREATE TABLE Sucursal (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    direccion TEXT NOT NULL
);

CREATE TABLE Stock (
    id INTEGER PRIMARY KEY,
    sucursal_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);


CREATE TABLE Cliente (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL,
    telefono TEXT
);


CREATE TABLE Orden (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    sucursal_id INTEGER NOT NULL,
    fecha TEXT NOT NULL,
    total REAL NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id)
);

CREATE TABLE Item (
    id INTEGER PRIMARY KEY,
    orden_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    monto_venta REAL NOT NULL,
    FOREIGN KEY (orden_id) REFERENCES Orden(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);
