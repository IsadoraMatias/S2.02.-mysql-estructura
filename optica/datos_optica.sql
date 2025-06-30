USE optica;
INSERT INTO fornecedor (nombre, telefono, fax, nif, calle, numero, piso, puerta, ciudad, pais) VALUES
('Gafas Sol', 12345, 99999999, 'NIF123456', 'Calle Mayor', '10', '2', 'B', 'Barcelona', 'Espanha'),
('Buena Onda', 56789, 88888888, 'NIF123457', 'Calle Balmes', '25', '3', 'A', 'Barcelona', 'Espanha'),
('Miragafas', 789456, 77777777, 'NIF123458', 'Calle Arago', '40', '1', 'C', 'Barcelona', 'Espanha'),
('Gafas Carol', 456789, 66666666, 'NIF123459', 'Calle Provença', '12', '4', 'D', 'Barcelona', 'Espanha'),
('Veomejor', 678945, 55555555, 'NIF123450', 'Calle Sants', '5', '2', 'E', 'Barcelona', 'Espanha');

INSERT INTO marca (nombre, fornecedor_id) VALUES ('Ray-Ban', 1), ('Oakley', 2), ('Persol', 3), ('Prada', 4), ('Gucci', 5);

INSERT INTO gafas(montura,graduacion_derecha,graduacion_izquierda,color_montura,color_vidrio_derecho,color_vidrio_izquierdo,precio,marca_id) VALUES
('pasta',1.25,4.00,'negro','azul','azul',115.00,3),
('flotante',1.45,2.00,'negro','verde','verde',150.00,5),
('metalica',1.00,1.00,'oro','azul','azul',400.00,4),
('pasta',3.05,1.70,'rosa','gris','gris',99.00,1),
('metalica',0.95,1.67,'oro','incoloro','incoloro',250.00,5);

INSERT INTO cliente (nombre,apellido1,apellido2,telefono,email,fecha_registro,calle,numero,piso,puerta,ciudad,pais) VALUES
('Isadora','Matias','Gomes', 66666666,'isadora@email.com', '2022-01-11', 'calvet',30,5,'2B','Barcelona','España'),
('Lucas','Fernandez','Almeida', 77777777,'lucas@email.com', '2021-08-23', 'Paris',29,4,'3A','Madrid','España'),
('Camila','Ribeiro','Silva', 88888888,'camila@email.com', '2023-05-14', 'Pau Claris',31,3,'1C','Valencia','España'),
('Renato','Costa','Pereira', 99999999,'renato@email.com', '2020-11-02', 'Muntaner',28,6,'4B','Sevilla','España'),
('Beatriz','Martins','Souza', 12345678,'beatriz@email.com', '2022-03-18','Aribau',33,2,'2A','Bilbao','España');

INSERT INTO empleado (nombre,telefono,apellido1,apellido2,email) VALUES
('Lucia','Fernandez','Garcia',89898989,'lucia@email.com'),
('Hugo','Martines','Lopez',78787878,'hugo@email.com'),
('Martina','Sanchez','Perez',67676767,'martina@email.com'),
('Mateo','Rodriguez','Gomez',56565656,'mateo@email.com'),
('Sofia','Gonzalez','Torres',45454545,'sofia@email.com');

INSERT INTO venta (fecha,cantidad,valor,empleado_id,cliente_id,gafas_id) VALUES
('2025-05-08',1,115.00,1,2,2),
('2025-01-09',1,400.00,3,1,3),
('2024-12-23',1,99.00,5,3,4),
('2025-05-25',1,450.00,2,4,1),
('2025-02-19',1,250.00,4,5,5),     
('2025-05-08',1,115.00,2,2,2),
('2025-01-09',1,400.00,3,3,3),
('2024-12-23',1,99.00,5,1,4),
('2025-05-25',1,450.00,1,4,1),
('2025-02-19',1,250.00,1,5,5); 

INSERT INTO cliente_recomienda (cliente_recomendador_id,cliente_recomendado_id) VALUES 
(5,2),
(2,1),
(1,3),
(5,4),
(2,5);

