USE [master]
GO
/****** Object:  Database [RespuestosAJ]    Script Date: 24/4/2023 9:57:00 p. m. ******/
CREATE DATABASE [RespuestosAJ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RespuestosAJ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RespuestosAJ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RespuestosAJ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RespuestosAJ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RespuestosAJ] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RespuestosAJ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RespuestosAJ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RespuestosAJ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RespuestosAJ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RespuestosAJ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RespuestosAJ] SET ARITHABORT OFF 
GO
ALTER DATABASE [RespuestosAJ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RespuestosAJ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RespuestosAJ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RespuestosAJ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RespuestosAJ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RespuestosAJ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RespuestosAJ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RespuestosAJ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RespuestosAJ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RespuestosAJ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RespuestosAJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RespuestosAJ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RespuestosAJ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RespuestosAJ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RespuestosAJ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RespuestosAJ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RespuestosAJ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RespuestosAJ] SET RECOVERY FULL 
GO
ALTER DATABASE [RespuestosAJ] SET  MULTI_USER 
GO
ALTER DATABASE [RespuestosAJ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RespuestosAJ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RespuestosAJ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RespuestosAJ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RespuestosAJ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RespuestosAJ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RespuestosAJ', N'ON'
GO
ALTER DATABASE [RespuestosAJ] SET QUERY_STORE = ON
GO
ALTER DATABASE [RespuestosAJ] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RespuestosAJ]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/4/2023 9:57:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](200) NOT NULL,
	[Numero_telefono] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/4/2023 9:57:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [char](6) NOT NULL,
	[Nombre_Empleado] [varchar](200) NOT NULL,
	[Apellido_Empleado] [varchar](200) NOT NULL,
	[Num_celular_Empleado] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 24/4/2023 9:57:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Nombre_cliente] [varchar](100) NOT NULL,
	[Nombre_pieza] [varchar](max) NOT NULL,
	[Fecha_Venta] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Piezas]    Script Date: 24/4/2023 9:57:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piezas](
	[Nombre_pieza] [varchar](100) NOT NULL,
	[Fecha_fabricacion] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_pieza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provedores]    Script Date: 24/4/2023 9:57:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provedores](
	[Nombre_provedor] [varchar](100) NOT NULL,
	[Piezas] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Ana', N'Ramírez', N'8093456789')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Andrés', N'Almonte', N'8090123456')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Carlos', N'García', N'8096789012')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Juan', N'Pérez', N'8092345678')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Laura', N'Fernández', N'8095678901')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Lucía', N'Díaz', N'8099012345')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Luis', N'Martínez', N'8098901234')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'María', N'González', N'8091234567')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Pedro', N'Santos', N'8094567890')
GO
INSERT [dbo].[Clientes] ([Nombre], [Apellido], [Numero_telefono]) VALUES (N'Sofía', N'Hernández', N'8097890123')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'1     ', N'Alejandro', N'Morales', N'8091112233')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'10    ', N'Verónica', N'Castillo', N'8090001122')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'2     ', N'Carmen', N'Acosta', N'8092223344')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'3     ', N'Fernando', N'Jiménez', N'8093334455')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'4     ', N'Isabel', N'Maldonado', N'8094445566')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'5     ', N'Javier', N'Herrera', N'8095556677')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'6     ', N'Mónica', N'Duran', N'8096667788')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'7     ', N'Óscar', N'López', N'8097778899')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'8     ', N'Patricia', N'Sánchez', N'8098889900')
GO
INSERT [dbo].[Empleados] ([Id], [Nombre_Empleado], [Apellido_Empleado], [Num_celular_Empleado]) VALUES (N'9     ', N'Ricardo', N'Gómez', N'8099990011')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Ana', N'Embrague', N'05-01-24')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Andrés', N'Filtro de aire', N'27-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Carlos', N'Bujía', N'30-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Juan', N'Correa de transmisión', N'02-01-24')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Laura', N'Bomba de agua', N'24-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Lucía', N'Radiador', N'21-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Luis', N'Alternador', N'18-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'María', N'Batería', N'15-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Pedro', N'Amortiguador', N'12-12-23')
GO
INSERT [dbo].[Pedido] ([Nombre_cliente], [Nombre_pieza], [Fecha_Venta]) VALUES (N'Sofía', N'Inyector de combustible', N'08-01-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Amortiguador', N'12-12-23')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Batería', N'15-01-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Bombilla del faro', N'24-04-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Bujía', N'03-07-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Correa de transmisión', N'06-08-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Embrague', N'27-05-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Filtro de aceite', N'18-02-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Pastillas de freno', N'21-03-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Radiador', N'30-06-24')
GO
INSERT [dbo].[Piezas] ([Nombre_pieza], [Fecha_fabricacion]) VALUES (N'Sistema de escape', N'09-09-24')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Autozone', N'Fitro de aire')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Bilstein', N'Llantas')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Bosch', N'Alternador')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Brembo', N'Bandas de frenos')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Exide', N'Bateria')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Goodyear', N'Gomas')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'K&N', N'Filtro de cabia')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Magnaflow', N'Sistema de escape')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'Mectech', N'Clutch')
GO
INSERT [dbo].[Provedores] ([Nombre_provedor], [Piezas]) VALUES (N'NGK', N'Retrovisores')
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [fk_pedidos_clientes] FOREIGN KEY([Nombre_cliente])
REFERENCES [dbo].[Clientes] ([Nombre])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [fk_pedidos_clientes]
GO
USE [master]
GO
ALTER DATABASE [RespuestosAJ] SET  READ_WRITE 
GO
