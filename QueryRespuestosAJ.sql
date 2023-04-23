create table Clientes
(

Nombre varchar(100) primary key,
Apellido varchar(200) not null,
Numero_telefono varchar(11)

);

create table Piezas
(
Nombre_pieza varchar(100) primary key,
Fecha_fabricacion varchar(11)

);

create table Empleados
(
Id char(6) primary key,
Nombre_Empleado varchar(200) not null,
Apellido_Empleado varchar(200) not null,
Num_celular_Empleado varchar(10)
);

create table Pedido
(
Nombre_cliente varchar(100) primary key,
Nombre_pieza varchar(max) not null,
Fecha_Venta varchar(12) not null
);

create table Provedores
(
Nombre_provedor varchar(100) primary key,
Piezas varchar(max) not null

);

ALTER TABLE Pedido
ADD CONSTRAINT fk_pedidos_clientes
FOREIGN KEY (Nombre_cliente)
REFERENCES Clientes(Nombre) 


INSERT INTO Clientes( Nombre,Apellido,Numero_telefono)
VALUES 
('María', 'González', '8091234567'),
('Juan', 'Pérez', '8092345678'),
('Ana', 'Ramírez', '8093456789'),
('Pedro', 'Santos', '8094567890'),
('Laura', 'Fernández', '8095678901'),
('Carlos', 'García', '8096789012'),
('Sofía', 'Hernández', '8097890123'),
('Luis', 'Martínez', '8098901234'),
('Lucía', 'Díaz', '8099012345'),
('Andrés', 'Almonte', '8090123456')

INSERT INTO Empleados(Id,Nombre_Empleado,Apellido_Empleado,Num_celular_Empleado)
VALUES
('1', 'Alejandro', 'Morales', '8091112233'),
('2', 'Carmen', 'Acosta', '8092223344'),
('3', 'Fernando', 'Jiménez', '8093334455'),
('4', 'Isabel', 'Maldonado', '8094445566'),
('5', 'Javier', 'Herrera', '8095556677'),
('6', 'Mónica', 'Duran', '8096667788'),
('7', 'Óscar', 'López', '8097778899'),
('8', 'Patricia', 'Sánchez', '8098889900'),
('9', 'Ricardo', 'Gómez', '8099990011'),
('10', 'Verónica', 'Castillo', '8090001122')

INSERT INTO Pedido(Nombre_cliente,Nombre_pieza,Fecha_Venta)
VALUES

('Pedro','Amortiguador', '12-12-23'),
('María','Batería', '15-12-23'),
('Luis','Alternador', '18-12-23'),
('Lucía','Radiador', '21-12-23'),
('Laura','Bomba de agua', '24-12-23'),
('Andrés','Filtro de aire', '27-12-23'),
('Carlos','Bujía', '30-12-23'),
('Juan','Correa de transmisión', '02-01-24'),
('Ana','Embrague', '05-01-24'),
('Sofía','Inyector de combustible', '08-01-24')

INSERT INTO Piezas(Nombre_pieza,Fecha_fabricacion)
VALUES
('Amortiguador', '12-12-23'),
('Batería', '15-01-24'),
('Filtro de aceite', '18-02-24'),
('Pastillas de freno', '21-03-24'),
('Bombilla del faro', '24-04-24'),
('Embrague', '27-05-24'),
('Radiador', '30-06-24'),
('Bujía', '03-07-24'),
('Correa de transmisión', '06-08-24'),
('Sistema de escape', '09-09-24')

INSERT INTO Provedores(Nombre_provedor,Piezas)
VALUES 
('Mectech', 'Clutch'),
('Autozone', 'Fitro de aire'),
('Bosch', 'Alternador'),
('Goodyear', 'Gomas'),
('NGK', 'Retrovisores'),
('Brembo', 'Bandas de frenos'),
('Bilstein', 'Llantas'),
('Exide', 'Bateria'),
('K&N', 'Filtro de cabia'),
('Magnaflow', 'Sistema de escape')