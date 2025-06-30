CREATE DATABASE optica; 
USE optica;

CREATE TABLE fornecedor (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50),
calle VARCHAR(50),
numero VARCHAR(10),
piso VARCHAR(10),
puerta VARCHAR(10),
ciudad VARCHAR(50),
pais VARCHAR(50),
telefono INT,
fax INT,
nif VARCHAR(50));

CREATE TABLE marca (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50),
fornecedor_id INT,
FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(id));

CREATE TABLE gafas(
id INT PRIMARY KEY AUTO_INCREMENT,
montura ENUM('flotante', 'pasta', 'metalica'),
graduacion_derecha DECIMAL(4,2),
graduacion_izquierda DECIMAL(4,2),
color_montura VARCHAR(50),
color_vidrio_derecho VARCHAR(50),
color_vidrio_izquierdo VARCHAR(50),
precio DECIMAL(5,2),
marca_id INT,
FOREIGN KEY (marca_id) REFERENCES marca(id)
);

CREATE TABLE cliente(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido1 VARCHAR(50),
  apellido2 VARCHAR(50),
  calle VARCHAR(50),
  numero VARCHAR(10),
  piso VARCHAR(10),
  puerta VARCHAR(10),
  ciudad VARCHAR(50),
  pais VARCHAR(50),
  telefono VARCHAR(20),
  fax VARCHAR(20),
  email VARCHAR(50),
  fecha_registro DATE
);

CREATE TABLE cliente_recomienda(
cliente_recomendado_id INT,
cliente_recomienda_id INT,
PRIMARY KEY (cliente_recomendado_id),
FOREIGN KEY (cliente_recomendado_id) REFERENCES cliente(id),
FOREIGN KEY (cliente_recomienda_id) REFERENCES cliente(id)
);

CREATE TABLE empleado(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50),
telefono VARCHAR(50),
email VARCHAR(50) 
);

CREATE TABLE venta(
id INT PRIMARY KEY AUTO_INCREMENT,
fecha DATE,
cantidad INT,
valor DECIMAL(5,2),
empleado_id INT,
cliente_id INT,
gafas_id INT,
FOREIGN KEY (empleado_id) REFERENCES empleado(id),
FOREIGN KEY (cliente_id) REFERENCES cliente(id),
FOREIGN KEY (gafas_id) REFERENCES gafas(id)
);








