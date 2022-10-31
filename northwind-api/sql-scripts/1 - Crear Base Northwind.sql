IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Northwind')
DROP DATABASE Northwind
GO

CREATE DATABASE [Northwind]
 COLLATE SQL_Latin1_General_CP1_CI_AS
GO

use [Northwind]
GO


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Products_Categories]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Products] DROP CONSTRAINT FK_Products_Categories
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_CustomerCustomerDemo]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[CustomerCustomerDemo] DROP CONSTRAINT FK_CustomerCustomerDemo
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_CustomerCustomerDemo_Customers]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[CustomerCustomerDemo] DROP CONSTRAINT FK_CustomerCustomerDemo_Customers
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Orders_Customers]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT FK_Orders_Customers
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Employees_Employees]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT FK_Employees_Employees
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_EmployeeTerritories_Employees]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[EmployeeTerritories] DROP CONSTRAINT FK_EmployeeTerritories_Employees
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Orders_Employees]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT FK_Orders_Employees
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Territories_Region]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT FK_Territories_Region
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Orders_Shippers]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT FK_Orders_Shippers
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Products_Suppliers]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Products] DROP CONSTRAINT FK_Products_Suppliers
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Order_Details_Orders]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT FK_Order_Details_Orders
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_Order_Details_Products]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT FK_Order_Details_Products
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_EmployeeTerritories_Territories]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[EmployeeTerritories] DROP CONSTRAINT FK_EmployeeTerritories_Territories
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Employee Sales by Country]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Employee Sales by Country]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sales by Year]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Sales by Year]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustOrderHist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CustOrderHist]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustOrdersDetail]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CustOrdersDetail]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SalesByCategory]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SalesByCategory]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustOrdersOrders]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CustOrdersOrders]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ten Most Expensive Products]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Ten Most Expensive Products]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Category Sales for 1997]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Category Sales for 1997]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sales Totals by Amount]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Sales Totals by Amount]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sales by Category]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Sales by Category]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Summary of Sales by Quarter]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Summary of Sales by Quarter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Summary of Sales by Year]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Summary of Sales by Year]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Invoices]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Invoices]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Order Details Extended]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Order Details Extended]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Order Subtotals]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Order Subtotals]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Product Sales for 1997]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Product Sales for 1997]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Alphabetical list of products]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Alphabetical list of products]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Current Product List]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Current Product List]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Orders Qry]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Orders Qry]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Products Above Average Price]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Products Above Average Price]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Products by Category]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Products by Category]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Quarterly Orders]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Quarterly Orders]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Customer and Suppliers by City]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[Customer and Suppliers by City]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmployeeTerritories]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[EmployeeTerritories]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Order Details]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Order Details]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustomerCustomerDemo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CustomerCustomerDemo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Orders]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Orders]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Products]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Products]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Territories]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Territories]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Categories]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Categories]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CustomerDemographics]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CustomerDemographics]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Customers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Customers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Employees]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Employees]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Region]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Region]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Shippers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Shippers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Suppliers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Suppliers]
GO

CREATE TABLE [dbo].[Categories] (
	[CategoryID] [int] IDENTITY (1, 1) NOT NULL ,
	[CategoryName] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Picture] [image] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[CustomerDemographics] (
	[CustomerTypeID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CustomerDesc] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Customers] (
	[CustomerID] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CompanyName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ContactName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ContactTitle] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[City] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Fax] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Employees] (
	[EmployeeID] [int] IDENTITY (1, 1) NOT NULL ,
	[LastName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FirstName] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Title] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TitleOfCourtesy] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BirthDate] [datetime] NULL ,
	[HireDate] [datetime] NULL ,
	[Address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[City] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HomePhone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Extension] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Photo] [image] NULL ,
	[Notes] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ReportsTo] [int] NULL ,
	[PhotoPath] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Region] (
	[RegionID] [int] NOT NULL ,
	[RegionDescription] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Shippers] (
	[ShipperID] [int] IDENTITY (1, 1) NOT NULL ,
	[CompanyName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Suppliers] (
	[SupplierID] [int] IDENTITY (1, 1) NOT NULL ,
	[CompanyName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ContactName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ContactTitle] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[City] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Fax] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HomePage] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[CustomerCustomerDemo] (
	[CustomerID] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CustomerTypeID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Orders] (
	[OrderID] [int] IDENTITY (1, 1) NOT NULL ,
	[CustomerID] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EmployeeID] [int] NULL ,
	[OrderDate] [datetime] NULL ,
	[RequiredDate] [datetime] NULL ,
	[ShippedDate] [datetime] NULL ,
	[ShipVia] [int] NULL ,
	[Freight] [money] NULL ,
	[ShipName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ShipAddress] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ShipCity] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ShipRegion] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ShipPostalCode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ShipCountry] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Products] (
	[ProductID] [int] IDENTITY (1, 1) NOT NULL ,
	[ProductName] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SupplierID] [int] NULL ,
	[CategoryID] [int] NULL ,
	[QuantityPerUnit] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UnitPrice] [money] NULL ,
	[UnitsInStock] [smallint] NULL ,
	[UnitsOnOrder] [smallint] NULL ,
	[ReorderLevel] [smallint] NULL ,
	[Discontinued] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Territories] (
	[TerritoryID] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TerritoryDescription] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[RegionID] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EmployeeTerritories] (
	[EmployeeID] [int] NOT NULL ,
	[TerritoryID] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Order Details] (
	[OrderID] [int] NOT NULL ,
	[ProductID] [int] NOT NULL ,
	[UnitPrice] [money] NOT NULL ,
	[Quantity] [smallint] NOT NULL ,
	[Discount] [real] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Categories] WITH NOCHECK ADD 
	CONSTRAINT [PK_Categories] PRIMARY KEY  CLUSTERED 
	(
		[CategoryID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Customers] WITH NOCHECK ADD 
	CONSTRAINT [PK_Customers] PRIMARY KEY  CLUSTERED 
	(
		[CustomerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Employees] WITH NOCHECK ADD 
	CONSTRAINT [PK_Employees] PRIMARY KEY  CLUSTERED 
	(
		[EmployeeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Shippers] WITH NOCHECK ADD 
	CONSTRAINT [PK_Shippers] PRIMARY KEY  CLUSTERED 
	(
		[ShipperID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Suppliers] WITH NOCHECK ADD 
	CONSTRAINT [PK_Suppliers] PRIMARY KEY  CLUSTERED 
	(
		[SupplierID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Orders] WITH NOCHECK ADD 
	CONSTRAINT [PK_Orders] PRIMARY KEY  CLUSTERED 
	(
		[OrderID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Products] WITH NOCHECK ADD 
	CONSTRAINT [PK_Products] PRIMARY KEY  CLUSTERED 
	(
		[ProductID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Order Details] WITH NOCHECK ADD 
	CONSTRAINT [PK_Order_Details] PRIMARY KEY  CLUSTERED 
	(
		[OrderID],
		[ProductID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CustomerDemographics] WITH NOCHECK ADD 
	CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY  NONCLUSTERED 
	(
		[CustomerTypeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Employees] WITH NOCHECK ADD 
	CONSTRAINT [CK_Birthdate] CHECK ([BirthDate] < getdate())
GO

ALTER TABLE [dbo].[Region] WITH NOCHECK ADD 
	CONSTRAINT [PK_Region] PRIMARY KEY  NONCLUSTERED 
	(
		[RegionID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[CustomerCustomerDemo] WITH NOCHECK ADD 
	CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY  NONCLUSTERED 
	(
		[CustomerID],
		[CustomerTypeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Orders] WITH NOCHECK ADD 
	CONSTRAINT [DF_Orders_Freight] DEFAULT (0) FOR [Freight]
GO

ALTER TABLE [dbo].[Products] WITH NOCHECK ADD 
	CONSTRAINT [DF_Products_UnitPrice] DEFAULT (0) FOR [UnitPrice],
	CONSTRAINT [DF_Products_UnitsInStock] DEFAULT (0) FOR [UnitsInStock],
	CONSTRAINT [DF_Products_UnitsOnOrder] DEFAULT (0) FOR [UnitsOnOrder],
	CONSTRAINT [DF_Products_ReorderLevel] DEFAULT (0) FOR [ReorderLevel],
	CONSTRAINT [DF_Products_Discontinued] DEFAULT (0) FOR [Discontinued],
	CONSTRAINT [CK_Products_UnitPrice] CHECK ([UnitPrice] >= 0),
	CONSTRAINT [CK_ReorderLevel] CHECK ([ReorderLevel] >= 0),
	CONSTRAINT [CK_UnitsInStock] CHECK ([UnitsInStock] >= 0),
	CONSTRAINT [CK_UnitsOnOrder] CHECK ([UnitsOnOrder] >= 0)
GO

ALTER TABLE [dbo].[Territories] WITH NOCHECK ADD 
	CONSTRAINT [PK_Territories] PRIMARY KEY  NONCLUSTERED 
	(
		[TerritoryID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[EmployeeTerritories] WITH NOCHECK ADD 
	CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY  NONCLUSTERED 
	(
		[EmployeeID],
		[TerritoryID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Order Details] WITH NOCHECK ADD 
	CONSTRAINT [DF_Order_Details_UnitPrice] DEFAULT (0) FOR [UnitPrice],
	CONSTRAINT [DF_Order_Details_Quantity] DEFAULT (1) FOR [Quantity],
	CONSTRAINT [DF_Order_Details_Discount] DEFAULT (0) FOR [Discount],
	CONSTRAINT [CK_Discount] CHECK ([Discount] >= 0 and [Discount] <= 1),
	CONSTRAINT [CK_Quantity] CHECK ([Quantity] > 0),
	CONSTRAINT [CK_UnitPrice] CHECK ([UnitPrice] >= 0)
GO

 CREATE  INDEX [CategoryName] ON [dbo].[Categories]([CategoryName]) ON [PRIMARY]
GO

 CREATE  INDEX [City] ON [dbo].[Customers]([City]) ON [PRIMARY]
GO

 CREATE  INDEX [CompanyName] ON [dbo].[Customers]([CompanyName]) ON [PRIMARY]
GO

 CREATE  INDEX [PostalCode] ON [dbo].[Customers]([PostalCode]) ON [PRIMARY]
GO

 CREATE  INDEX [Region] ON [dbo].[Customers]([Region]) ON [PRIMARY]
GO

 CREATE  INDEX [LastName] ON [dbo].[Employees]([LastName]) ON [PRIMARY]
GO

 CREATE  INDEX [PostalCode] ON [dbo].[Employees]([PostalCode]) ON [PRIMARY]
GO

 CREATE  INDEX [CompanyName] ON [dbo].[Suppliers]([CompanyName]) ON [PRIMARY]
GO

 CREATE  INDEX [PostalCode] ON [dbo].[Suppliers]([PostalCode]) ON [PRIMARY]
GO

 CREATE  INDEX [CustomerID] ON [dbo].[Orders]([CustomerID]) ON [PRIMARY]
GO

 CREATE  INDEX [CustomersOrders] ON [dbo].[Orders]([CustomerID]) ON [PRIMARY]
GO

 CREATE  INDEX [EmployeeID] ON [dbo].[Orders]([EmployeeID]) ON [PRIMARY]
GO

 CREATE  INDEX [EmployeesOrders] ON [dbo].[Orders]([EmployeeID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderDate] ON [dbo].[Orders]([OrderDate]) ON [PRIMARY]
GO

 CREATE  INDEX [ShippedDate] ON [dbo].[Orders]([ShippedDate]) ON [PRIMARY]
GO

 CREATE  INDEX [ShippersOrders] ON [dbo].[Orders]([ShipVia]) ON [PRIMARY]
GO

 CREATE  INDEX [ShipPostalCode] ON [dbo].[Orders]([ShipPostalCode]) ON [PRIMARY]
GO

 CREATE  INDEX [CategoriesProducts] ON [dbo].[Products]([CategoryID]) ON [PRIMARY]
GO

 CREATE  INDEX [CategoryID] ON [dbo].[Products]([CategoryID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductName] ON [dbo].[Products]([ProductName]) ON [PRIMARY]
GO

 CREATE  INDEX [SupplierID] ON [dbo].[Products]([SupplierID]) ON [PRIMARY]
GO

 CREATE  INDEX [SuppliersProducts] ON [dbo].[Products]([SupplierID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[Order Details]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrdersOrder_Details] ON [dbo].[Order Details]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductID] ON [dbo].[Order Details]([ProductID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductsOrder_Details] ON [dbo].[Order Details]([ProductID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employees] ADD 
	CONSTRAINT [FK_Employees_Employees] FOREIGN KEY 
	(
		[ReportsTo]
	) REFERENCES [dbo].[Employees] (
		[EmployeeID]
	)
GO

ALTER TABLE [dbo].[CustomerCustomerDemo] ADD 
	CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY 
	(
		[CustomerTypeID]
	) REFERENCES [dbo].[CustomerDemographics] (
		[CustomerTypeID]
	),
	CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY 
	(
		[CustomerID]
	) REFERENCES [dbo].[Customers] (
		[CustomerID]
	)
GO

ALTER TABLE [dbo].[Orders] ADD 
	CONSTRAINT [FK_Orders_Customers] FOREIGN KEY 
	(
		[CustomerID]
	) REFERENCES [dbo].[Customers] (
		[CustomerID]
	),
	CONSTRAINT [FK_Orders_Employees] FOREIGN KEY 
	(
		[EmployeeID]
	) REFERENCES [dbo].[Employees] (
		[EmployeeID]
	),
	CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY 
	(
		[ShipVia]
	) REFERENCES [dbo].[Shippers] (
		[ShipperID]
	)
GO

ALTER TABLE [dbo].[Products] ADD 
	CONSTRAINT [FK_Products_Categories] FOREIGN KEY 
	(
		[CategoryID]
	) REFERENCES [dbo].[Categories] (
		[CategoryID]
	),
	CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY 
	(
		[SupplierID]
	) REFERENCES [dbo].[Suppliers] (
		[SupplierID]
	)
GO

ALTER TABLE [dbo].[Territories] ADD 
	CONSTRAINT [FK_Territories_Region] FOREIGN KEY 
	(
		[RegionID]
	) REFERENCES [dbo].[Region] (
		[RegionID]
	)
GO

ALTER TABLE [dbo].[EmployeeTerritories] ADD 
	CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY 
	(
		[EmployeeID]
	) REFERENCES [dbo].[Employees] (
		[EmployeeID]
	),
	CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY 
	(
		[TerritoryID]
	) REFERENCES [dbo].[Territories] (
		[TerritoryID]
	)
GO

ALTER TABLE [dbo].[Order Details] ADD 
	CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY 
	(
		[OrderID]
	) REFERENCES [dbo].[Orders] (
		[OrderID]
	),
	CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY 
	(
		[ProductID]
	) REFERENCES [dbo].[Products] (
		[ProductID]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Customer and Suppliers by City" AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Alphabetical list of products" AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Current Product List" AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Orders Qry" AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Products Above Average Price" AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Products by Category" AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Quarterly Orders" AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view Invoices AS
SELECT Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, Orders.ShipRegion, Orders.ShipPostalCode, 
	Orders.ShipCountry, Orders.CustomerID, Customers.CompanyName AS CustomerName, Customers.Address, Customers.City, 
	Customers.Region, Customers.PostalCode, Customers.Country, 
	(FirstName + ' ' + LastName) AS Salesperson, 
	Orders.OrderID, Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, Shippers.CompanyName As ShipperName, 
	"Order Details".ProductID, Products.ProductName, "Order Details".UnitPrice, "Order Details".Quantity, 
	"Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice, Orders.Freight
FROM 	Shippers INNER JOIN 
		(Products INNER JOIN 
			(
				(Employees INNER JOIN 
					(Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID) 
				ON Employees.EmployeeID = Orders.EmployeeID) 
			INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
		ON Products.ProductID = "Order Details".ProductID) 
	ON Shippers.ShipperID = Orders.ShipVia

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Order Details Extended" AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Order Subtotals" AS
SELECT "Order Details".OrderID, Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Product Sales for 1997" AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Category Sales for 1997" AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Sales Totals by Amount" AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Sales by Category" AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Summary of Sales by Quarter" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create view "Summary of Sales by Year" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE CustOrdersOrders @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure "Ten Most Expensive Products" AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE CustOrderHist @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE CustOrdersDetail @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE SalesByCategory
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure "Employee Sales by Country" 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create procedure "Sales by Year" 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

