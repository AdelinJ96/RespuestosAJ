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
('Mar�a', 'Gonz�lez', '8091234567'),
('Juan', 'P�rez', '8092345678'),
('Ana', 'Ram�rez', '8093456789'),
('Pedro', 'Santos', '8094567890'),
('Laura', 'Fern�ndez', '8095678901'),
('Carlos', 'Garc�a', '8096789012'),
('Sof�a', 'Hern�ndez', '8097890123'),
('Luis', 'Mart�nez', '8098901234'),
('Luc�a', 'D�az', '8099012345'),
('Andr�s', 'Almonte', '8090123456')

INSERT INTO Empleados(Id,Nombre_Empleado,Apellido_Empleado,Num_celular_Empleado)
VALUES
('1', 'Alejandro', 'Morales', '8091112233'),
('2', 'Carmen', 'Acosta', '8092223344'),
('3', 'Fernando', 'Jim�nez', '8093334455'),
('4', 'Isabel', 'Maldonado', '8094445566'),
('5', 'Javier', 'Herrera', '8095556677'),
('6', 'M�nica', 'Duran', '8096667788'),
('7', '�scar', 'L�pez', '8097778899'),
('8', 'Patricia', 'S�nchez', '8098889900'),
('9', 'Ricardo', 'G�mez', '8099990011'),
('10', 'Ver�nica', 'Castillo', '8090001122')

INSERT INTO Pedido(Nombre_cliente,Nombre_pieza,Fecha_Venta)
VALUES

('Pedro','Amortiguador', '12-12-23'),
('Mar�a','Bater�a', '15-12-23'),
('Luis','Alternador', '18-12-23'),
('Luc�a','Radiador', '21-12-23'),
('Laura','Bomba de agua', '24-12-23'),
('Andr�s','Filtro de aire', '27-12-23'),
('Carlos','Buj�a', '30-12-23'),
('Juan','Correa de transmisi�n', '02-01-24'),
('Ana','Embrague', '05-01-24'),
('Sof�a','Inyector de combustible', '08-01-24')

INSERT INTO Piezas(Nombre_pieza,Fecha_fabricacion)
VALUES
('Amortiguador', '12-12-23'),
('Bater�a', '15-01-24'),
('Filtro de aceite', '18-02-24'),
('Pastillas de freno', '21-03-24'),
('Bombilla del faro', '24-04-24'),
('Embrague', '27-05-24'),
('Radiador', '30-06-24'),
('Buj�a', '03-07-24'),
('Correa de transmisi�n', '06-08-24'),
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