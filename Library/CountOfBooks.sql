CREATE FUNCTION [dbo].[CountOfBooks]
(
	@authorId int
)
RETURNS int 
AS  
BEGIN
RETURN
(
	 SELECT COUNT(Books.Id) FROM [Books] right join AuthorBook on AuthorBook.BookId=Books.Id WHERE AuthorBook.AuthorId=@authorId
)
END

