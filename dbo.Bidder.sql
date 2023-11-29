CREATE TABLE [dbo].[Bidder] (
    [Username]      NVARCHAR (MAX) NOT NULL,
    [Name]          NVARCHAR (50) NOT NULL,
    [PhoneNumber]   NVARCHAR (50) NOT NULL,
    [email]         NVARCHAR (50) NOT NULL,
    [password]      NVARCHAR (50) NOT NULL,
    [authorization] NCHAR (10)    DEFAULT ('F') NOT NULL,
    PRIMARY KEY CLUSTERED ([Username] ASC)
);

