USE [fooddb]
GO
/****** Object:  Table [dbo].[FoodDetails]    Script Date: 23-07-2022 22:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[restaurantName] [varchar](100) NULL,
	[foodName] [varchar](100) NULL,
	[foodImage] [varchar](100) NULL,
	[foodDescription] [varchar](100) NULL,
	[place] [varchar](100) NULL,
	[foodMrp] [decimal](18, 2) NULL,
	[foodDiscount] [decimal](18, 2) NULL,
	[foodFinal] [decimal](18, 2) NULL,
	[foodQuantity] [int] NULL,
	[IsActive] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodDetailsAdmin]    Script Date: 23-07-2022 22:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodDetailsAdmin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[restaurantName] [varchar](100) NULL,
	[foodName] [varchar](100) NULL,
	[foodImage] [varchar](100) NULL,
	[foodDescription] [varchar](100) NULL,
	[place] [varchar](100) NULL,
	[foodMrp] [decimal](18, 2) NULL,
	[foodDiscount] [decimal](18, 2) NULL,
	[foodFinal] [decimal](18, 2) NULL,
	[foodQuantity] [int] NULL,
	[IsApprove] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[myorder]    Script Date: 23-07-2022 22:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myorder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[foodName] [varchar](100) NULL,
	[foodFinal] [decimal](18, 2) NULL,
	[foodImage] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTbl]    Script Date: 23-07-2022 22:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTbl](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[firstName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
	[PhoneNo] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[paymentmode] [varchar](100) NULL,
	[UserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterTbl]    Script Date: 23-07-2022 22:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterTbl](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[PhoneNo] [int] NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[IsAdmin] [int] NULL,
	[IsRestaurant] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FoodDetails] ON 

INSERT [dbo].[FoodDetails] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsActive]) VALUES (1, N'MCD', N'Fries', N'fries.jpg', N'Salted Fries', N'Nashik', CAST(80.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(76.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[FoodDetails] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsActive]) VALUES (2, N'MCD', N'Burger', N'Burger.jpg', N'Veg Burger', N'Nashik', CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, 1)
INSERT [dbo].[FoodDetails] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsActive]) VALUES (3, N'MCD', N'Fries', N'fries.jpg', N'Peri Peri Fries', N'Nashik', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetails] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsActive]) VALUES (4, N'MCD', N'Burger', N'Burger.jpg', N'Veg Burger', N'Nashik', CAST(100.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetails] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsActive]) VALUES (5, N'Dominos', N'Pizza', N'pizza.jpg', N'veg Pizza', N'Nashik', CAST(200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetails] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsActive]) VALUES (7, N'MCD', N'Fries', N'fries.jpg', N'Salted Fries', N'Nashik', CAST(80.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(72.00 AS Decimal(18, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[FoodDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodDetailsAdmin] ON 

INSERT [dbo].[FoodDetailsAdmin] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsApprove]) VALUES (1, N'MCD', N'Fries', N'fries.jpg', N'Salted Fries', N'Nashik', CAST(80.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetailsAdmin] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsApprove]) VALUES (2, N'MCD', N'Fries', N'fries.jpg', N'Salted Fries', N'Nashik', CAST(80.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(76.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetailsAdmin] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsApprove]) VALUES (3, N'MCD', N'Burger', N'Burger.jpg', N'Veg Burger', N'Nashik', CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetailsAdmin] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsApprove]) VALUES (4, N'MCD', N'Burger', N'Burger.jpg', N'Veg Burger', N'Nashik', CAST(100.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetailsAdmin] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsApprove]) VALUES (5, N'Dominos', N'Pizza', N'pizza.jpg', N'veg Pizza', N'Nashik', CAST(200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[FoodDetailsAdmin] ([Id], [restaurantName], [foodName], [foodImage], [foodDescription], [place], [foodMrp], [foodDiscount], [foodFinal], [foodQuantity], [IsApprove]) VALUES (6, N'MCD', N'Fries', N'fries.jpg', N'Peri Peri Fries', N'Nashik', CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[FoodDetailsAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderTbl] ON 

INSERT [dbo].[OrderTbl] ([Id], [firstName], [lastName], [PhoneNo], [Email], [Address], [paymentmode], [UserName]) VALUES (100, N'Mitali', N'Aherrao', N'96890980', N'aherraomitali@gmail.com', N'Nashik', N'Cash on Delivery', NULL)
INSERT [dbo].[OrderTbl] ([Id], [firstName], [lastName], [PhoneNo], [Email], [Address], [paymentmode], [UserName]) VALUES (101, N'Bharati', N'Aherrao', N'1861892', N'asd@gmail.com', N'Nashik', N'Cash on Delivery', NULL)
INSERT [dbo].[OrderTbl] ([Id], [firstName], [lastName], [PhoneNo], [Email], [Address], [paymentmode], [UserName]) VALUES (102, N'Mitali', N'Aherrai', N'9689550428', N'aherraomitali@gmail.com', N'Nashik', N'Cash on Delivery', NULL)
SET IDENTITY_INSERT [dbo].[OrderTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[RegisterTbl] ON 

INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (1, N'Mitali', N'Nashik', 96891234, N'aherraomitali@gmail.com', N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (2, N'Admin', N'Nashik', 12121213, N'admin@gmail.com', N'123', 1, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (3, N'MCD', N'Nashik', 9234123, N'info@mcd.com', N'123', NULL, 1)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (4, N'Aditya', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (5, N'Akshay', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (6, N'Mitali@gmail.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (7, N'aherraomitali@gmail.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (8, N'mitaliaherrao1997@gmail.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (9, N'asmi@gmail.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (10, N'arati@gmail.com', NULL, NULL, NULL, N'1212', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (11, N'pooja@gmail.com', NULL, NULL, NULL, N'1212', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (12, N'info@dominos.com', NULL, NULL, NULL, N'1234', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (13, N'info@starbucks.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (14, N'info@mcd.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (15, N'restaurant', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (16, N'Madhur', N'Nashik', 1234122, N'madhur@gmail.com', N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (17, N'nandan', N'string', 98989898, N'nandan@gmail', N'123', NULL, 1)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (18, N'info@pizzahut.com', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (19, N'abc', NULL, NULL, NULL, N'123', NULL, NULL)
INSERT [dbo].[RegisterTbl] ([UserID], [UserName], [Address], [PhoneNo], [Email], [Password], [IsAdmin], [IsRestaurant]) VALUES (20, N'azx', NULL, NULL, NULL, N'123', NULL, NULL)
SET IDENTITY_INSERT [dbo].[RegisterTbl] OFF
GO
