/****** Object:  Database [ShopShoesData]    Script Date: 9/21/2022 1:27:20 PM ******/
CREATE DATABASE [ShopShoesData]
GO
ALTER DATABASE [ShopShoesData] SET COMPATIBILITY_LEVEL = 120
GO
USE [ShopShoesData]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[Phone] [nvarchar](12) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[CreateBy] [nvarchar](max) NOT NULL,
	[UpdateBy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [text] NOT NULL,
	[CateId] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[CreateBy] [nvarchar](max) NOT NULL,
	[UpdateBy] [nvarchar](max) NOT NULL,
	[Style] [nvarchar](max) NOT NULL DEFAULT (N''),
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeatureImage] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[CreateBy] [nvarchar](max) NOT NULL,
	[UpdateBy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ProductSizeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[CreateBy] [nvarchar](max) NOT NULL,
	[UpdateBy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[ProductSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[CreateBy] [nvarchar](max) NOT NULL,
	[UpdateBy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 9/21/2022 1:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
	[CommentDate] [datetime2](7) NOT NULL,
	[Products] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.0000000'),
	[CreateBy] [nvarchar](max) NOT NULL DEFAULT (N''),
	[UpdateAt] [datetime2](7) NOT NULL DEFAULT ('0001-01-01T00:00:00.0000000'),
	[UpdateBy] [nvarchar](max) NOT NULL DEFAULT (N''),
	[Articles] [int] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220911142543_CreateData', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220914115242_AddStyleProduct', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220914135649_AddArticles', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220918090940_DataAccount', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220918091059_EditNameTable', N'6.0.9')
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Username], [Password], [isAdmin], [Phone], [Address]) VALUES (1, N'string', N'$2a$06$UjYOc10v92VdCNzx82jRSuOrsOPY8lugsVPQwMdYIxxttcG7.tuHK', 1, N'string', N'string')
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Value], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (1, N'Nike Air Max 2021', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[Category] ([CategoryId], [Value], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (3, N'What’s Trending Now', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[Category] ([CategoryId], [Value], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (5, N'Share With #Shoppes', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[Category] ([CategoryId], [Value], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (6, N'Latest From Blogs', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (2, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (4, N'Nike Air Max 2021', N'Road Racing Shoes', N'Men''s Shoes', 189, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (5, N'Nike Air Max 2021', N'Road Racing Shoes', N'Men''s Shoes', 173, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (7, N'Nike Air Max 2021', N'Road Racing Shoes', N'Men''s Shoes', 120, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (8, N'Nike Air Max INTRLK1', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 3, CAST(N'2022-12-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (9, N'Nike Air Max INTRLK', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 3, CAST(N'2022-12-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (10, N'Nike Air Max', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 5, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (11, N'Lorem ipsum dolor sit amet', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (12, N'Lorem ipsum dolor sit amet', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (13, N'Lorem ipsum dolor sit amet', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (17, N'Nike', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (18, N'Nike', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (19, N'Lorem ipsum dolor sit amet', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (20, N'Lorem ipsum dolor sit amet1', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.1 ', 6, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (21, N'Lorem ipsum dolor sit amet2', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.2 ', 6, CAST(N'2022-12-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (22, N'Lorem ipsum dolor sit amet3', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.3 ', 6, CAST(N'2022-12-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (23, N'Lorem ipsum dolor sit amet', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (24, N'Lorem ipsum dolor sit amet', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. ', 6, CAST(N'2022-12-13 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (25, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (26, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (27, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (28, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (29, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (30, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (31, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Lifestyle')
INSERT [dbo].[Product] ([ProductId], [ProductName], [Title], [BrandName], [Price], [Description], [CateId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy], [Style]) VALUES (32, N'Nike ZoomX Streakfly', N'Road Racing Shoes', N'Men''s Shoes', 213, N'Our lightest racing shoe, the Nike ZoomX Streakfly is all about the speed you need to take on the competition in a mile, 5K or 10K race.', 1, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho', N'Sport, Design, Lifestyle')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (1, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmR4vAg9_VJqlg0WiateWDeoYd84lQzvlnvyHE3ltsfWXAl51_Zbqo6djfpEtbb1Ce_QMOZLLcY=w1920-h870', 2, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (5, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmR0Qt1lRYg8j6MohwJizIoHlmtCMAWr1Xz9rOo9fgG4FDmn9Lsr_iS35PHV8WZJpsvMpEzDmuw=w1227-h942', 4, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (6, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTgImoHZJrU_oKyn3jSyXhZ9H4f_P0wnLnTLgJ5ot5b7cbu7w_8QTDAKcfeG9HRxmrYcyVRVrM=w1227-h942', 5, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (7, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSzha5C6XgTCNn6T7eTHsPtK3xbrPYozPTB6H9ncdhslaIQ5_fbC2ZEdeZRb3jVAmb0tUXOOzQ=w1227-h942', 7, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (8, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTPwB6XLePBDMdQIxmULC-p8nGvxdc2489xhdoxkvUmlYO8_h8tsEcJfth-fYV7qeCllHfyELs=w1227-h942', 8, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (9, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSpRTAqP9juCEE_Z3VsYXSkBgUUhmD9IRHYqUae39QWZdTDO_pn2twCTahi2WrvelwbpuHo5DM=w1227-h942', 9, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (10, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmRPMfPGpYXIST9WSiO7XEZ4xwlXe7jdLP50a7zbAuieuj1KQk37XzH1o5iSkucYsbMCaG9nV7s=w1227-h942', 10, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (11, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSFndNwoL38dLS02ZQZq23lySy2b_owXoh8g3_F-grg_K2pzpPr-i5mW9o-TvAOqKxy7ujgxwE=w1227-h942', 10, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (12, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTdqjIzoQZMeanNAY451fIqFA5jXkPin8tUsyRBvdnxP2-8fLTIU_g_L33-DNVFwQc-c5PIoQA=w1227-h942', 10, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (13, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmQEMkYhXMgz8hyq1qUSEStTMWKr2HEx2MQJ05XEL1KGsekFvwJ5O0F5vvHpLHV30aCk6aE5SfY=w1227-h942', 10, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (14, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTaS169x9VUuSmGkLI3AovRuj-1x3ksDBdcLa6u5DqXwyi_4eFo7Cjor1dyz-n1U_Q2AgvdXhQ=w1227-h942', 10, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (15, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmRVTTvkT3h8aCxHpD1oph_9LeUf3yG_XSPuv78Wc_vv2GvOUK0stF9uuA_6YJfF5C7ZvVtY4BY=w1227-h942', 10, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (16, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTvLtmK_3tvbcpYmnFYDj3ZFdorwQwyIZ7gLqELtYzzmGTLgIcsyHTDChyd_U58qkNSkL1k8s0=w1227-h942', 11, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (17, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTuZc5_TEzRQrm39Or3fiZ9Eq-C8Om7dTUzKkPcN6zAYZoq-YBhAqv_mGg9yH--PXQEd3nhvFI=w1227-h942', 12, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (22, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmRfdJ3oCpC7sLj0s_xe3futZBGrFbmshAUwtLBzrHRCizSLb64w3z22ZjF3Dr_K5h4otfzTcB8=w1227-h942', 17, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (23, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmS5DOTG8NRDf6i-nyl8KaVMphdi_r9IH-gWJOVeiDZq_7o_kz9USfR5PgG_YKIIkyvSR0c0SPc=w1920-h942', 18, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (24, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmQz-WwJ7-i2eJ45Qr6BiRUwCo8DHwkVwlCbxs1MtwPmSw-lHiVvWLrTAs3iMzJVF8w1IOjrWDM=w1227-h942', 19, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (25, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSuK7_uZK82f_66unnoVo6u4dRzBo5T5zUQR_u8TnI8XARlMtRe6N6F8vE91uD21CKuDk0ELtY=w1227-h942', 20, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (31, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTilrtmH9aBybqu0V9jTv1o22Wp8js_VpUlOBQzuFK1_qdoTOt0UhOGaWd5EJEasUH4N-J9vmA=w1227-h942', 21, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (32, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSFqrTdJT99U1F7HntKeHOjTAS7sgECBplhkw-TSiITLAyuhoX1sQTB4cjrm0N7DBwXFAz5-D4=w1227-h942', 22, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (33, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTEUEKwQOEewqV-ESF-pl3aR9sP8HkrfD5jdqphisjOX3McbNK0T-27YTIKZUI9GJkyoLvbPEw=w1227-h942', 23, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (34, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTQbOt-mTEei7yMw9j7rGCMhD9MVFIXiLPzDWyWdjTFdPeynXMev4fF9cF6w9W727c4O_MhRoo=w1227-h942', 24, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (35, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmQzZOUm0GObCQ0a02AYELgaqllB_mty-xfnceYJO8kqKhr50H7TwkTRfP6SGkKXBL5dzwQCYDg=w1920-h942', 13, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (36, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTyf7uAxvp8Q1mbPWyy4gjyZHbmEpBcyVFl7oLXTj-ZXprskDlWFVbFyAQ2v7rzTMMK30uwX_s=w1920-h870', 17, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (37, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTxzqu_dRaDCjrAtb8o2_1MWhL68FRUiXxzjDgnuuszkQaYjhRhe39gzwtoA7TV3dSJoVC7QvQ=w1920-h870', 17, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (38, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmT0SF5XBkpO1AM14Jh1JzARgXoeaqUpPTpYHqOwsLfd7WWgi-5Fz7Bi8kQl3Qybqg-wuCl0vxs=w1227-h870', 17, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (39, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmS7fSF_4Vne106vjZYi5BCCoOwTp1dMMMss0VGspT710V0we8uD1XSQsbVKXeAgwAoY3x-ALe8=w1920-h942', 25, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (40, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmS2DdTXZn7JHxzvtenGEFP54si7KwpA5zbDXJrdV827T10ywAGDfbA6SYy9M-oQPMZwJhnuY7M=w1227-h942', 26, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (41, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTWUXZTo8l_TA45IxD7M8fC4n_pwEOjDGruNxId2OlkGAHyTNCfla2krsgrnWD2DspL6jOaeKA=w1227-h942', 27, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (42, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSYDQlTou0wVQAgJP4zwOZh974gYnghEBSWW7osgjwmOVTnPzokGHxrAGfTpjjDIYHUxpj1-q8=w1227-h942', 28, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (43, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmRfbfebyhTCGvqmRRUBbzVQWAYRlIYTcAV1RpXRmezYF5ul1t-n0pvc7-AYmYAS_PSuyQ5WSYE=w1227-h942', 29, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (44, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmT2FOk__XzMJMAwi4O52i1SSaNOsq9rvC4nKCsmZpoAtxMjsaLnD-4V6fDxHaUQXd9POiGMSdI=w1227-h942', 30, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (45, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmS1_joTMhNpGm3G8wlOUMu2_-wIXJIZOmcFXdm0OHN9VPujgDZpNE9a8OAW9BLbBSV9uovPJpU=w1227-h942', 31, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
INSERT [dbo].[ProductImage] ([Id], [FeatureImage], [ProductId], [CreateAt], [UpdateAt], [CreateBy], [UpdateBy]) VALUES (46, N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTbqSDLhKZn64IvFgHoxBMjtMCQaY4-uvbZFOXSxJ_Xdx2XMwNn_Q_SqX35UPHJbLTTW3LjynI=w1227-h942', 32, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', N'Tho')
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (3, N'Cameron Williamson', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTkno76-PO7yj1SWFtb7xXymbwwx_ELrptddJQTqx1w4CAeED45Oxq9dKA1pJ7MKr7XKILtx2A=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 11, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 22)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (4, N'Marvin McKinney', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSllVOpJ4bFn8KhYuU2AoK7cjpATKDAFaVTigqQA48SvIZUnkJQhRZJcUkeoNc7d5TBHoTaDPM=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 12, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 23)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (5, N'Savannah Nguyen', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmQHfbxWQbi9UUAC5yBmIQ6CFtyRpJWFdn86xK19uUOMkFwYhp9NCzicFjW64lVIVBugxqXcpTk=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 13, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 24)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (7, N'Floyd Miles', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTTPOtVqTt44d9bl4A39QsUjDy6ase9QP7ngNLmMdRBHbXJxe2tSCTp3TXt-Bn_sMGaXZkCopM=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 17, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 25)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (8, N'Robert Fox', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSd_ZBOEd96gm5DXZ2xNLKFEou_yMnVkESUMsNcMRH7F3uSo5iA6yROmGLdey2m2MyJiKyIvwg=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 18, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 26)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (9, N'Annette Black', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmQgAUbcyrXWpcEjWHzfor_RdhZq4iJPcf3P75H-rHNeH9_qXb_Ra_yFxVRHfRCTm7mpop-IrmU=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 19, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 27)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (10, N'Albert Flores', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTECUDyD6CrPj-uKThzv6a-_FhTupFlJHqXYEVagDJ8FJMtixXxTfjmgNytCa5UxuOJeGd3hkM=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 20, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 28)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (11, N'Ralph Edwards', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTFHAXFwtup8lamnrjVUjY8bVzqtr7ruK0Qs1IcVyVWE2ghe3FjAgxOSTj3jL5Bh7MnReltkcM=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 21, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 29)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (12, N'Darrell Steward', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmTjymN3FZshBq7TsEp2tlXl17hKZEtJ4qFxy2s0uDwkS5zRI61EhW6TbtxGz-p8dbKJUzErTx0=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 22, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 29)
INSERT [dbo].[UserInfo] ([Id], [UserName], [Avatar], [CommentDate], [Products], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Articles]) VALUES (13, N'Ronald Richards', N'https://lh3.googleusercontent.com/drive-viewer/AJc5JmQ6ogjNNiTjeBWtaB35AhoZ_xqtFH4dkeGNDxs11RdZxeEB6H6ZIBeKkRaTlm0yBOwiI9OIkE8=w1227-h942', CAST(N'2019-02-08 00:00:00.0000000' AS DateTime2), 23, CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', CAST(N'2022-12-12 00:00:00.0000000' AS DateTime2), N'Tho', 29)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Index [IX_Product_CateId]    Script Date: 9/21/2022 1:27:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CateId] ON [dbo].[Product]
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImage_ProductId]    Script Date: 9/21/2022 1:27:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImage_ProductId] ON [dbo].[ProductImage]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSize_ProductId]    Script Date: 9/21/2022 1:27:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductSize_ProductId] ON [dbo].[ProductSize]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductSize_SizeId]    Script Date: 9/21/2022 1:27:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductSize_SizeId] ON [dbo].[ProductSize]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserInfo_Products]    Script Date: 9/21/2022 1:27:20 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserInfo_Products] ON [dbo].[UserInfo]
(
	[Products] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CateId] FOREIGN KEY([CateId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CateId]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Size_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Size] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Size_SizeId]
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Product_Products] FOREIGN KEY([Products])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [FK_UserInfo_Product_Products]
GO
USE [master]
GO
ALTER DATABASE [ShopShoesData] SET  READ_WRITE 
GO
