CREATE DATABASE pizzeria;
USE pizzeria;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    calle VARCHAR(100),
    numero VARCHAR(10),
    piso VARCHAR(10),
    puerta VARCHAR(10),
    codigo_postal VARCHAR(10),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE tienda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(50),
    numero VARCHAR(50),
    piso VARCHAR(50),
    puerta VARCHAR(50),
    ciudad VARCHAR(50),
    provincia VARCHAR(50)
);

CREATE TABLE empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    nif VARCHAR(20),
    telefono VARCHAR(20),
    rol ENUM('cocinero', 'repartidor'), 
    id_tienda INT,
    FOREIGN KEY (id_tienda) REFERENCES tienda(id)
);

CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion MEDIUMTEXT,
    imagen VARCHAR(255),
    precio DECIMAL(5,2),
    tipo ENUM('pizza', 'hamburguesa', 'bebida') NOT NULL
);

CREATE TABLE pizza_categoria (
    id_producto INT,
    id_categoria INT,
    PRIMARY KEY (id_producto, id_categoria),
    FOREIGN KEY (id_producto) REFERENCES producto(id),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_hora DATETIME,
    tipo_entrega ENUM('domicilio', 'recogida'),
    precio_total DECIMAL(10,2),
    fecha_hora_entrega DATETIME NULL,
    id_cliente INT,
    id_tienda INT,
    id_repartidor INT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_tienda) REFERENCES tienda(id),
    FOREIGN KEY (id_repartidor) REFERENCES empleado(id)
);

CREATE TABLE pedido_producto (
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    PRIMARY KEY (id_pedido, id_producto),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_producto) REFERENCES producto(id)
);




