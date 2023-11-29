CREATE TABLE [dbo].[order] (
    [order_id]   NVARCHAR (50) NOT NULL,
    [bid_amount] NVARCHAR (50) NOT NULL,
    [track]      NVARCHAR (50) NOT NULL,
    [Username]   NVARCHAR (MAX) NOT NULL,
    [product_id] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([order_id] ASC),
    CONSTRAINT [FK__Username_ToTable] FOREIGN KEY ([Username]) REFERENCES [dbo].[Bidder] ([Username]),
    CONSTRAINT [FK_product_id_ToTable] FOREIGN KEY ([product_id]) REFERENCES [dbo].[Product] ([product_id])
);

