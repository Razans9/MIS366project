CREATE TABLE [dbo].[Bidder] (
    [Bidder_id]   INT NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    [PhoneNumber] NVARCHAR (50) NOT NULL,
    [email]       NVARCHAR (50) NOT NULL,
    [password]    NVARCHAR (50) NOT NULL,
    [authorizition] NVARCHAR(50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Bidder_id] ASC), 
    
);

