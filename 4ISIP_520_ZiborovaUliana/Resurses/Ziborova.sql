USE [master]
GO
/****** Object:  Database [ZiborovaUliana]    Script Date: 15.04.2024 17:53:32 ******/
CREATE DATABASE [ZiborovaUliana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZiborovaUliana', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ZiborovaUliana.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ZiborovaUliana_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ZiborovaUliana_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ZiborovaUliana] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZiborovaUliana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZiborovaUliana] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZiborovaUliana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZiborovaUliana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ZiborovaUliana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZiborovaUliana] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ZiborovaUliana] SET  MULTI_USER 
GO
ALTER DATABASE [ZiborovaUliana] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZiborovaUliana] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZiborovaUliana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZiborovaUliana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ZiborovaUliana] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ZiborovaUliana] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ZiborovaUliana] SET QUERY_STORE = OFF
GO
USE [ZiborovaUliana]
GO
/****** Object:  Table [dbo].[city]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[ID] [float] NULL,
	[phot] [nvarchar](255) NULL,
	[nazvanie] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countr]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countr](
	[ID] [int] NOT NULL,
	[Название_страны] [nvarchar](255) NULL,
	[Английское_название] [nvarchar](255) NULL,
	[Код] [nvarchar](255) NULL,
	[Код2] [float] NULL,
 CONSTRAINT [PK_countr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Juri]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juri](
	[ФИО] [nvarchar](255) NULL,
	[пол] [nvarchar](255) NULL,
	[ID] [int] NULL,
	[почта] [nvarchar](255) NULL,
	[дата рождения] [datetime] NULL,
	[страна] [float] NULL,
	[телефон] [nvarchar](255) NULL,
	[направление] [nvarchar](255) NULL,
	[пароль] [nvarchar](255) NULL,
	[фото] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[meropriatia]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[meropriatia](
	[id] [int] NOT NULL,
	[Событие] [nvarchar](255) NULL,
	[DATE] [datetime] NULL,
	[DAYS] [int] NULL,
	[Город] [int] NULL,
 CONSTRAINT [PK_meropriatia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[moderator]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[moderator](
	[ID] [int] NOT NULL,
	[ФИО] [nvarchar](255) NULL,
	[пол] [int] NULL,
	[почта] [nvarchar](255) NULL,
	[дата рождения] [date] NULL,
	[страна] [int] NULL,
	[телефон] [nvarchar](255) NULL,
	[направление] [nvarchar](255) NULL,
	[мероприятие] [nvarchar](255) NULL,
	[пароль] [nvarchar](255) NULL,
	[фото] [nvarchar](255) NULL,
 CONSTRAINT [PK_moderator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organizator]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organizator](
	[ID] [int] NOT NULL,
	[ФИО] [nvarchar](255) NULL,
	[Почта] [nvarchar](255) NULL,
	[Дата_рождения] [date] NULL,
	[страна] [int] NULL,
	[телефон] [nvarchar](255) NULL,
	[пароль] [nvarchar](255) NULL,
	[фото] [nvarchar](255) NULL,
	[пол] [int] NULL,
 CONSTRAINT [PK_organizator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POL]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POL](
	[ID] [int] NOT NULL,
	[Pol] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uch]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uch](
	[ID] [int] NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Почта] [nvarchar](max) NOT NULL,
	[Дата_рождения] [date] NOT NULL,
	[Страна] [nvarchar](max) NOT NULL,
	[Телефон] [float] NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
	[Фото] [nvarchar](max) NOT NULL,
	[Пол] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uchactnici]    Script Date: 15.04.2024 17:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uchactnici](
	[ФИО] [nvarchar](255) NULL,
	[ID] [int] NULL,
	[Почта] [nvarchar](255) NULL,
	[дата рождения] [datetime] NULL,
	[страна] [float] NULL,
	[телефон] [float] NULL,
	[пароль] [nvarchar](255) NULL,
	[фото] [nvarchar](255) NULL,
	[пол] [int] NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [nvarchar](255) NULL,
	[F12] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ZiborovaUliana] SET  READ_WRITE 
GO
