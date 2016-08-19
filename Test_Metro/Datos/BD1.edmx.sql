
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 08/18/2016 14:32:15
-- Generated from EDMX file: c:\users\asoftware8\documents\visual studio 2012\Projects\Test_Metro\Test_Metro\Datos\BD1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test_linqsql1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Adjunto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Adjunto];
GO
IF OBJECT_ID(N'[test_linqsql1ModelStoreContainer].[departamento1]', 'U') IS NOT NULL
    DROP TABLE [test_linqsql1ModelStoreContainer].[departamento1];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[test_linqsql1ModelStoreContainer].[into_sel]', 'U') IS NOT NULL
    DROP TABLE [test_linqsql1ModelStoreContainer].[into_sel];
GO
IF OBJECT_ID(N'[test_linqsql1ModelStoreContainer].[puesto1]', 'U') IS NOT NULL
    DROP TABLE [test_linqsql1ModelStoreContainer].[puesto1];
GO
IF OBJECT_ID(N'[test_linqsql1ModelStoreContainer].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [test_linqsql1ModelStoreContainer].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TicketArchivoAdjunto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TicketArchivoAdjunto];
GO
IF OBJECT_ID(N'[dbo].[TicketArchivoAdjunto2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TicketArchivoAdjunto2];
GO
IF OBJECT_ID(N'[dbo].[TicketArchivoAdjunto3]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TicketArchivoAdjunto3];
GO
IF OBJECT_ID(N'[test_linqsql1ModelStoreContainer].[user1]', 'U') IS NOT NULL
    DROP TABLE [test_linqsql1ModelStoreContainer].[user1];
GO
IF OBJECT_ID(N'[test_linqsql1ModelStoreContainer].[view_test_1]', 'U') IS NOT NULL
    DROP TABLE [test_linqsql1ModelStoreContainer].[view_test_1];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Adjunto'
CREATE TABLE [dbo].[Adjunto] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Archivo] nchar(100)  NOT NULL,
    [Ruta] nchar(100)  NOT NULL
);
GO

-- Creating table 'departamento1'
CREATE TABLE [dbo].[departamento1] (
    [id] int  NOT NULL,
    [descripcion] varchar(50)  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(10)  NOT NULL,
    [Gender] nchar(10)  NOT NULL,
    [Salary] int  NOT NULL,
    [ccodsunagro] varchar(30)  NULL
);
GO

-- Creating table 'into_sel'
CREATE TABLE [dbo].[into_sel] (
    [id] int IDENTITY(1,1) NOT NULL,
    [prueba] nchar(10)  NOT NULL,
    [codigo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'puesto1'
CREATE TABLE [dbo].[puesto1] (
    [id] int  NOT NULL,
    [descripcion] varchar(50)  NOT NULL,
    [departamento] int  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int  NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TicketArchivoAdjunto'
CREATE TABLE [dbo].[TicketArchivoAdjunto] (
    [TicketArchivoAdjuntoId] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [TicketId] int  NOT NULL,
    [Descripcion] varchar(100)  NOT NULL,
    [Url] varchar(100)  NOT NULL
);
GO

-- Creating table 'TicketArchivoAdjunto2'
CREATE TABLE [dbo].[TicketArchivoAdjunto2] (
    [TicketArchivoAdjuntoId] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [TicketId] int  NOT NULL,
    [Descripcion] varchar(100)  NOT NULL,
    [Url] varchar(100)  NOT NULL
);
GO

-- Creating table 'TicketArchivoAdjunto3'
CREATE TABLE [dbo].[TicketArchivoAdjunto3] (
    [TicketArchivoAdjuntoId] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [TicketId] int  NOT NULL,
    [Descripcion] varchar(100)  NOT NULL,
    [Url] varchar(100)  NOT NULL
);
GO

-- Creating table 'user1'
CREATE TABLE [dbo].[user1] (
    [id] int  NOT NULL,
    [cedula] int  NOT NULL,
    [nombre] varchar(100)  NOT NULL,
    [puesto] int  NOT NULL
);
GO

-- Creating table 'view_test_1'
CREATE TABLE [dbo].[view_test_1] (
    [cedula] int  NOT NULL,
    [nombre] varchar(100)  NOT NULL,
    [descripcion] varchar(50)  NOT NULL,
    [Expr1] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Adjunto'
ALTER TABLE [dbo].[Adjunto]
ADD CONSTRAINT [PK_Adjunto]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [id], [descripcion] in table 'departamento1'
ALTER TABLE [dbo].[departamento1]
ADD CONSTRAINT [PK_departamento1]
    PRIMARY KEY CLUSTERED ([id], [descripcion] ASC);
GO

-- Creating primary key on [ID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [id], [prueba], [codigo] in table 'into_sel'
ALTER TABLE [dbo].[into_sel]
ADD CONSTRAINT [PK_into_sel]
    PRIMARY KEY CLUSTERED ([id], [prueba], [codigo] ASC);
GO

-- Creating primary key on [id], [descripcion], [departamento] in table 'puesto1'
ALTER TABLE [dbo].[puesto1]
ADD CONSTRAINT [PK_puesto1]
    PRIMARY KEY CLUSTERED ([id], [descripcion], [departamento] ASC);
GO

-- Creating primary key on [name], [principal_id], [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([name], [principal_id], [diagram_id] ASC);
GO

-- Creating primary key on [TicketArchivoAdjuntoId] in table 'TicketArchivoAdjunto'
ALTER TABLE [dbo].[TicketArchivoAdjunto]
ADD CONSTRAINT [PK_TicketArchivoAdjunto]
    PRIMARY KEY CLUSTERED ([TicketArchivoAdjuntoId] ASC);
GO

-- Creating primary key on [TicketArchivoAdjuntoId] in table 'TicketArchivoAdjunto2'
ALTER TABLE [dbo].[TicketArchivoAdjunto2]
ADD CONSTRAINT [PK_TicketArchivoAdjunto2]
    PRIMARY KEY CLUSTERED ([TicketArchivoAdjuntoId] ASC);
GO

-- Creating primary key on [TicketArchivoAdjuntoId] in table 'TicketArchivoAdjunto3'
ALTER TABLE [dbo].[TicketArchivoAdjunto3]
ADD CONSTRAINT [PK_TicketArchivoAdjunto3]
    PRIMARY KEY CLUSTERED ([TicketArchivoAdjuntoId] ASC);
GO

-- Creating primary key on [id], [cedula], [nombre], [puesto] in table 'user1'
ALTER TABLE [dbo].[user1]
ADD CONSTRAINT [PK_user1]
    PRIMARY KEY CLUSTERED ([id], [cedula], [nombre], [puesto] ASC);
GO

-- Creating primary key on [cedula], [nombre], [descripcion], [Expr1] in table 'view_test_1'
ALTER TABLE [dbo].[view_test_1]
ADD CONSTRAINT [PK_view_test_1]
    PRIMARY KEY CLUSTERED ([cedula], [nombre], [descripcion], [Expr1] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------