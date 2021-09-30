CREATE TABLE [dbo].[AuthorBook]
(
	[BookId] INT NOT NULL  FOREIGN KEY REFERENCES [dbo].[Books]([id]),
    [AuthorId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Authors]([id])
)
