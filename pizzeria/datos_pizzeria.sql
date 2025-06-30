INSERT INTO categoria (nombre)
VALUES ('clasicas'),('veganas'),('especiales'), ('sin_gluten');

INSERT INTO cliente (nombre,apellido1,apellido2,calle,numero,piso,puerta,codigo_postal,ciudad,provincia,telefono)
VALUES ('Laura', 'Martínez', 'Gómez', 'Carrer de Mallorca', 245, 3, 'B', '08008', 'Barcelona', 'Barcelona', '611234567'),
('Javier', 'Rodríguez', 'Pérez', 'Avinguda Diagonal', 567, 5, 'A', '08029', 'Barcelona', 'Barcelona', '622345678'),
('Marta', 'Torres', 'Sánchez', 'Carrer de Balmes', 102, 2, 'C', '08007', 'Barcelona', 'Barcelona', '633456789'),
('Andrés', 'López', 'Vidal', 'Passeig de Gràcia', 10, 1, 'D', '08007', 'Barcelona', 'Barcelona', '644567890'),
('Carmen', 'Ruiz', 'Fernández', 'Carrer de Aragó', 318, 4, 'A', '08009', 'Barcelona', 'Barcelona', '655678901');

INSERT INTO empleado(nombre,apellido1,apellido2,nif,telefono,rol,id_tienda) VALUES
('María', 'López', 'García', '12345678A', '600112233', 'cocinero', 1),
('Carlos', 'Martín', 'Santos', '87654321B', '611223344', 'repartidor', 2),
('Lucía', 'Ramírez', 'Núñez', '23456789C', '622334455', 'repartidor', 1),
('Pedro', 'Sánchez', 'Ruiz', '34567890D', '633445566', 'cocinero', 2),
('Ana', 'Fernández', 'Ortiz', '45678901E', '644556677', 'repartidor', 1);

INSERT INTO pedido(fecha_hora,tipo_entrega,precio_total,fecha_hora_entrega,id_cliente,id_tienda,id_repartidor) VALUES 
('2025-06-28 13:45:00', 'domicilio', 22.50, '2025-06-28 14:20:00', 1, 1, 3),
('2025-06-28 14:10:00', 'recogida', 15.00, '2025-06-28 14:30:00', 2, 2, NULL),
('2025-06-28 15:05:00', 'domicilio', 30.75, '2025-06-28 15:50:00', 3, 1, 5),
('2025-06-28 16:00:00', 'domicilio', 18.90, '2025-06-28 16:40:00', 4, 2, 2),
('2025-06-28 16:45:00', 'recogida', 12.00, '2025-06-28 17:00:00', 5, 1, NULL);


INSERT INTO tienda (calle,numero,piso,puerta,ciudad,provincia) VALUES 
('Carrer del Bruc', 88, 2, 'A', 'Barcelona', 'Barcelona'),
('Rambla de Catalunya', 150, 6, 'C', 'Barcelona', 'Barcelona');

INSERT INTO producto (nombre, descripcion, imagen, precio, tipo)
VALUES 
('Margarita', 'Pizza con tomate, mozzarella y albahaca ', 'pizza_margarita.jpg', 10.50, 'pizza'),
('Pepperoni', 'Pizza con pepperoni y queso mozzarella', 'pizza_pepperoni.jpg', 13.75, 'pizza'),
('Vegana Verde', 'Pizza vegana con espinacas, champiñones y pimientos', 'pizza_vegana_espinacas.jpg', 12.25, 'pizza'),
('Hamburguesa Clásica', 'Hamburguesa con carne, queso, bacon, cebolla, tomate y lechuga', 'hamburguesa.jpg', 7.80, 'hamburguesa'),
('Coca-Cola', 'Bebida 350ml', 'coca_cola.jpg', 1.90, 'bebida'),
('Pizza Especial', 'Pizza con ingredientes especiales y salsa secreta', 'pizza_especial.jpg', 14.00, 'pizza'),
('Pizza Sin Gluten', 'Pizza para personas con intolerancia al gluten', 'pizza_singluten.jpg', 13.00, 'pizza');

INSERT INTO pizza_categoria (id_producto, id_categoria) VALUES
(1, 1),
(2, 1),
(3, 2),
(6, 3),
(7, 4);

INSERT INTO pedido_producto (id_pedido, id_producto, cantidad) VALUES
(1, 1, 1), 
(1, 5, 2), 
(2, 2, 1),
(3, 3, 2), 
(3, 6, 1),
(4, 4, 1), 
(4, 5, 1), 
(5, 7, 1);





