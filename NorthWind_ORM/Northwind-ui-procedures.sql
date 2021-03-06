USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[insertCategory]    Script Date: 29-Jan-19 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertCategory]
	-- Add the parameters for the stored procedure here
	@catName nvarchar(15),
	@catDesc ntext
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Categories (CategoryName, Description) VALUES (@catName, @catDesc)
END

GO
/****** Object:  StoredProcedure [dbo].[insertProduct]    Script Date: 29-Jan-19 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertProduct]
	-- Add the parameters for the stored procedure here
	@prodName nvarchar(40),
	@unitPrice money,
	@unitsInStock smallint
	--@CategoryID int,
	--@SupplierID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Products (ProductName, UnitPrice, UnitsInStock) VALUES (@prodName, @unitPrice, @unitsInStock)
END

GO
/****** Object:  StoredProcedure [dbo].[listCategories]    Script Date: 29-Jan-19 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listCategories]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Categories;
END

GO
/****** Object:  StoredProcedure [dbo].[listProducts]    Script Date: 29-Jan-19 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listProducts]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Products;
END

GO
/****** Object:  StoredProcedure [dbo].[listSuppliers]    Script Date: 29-Jan-19 01:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listSuppliers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Suppliers;
END

GO
