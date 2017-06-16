
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/16/2017 13:29:55
-- Generated from EDMX file: C:\Users\Job\documents\visual studio 2017\Projects\casusB2D3\casusB2D3\casusB2D3_DB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [casus_B2D3];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AcountRoleUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet] DROP CONSTRAINT [FK_AcountRoleUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContactSet] DROP CONSTRAINT [FK_ContactUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductReviewUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductReviewSet] DROP CONSTRAINT [FK_ProductReviewUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductReviewProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductReviewSet] DROP CONSTRAINT [FK_ProductReviewProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_ProductCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductSupplier]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_ProductSupplier];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryOperationArea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CategorySet] DROP CONSTRAINT [FK_CategoryOperationArea];
GO
IF OBJECT_ID(N'[dbo].[FK_HistoryUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HistorySet] DROP CONSTRAINT [FK_HistoryUser];
GO
IF OBJECT_ID(N'[dbo].[FK_HistoryProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductSet] DROP CONSTRAINT [FK_HistoryProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_OccasionHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OccasionSet] DROP CONSTRAINT [FK_OccasionHistory];
GO
IF OBJECT_ID(N'[dbo].[FK_NewsHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsSet] DROP CONSTRAINT [FK_NewsHistory];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AcountRoleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AcountRoleSet];
GO
IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[ContactSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContactSet];
GO
IF OBJECT_ID(N'[dbo].[ProductReviewSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductReviewSet];
GO
IF OBJECT_ID(N'[dbo].[ProductSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductSet];
GO
IF OBJECT_ID(N'[dbo].[CategorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategorySet];
GO
IF OBJECT_ID(N'[dbo].[SupplierSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SupplierSet];
GO
IF OBJECT_ID(N'[dbo].[OperationAreaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OperationAreaSet];
GO
IF OBJECT_ID(N'[dbo].[HistorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HistorySet];
GO
IF OBJECT_ID(N'[dbo].[OccasionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OccasionSet];
GO
IF OBJECT_ID(N'[dbo].[NewsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AccountRoleSet'
CREATE TABLE [dbo].[AccountRoleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [AccountLevel] int  NOT NULL
);
GO

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [IsActive] bit  NOT NULL,
    [AcountRoleId] int  NOT NULL
);
GO

-- Creating table 'ContactSet'
CREATE TABLE [dbo].[ContactSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Emailadress] nvarchar(max)  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [UserId] int  NULL
);
GO

-- Creating table 'ProductReviewSet'
CREATE TABLE [dbo].[ProductReviewSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ReviewText] nvarchar(max)  NOT NULL,
    [StarRating] int  NULL,
    [ReviewDate] datetime  NOT NULL,
    [Anonymous] bit  NOT NULL,
    [UserId] int  NULL,
    [ProductId] int  NOT NULL,
    [ProductVersion] int  NOT NULL
);
GO

-- Creating table 'ProductSet'
CREATE TABLE [dbo].[ProductSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Information] nvarchar(max)  NULL,
    [ExirationDate] datetime  NOT NULL,
    [TimesViewed] int  NOT NULL,
    [Compensation] bit  NOT NULL,
    [Price] int  NOT NULL,
    [IsApproved] bit  NOT NULL,
    [CategoryId] int  NOT NULL,
    [SupplierId] int  NOT NULL,
    [History_Id] int  NOT NULL,
    [History_Version] int  NOT NULL
);
GO

-- Creating table 'CategorySet'
CREATE TABLE [dbo].[CategorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [OperationAreaId] int  NOT NULL
);
GO

-- Creating table 'SupplierSet'
CREATE TABLE [dbo].[SupplierSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Adress] nvarchar(max)  NOT NULL,
    [Zipcode] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OperationAreaSet'
CREATE TABLE [dbo].[OperationAreaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'HistorySet'
CREATE TABLE [dbo].[HistorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] int  NOT NULL,
    [LogDate] datetime  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'OccasionSet'
CREATE TABLE [dbo].[OccasionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Location] nvarchar(max)  NULL,
    [MoreInformationURL] nvarchar(max)  NULL,
    [IsApproved] bit  NOT NULL,
    [History_Id] int  NOT NULL,
    [History_Version] int  NOT NULL
);
GO

-- Creating table 'NewsSet'
CREATE TABLE [dbo].[NewsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] int  NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [DueDate] datetime  NOT NULL,
    [History_Id] int  NOT NULL,
    [History_Version] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AccountRoleSet'
ALTER TABLE [dbo].[AccountRoleSet]
ADD CONSTRAINT [PK_AccountRoleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContactSet'
ALTER TABLE [dbo].[ContactSet]
ADD CONSTRAINT [PK_ContactSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductReviewSet'
ALTER TABLE [dbo].[ProductReviewSet]
ADD CONSTRAINT [PK_ProductReviewSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [Version] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [PK_ProductSet]
    PRIMARY KEY CLUSTERED ([Id], [Version] ASC);
GO

-- Creating primary key on [Id] in table 'CategorySet'
ALTER TABLE [dbo].[CategorySet]
ADD CONSTRAINT [PK_CategorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SupplierSet'
ALTER TABLE [dbo].[SupplierSet]
ADD CONSTRAINT [PK_SupplierSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OperationAreaSet'
ALTER TABLE [dbo].[OperationAreaSet]
ADD CONSTRAINT [PK_OperationAreaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id], [Version] in table 'HistorySet'
ALTER TABLE [dbo].[HistorySet]
ADD CONSTRAINT [PK_HistorySet]
    PRIMARY KEY CLUSTERED ([Id], [Version] ASC);
GO

-- Creating primary key on [Id], [Version] in table 'OccasionSet'
ALTER TABLE [dbo].[OccasionSet]
ADD CONSTRAINT [PK_OccasionSet]
    PRIMARY KEY CLUSTERED ([Id], [Version] ASC);
GO

-- Creating primary key on [Id], [Version] in table 'NewsSet'
ALTER TABLE [dbo].[NewsSet]
ADD CONSTRAINT [PK_NewsSet]
    PRIMARY KEY CLUSTERED ([Id], [Version] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AcountRoleId] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [FK_AcountRoleUser]
    FOREIGN KEY ([AcountRoleId])
    REFERENCES [dbo].[AccountRoleSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AcountRoleUser'
CREATE INDEX [IX_FK_AcountRoleUser]
ON [dbo].[UserSet]
    ([AcountRoleId]);
GO

-- Creating foreign key on [UserId] in table 'ContactSet'
ALTER TABLE [dbo].[ContactSet]
ADD CONSTRAINT [FK_ContactUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactUser'
CREATE INDEX [IX_FK_ContactUser]
ON [dbo].[ContactSet]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'ProductReviewSet'
ALTER TABLE [dbo].[ProductReviewSet]
ADD CONSTRAINT [FK_ProductReviewUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductReviewUser'
CREATE INDEX [IX_FK_ProductReviewUser]
ON [dbo].[ProductReviewSet]
    ([UserId]);
GO

-- Creating foreign key on [ProductId], [ProductVersion] in table 'ProductReviewSet'
ALTER TABLE [dbo].[ProductReviewSet]
ADD CONSTRAINT [FK_ProductReviewProduct]
    FOREIGN KEY ([ProductId], [ProductVersion])
    REFERENCES [dbo].[ProductSet]
        ([Id], [Version])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductReviewProduct'
CREATE INDEX [IX_FK_ProductReviewProduct]
ON [dbo].[ProductReviewSet]
    ([ProductId], [ProductVersion]);
GO

-- Creating foreign key on [CategoryId] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_ProductCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[CategorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductCategory'
CREATE INDEX [IX_FK_ProductCategory]
ON [dbo].[ProductSet]
    ([CategoryId]);
GO

-- Creating foreign key on [SupplierId] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_ProductSupplier]
    FOREIGN KEY ([SupplierId])
    REFERENCES [dbo].[SupplierSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductSupplier'
CREATE INDEX [IX_FK_ProductSupplier]
ON [dbo].[ProductSet]
    ([SupplierId]);
GO

-- Creating foreign key on [OperationAreaId] in table 'CategorySet'
ALTER TABLE [dbo].[CategorySet]
ADD CONSTRAINT [FK_CategoryOperationArea]
    FOREIGN KEY ([OperationAreaId])
    REFERENCES [dbo].[OperationAreaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryOperationArea'
CREATE INDEX [IX_FK_CategoryOperationArea]
ON [dbo].[CategorySet]
    ([OperationAreaId]);
GO

-- Creating foreign key on [UserId] in table 'HistorySet'
ALTER TABLE [dbo].[HistorySet]
ADD CONSTRAINT [FK_HistoryUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HistoryUser'
CREATE INDEX [IX_FK_HistoryUser]
ON [dbo].[HistorySet]
    ([UserId]);
GO

-- Creating foreign key on [History_Id], [History_Version] in table 'ProductSet'
ALTER TABLE [dbo].[ProductSet]
ADD CONSTRAINT [FK_HistoryProduct]
    FOREIGN KEY ([History_Id], [History_Version])
    REFERENCES [dbo].[HistorySet]
        ([Id], [Version])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HistoryProduct'
CREATE INDEX [IX_FK_HistoryProduct]
ON [dbo].[ProductSet]
    ([History_Id], [History_Version]);
GO

-- Creating foreign key on [History_Id], [History_Version] in table 'OccasionSet'
ALTER TABLE [dbo].[OccasionSet]
ADD CONSTRAINT [FK_OccasionHistory]
    FOREIGN KEY ([History_Id], [History_Version])
    REFERENCES [dbo].[HistorySet]
        ([Id], [Version])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OccasionHistory'
CREATE INDEX [IX_FK_OccasionHistory]
ON [dbo].[OccasionSet]
    ([History_Id], [History_Version]);
GO

-- Creating foreign key on [History_Id], [History_Version] in table 'NewsSet'
ALTER TABLE [dbo].[NewsSet]
ADD CONSTRAINT [FK_NewsHistory]
    FOREIGN KEY ([History_Id], [History_Version])
    REFERENCES [dbo].[HistorySet]
        ([Id], [Version])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NewsHistory'
CREATE INDEX [IX_FK_NewsHistory]
ON [dbo].[NewsSet]
    ([History_Id], [History_Version]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------