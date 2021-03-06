
   /****** Gary Almonte Ramirez 17-EIIT-1-033 ,Seccion: 0541 ******/    
   /****** Sagiory Cueva 17-EIIN-1-071, Seccion: 0541******/
   /****** Jose delio Gonzalez Aracena 17-EIIN-1-108 , Seccion: 0541******/


USE [master]
GO
/****** Object:  Database [Colmado_Peralta]    Script Date: 28/11/2018 15:15:46 ******/
CREATE DATABASE [Colmado_Peralta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Colmado_Peralta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Colmado_Peralta.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Colmado_Peralta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Colmado_Peralta_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Colmado_Peralta] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Colmado_Peralta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Colmado_Peralta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET ARITHABORT OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Colmado_Peralta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Colmado_Peralta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Colmado_Peralta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Colmado_Peralta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Colmado_Peralta] SET  MULTI_USER 
GO
ALTER DATABASE [Colmado_Peralta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Colmado_Peralta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Colmado_Peralta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Colmado_Peralta] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Colmado_Peralta] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Colmado_Peralta] SET QUERY_STORE = OFF
GO
USE [Colmado_Peralta]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Colmado_Peralta]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/11/2018 15:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente] [int] NOT NULL,
	[Codigo] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[Telefono] [numeric](18, 0) NULL,
	[Cedula] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 28/11/2018 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Producto] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[Marca] [varchar](60) NULL,
	[Precio] [int] NULL,
	[CodigoId] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 28/11/2018 15:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Venta] [int] NOT NULL,
	[Codigo_Venta] [int] NULL,
	[Valor_Venta] [int] NULL,
	[Fecha_Venta] [datetime] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (1, 1, N'Jose Pinales', N'Calle1', CAST(82945689 AS Numeric(18, 0)), 123741852)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (2, 2, N'Gary Almonte', N'Calle2', CAST(84924578 AS Numeric(18, 0)), 789456652)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (3, 3, N'Carolina', N'Calle3', CAST(82978452 AS Numeric(18, 0)), 712548963)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (4, 4, N'Vianny', N'Duarte', CAST(82956478 AS Numeric(18, 0)), 145236789)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (5, 5, N'Yan ', N'Puerta Blanca', CAST(82924531 AS Numeric(18, 0)), 456789213)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (6, 6, N'Marleny', N'Calle7', CAST(84985624 AS Numeric(18, 0)), 457892319)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (7, 7, N'Andely', N'Itabo', CAST(80945689 AS Numeric(18, 0)), 568794123)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (8, 8, N'Peralta', N'Km27', CAST(82945678 AS Numeric(18, 0)), 623145679)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (9, 9, N'Jeremy', N'Calle13', CAST(80956412 AS Numeric(18, 0)), 456879123)
INSERT [dbo].[Cliente] ([Cliente], [Codigo], [Nombre], [Direccion], [Telefono], [Cedula]) VALUES (10, 10, N'Tesorito', N'Km22', CAST(80956412 AS Numeric(18, 0)), 458712398)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (1, N'Arroz', N'Luz ', 222, 1)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (2, N'Leche', N'Rica', 500, 2)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (3, N'Pan', N'Sobateta', 100, 3)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (4, N'Jugo', N'Jose', 122, 4)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (5, N'Refresco', N'Cocacola', 250, 5)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (6, N'Marta India', N'India', 1000, 6)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (7, N'Salami', N'Sagiory', 542, 7)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (8, N'Quezo', N'Rica', 4000, 8)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (9, N'Papitas', N'Benditas', 5000, 9)
INSERT [dbo].[Producto] ([Producto], [Nombre], [Marca], [Precio], [CodigoId]) VALUES (10, N'Lata de Mais', N'La Sabroza', 700, 10)
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (1, 1, 250, CAST(N'2016-01-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (2, 2, 500, CAST(N'2017-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (3, 3, 100, CAST(N'2015-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (4, 4, 1000, CAST(N'2012-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (5, 5, 2000, CAST(N'2013-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (6, 6, 6000, CAST(N'2014-09-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (7, 7, 5000, CAST(N'2015-07-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (8, 8, 800, CAST(N'2018-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (9, 9, 50, CAST(N'2017-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Venta] ([Venta], [Codigo_Venta], [Valor_Venta], [Fecha_Venta]) VALUES (10, 10, 50000, CAST(N'2018-08-08T00:00:00.000' AS DateTime))
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Venta] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Venta] ([Venta])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Venta]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Cliente] FOREIGN KEY([CodigoId])
REFERENCES [dbo].[Cliente] ([Cliente])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Cliente]
GO
USE [master]
GO
ALTER DATABASE [Colmado_Peralta] SET  READ_WRITE 
GO
