CREATE TABLE [dbo].[Authors]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(50) NOT NULL, 
    [Surname] NCHAR(50) NOT NULL, 
    [Patronymic] NCHAR(50) NULL
)
